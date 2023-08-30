unit uCtrlCondicoesPagamentos;
interface
uses uController, uDaoCondicoesPagamentos, uFilterSearch, uCondicoesPagamentos,
  uFormaPagamento, uCtrlFormasPagamentos, uCtrlParcelas;
type ctrlCondicoesPagamentos = class ( Ctrl )
  private
  protected
    aDaoCondicoes : daoCondicoesPagamentos;
    aCtrlFormas   : ctrlFormasPagamentos;
    aCtrlParcelas : ctrlParcelas;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
    procedure setPosicao( acodigo : integer );
    procedure setCtrlFormas ( pCtrl : ctrlFormasPagamentos );
    function getCtrlFormas : ctrlFormasPagamentos;
    procedure SetCtrlParcelas(pCtrl : ctrlParcelas);
    function getCtrlParcelas:ctrlParcelas;
end;
implementation
uses
  System.SysUtils;
{ ctrlCondicoesPagamentos }
function ctrlCondicoesPagamentos.carregar(pObj: TObject): string;
var mFormas : FormasPagamentos; AFilter : TFilterSearch;
begin
  aDaoCondicoes.carregar( pObj );
  aCtrlFormas.setPosicao(CondicoesPagamentos( pObj ).getaFormaPgto.GetCodigo);
  mFormas:= CondicoesPagamentos( pObj ).getaFormaPgto;
  //aCtrlFormas.pesquisar( AFilter, IntToStr ( mFormas.getCodigo  ) );
  aCtrlFormas.carregar( TObject ( mFormas ) );
  CondicoesPagamentos( pObj ).setListaParcelas(aCtrlParcelas.RetornaListaParcelas(CondicoesPagamentos(pObj).getCodigo));
end;
constructor ctrlCondicoesPagamentos.crieObj;
begin
  aDaoCondicoes:= daoCondicoesPagamentos.crieObj;
end;
destructor ctrlCondicoesPagamentos.destrua_se;
begin
  aDaoCondicoes.destrua_se;
end;
function ctrlCondicoesPagamentos.excluir(pObj: TObject): string;
begin
   aCtrlParcelas.DeleteListaParcelasCondPgto(CondicoesPagamentos(pObj).getCodigo);
   result := aDaoCondicoes.excluir(pObj);
end;
function ctrlCondicoesPagamentos.getCtrlFormas: ctrlFormasPagamentos;
begin
  Result:= aCtrlFormas;
end;
function ctrlCondicoesPagamentos.getCtrlParcelas: ctrlParcelas;
begin
  Result := aCtrlParcelas;
end;
function ctrlCondicoesPagamentos.getDS: TObject;
begin
  Result:= aDaoCondicoes.getDS;
end;
function ctrlCondicoesPagamentos.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
begin
  Result:= aDaoCondicoes.pesquisar( AFilter, pChave );
end;
function ctrlCondicoesPagamentos.salvar(pObj: TObject): string;
begin
  if aDaoCondicoes.salvar( pObj ) = 'SUCESSO' then
    begin
      aCtrlParcelas.DeleteListaParcelasCondPgto(CondicoesPagamentos(pObj).getCodigo);
      CondicoesPagamentos(pObj).setCodigoListaParcelas;
      aCtrlParcelas.salvarParcela(CondicoesPagamentos(pObj).getListaParcelas);
    end;
end;
procedure ctrlCondicoesPagamentos.setCtrlFormas(pCtrl: ctrlFormasPagamentos);
begin
  aCtrlFormas:= pCtrl;
end;
procedure ctrlCondicoesPagamentos.SetCtrlParcelas(pCtrl: ctrlParcelas);
begin
  aCtrlParcelas := pCtrl;
end;
procedure ctrlCondicoesPagamentos.setDM(pDM: TObject);
begin
  inherited;
  aDaoCondicoes.setDM( pDM );
end;
procedure ctrlCondicoesPagamentos.setPosicao(acodigo: integer);
begin
  aDaoCondicoes.setPosicao(aCodigo);
end;

end.
