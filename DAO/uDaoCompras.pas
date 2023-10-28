unit uDaoCompras;

interface

uses uDAO, uFilterSearch, uCondicoesPagamentos,
  uFornecedores,  uRoupas, Vcl.ComCtrls, uCompras,
 Data.DB,   FireDAC.Comp.Client, System.SysUtils;

type daoCompras = class( DAO )
  private
  protected
  public
    constructor crieObj;                              override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar (  pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
    function VerificaExiste(pObj: TObject): Boolean;
    function ValidaExclusao(pObj: TObject): Boolean; override;
    function recuperarRoupa(var pRoupa: Roupas) : boolean;
end;

implementation

{ daoCompras }

function daoCompras.carregar(pObj: TObject): string;
var mRoupa : Roupas;
    mFornecedor : Fornecedores;
    mCondicaoPagamento: CondicoesPagamentos;
    mCompra: Compras;
begin
    mCompra := Compras(pObj);
    mFornecedor := mCompra.getUmFornecedor;
    mCondicaoPagamento := mCompra.getUmaCondicaoPagamento;

    mCompra.setModelo(aDm.QCompras.FieldByName('MODELO').AsString);
    mCompra.setSerie(aDm.QCompras.FieldByName('SERIE').AsString);
    mCompra.setNumNota(aDm.QCompras.FieldByName('NUMERO').AsString);
    mCompra.setDataEmissao(aDm.QCompras.FieldByName('DATA_EMISSAO').AsDateTime);
    mCompra.setDataChegada(aDm.QCompras.FieldByName('DATA_CHEGADA').AsDateTime);
    mCompra.getUmFornecedor.setCodigo(aDm.QCompras.FieldByName('COD_FORNECEDOR').AsInteger);
    //mCompra.setqtdRoupas(aDm.QCompras.FieldByName('QTD').AsInteger);
    //mCompra.setDesconto(aDm.QCompras.FieldByName('DESCONTO').AsFloat);
    mCompra.getUmaCondicaopagamento.setCodigo(aDm.QCompras.FieldByName('COD_CONDICAO').AsInteger);
    mCompra.setTotalValor(aDm.QCompras.FieldByName('VALOR_TOTAL').AsFloat);
    mCompra.setQtdTotalRoupa(aDm.QCompras.FieldByName('QTD').AsInteger);
    mCompra.setQtdTotalDesconto(aDm.QCompras.FieldByName('DESCONTO').AsFloat);
    mCompra.setFrete(aDm.QCompras.FieldByName('FRETE').AsFloat);
    mCompra.setSeguro(aDm.QCompras.FieldByName('SEGURO').AsFloat);
    mCompra.setOutrasDespesas(aDm.QCompras.FieldByName('OUTRAS_DESPESAS').AsFloat);
    mCompra.setObservacao( aDM.QCompras.FieldByName('OBS').AsString );
    mCompra.setDataCad( aDM.QCompras.FieldByName('DATACAD').AsDateTime );
    mCompra.setUltAlt( aDM.QCompras.FieldByName('ULTALT').AsDateTime );
    mCompra.setCodUsu( aDM.QCompras.FieldByName('CODUSU').Value );
end;

constructor daoCompras.crieObj;
begin
  inherited;

end;

function daoCompras.excluir(pObj: TObject): string;
begin
    if (aDM.QCompras.Active) then
    aDM.QCompras.Close;
  if not aDM.Conexao.InTransaction then
    aDM.Transacao.StartTransaction;
  try
    aDM.QCompras.SQL.Clear;
    aDM.QCompras.SQL.Add('DELETE FROM COMPRAS WHERE COD_FORNECEDOR = :COD_FORNECEDOR');
    aDM.QCompras.SQL.Add(' AND MODELO = :MODELO AND SERIE = :SERIE AND NUMERO = :NUMERO');
    aDM.QCompras.ParamByName('COD_FORNECEDOR').AsInteger := Compras(pObj).getUmFornecedor.getCodigo;
    aDM.QCompras.ParamByName('MODELO').AsString := Compras(pObj).getModelo;
    aDM.QCompras.ParamByName('SERIE').AsString := Compras(pObj).getSerie;
    aDM.QCompras.ParamByName('NUMERO').AsString := Compras(pObj).getNumNota;
    
    aDM.QCompras.ExecSQL;
    if (aDM.QCompras.RowsAffected > 0) then
      result := 'SUCESSO';
    aDM.Transacao.Commit;
  except
    on e: Exception do
    begin
      raise Exception.Create('Erro:' + e.Message);
      Result := 'FALHA';
      aDM.Transacao.Rollback;
    end;
  end;
end;

function daoCompras.getDS: TObject;
begin
   Result:= aDM.DSCompras;
end;

function daoCompras.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM COMPRAS';
    case AFilter.TipoConsulta of
     TpCCodigo:
     begin
       msql:= 'SELECT * FROM COMPRAS WHERE NUMERO =' + IntToStr( AFilter.Codigo );
     end;
     TpCParam:
     begin
       msql:= ( 'SELECT * FROM COMPRAS WHERE NUMERO LIKE  ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;
     TpCTODOS:
     begin
       msql:= 'SELECT * FROM COMPRAS ORDER BY NUMERO';
     end;
    end;
    aDM.QCompras.Active:= false;
    aDM.QCompras.SQL.Text:=msql;
    aDM.QCompras.Open;
    result:= '';
end;


function daoCompras.recuperarRoupa(var pRoupa: Roupas): boolean;
var
  AQuery  : TFDQuery;
begin
  Result := false;
  AQuery := TFDQuery.Create(nil);
  try
    AQuery.Connection  := adm.Conexao;
    AQuery.Transaction := aDM.Transacao;

    if (AQuery.Active) then
     AQuery.Close;
    AQuery.SQL.Clear;

    AQuery.SQL.Add('SELECT R.*, G.GRUPOROUPA, M.MARCA, F.nome_razao_social as FORNECEDOR,');
    AQuery.SQL.Add(' C.COLECAO, CO.COR, S.SIGLA FROM ROUPAS R');
    AQuery.SQL.Add(' LEFT JOIN GRUPOS_ROUPAS G ON G.CODGRUPO = R.CODGRUPOROUPA');
    AQuery.SQL.Add(' LEFT JOIN MARCAS M ON M.CODMARCA = R.CODMARCA');
    AQuery.SQL.Add(' LEFT JOIN FORNECEDORES F ON F.CODFORN = R.CODFORNECEDOR');
    AQuery.SQL.Add(' LEFT JOIN COLECOES C ON c.CODCOLECAO = R.CODCOLECAO');
    AQuery.SQL.Add(' LEFT JOIN CORES CO ON CO.CODCOR = R.CODCOR');
    AQuery.SQL.Add(' LEFT JOIN SIGLA_TAMANHOS S ON S.CODSIGLA = R.CODTAMANHO');
    AQuery.SQL.Add('WHERE COD_ROUPA = :COD_ROUPA ');
    AQuery.ParamByName('COD_ROUPA').AsInteger := pRoupa.getCodigo;

    AQuery.Open;

    AQuery.First;

    while not(AQuery.Eof) do
    begin

      with pRoupa, AQuery do
      begin
        setCodigo(FieldByName('COD_ROUPA').Value );
        setDescricao( FieldByName('DESCRICAO_ROUPA').AsString );
        setCodBarra( FieldByName('COD_BARRA').AsString );
        setReferencia( FieldByName('REFERENCIA').AsString );
        setCustoUnitario( FieldByName('VALOR_CUSTO').AsFloat );
        setLucro( FieldByName('LUCRO').AsFloat );
        setValorVenda( FieldByName('VALOR_VENDA').AsFloat );
        setObs( FieldByName('OBS').AsString );
        setDataCad( FieldByName('DATACAD').AsDateTime );
        setUltAlt( FieldByName('ULTALT').AsDateTime );
        setCodUsu( FieldByName('CODUSU').Value );
        getoGrupoRoupa.setCodigo( FieldByName('CODGRUPOROUPA').Value );
        getoGrupoRoupa.setGrupoRoupa( FieldByName('GRUPOROUPA').AsString );
        getaMarca.setCodigo( FieldByName('CODMARCA').Value );
        getaMarca.setMarca( FieldByName('MARCA').AsString );
        getaCor.setCodigo( FieldByName('CODCOR').Value );
        getaCor.setCOR( FieldByName('COR').Value );
        getoTamanho.setCodigo( FieldByName('CODTAMANHO').Value );
        getoTamanho.setSiglaTamanho( FieldByName('sigla').Value );
        getoFornecedor.setCodigo( FieldByName('CODFORNECEDOR').Value );
        getoFornecedor.setNomeRazaoSocial( FieldByName('FORNECEDOR').AsString );
        getaColecao.setCodigo( FieldByName('CODCOLECAO').Value );
        getaColecao.setColecao( FieldByName('COLECAO').AsString );
        setUnidadeMedida( FieldByName('UNIDADE_MEDIDA').Value );
      end;

      Result := True;
      AQuery.Next;
    end;

    AQuery.Close;
  finally
    FreeAndNil(AQuery);
  end;
end;

function daoCompras.salvar(pObj: TObject): string;
var mCompra : Compras;
    mCondicao : CondicoesPagamentos;  
    mFornecedor : Fornecedores;
begin
  mCompra := Compras( pObj );
  mFornecedor := mCompra.getumFornecedor;
  mCondicao := mCompra.getUmaCondicaoPagamento;
  aDM.Transacao.StartTransaction;
  try
    if mCompra.getCodigo = 0 then
    begin
       aDM.QCompras.Insert;
       aDM.QCompras.FieldByName('DATACAD').AsDateTime:= now;
    end
    else
       aDM.QCompras.Edit;
    aDM.QCompras.FieldByName('MODELO').AsString := mCompra.getModelo;
    aDM.QCompras.FieldByName('SERIE').AsString := mCompra.getSerie;
    aDM.QCompras.FieldByName('NUMERO').AsString := mCompra.getNumNota;
    aDM.QCompras.FieldByName('COD_FORNECEDOR').AsInteger := mCompra.getumFornecedor.getCodigo;
    aDM.QCompras.FieldByName('COD_CONDICAO').AsInteger := mCompra.getumaCondicaoPagamento.getCodigo;
    aDM.QCompras.FieldByName('DATA_EMISSAO').AsDatetime := mCompra.getDataEmissao;
    aDM.QCompras.FieldByName('DATA_CHEGADA').AsDatetime := mCompra.getDataChegada;
    aDM.QCompras.FieldByName('QTD').AsInteger := mCompra.getQtdTotalRoupa;
    aDM.QCompras.FieldByName('DESCONTO').AsCurrency := mCompra.getQtdTotalDesconto;
    aDM.QCompras.FieldByName('VALOR_TOTAL').AsCurrency := mCompra.getTotalValor;
    aDM.QCompras.FieldByName('FRETE').AsCurrency := mCompra.getFrete;
    aDM.QCompras.FieldByName('SEGURO').AsCurrency := mCompra.getSeguro;
    aDM.QCompras.FieldByName('OUTRAS_DESPESAS').AsCurrency := mCompra.getOutrasDespesas;
    aDM.QCompras.FieldByName('OBS').AsString:= mCompra.getObservacao;
    aDM.QCompras.FieldByName('ULTALT').AsDateTime:= now;
    aDM.QCompras.FieldByName('CODUSU').AsInteger:= mCompra.getCodUsu;
    aDM.QCompras.Post;
    aDM.Transacao.Commit;
    result := 'SUCESSO';
  except
    aDM.Transacao.Rollback;
    result := 'Falha';
  end;
end;

function daoCompras.ValidaExclusao(pObj: TObject): Boolean;
begin
  result := true;
end;

function daoCompras.VerificaExiste(pObj: TObject): Boolean;
var aux : string;
begin
    aux := aDM.QCompras.SQL.text;
    aDM.QCompras.SQL.clear;
    aDM.QCompras.SQL.Add('SELECT * FROM COMPRAS WHERE COD_FORNECEDOR = :COD_FORNECEDOR');
    aDM.QCompras.SQL.Add(' AND MODELO = :MODELO AND SERIE = :SERIE AND NUMERO = :NUMERO');
    aDM.QCompras.ParamByName('COD_FORNECEDOR').AsInteger := Compras(pObj).getUmFornecedor.getCodigo;
    aDM.QCompras.ParamByName('MODELO').AsString := Compras(pObj).getModelo;
    aDM.QCompras.ParamByName('SERIE').AsString := Compras(pObj).getSerie;
    aDM.QCompras.ParamByName('NUMERO').AsString := Compras(pObj).getNumNota;

    aDM.QCompras.Active:= false;
    aDM.QCompras.open;
    result:= not aDm.QCompras.isEmpty;
    aDM.QCompras.Active:= true;
    aDM.QCompras.SQL.clear;
    aDM.QCompras.SQL.text := aux;
end;

end.
