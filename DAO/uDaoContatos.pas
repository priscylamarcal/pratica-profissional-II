unit uDaoContatos;

interface

uses uDAO,
  uFilterSearch, uContatos, uTiposContatos,

  System.Generics.Collections, System.SysUtils;

type
  daoContato = class(DAO)
  private

  protected
  public
    constructor crieObj; override;
    function getDS: TObject; override;
    function pesquisar(AFilter: TFilterSearch; pChave: string): string;
      override;
    function salvar(pObj: TObject): string; override;
    function excluir(pObj: TObject): string; override;
    function carregar(pObj: TObject): string; override;
    function salvarLista(lista: TObjectList<Contato>): string;
    function carregarLista(lista: TObjectList<Contato>): string;

    function RetornaListaContatos(const ACodPortador, aTipoPortador: Integer) : TObjectList<Contato>;
    function DeleteListaContatos(const ACodPortador, aTipoPortador: Integer): Boolean;
  end;

implementation
uses
  FireDAC.Comp.Client;
{ daoContatos }

function daoContato.carregar(pObj: TObject): string;
var
  mContato: Contato;
  mTipoContato: TiposContatos;
begin
  mContato := Contato(pObj);
  mTipoContato := mContato.getaTipoContato;

  mContato.setDescricao(aDM.QContatos.FieldByName('DESCRICAO').AsString);

  mContato.getaTipoContato.setCodigo
    (aDM.QContatos.FieldByName('CODTIPO').Value);

end;

function daoContato.RetornaListaContatos(const ACodPortador, aTipoPortador: Integer)
  : TObjectList<Contato>;
var
  AContato: Contato;
  AQuery  : TFDQuery;
begin
  Result := nil;
  AQuery := TFDQuery.Create(nil);
  try
    AQuery.Connection  := adm.Conexao;
    AQuery.Transaction := aDM.Transacao;

    if (AQuery.Active) then
     AQuery.Close;
    AQuery.SQL.Clear;

    AQuery.SQL.Add('SELECT * FROM CONTATOS');
    AQuery.SQL.Add('WHERE COD_PORTADOR = :COD_PORTADOR');
    AQuery.SQL.Add('AND COD_TIPO_PORTADOR = :COD_TIPO_PORTADOR');
    AQuery.ParamByName('COD_PORTADOR').AsInteger := ACodPortador;
    AQuery.ParamByName('COD_TIPO_PORTADOR').AsInteger := aTipoPortador;
    AQuery.Open;

    AQuery.First;

    Result := TObjectList<Contato>.Create;
    while not(AQuery.Eof) do
    begin
      AContato := Contato.crieObj;

      with AContato, AQuery do
      begin
        setDescricao(FieldByName('DESCRICAO').AsString);
        SetCodPortador(FieldByName('COD_PORTADOR').AsInteger);
        SetCodTipoPortador(TipoPortador(FieldByName('COD_TIPO_PORTADOR').AsInteger));
        setObservacao(FieldByName('Observacao').AsString);
        setNumeroContato(FieldByName('NUM_CONTATO').AsInteger);

        getaTipoContato.setCodigo(FieldByName('cod_tipo_contato').AsInteger);
        if aDM.QTiposContatos.Locate('CODTipo', getaTipoContato.getCodigo, []) then
         getaTipoContato.setTipoContato(aDM.QTiposContatos.FieldByName('TIPOCONTATO').AsString);

      end;

      Result.Add(AContato);
      AQuery.Next;
    end;

    AQuery.Close;
  finally
    FreeAndNil(AQuery);
  end;
end;

function daoContato.carregarLista(lista: TObjectList<Contato>): string;
begin

end;

constructor daoContato.crieObj;
begin
  inherited;
end;

function daoContato.DeleteListaContatos(const ACodPortador, aTipoPortador: Integer): Boolean;
begin
  if (aDM.QContatos.Active) then
    aDM.QContatos.Close;

  if not aDM.Conexao.InTransaction then
    aDM.Transacao.StartTransaction;
  try
    aDM.QContatos.SQL.Clear;
    aDM.QContatos.SQL.Add('DELETE FROM CONTATOS WHERE COD_PORTADOR = :COD_PORTADOR');
    aDM.QContatos.SQL.Add(' AND COD_TIPO_PORTADOR = :COD_TIPO_PORTADOR');
    aDM.QContatos.ParamByName('COD_PORTADOR').AsInteger := ACodPortador;
    aDM.QContatos.ParamByName('COD_TIPO_PORTADOR').AsInteger := aTipoPortador;
    aDM.QContatos.ExecSQL;

    Result := (aDM.QContatos.RowsAffected > 0);

    aDM.Transacao.Commit;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro:' + e.Message);
      Result := False;
      aDM.Transacao.Rollback;
    end;
  end;
