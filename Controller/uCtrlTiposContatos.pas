unit uCtrlTiposContatos;
interface
uses uDaoTiposContatos, uController, uFilterSearch;
type ctrlTiposContatos = class( Ctrl )
  private
  protected
    aDaoTiposContatos : daoTiposContatos;
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
    function VerificaExiste(aChave:string):Boolean;
    function ValidaExclusao(pObj : TObject):Boolean; override;
end;
implementation
{ ctrlTiposContatos }
function ctrlTiposContatos.carregar(pObj: TObject): string;
begin
  aDaoTiposContatos.carregar( pObj );
end;
constructor ctrlTiposContatos.crieObj;
begin
   aDaoTiposContatos:= daoTiposContatos.crieObj;
end;
destructor ctrlTiposContatos.destrua_se;
begin
  aDaoTiposContatos.destrua_se;
end;
function ctrlTiposContatos.excluir(pObj: TObject): string;
begin
  aDaoTiposContatos.excluir(pObj);
end;
function ctrlTiposContatos.getDS: TObject;
begin
  Result:= aDaoTiposContatos.getDS;
end;
function ctrlTiposContatos.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
begin
  Result:= aDaoTiposContatos.pesquisar( AFilter, pChave );
end;
function ctrlTiposContatos.salvar(pObj: TObject): string;
begin
  aDaoTiposContatos.salvar( pObj );
end;
procedure ctrlTiposContatos.setDM(pDM: TObject);
begin
  inherited;
  aDaoTiposContatos.setDM( pDM );
end;
procedure ctrlTiposContatos.setPosicao(acodigo: integer);
begin
  aDaoTiposContatos.setPosicao(aCodigo);
end;

function ctrlTiposContatos.ValidaExclusao(pObj: TObject): Boolean;
begin
  result := aDaoTiposContatos.ValidaExclusao(pObj);
end;

function ctrlTiposContatos.VerificaExiste(aChave: string): Boolean;
begin
  Result := aDaoTiposContatos.VerificaExiste(aChave);
end;

end.

