unit uCtrlRoupas;

interface

uses uDaoRoupas, uFilterSearch, uController, uRoupas, uCtrlColecoes, uCtrlCores,
  uCtrlFornecedores, uCtrlGruposRoupas, uCtrlMarcas, uCtrlTamanhos,
  uGruposRoupas, uMarcas, uCores, uTamanhos, uFornecedores, uColecoes,
  uVariacoesRoupas, uCtrlVariacoesRoupas;

type
  ctrlRoupas = class(Ctrl)
  private
  protected
    aDaoRoupas: daoRoupas;
    aCtrlGruposProdutos: ctrlGruposRoupas;
    aCtrlMarcas: ctrlMarcas;
    aCtrlCores: ctrlCores;
    aCtrlTamanhos: ctrlTamanhos;
    aCtrlFornecedores: ctrlFornecedores;
    aCtrlColecoes: ctrlColecoes;
    aCtrlVariacoesRoupas: CtrlVariacoesRoupas;
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
    procedure setCtrlGruposProdutos(pCtrl: ctrlGruposRoupas);
    procedure setCtrlMarcas(pCtrl: ctrlMarcas);
    procedure setCtrlCores(pCtrl: ctrlCores);
    procedure setCtrlTamanhos(pCtrl: ctrlTamanhos);
    procedure setCtrlFornecedores(pCtrl: ctrlFornecedores);
    procedure setCtrlColecoes(pCtrl: ctrlColecoes);
    procedure setCtrlVariacoesRoupas(pCtrl: CtrlVariacoesRoupas);
    function getCtrlGruposProdutos: ctrlGruposRoupas;
    function getCtrlMarcas: ctrlMarcas;
    function getCtrlCores: ctrlCores;
    function getCtrlTamanhos: ctrlTamanhos;
    function getCtrlFornecedores: ctrlFornecedores;
    function getCtrlColecoes: ctrlColecoes;
    function getCtrlVariacoesRoupas: CtrlVariacoesRoupas;
    function recuperar(var pRoupa: Roupas) : boolean;
  end;

implementation

{ ctrlRoupas }
function ctrlRoupas.carregar(pObj: TObject): string;
var
  mRoupa: Roupas;
  mGrupoProduto: GruposRoupas;
  mMarca: Marcas;
  mCor: Cores;
  mTamanho: Tamanhos;
  mFornecedor: Fornecedores;
  mColecao: Colecoes;
  AFilter: TFilterSearch;
  pChave: string;
begin
  aDaoRoupas.carregar(pObj);

  aCtrlGruposProdutos.setPosicao(Roupas(pObj).getoGrupoRoupa.getCodigo);
  mGrupoProduto := Roupas(pObj).getoGrupoRoupa;
  aCtrlGruposProdutos.carregar(TObject(mGrupoProduto));
  // aCtrlGruposProdutos.pesquisar( AFilter, pChave );
  aCtrlMarcas.setPosicao(Roupas(pObj).getaMarca.getCodigo);
  mMarca := Roupas(pObj).getaMarca;
  aCtrlMarcas.carregar(TObject(mMarca));
  // aCtrlMarcas.pesquisar( AFilter, pChave );
  aCtrlCores.setPosicao(Roupas(pObj).getaCor.getCodigo);
  mCor := Roupas(pObj).getaCor;
  aCtrlCores.carregar(TObject(mCor));
  // aCtrlCores.pesquisar( AFilter, pChave );
  aCtrlTamanhos.setPosicao(Roupas(pObj).getoTamanho.getCodigo);
  mTamanho := Roupas(pObj).getoTamanho;
  aCtrlTamanhos.carregar(TObject(mTamanho));
  // aCtrlTamanhos.pesquisar( AFilter, pChave );
  aCtrlFornecedores.setPosicao(Roupas(pObj).getoFornecedor.getCodigo);
  mFornecedor := Roupas(pObj).getoFornecedor;
  aCtrlFornecedores.carregar(TObject(mFornecedor));
  // aCtrlFornecedores.pesquisar( AFilter, pChave );
  aCtrlColecoes.setPosicao(Roupas(pObj).getaColecao.getCodigo);
  mColecao := Roupas(pObj).getaColecao;
  aCtrlColecoes.carregar(TObject(mColecao));
  // aCtrlColecoes.pesquisar( AFilter, pChave );
  Roupas(pObj).setListaVariacao(aCtrlVariacoesRoupas.RetornaListaVariacoesRoupas
    (Roupas(pObj).getCodigo));
