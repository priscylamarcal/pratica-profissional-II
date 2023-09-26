unit uVariacoesRoupas;

interface

uses Classes,
     SysUtils,
     uPai,
     uCores,
	   uTamanhos;

type VariacaoRoupa = class

  private


  protected
	numeroVariacao: integer;
	Cor: Cores;
	Tamanho: Tamanhos;
	codigoVariacao: string;
  codRoupa: integer;
  public
     constructor crieObj;
     destructor destrua_se;
     function getaNumeroVariacao: integer;
     function getaCor: Cores;
     function getaTamanho: Tamanhos;
     function getacodigoVariacao: string;
     function getaCodRoupa: integer;

     procedure setNumeroVariacao(pNumeroVariacao: integer);
     procedure setCor(pCor: Cores);
     procedure setTamanho(pTamanho: Tamanhos);
     procedure setCodigoVariacao(pCodigoVariacao: string);
     procedure setCodRoupa(pCodroupa: integer);

     function clone : VariacaoRoupa;
     procedure limparDados;
end;

implementation

{ VariacoesRoupas }

function VariacaoRoupa.clone: VariacaoRoupa;
begin
  Result:= VariacaoRoupa.crieObj;
  Result.setCodigoVariacao(codigoVariacao);
  result.setCor(cor);
  result.setTamanho(Tamanho);
  result.setNumeroVariacao(numeroVariacao);
  result.setCodRoupa(CodRoupa);
end;

constructor VariacaoRoupa.crieObj;
begin
  inherited;
  Cor := Cores.crieObj;
  Tamanho := Tamanhos.crieObj;
  limparDados;
end;

destructor VariacaoRoupa.destrua_se;
begin
  Cor.destrua_se;
  tamanho.destrua_se;
end;


function VariacaoRoupa.getacodigoVariacao: string;
begin
  result := codigoVariacao;
end;

function VariacaoRoupa.getaCodRoupa: integer;
begin
  result := CodRoupa;
end;

function VariacaoRoupa.getaCor: Cores;
begin
  result := Cor;
end;

function VariacaoRoupa.getaNumeroVariacao: integer;
begin
  result := numeroVariacao;
end;

function VariacaoRoupa.getaTamanho: Tamanhos;
begin
  result := tamanho;
end;

procedure VariacaoRoupa.limparDados;
begin
  inherited;
  codigoVariacao := '';
  cor.limparDados;
  tamanho.limpardados;
  numeroVariacao := 0;
  CodRoupa := 0;
end;

procedure VariacaoRoupa.setCodigoVariacao(pCodigoVariacao: string);
begin
  codigoVariacao := pCodigoVariacao;
end;

procedure VariacaoRoupa.setCodRoupa(pCodroupa: integer);
begin
  CodRoupa := pCodRoupa;
end;

procedure VariacaoRoupa.setCor(pCor: Cores);
begin
  cor := pCor.clone;
end;

procedure VariacaoRoupa.setNumeroVariacao(pNumeroVariacao: integer);
begin
  numeroVariacao := pNumeroVariacao;
end;

procedure VariacaoRoupa.setTamanho(pTamanho: Tamanhos);
begin
  tamanho := pTamanho;
end;

end.
