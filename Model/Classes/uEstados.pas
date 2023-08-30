unit uEstados;
interface
uses Classes, SysUtils,
     uPai, uPaises;
type Estados = class(Pai)
  private
  protected
    estado : string[80];
    UF     : string[3];
    umPais : Paises;
  public
    constructor crieObj;
    constructor crieInit ( pCodigo: integer; pUf : string; pDataCad : TDateTime; pUltAlt : TDateTime; pCodUsu : integer; pPais : Paises );
    destructor destrua_se;
    procedure setEstado ( pEstado : string );
    procedure setUF ( pUF : string );
    procedure setoPais ( poPais : Paises );
    function getEstado : string;
    function getUF : string;
    function getoPais : Paises;
    function clone : Estados;
    procedure limparDados;
end;
implementation
{ Estados }
constructor Estados.crieInit(pCodigo: integer; pUf: string; pDataCad,
  pUltAlt: TDateTime; pCodUsu: integer; pPais: Paises);
begin
  codigo:= pCodigo;
  UF:= pUf;
  dataCad := pDataCad;
  ultAlt  := pUltAlt;
  codUsu  := pCodUsu;
  umPais:= pPais;
end;
constructor Estados.crieObj;
begin
  inherited;
  umPais := Paises.crieObj;
  self.limparDados;
end;
destructor Estados.destrua_se;
begin
  umPais.destrua_se;
end;
function Estados.getEstado: string;
begin
  Result:= estado;
end;
function Estados.getoPais: Paises;
begin
  Result:= umPais;
end;
function Estados.getUF: string;
begin
  Result:= UF;
end;
procedure Estados.limparDados;
begin
  inherited;
  estado := '';
  UF := '';
  umPais.limparDados;
end;

procedure Estados.setEstado(pEstado: string);
begin
  estado:= pEstado;
end;
procedure Estados.setoPais(poPais: Paises);
begin
  umPais:= poPais;
end;
procedure Estados.setUF(pUF: string);
begin
  UF:= pUF;
end;
function Estados.clone: Estados;
begin
  Result:= Estados.crieObj;
  Result.setCodigo(codigo);
  Result.setEstado(estado);
  Result.setUF(UF);
  Result.setoPais( umPais.clone );
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
end;
end.