end;

constructor ctrlRoupas.crieObj;
begin
  aDaoRoupas := daoRoupas.crieObj;
end;

destructor ctrlRoupas.destrua_se;
begin
  aDaoRoupas.destrua_se;
end;

function ctrlRoupas.excluir(pObj: TObject): string;
begin
  if aCtrlVariacoesRoupas.DeleteListaVariacoesRoupas(Roupas(pObj).getCodigo) then
    result := aDaoRoupas.excluir(pObj);
end;

function ctrlRoupas.getCtrlColecoes: ctrlColecoes;
begin
  result := aCtrlColecoes;
end;

function ctrlRoupas.getCtrlCores: ctrlCores;
begin
  result := aCtrlCores;
end;

function ctrlRoupas.getCtrlFornecedores: ctrlFornecedores;
begin
  result := aCtrlFornecedores;
end;

function ctrlRoupas.getCtrlGruposProdutos: ctrlGruposRoupas;
begin
  result := aCtrlGruposProdutos;
end;

function ctrlRoupas.getCtrlMarcas: ctrlMarcas;
begin
  result := aCtrlMarcas;
end;

function ctrlRoupas.getCtrlTamanhos: ctrlTamanhos;
begin
  result := aCtrlTamanhos;
end;

function ctrlRoupas.getCtrlVariacoesRoupas: CtrlVariacoesRoupas;
begin
  result := aCtrlVariacoesRoupas;
end;

function ctrlRoupas.getDS: TObject;
begin
  result := aDaoRoupas.getDS;
end;

function ctrlRoupas.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  result := aDaoRoupas.pesquisar(AFilter, pChave);
end;

function ctrlRoupas.recuperar(var pRoupa: Roupas): boolean;
begin
  result := aDaoRoupas.recuperar(pRoupa);
end;

function ctrlRoupas.salvar(pObj: TObject): string;
begin
  if aDaoRoupas.salvar(pObj) = 'SUCESSO' then
  begin
    aCtrlVariacoesRoupas.DeleteListaVariacoesRoupas(Roupas(pObj).getCodigo);
    Roupas(pObj).setCodigoListaVariacoes;
    aCtrlVariacoesRoupas.salvarVariacaoRoupa(Roupas(pObj).getListaVariacao);
  end;
end;

procedure ctrlRoupas.setCtrlColecoes(pCtrl: ctrlColecoes);
begin
  aCtrlColecoes := pCtrl;
end;

procedure ctrlRoupas.setCtrlCores(pCtrl: ctrlCores);
begin
  aCtrlCores := pCtrl;
end;

procedure ctrlRoupas.setCtrlFornecedores(pCtrl: ctrlFornecedores);
begin
  aCtrlFornecedores := pCtrl;
end;

procedure ctrlRoupas.setCtrlGruposProdutos(pCtrl: ctrlGruposRoupas);
begin
  aCtrlGruposProdutos := pCtrl;
end;

procedure ctrlRoupas.setCtrlMarcas(pCtrl: ctrlMarcas);
begin
  aCtrlMarcas := pCtrl;
end;

procedure ctrlRoupas.setCtrlTamanhos(pCtrl: ctrlTamanhos);
begin
  aCtrlTamanhos := pCtrl;
end;

procedure ctrlRoupas.setCtrlVariacoesRoupas(pCtrl: CtrlVariacoesRoupas);
begin
  aCtrlVariacoesRoupas := pCtrl;
end;

procedure ctrlRoupas.setDM(pDM: TObject);
begin
  inherited;
  aDaoRoupas.setDM(pDM);
end;

end.
