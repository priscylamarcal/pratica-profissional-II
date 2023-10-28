unit uVariacoesRoupas;

interface

uses Classes,
     SysUtils,
     uPai,
     uCores,
	   uTamanhos;
     //uRoupas;

type VariacaoRoupa = class

  private
  protected
	numeroVariacao: integer;
	Cor: Cores;
	Tamanho: Tamanhos;
	codigoVariacao: string;
  codRoupa: integer;
  //Roupa: Roupas;
  public
     constructor crieObj;
     destructor destrua_se;
     function getaNumeroVariacao: integer;
     function getaCor: Cores;
     function getaTamanho: Tamanhos;
     function getacodigoVariacao: string;
     function getaCodRoupa: integer;
     //function getRoupa: Roupas;

     procedure setNumeroVariacao(pNumeroVariacao: integer);
     procedure setCor(pCor: Cores);
     procedure setTamanho(pTamanho: Tamanhos);
     procedure setCodigoVariacao(pCodigoVariacao: string);
     procedure setCodRoupa(pCodroupa: integer);
     //procedure setRoupa(pRoupa: Roupas);

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
  //result.setRoupa(Roupa);
end;

constructor VariacaoRoupa.crieObj;
begin
  inherited;
  Cor := Cores.crieObj;
  Tamanho := Tamanhos.crieObj;
  //Roupa := Roupas.CrieObj;
  limparDados;
end;

destructor VariacaoRoupa.destrua_se;
begin
  Cor.destrua_se;
  tamanho.destrua_se;
  //Roupa.destrua_se;
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

//function VariacaoRoupa.getRoupa: Roupas;
//begin
//  result := Roupa.clone;
//end;

procedure VariacaoRoupa.limparDados;
begin
  inherited;
  codigoVariacao := '';
  cor.limparDados;
  tamanho.limpardados;
  numeroVariacao := 0;
  CodRoupa := 0;
  //roupa.limparDados;
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

//procedure VariacaoRoupa.setRoupa(pRoupa: Roupas);
//begin
//
//end;

procedure VariacaoRoupa.setTamanho(pTamanho: Tamanhos);
begin
  tamanho := pTamanho;
end;

end.
