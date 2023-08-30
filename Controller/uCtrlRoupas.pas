unit uCtrlRoupas;

interface

uses uDaoRoupas, uFilterSearch, uController, uRoupas, uCtrlColecoes, uCtrlCores,
  uCtrlFornecedores, uCtrlGruposRoupas, uCtrlMarcas, uCtrlTamanhos,
  uGruposRoupas, uMarcas, uCores, uTamanhos, uFornecedores, uColecoes;

type ctrlRoupas = class( Ctrl )
  private
  protected
    aDaoRoupas : daoRoupas;

    aCtrlGruposProdutos : ctrlGruposRoupas;
    aCtrlMarcas : ctrlMarcas;
    aCtrlCores : ctrlCores;
    aCtrlTamanhos : ctrlTamanhos;
    aCtrlFornecedores : ctrlFornecedores;
    aCtrlColecoes : ctrlColecoes;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;

    procedure setCtrlGruposProdutos ( pCtrl : ctrlGruposRoupas );
    procedure setCtrlMarcas ( pCtrl : ctrlMarcas );
    procedure setCtrlCores ( pCtrl : ctrlCores );
    procedure setCtrlTamanhos ( pCtrl : ctrlTamanhos );
    procedure setCtrlFornecedores ( pCtrl : ctrlFornecedores );
    procedure setCtrlColecoes ( pCtrl : ctrlColecoes );

    function getCtrlGruposProdutos : ctrlGruposRoupas;
    function getCtrlMarcas : ctrlMarcas;
    function getCtrlCores : ctrlCores;
    function getCtrlTamanhos : ctrlTamanhos;
    function getCtrlFornecedores : ctrlFornecedores;
    function getCtrlColecoes : ctrlColecoes;
end;

implementation

{ ctrlRoupas }

function ctrlRoupas.carregar(pObj: TObject): string;
var mRoupa : Roupas; mGrupoProduto : GruposRoupas; mMarca : Marcas;
    mCor : Cores; mTamanho : Tamanhos; mFornecedor : Fornecedores;
    mColecao: Colecoes; AFilter : TFilterSearch; pChave : string;
begin
  aDaoRoupas.carregar( pObj );


  aCtrlGruposProdutos.setPosicao(Roupas( pObj ).getoGrupoRoupa.getCodigo);
  mGrupoProduto:= Roupas( pObj ).getoGrupoRoupa;
  aCtrlGruposProdutos.carregar( TObject(mGrupoProduto) );
  //aCtrlGruposProdutos.pesquisar( AFilter, pChave );

  aCtrlMarcas.setPosicao(Roupas( pObj ).getaMarca.getCodigo);
  mMarca:= Roupas( pObj ).getaMarca;
  aCtrlMarcas.carregar( TObject(mMarca) );
  //aCtrlMarcas.pesquisar( AFilter, pChave );

  aCtrlCores.setPosicao(Roupas( pObj ).getaCor.getCodigo);
  mCor:= Roupas( pObj ).getaCor;
  aCtrlCores.carregar( TObject(mCor) );
  //aCtrlCores.pesquisar( AFilter, pChave );

  aCtrlTamanhos.setPosicao(Roupas( pObj ).getoTamanho.getCodigo);
  mTamanho:= Roupas( pObj ).getoTamanho;
  aCtrlTamanhos.carregar( TObject(mTamanho) );
  //aCtrlTamanhos.pesquisar( AFilter, pChave );

  aCtrlFornecedores.setPosicao(Roupas( pObj ).getoFornecedor.getCodigo);
  mFornecedor:= Roupas( pObj ).getoFornecedor;
  aCtrlFornecedores.carregar( TObject(mFornecedor) );
  //aCtrlFornecedores.pesquisar( AFilter, pChave );

  aCtrlColecoes.setPosicao(Roupas( pObj ).getaColecao.getCodigo);
  mColecao:= Roupas( pObj ).getaColecao;
  aCtrlColecoes.carregar( TObject(mColecao) );

  //aCtrlColecoes.pesquisar( AFilter, pChave );
end;

constructor ctrlRoupas.crieObj;
begin
  aDaoRoupas:= daoRoupas.crieObj;
end;

destructor ctrlRoupas.destrua_se;
begin
  aDaoRoupas.destrua_se;
end;

function ctrlRoupas.excluir(pObj: TObject): string;
begin
  result := aDaoRoupas.Excluir(pObj);
end;

function ctrlRoupas.getCtrlColecoes: ctrlColecoes;
begin
  Result:= aCtrlColecoes;
end;

function ctrlRoupas.getCtrlCores: ctrlCores;
begin
  Result:= aCtrlCores;
end;

function ctrlRoupas.getCtrlFornecedores: ctrlFornecedores;
begin
  Result:= aCtrlFornecedores;
end;

function ctrlRoupas.getCtrlGruposProdutos: ctrlGruposRoupas;
begin
  Result:= aCtrlGruposProdutos;
end;

function ctrlRoupas.getCtrlMarcas: ctrlMarcas;
begin
  Result:= aCtrlMarcas;
end;

function ctrlRoupas.getCtrlTamanhos: ctrlTamanhos;
begin
  Result:= aCtrlTamanhos;
end;

function ctrlRoupas.getDS: TObject;
begin
  Result:= aDaoRoupas.getDS;
end;

function ctrlRoupas.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoRoupas.pesquisar( AFilter, pChave );
end;

function ctrlRoupas.salvar(pObj: TObject): string;
begin
  aDaoRoupas.salvar( pObj );
end;

procedure ctrlRoupas.setCtrlColecoes(pCtrl: ctrlColecoes);
begin
  aCtrlColecoes:= pCtrl;
end;

procedure ctrlRoupas.setCtrlCores(pCtrl: ctrlCores);
begin
  aCtrlCores:= pCtrl;
end;

procedure ctrlRoupas.setCtrlFornecedores(pCtrl: ctrlFornecedores);
begin
  aCtrlFornecedores:= pCtrl;
end;

procedure ctrlRoupas.setCtrlGruposProdutos(pCtrl: ctrlGruposRoupas);
begin
  aCtrlGruposProdutos:= pCtrl;
end;

procedure ctrlRoupas.setCtrlMarcas(pCtrl: ctrlMarcas);
begin
  aCtrlMarcas:= pCtrl;
end;

procedure ctrlRoupas.setCtrlTamanhos(pCtrl: ctrlTamanhos);
begin
  aCtrlTamanhos:= pCtrl;
end;

procedure ctrlRoupas.setDM(pDM: TObject);
begin
  inherited;
  aDaoRoupas.setDM( pDM );
end;

end.
