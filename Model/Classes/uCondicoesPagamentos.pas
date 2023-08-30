unit uCondicoesPagamentos;
interface
uses uPai,
     uFormaPagamento,
     System.Generics.Collections,
     uParcelas;
type CondicoesPagamentos = class ( Pai )
  private
  protected
     condicao : string[80];
     juros : currency;
     desconto : currency;
     multa : currency;
     tipo: string;
     parcelas : integer;
     listaParcelas : TObjectList<Parcela>;
     umaFormaPgto : FormasPagamentos;
  public
     constructor crieObj;
     destructor destrua_se;
     procedure setCondicao ( pCondicao : string );
     procedure setJuros ( pJuros : currency );
     procedure setDesconto ( pDesconto : currency );
     procedure setMulta ( pMulta : currency );
     procedure setTipo ( pTipo : string );
     procedure setParcelas ( pParcelas : integer );
     procedure setListaParcelas ( pListaParcelas : TObjectList<Parcela> );
     procedure setCodigoListaParcelas;
     procedure setFormaPgto ( paFormaPgto : FormasPagamentos );
     function getCondicao : string;
     function getJuros : currency;
     function getDesconto : currency;
     function getMulta : currency;
     function getTipo : string;
     function getParcelas : integer;
     function getListaParcelas : TObjectList<Parcela>;
     function getaFormaPgto : FormasPagamentos;
     function clone : CondicoesPagamentos;
     procedure limparDados;
end;
implementation
{ CondicaoPagamento }
constructor CondicoesPagamentos.crieObj;
begin
  inherited;
  listaParcelas:= TObjectList<Parcela>.Create;
  umaFormaPgto:= FormasPagamentos.crieObj;
  self.limparDados;
end;
destructor CondicoesPagamentos.destrua_se;
begin
  listaParcelas.Destroy;
  umaFormaPgto.destrua_se;
end;
function CondicoesPagamentos.getaFormaPgto: FormasPagamentos;
begin
  Result:= umaFormaPgto;
end;
function CondicoesPagamentos.getCondicao: string;
begin
  Result:= condicao;
end;
function CondicoesPagamentos.getDesconto: currency;
begin
  Result:= desconto;
end;
function CondicoesPagamentos.getJuros: currency;
begin
  Result:= juros;
end;
function CondicoesPagamentos.getListaParcelas: TObjectList<Parcela>;
begin
  Result:= listaParcelas;
end;
function CondicoesPagamentos.getMulta: currency;
begin
  Result:= multa;
end;
function CondicoesPagamentos.getParcelas: integer;
begin
  Result:= parcelas;
end;
function CondicoesPagamentos.getTipo: string;
begin
  Result:= tipo;
end;
procedure CondicoesPagamentos.limparDados;
begin
  inherited;
  condicao:= '';
  juros:= 0;
  desconto:= 0;
  multa:= 0;
  tipo:= '';
  parcelas:= 0;
  listaParcelas.Clear;
  umaFormaPgto.limparDados;
end;

procedure CondicoesPagamentos.setCodigoListaParcelas;
var i: integer;
begin
   for i := 0 to Self.listaParcelas.Count - 1 do
   begin
       Self.listaParcelas[i].setCodCondPgto(Self.GetCodigo);
   end;
end;

procedure CondicoesPagamentos.setCondicao(pCondicao: string);
begin
  condicao:= pCondicao;
end;
procedure CondicoesPagamentos.setDesconto(pDesconto: currency);
begin
  desconto:= pDesconto;
end;
procedure CondicoesPagamentos.setFormaPgto(paFormaPgto: FormasPagamentos);
begin
  umaFormaPgto:= paFormaPgto;
end;
procedure CondicoesPagamentos.setJuros(pJuros: currency);
begin
  juros:= pJuros;
end;
procedure CondicoesPagamentos.setListaParcelas(
  pListaParcelas: TObjectList<Parcela>);
begin
  listaParcelas:= pListaParcelas;
end;
procedure CondicoesPagamentos.setMulta(pMulta: currency);
begin
  multa:= pMulta;
end;
procedure CondicoesPagamentos.setParcelas(pParcelas: integer);
begin
  parcelas:= pParcelas;
end;
procedure CondicoesPagamentos.setTipo(pTipo: string);
begin
  tipo:= pTipo;
end;
function CondicoesPagamentos.clone: CondicoesPagamentos;
var
  AParcela   : Parcela;
begin
  Result:= CondicoesPagamentos.crieObj;
  Result.setCodigo( codigo );
  Result.setCondicao( condicao );
  Result.setJuros( juros );
  Result.setDesconto( desconto );
  Result.setMulta( multa );
  Result.setTipo( tipo );
  Result.setParcelas( parcelas );
  Result.setFormaPgto( umaFormaPgto.clone );
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
  if Assigned(ListaParcelas) then
    if ListaParcelas.Count > 0 then
      begin
        for aParcela in ListaParcelas do
          Result.getListaParcelas.Add(AParcela.clone);
      end;
end;
end.
