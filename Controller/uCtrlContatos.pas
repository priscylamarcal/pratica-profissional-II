unit uCtrlContatos;

interface

uses uController, uFilterSearch, uContatos,
    system.Generics.Collections, uTiposContatos, uDaoContatos, uCtrlTiposContatos;

type ctrlContatos = class (Ctrl)
  private

  protected
    aDaoContatos : daoContato;
    aCtrlTiposContatos : CtrlTiposContatos;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
    function salvarContato ( lista: TObjectList<Contato> ) : string;

    procedure setCtrlTiposContatos ( pCtrl : ctrlTiposContatos );
    function getCtrlTiposContatos : ctrlTiposContatos;


    function RetornaListaContatos(const ACodPortador, aTipoPortador: Integer): TObjectList<Contato>;
    function DeleteListaContatos(const ACodPortador, aTipoPortador: Integer): Boolean;
end;

implementation

{ ctrlContatos }



{ ctrlContatos }

function ctrlContatos.carregar(pObj: TObject): string;
var mTipoContatos : TiposContatos;
    aFilter: TFilterSearch;
    tipoConsulta : TTipoConsulta;
    pChave : string;

begin
  aDaoContatos.carregar( pObj );

  mTipoContatos := Contato( pObj ).getaTipoContato;
  aCtrlTiposContatos.pesquisar(aFilter, pChave);

end;

constructor ctrlContatos.crieObj;
begin
  inherited;
  aDaoContatos := DaoContato.crieObj;
end;

function ctrlContatos.DeleteListaContatos(const ACodPortador,
  aTipoPortador: Integer): Boolean;
begin
  aDaoContatos.DeleteListaContatos(ACodPortador, aTipoPortador);
end;

destructor ctrlContatos.destrua_se;
begin
  aDaoContatos.destrua_se;
  inherited;
end;

function ctrlContatos.excluir(pObj: TObject): string;
begin

end;

function ctrlContatos.getCtrlTiposContatos: ctrlTiposContatos;
begin
  result := aCtrlTiposContatos;
end;

function ctrlContatos.getDS: TObject;
begin
  Result:= aDaoContatos.getDS;
end;

function ctrlContatos.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoContatos.pesquisar(AFilter, pChave);
end;

function ctrlContatos.RetornaListaContatos(const ACodPortador,
  aTipoPortador: Integer): TObjectList<Contato>;
begin
  Result := aDaoContatos.RetornaListaContatos(ACodPortador, aTipoPortador);
end;

function ctrlContatos.salvar(pObj: TObject): string;
begin
  aDaoContatos.salvar(pObj);
end;

function ctrlContatos.salvarContato(lista: TObjectList<Contato>): string;
begin
  aDaoContatos.salvarLista(lista);
end;

procedure ctrlContatos.setCtrlTiposContatos(pCtrl: ctrlTiposContatos);
begin
  aCtrlTiposContatos:= pCtrl;
end;

procedure ctrlContatos.setDM(pDM: TObject);
begin
  inherited;
  aDaoContatos.setDM(pDM);
end;

end.