end;

function daoContato.excluir(pObj: TObject): string;
begin
  aDM.Conexao.StartTransaction;

  aDM.QContatos.SQL.Clear;
  aDM.QContatos.SQL.Add
    ('DELETE FROM CONTATOS WHERE COD_PORTADOR = :COD_PORTADOR');
  aDM.QContatos.SQL.Add(' AND COD_TIPO_PORTADOR = :COD_TIPO_PORTADOR');
  aDM.QContatos.ParamByName('COD_PORTADOR').AsInteger := Contato(pObj)
    .getaCodPortador;
  aDM.QContatos.ParamByName('COD_TIPO_PORTADOR').AsInteger := Integer(Contato(pObj)
    .getaCodTipoPortador);
  aDM.QContatos.ExecSQL;

  try
    aDM.Conexao.Commit;
    Result := 'SUCESSO';
  except
    aDM.Conexao.Rollback;
    Result := 'ERRO';
  end;
end;

function daoContato.getDS: TObject;
begin
  Result := aDM.DSContatos;
end;

function daoContato.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var
  msql: string;
begin
  msql := 'SELECT * FROM CONTATOS';

  case AFilter.TipoConsulta of

//    TpCCodigo:
//      begin
//        msql := 'SELECT * FROM Contatos WHERE COD =' + IntToStr(AFilter.Codigo);
//      end;

    // TpCParam:
    // begin
    // msql:= ( 'SELECT * FROM Contatos WHERE ESTADO LIKE  ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
    // end;

    TpCTODOS:
      begin
        msql := 'SELECT * FROM CONTATOS ORDER BY Contatos';
      end;

  end;

  aDM.QContatos.Active   := False;
  aDM.QContatos.SQL.Text := msql;
  aDM.QContatos.Open;
  Result := '';
end;

function daoContato.salvar(pObj: TObject): string;
var
  mContato: Contato;
  mTipoContato: TiposContatos;

begin
  mContato := Contato(pObj);
  mTipoContato := mContato.getaTipoContato;

  if aDM.QContatos.Active then
    aDM.QContatos.Close;
  aDM.QContatos.SQL.Clear;

  if not(aDM.Conexao.InTransaction) then
    aDM.Transacao.StartTransaction;
  try
    aDM.QContatos.SQL.Add('insert into CONTATOS');
    aDM.QContatos.SQL.Add('(COD_PORTADOR, DESCRICAO, COD_TIPO_PORTADOR, COD_TIPO_CONTATO, OBSERVACAO, NUM_CONTATO)');
    aDM.QContatos.SQL.Add('values');
    aDM.QContatos.SQL.Add('(:COD_PORTADOR, :DESCRICAO, :COD_TIPO_PORTADOR, :COD_TIPO_CONTATO, :OBSERVACAO, :NUM_CONTATO)');

    aDM.QContatos.ParamByName('COD_PORTADOR').AsInteger    := mContato.getaCodPortador;
    aDM.QContatos.ParamByName('DESCRICAO').Asstring        := mContato.getaDescricao;
    adm.QContatos.ParamByName('COD_TIPO_PORTADOR').AsInteger := Integer(mContato.getacodTipoPortador);
    adm.QContatos.ParamByName('COD_TIPO_CONTATO').AsInteger  := mContato.getaTipoContato.getCodigo;
    adm.QContatos.ParamByName('NUM_CONTATO').AsInteger  := mContato.getnumeroContato;
    adm.QContatos.ParamByName('OBSERVACAO').AsString  := mContato.getObservacao;

    aDM.QContatos.ExecSQL;

    aDM.Transacao.Commit;
    Result := 'S';
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro: ' + e.Message);
      Result := e.Message;
      aDM.Transacao.Rollback;
    end;
  end;
end;

function daoContato.salvarLista(lista: TObjectList<Contato>): string;
var
  I: Integer;
  Obj: TObject;
  CodPortador: Integer;
  CodTipoPortador: Integer;
begin
  // Result := False;
  CodPortador := lista[0].getaCodPortador;
  CodTipoPortador := Integer(lista[0].getaCodTipoPortador);

  for I := 0 to lista.Count - 1 do
  begin
    lista[I].setCodPortador(CodPortador);
    lista[i].setcodTipoPortador(TipoPortador(CodTipoPortador));
    Obj := lista[I];
    Result := Self.salvar(Obj);
  end;
end;

end.

