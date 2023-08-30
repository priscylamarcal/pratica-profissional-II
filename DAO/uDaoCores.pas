unit uDaoCores;
interface
uses uFilterSearch,
     uDAO,
     uCores;
type daoCores = class( DAO )
  private
  protected
  public
    constructor crieObj;                              override;
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
uses
  System.SysUtils;
{ daoCores }
function daoCores.carregar(pObj: TObject): string;
var mCor : Cores;
begin
  mCor:= Cores( pObj );
  mCor.setCodigo(aDM.QCores.FieldByName('CODCOR').Value);
  mCor.setCor(aDM.QCores.FieldByName('COR').AsString);
  mCor.setDataCad(aDM.QCores.FieldByName('DATACAD').AsDateTime);
  mCor.setUltAlt(aDM.QCores.FieldByName('UltAlt').AsDateTime);
end;
constructor daoCores.crieObj;
begin
  inherited;
end;
function daoCores.excluir(pObj: TObject): string;
var
  mCor : Cores;
begin
  aDM.Transacao.StartTransaction;
  try
    mCor  := Cores(pObj);
    aDM.QCores.Locate('CODCOR', mCor.getCodigo, []);
    aDM.QCores.Delete;
    aDM.Transacao.Commit;
//    Result := 'Pa�s exclu�do com sucesso!';
  except
    aDM.Transacao.Rollback;
    Result := '';
  end;
end;
function daoCores.getDS: TObject;
begin
  Result:= aDM.DSCores;
end;
function daoCores.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
   msql:= 'SELECT * FROM CORES';
   case AFilter.TipoConsulta of
     TpCCodigo:
     begin
       msql:= 'SELECT * FROM CORES WHERE CODCOR =' + IntToStr( AFilter.Codigo );
     end;
     TpCParam:
     begin
       msql:= ( 'SELECT * FROM CORES WHERE COR LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;
     TpCTODOS:
     begin
       msql:= 'SELECT * FROM CORES ORDER BY CODCOR';
     end;
   end;
   aDM.QCores.Active:= False;
   aDM.QCores.SQL.Text:= msql;
   aDM.QCores.Open;
   Result:= '';
end;
function daoCores.salvar(pObj: TObject): string;
var mCor : Cores;
begin
  mCor:= Cores( pObj );
  aDM.Transacao.StartTransaction;
  try
    if mCor.getCodigo = 0 then
    begin
       aDM.QCores.Insert;
       aDM.QCores.FieldByName('DATACAD').AsDateTime:= now;
    end
    else
       aDM.QCores.Edit;
    aDM.QCores.FieldByName('CODCOR').AsInteger:= mCor.getCodigo;
    aDM.QCores.FieldByName('COR').AsString:= mCor.getCor;
    aDM.QCores.FieldByName('ULTALT').AsDateTime:= now;
    aDM.QCores.Post;
    aDM.Transacao.Commit;
  except
    aDM.Transacao.Rollback;
  end;
end;
procedure daoCores.setPosicao(acodigo: integer);
begin
  aDM.QCores.Locate('CODCOR', aCodigo, []);
end;

function daoCores.ValidaExclusao(pObj: TObject): Boolean;
var
  mCor : Cores;
begin
  mCor:= Cores(pObj);
  Result := not(aDM.QRoupas.Locate('CODCOR', mCor.getCodigo, []));
end;

function daoCores.VerificaExiste(aChave: string): Boolean;
begin
  Result := aDM.QCores.Locate('COR', aChave, []);
end;

end.
