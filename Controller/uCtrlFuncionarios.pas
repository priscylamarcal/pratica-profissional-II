unit uCtrlFuncionarios;
interface
uses uController, uDaoFuncionarios, uFilterSearch, uCtrlCidades,
  uCtrlTiposContatos, uCtrlCargos, uCidades, uTiposContatos, uCargos,
  uFuncionarios, uCtrlContatos;
type ctrlFuncionarios = class( Ctrl )
  private
  protected
    aDaoFuncionarios : daoFuncionarios;
    aCtrlCidades : ctrlCidades;
    aCtrlTiposContatos : ctrlTiposContatos;
    aCtrlCargos : ctrlCargos;
    aCtrlContatos: ctrlContatos;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
    procedure setCtrlCidades ( pCtrl : ctrlCidades );
    procedure setCtrlTiposContatos ( pCtrl : ctrlTiposContatos );
    procedure setCtrlCargos ( pCtrl : ctrlCargos );
    procedure setPosicao( acodigo : integer );
    procedure setCtrlContatos ( pCtrl : ctrlContatos );
    function getCtrlCidades : ctrlCidades;
    function getCtrlTiposContatos : ctrlTiposContatos;
    function getCtrlCargos : ctrlCargos;
    function getCtrlContatos : CtrlContatos;

    function VerificaExiste(oFuncionario: Funcionarios):Boolean;
    function ValidaExclusao(pObj : TObject):Boolean; override;


end;
implementation
{ ctrlFuncionarios }
function ctrlFuncionarios.carregar(pObj: TObject): string;
var mCidade : Cidades; mContato : TiposContatos; mFuncionario : Funcionarios;
    AFilter : TFilterSearch; pchave : string; mCargo : Cargos;
begin
  aDaoFuncionarios.carregar( pObj );

  aCtrlCidades.setPosicao(Funcionarios( pObj ).getaCidade.GetCodigo);
  mCidade:= Funcionarios( pObj ).getaCidade;
  aCtrlCidades.carregar( TObject ( mCidade ) );

//  aCtrlTiposContatos.setPosicao(Funcionarios( pObj ).getoContato.GetCodigo);
//  mContato:= Funcionarios( pObj ).getoContato;
//  aCtrlTiposContatos.carregar( TObject ( mContato ) );

  aCtrlCargos.setPosicao(Funcionarios( pObj ).getoCargo.GetCodigo);
  mCargo:= Funcionarios( pObj ).getoCargo;
  aCtrlCargos.carregar( TObject ( mCargo ) );

  Funcionarios(pObj).setListaContatos(aCtrlContatos.RetornaListaContatos
    (Funcionarios(pObj).getCodigo, 3));
end;
constructor ctrlFuncionarios.crieObj;
begin
  aDaoFuncionarios:= daoFuncionarios.crieObj;
end;
destructor ctrlFuncionarios.destrua_se;
begin
  aDaoFuncionarios.destrua_se;
end;
function ctrlFuncionarios.excluir(pObj: TObject): string;
begin
  if aCtrlContatos.DeleteListaContatos(Funcionarios(pObj).getCodigo, 3) then
    result := aDaoFuncionarios.excluir(pObj);
end;
function ctrlFuncionarios.getCtrlCargos: ctrlCargos;
begin
  Result:= aCtrlCargos;
end;
function ctrlFuncionarios.getCtrlCidades: ctrlCidades;
begin
  Result:= aCtrlCidades;
end;
function ctrlFuncionarios.getCtrlContatos: CtrlContatos;
begin
  result := aCtrlContatos;
end;

function ctrlFuncionarios.getCtrlTiposContatos: ctrlTiposContatos;
begin
  Result:= aCtrlTiposContatos;
end;
function ctrlFuncionarios.getDS: TObject;
begin
  Result:= aDaoFuncionarios.getDS;
end;
function ctrlFuncionarios.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
begin
 Result := aDaoFuncionarios.Pesquisar( AFilter, pChave );
end;
function ctrlFuncionarios.salvar(pObj: TObject): string;
begin
  if aDaoFuncionarios.salvar( pObj ) = 'SUCESSO' then
  begin
    aCtrlContatos.DeleteListaContatos(Funcionarios(pObj).getCodigo, 3);
    Funcionarios(pObj).setCodigoListaContatos;
    aCtrlContatos.salvarContato(Funcionarios(pObj).getListaContatos);
  end;
end;
procedure ctrlFuncionarios.setCtrlCargos(pCtrl: ctrlCargos);
begin
  aCtrlCargos:= pCtrl;
end;
procedure ctrlFuncionarios.setCtrlCidades(pCtrl: ctrlCidades);
begin
  aCtrlCidades:= pCtrl;
end;
procedure ctrlFuncionarios.setCtrlContatos(pCtrl: ctrlContatos);
begin
  aCtrlContatos := pCtrl;
end;

procedure ctrlFuncionarios.setCtrlTiposContatos(pCtrl: ctrlTiposContatos);
begin
  aCtrlTiposContatos:= pCtrl;
end;
procedure ctrlFuncionarios.setDM(pDM: TObject);
begin
  inherited;
  aDaoFuncionarios.setDM( pDM );
end;
procedure ctrlFuncionarios.setPosicao(acodigo: integer);
begin
  aDaoFuncionarios.setPosicao(aCodigo);
end;

function ctrlFuncionarios.ValidaExclusao(pObj: TObject): Boolean;
begin
  result := aDaoFuncionarios.ValidaExclusao(pObj);
end;

function ctrlFuncionarios.VerificaExiste(oFuncionario: Funcionarios): Boolean;
begin
  result := aDaoFuncionarios.VerificaExiste(oFuncionario);
end;

end.
