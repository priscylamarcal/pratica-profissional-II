unit UCtrlCompras;

interface

uses uCompras, uFilterSearch, uController, uRoupas, uCtrlRoupas,
  uCtrlFornecedores, uFornecedores, uCondicoesPagamentos, uCtrlCondicoesPagamentos, uDaoCompras,
   uCtrlVariacoesRoupas, uVariacoesRoupas, uCtrlProdutosCompras, uCtrlParcelasCompras;

  type
    ctrlCompras = class(Ctrl)
  private
  protected
    //CtrlRoupasItens
    aDaoCompras: DaoCompras;
    aCtrlFornecedores: ctrlFornecedores;
    aCtrlCondicoesPagamento: ctrlCondicoesPagamentos;
    aCtrlVariacoesRoupas: CtrlVariacoesRoupas;
    aCtrlProdutosCompras: CtrlProdutosCompras;
    aCtrlRoupas: CtrlRoupas;
    aCtrlParcelasCompras: CtrlParcelaCompra;
    //CtrlParcelasCondicoes
  public
    constructor crieObj; override;
    destructor destrua_se; override;
    procedure setDM(pDM: TObject); override;
    function getDS: TObject; override;
    function pesquisar(AFilter: TFilterSearch; pChave: string): string;
      override;
    function salvar(pObj: TObject): string; override;
    function excluir(pObj: TObject): string; override;
    function carregar(pObj: TObject): string; override;
    procedure setCtrlFornecedores(pCtrl: ctrlFornecedores);
    procedure setCtrlCondicoesPagamentos(pCtrl: CtrlCondicoesPagamentos);
    function getCtrlFornecedores: ctrlFornecedores;
    function getCtrlCondicoesPagamentos : CtrlCondicoesPagamentos;
    function getCtrlVariacoesRoupas : CtrlVariacoesRoupas;
    procedure setCtrlVariacoesRoupas(pCtrl: CtrlVariacoesRoupas);
    function getCtrlProdutosCompras : CtrlProdutosCompras;
    procedure setCtrlProdutosCompras(pCtrl: CtrlProdutosCompras);
    function getCtrlRoupas : CtrlRoupas;
    procedure setCtrlRoupas(pCtrl: CtrlRoupas);
    function getCtrlParcelasCompras : ctrlParcelaCompra;
    procedure setCtrlParcelasCompras(pCtrl: ctrlParcelaCompra);
    function VerificaExiste(pObj: TObject): Boolean;
    function ValidaExclusao(pObj: TObject): Boolean; override;
    function recuperarRoupa(var pRoupa: Roupas) : boolean;
    end;
implementation

{ ctrlCompras }

function ctrlCompras.carregar(pObj: TObject): string;
var mFornecedor: Fornecedores;
    mCondicaoPagamento: CondicoesPagamentos;
    AFilter: TFilterSearch;
    pChave: string;
begin
   aDaoCompras.Carregar(pObj);

  aCtrlFornecedores.setPosicao(Compras(pObj).getumFornecedor.getCodigo);
  mFornecedor := Compras(pObj).getumFornecedor;
  aCtrlFornecedores.carregar(TObject(mFornecedor));

  aCtrlCondicoesPagamento.setPosicao(Compras(pObj).getumaCondicaoPagamento.getCodigo);
  mCondicaoPagamento := Compras(pObj).getumaCondicaoPagamento;
  aCtrlCondicoesPagamento.carregar(TObject(mCondicaoPagamento));
  Compras(pObj).setListaProdutos(aCtrlProdutosCompras.RetornaListaProdutoCompra
    (Compras(pObj)));
  Compras(pObj).setListaParcelas(aCtrlParcelasCompras.RetornaListaParcelaCompra
    (Compras(pObj)));
end;

constructor ctrlCompras.crieObj;
begin
  aDaoCompras := daoCompras.CrieObj;
end;

destructor ctrlCompras.destrua_se;
begin
  aDaoCompras.destrua_se;
end;

function ctrlCompras.excluir(pObj: TObject): string;
begin
  if aCtrlProdutosCompras.DeleteListaProdutoCompra(Compras(pObj)) then
    if aCtrlParcelasCompras.DeleteListaParcelaCompra(Compras(pObj)) then
      result := aDaoCompras.excluir(pObj);
end;

function ctrlCompras.getCtrlCondicoesPagamentos: CtrlCondicoesPagamentos;
begin
  result := aCtrlCondicoesPagamento;
end;

function ctrlCompras.getCtrlFornecedores: ctrlFornecedores;
begin
  result := aCtrlFornecedores;
end;

function ctrlCompras.getCtrlParcelasCompras: ctrlParcelaCompra;
begin
  result := aCtrlParcelasCompras;
end;

function ctrlCompras.getCtrlProdutosCompras: CtrlProdutosCompras;
begin
  result := aCtrlProdutosCompras;
end;

function ctrlCompras.getCtrlRoupas: CtrlRoupas;
begin
  result := aCtrlRoupas;
end;

function ctrlCompras.getCtrlVariacoesRoupas: CtrlVariacoesRoupas;
begin
  result := aCtrlVariacoesRoupas;
end;

function ctrlCompras.getDS: TObject;
begin
  result := aDaoCompras.getDS;
end;

function ctrlCompras.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  result := aDaoCompras.pesquisar(AFilter, pChave);
end;

function ctrlCompras.recuperarRoupa(var pRoupa: Roupas): boolean;
begin
  result := aDaoCompras.RecuperarRoupa(pRoupa);
end;

function ctrlCompras.salvar(pObj: TObject): string;
begin
  if aDaoCompras.salvar(pObj) = 'SUCESSO' then
  begin
    aCtrlProdutosCompras.DeleteListaProdutoCompra(Compras(pObj));
    aCtrlProdutosCompras.salvarProdutoCompra(Compras(pObj).getListaProdutos);
    aCtrlParcelasCompras.DeleteListaParcelaCompra(Compras(pObj));
    aCtrlParcelasCompras.salvarParcelasCompras(Compras(pObj).getListaParcelas);
  end;
end;

procedure ctrlCompras.setCtrlCondicoesPagamentos(
  pCtrl: CtrlCondicoesPagamentos);
begin
   aCtrlCondicoesPagamento := pCtrl;
end;

procedure ctrlCompras.setCtrlFornecedores(pCtrl: ctrlFornecedores);
begin
   aCtrlFornecedores := pCtrl;
end;

procedure ctrlCompras.setCtrlParcelasCompras(pCtrl: ctrlParcelaCompra);
begin
   aCtrlParcelasCompras := pCtrl;
end;

procedure ctrlCompras.setCtrlProdutosCompras(pCtrl: CtrlProdutosCompras);
begin
  aCtrlProdutosCompras := pCtrl;
end;

procedure ctrlCompras.setCtrlRoupas(pCtrl: CtrlRoupas);
begin
  aCtrlRoupas := pCtrl;
end;

procedure ctrlCompras.setCtrlVariacoesRoupas(pCtrl: CtrlVariacoesRoupas);
begin
   aCtrlVariacoesRoupas := pCtrl;
end;

procedure ctrlCompras.setDM(pDM: TObject);
begin
  inherited;
  aDaoCompras.setDM(pDM);
end;

function ctrlCompras.ValidaExclusao(pObj: TObject): Boolean;
begin
  Result := aDaoCompras.ValidaExclusao(pObj);
end;

function ctrlCompras.VerificaExiste(pObj: TObject): Boolean;
begin
  Result := aDaoCompras.VerificaExiste(pObj);
end;

end.
