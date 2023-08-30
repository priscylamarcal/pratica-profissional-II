unit uDaoDepartamentos;
interface
uses uDAO,
     uFilterSearch,
     uDepartamentos,
     FireDAC.Comp.Client,
     System.SysUtils;
type daoDepartamentos = class( DAO )
  private
  protected
  public
    constructor crieObj;                              override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
    procedure setPosicao(aCodigo: integer);
    function VerificaExiste(aChave:string):Boolean;
    function ValidaExclusao(pObj : TObject):Boolean; override;
end;
implementation
{ daoDepartamentos }
function daoDepartamentos.carregar(pObj: TObject): string;
var mDepartamento : Departamentos;
begin
  mDepartamento:= Departamentos( pObj );
  mDepartamento.setCodigo( aDM.QDepartamentos.FieldByName('CODDEPARTAMENTO').Value );
  mDepartamento.setDepartamento( aDM.QDepartamentos.FieldByName('DEPARTAMENTO').Value );
  mDepartamento.setDataCad( aDM.QDepartamentos.FieldByName('DATACAD').Value );
  mDepartamento.setUltAlt( aDM.QDepartamentos.FieldByName('ULTALT').Value );
end;
constructor daoDepartamentos.crieObj;
begin
  inherited;
end;
function daoDepartamentos.excluir(pObj: TObject): string;
var
  mDepartamento : Departamentos;
begin
  aDM.Transacao.StartTransaction;
  try
    mDepartamento  := Departamentos(pObj);
    aDM.QDepartamentos.Locate('CODDepartamento', mDepartamento.getCodigo, []);
    aDM.QDepartamentos.Delete;
    aDM.Transacao.Commit;
//    Result := 'Pa�s exclu�do com sucesso!';
  except
    aDM.Transacao.Rollback;
    Result := '';
  end;
end;
function daoDepartamentos.getDS: TObject;
begin
  Result:= aDM.DSDepartamentos;
end;
function daoDepartamentos.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM DEPARTAMENTOS';
    case AFilter.TipoConsulta of
     TpCCodigo:
     begin
       msql:= 'SELECT * FROM DEPARTAMENTOS WHERE CODDEPARTAMENTO =' + IntToStr( AFilter.Codigo );
     end;
     TpCParam:
     begin
       msql:= ( 'SELECT * FROM DEPARTAMENTOS WHERE DEPARTAMENTO LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;
     TpCTODOS:
     begin
       msql:= 'SELECT * FROM DEPARTAMENTOS ORDER BY CODDEPARTAMENTO';
     end;
    end;
    aDM.QDepartamentos.Active:= false;
    aDM.QDepartamentos.SQL.Text:=msql;
    aDM.QDepartamentos.Open;
    result:= '';
end;
function daoDepartamentos.salvar(pObj: TObject): string;
var mDepartamento : Departamentos;
begin
  mDepartamento:= Departamentos( pObj );
  aDM.Transacao.StartTransaction;
  try
    if mDepartamento.getCodigo = 0 then
    begin
       aDM.QDepartamentos.Insert;
       aDM.QDepartamentos.FieldByName('DATACAD').AsDateTime:= now;
    end
    else
       aDM.QDepartamentos.Edit;
    aDM.QDepartamentos.FieldByName('CODDEPARTAMENTO').AsInteger:= mDepartamento.getCodigo;
    aDM.QDepartamentos.FieldByName('DEPARTAMENTO').AsString:= mDepartamento.getDepartamento;
    aDM.QDepartamentos.FieldByName('ULTALT').AsDateTime:= now;
    aDM.QDepartamentos.Post;
    aDM.Transacao.Commit;
  except
    aDM.Transacao.Rollback;
  end;
end;
procedure daoDepartamentos.setPosicao(aCodigo: integer);
begin
  aDM.QDepartamentos.Locate('CODDepartamento', aCodigo, []);
end;

function daoDepartamentos.ValidaExclusao(pObj: TObject): Boolean;
var
  mDepartamento : Departamentos;
begin
  mDepartamento:= Departamentos(pObj);
  Result := not(aDM.QCargos.Locate('CODDEPARTAMENTO', mDepartamento.getCodigo, []));
end;

function daoDepartamentos.VerificaExiste(aChave: string): Boolean;
begin
  Result := aDM.QDepartamentos.Locate('DEPARTAMENTO', aChave, []);
end;

end.
