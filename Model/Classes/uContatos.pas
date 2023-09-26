unit uContatos;

interface

uses Classes,
     SysUtils,
     uTiposContatos;


type
  TipoPortador = (Indefinido= -1, Cliente = 0, Fornecedor = 1, Funcionario = 3);

  Contato = class

  private


  protected
	descricao: string;
	TipoContato: TiposContatos;
  codPortador: integer;
  codTipoPortador: TipoPortador;
  observacao: string;
  numeroContato: integer;
  public
     constructor crieObj;
     destructor destrua_se;
     function getaDescricao: string;
     function getaTipoContato: TiposContatos;
     function getaCodPortador: integer;
     function getacodTipoPortador: TipoPortador;
     function getobservacao: string;
     function getnumeroContato: integer;

     procedure setDescricao(pDescricao: string);
     procedure setTipoContato(pTipoContato: TiposContatos);
     procedure setCodPortador(pCodPortador: integer);
     procedure setcodTipoPortador(pTipoPortador: TipoPortador);
     procedure setObservacao(pObservacao: string);
     procedure setnumeroContato(pNumeroContato: integer);

     function clone : Contato;
     procedure limparDados;
end;

implementation

{ Contatos }

function Contato.clone: Contato;
begin
  Result:= Contato.crieObj;
  Result.setDescricao(Descricao);
  result.setTipoContato(TipoContato);
  result.setCodPortador(CodPortador);
  result.setcodTipoPortador(codTipoPortador);
  result.setObservacao(Observacao);
  result.setnumeroContato(numeroContato);
end;

constructor Contato.crieObj;
begin
  TipoContato := TiposContatos.crieObj;
  limparDados;
end;

destructor Contato.destrua_se;
begin
   TipoContato.Free;
end;

function Contato.getaCodPortador: integer;
begin
  result := CodPortador;
end;

function Contato.getacodTipoPortador: TipoPortador;
begin
  result := codTipoPortador;
end;

function Contato.getaDescricao: string;
begin
  result := Descricao;
end;

function Contato.getaTipoContato: TiposContatos;
begin
  result := TipoContato;
end;

function Contato.getnumeroContato: integer;
begin
  result := numeroContato;
end;

function Contato.getobservacao: string;
begin
  result := Observacao;
end;

procedure Contato.limparDados;
begin
  descricao := '';
	TipoContato.limparDados;
  codPortador := 0;
  codTipoPortador := Indefinido;
  numeroContato := 0;
  observacao := '';
end;

procedure Contato.setCodPortador(pCodPortador: integer);
begin
  CodPortador := pCodPortador;
end;

procedure Contato.setcodTipoPortador(pTipoPortador: TipoPortador);
begin
  codTipoPortador := pTipoPortador;
end;

procedure Contato.setDescricao(pDescricao: string);
begin
  Descricao := pDescricao;
end;

procedure Contato.setnumeroContato(pNumeroContato: integer);
begin
  numeroContato := pNumeroContato;
end;

procedure Contato.setObservacao(pObservacao: string);
begin
  Observacao := pObservacao;
end;

procedure Contato.setTipoContato(pTipoContato: TiposContatos);
begin
  TipoContato := pTipoContato.clone;
end;

end.
