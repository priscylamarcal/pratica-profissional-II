unit uCompras;

interface

uses Classes, SysUtils, System.Generics.Collections,
  uPai, uFornecedores, uRoupas, uCondicoesPagamentos;

type
  Compras = class(Pai)
  private

  protected
    modelo: string[50];
    serie: string[50];
    num_nota: string[50];
    data_emissao: TDateTime;
    data_chegada: TDateTime;
    umFornecedor: Fornecedores;
    listaRoupas: TObjectList<Roupas>;
    qtdRoupas: integer;
    valor_unitario: currency;
    desconto: currency;
    valor_total: currency;

    // total referente ao que est� adicionado a tabela de roupas
    qtdTotalRoupa: integer;
    qtdTotalDesconto: currency;
    totalValor: currency;

    frete: currency;
    seguro: currency;
    outras_despesas: currency;
    umaCondicaoPagamento: CondicoesPagamentos;
    observacao: string[250];

  public
    constructor crieObj;
    destructor destrua_se;

    procedure setModelo(pModelo: string);
    procedure setSerie(pSerie: string);
    procedure setNumNota(pNumNota: string);
    procedure setDataEmissao(pDataEmissao: TDateTime);
    procedure setDataChegada(pDataChegada: TDateTime);
    procedure setUmFornecedor(pFornecedor: Fornecedores);
    procedure setListaRoupas(pListaRoupas: TObjectList<Roupas>);
    procedure setQtdRoupas(pQtdRoupas: integer);
    procedure setValorUnitario(pValorUnitario: currency);
    procedure setDesconto(pDesconto: currency);
    procedure setValorTotal(pValorTotal: currency);
    procedure setQtdTotalRoupa(pQtdTotalRoupa: integer);
    procedure setQtdTotalDesconto(pQtdTotalDesconto: currency);
    procedure setTotalValor(pTotalValor: currency);
    procedure setFrete(pFrete: currency);
    procedure setSeguro(pSeguro: currency);
    procedure setOutrasDespesas(pOutrasDespesas: currency);
    procedure setUmaCondicaoPagamento(pUmaCondicaoPagamento
      : CondicoesPagamentos);
    procedure setObservacao(pObservacao: string);

    function getModelo: string;
    function getSerie: string;
    function getNumNota: string;
    function getDataEmissao: TDateTime;
    function getDataChegada: TDateTime;
    function getUmFornecedor: Fornecedores;
    function getListaRoupas: TObjectList<Roupas>;
    function getQtdRoupas: integer;
    function getValorUnitario: currency;
    function getDesconto: currency;
    function getValorTotal: currency;
    function getQtdTotalRoupa: integer;
    function getQtdTotalDesconto: currency;
    function getTotalValor: currency;
    function getFrete: currency;
    function getSeguro: currency;
    function getOutrasDespesas: currency;
    function getUmaCondicaoPagamento: CondicoesPagamentos;
    function getObservacao: string;
    function clone: Compras;

  end;

implementation

{ Compras }

constructor Compras.crieObj;
begin
  inherited;
  modelo := '';
  serie := '';
  num_nota := '';
  data_emissao := 0;
  data_chegada := 0;
  umFornecedor := Fornecedores.crieObj;
  listaRoupas := TObjectList<Roupas>.Create;
  qtdRoupas := 0;
  valor_unitario := 0;
  desconto := 0;
  valor_total := 0;
  qtdTotalRoupa := 0;
  qtdTotalDesconto := 0;
  totalValor := 0;
  frete := 0;
  seguro := 0;
  outras_despesas := 0;
  umaCondicaoPagamento := CondicoesPagamentos.crieObj;
  observacao := '';
end;

destructor Compras.destrua_se;
begin
  umFornecedor.destrua_se;
  listaRoupas.Destroy;
  umaCondicaoPagamento.destrua_se;
end;

function Compras.getDataChegada: TDateTime;
begin
  Result := data_chegada;
end;

function Compras.getDataEmissao: TDateTime;
begin
  Result := data_emissao;
end;

function Compras.getDesconto: currency;
begin
  Result := desconto;
end;

function Compras.getFrete: currency;
begin
  Result := frete;
end;

function Compras.getListaRoupas: TObjectList<Roupas>;
begin
  Result := listaRoupas;
end;

function Compras.getModelo: string;
begin
  Result := modelo;
end;

function Compras.getNumNota: string;
begin
  Result := num_nota;
end;

function Compras.getObservacao: string;
begin
  Result := observacao;
end;

function Compras.getOutrasDespesas: currency;
begin
  Result := outras_despesas;
end;

function Compras.getQtdRoupas: integer;
begin
  Result := qtdRoupas;
end;

function Compras.getQtdTotalDesconto: currency;
begin
  Result := qtdTotalDesconto;
end;

function Compras.getQtdTotalRoupa: integer;
begin
  Result := qtdTotalRoupa;
end;

function Compras.getSeguro: currency;
begin
  Result := seguro;
end;

function Compras.getSerie: string;
begin
  Result := serie;
end;

function Compras.getTotalValor: currency;
begin
  Result := totalValor;
end;

function Compras.getUmaCondicaoPagamento: CondicoesPagamentos;
begin
  Result := umaCondicaoPagamento;
end;

function Compras.getUmFornecedor: Fornecedores;
begin
  Result := umFornecedor;
end;

function Compras.getValorTotal: currency;
begin
  Result := valor_total;
end;

function Compras.getValorUnitario: currency;
begin
  Result := valor_unitario;
end;

procedure Compras.setDataChegada(pDataChegada: TDateTime);
begin
  data_chegada := pDataChegada;
end;

procedure Compras.setDataEmissao(pDataEmissao: TDateTime);
begin
  data_emissao := pDataEmissao;
end;

procedure Compras.setDesconto(pDesconto: currency);
begin
  desconto := pDesconto;
end;

procedure Compras.setFrete(pFrete: currency);
begin
  frete := pFrete;
end;

procedure Compras.setListaRoupas(pListaRoupas: TObjectList<Roupas>);
begin
  listaRoupas := pListaRoupas;
end;

procedure Compras.setModelo(pModelo: string);
begin
  modelo := pModelo;
end;

procedure Compras.setNumNota(pNumNota: string);
begin
  num_nota := pNumNota;
end;

procedure Compras.setObservacao(pObservacao: string);
begin
  observacao := pObservacao;
end;

procedure Compras.setOutrasDespesas(pOutrasDespesas: currency);
begin
  outras_despesas := pOutrasDespesas;
end;

procedure Compras.setQtdRoupas(pQtdRoupas: integer);
begin
  qtdRoupas := pQtdRoupas;
end;

procedure Compras.setQtdTotalDesconto(pQtdTotalDesconto: currency);
begin
  qtdTotalDesconto := pQtdTotalDesconto;
end;

procedure Compras.setQtdTotalRoupa(pQtdTotalRoupa: integer);
begin
  qtdTotalRoupa := pQtdTotalRoupa;
end;

procedure Compras.setSeguro(pSeguro: currency);
begin
  seguro := pSeguro;
end;

procedure Compras.setSerie(pSerie: string);
begin
  serie := pSerie;
end;

procedure Compras.setTotalValor(pTotalValor: currency);
begin
  totalValor := pTotalValor;
end;

procedure Compras.setUmaCondicaoPagamento(pUmaCondicaoPagamento
  : CondicoesPagamentos);
begin
  umaCondicaoPagamento := pUmaCondicaoPagamento;
end;

procedure Compras.setUmFornecedor(pFornecedor: Fornecedores);
begin
  umFornecedor := pFornecedor;
end;

procedure Compras.setValorTotal(pValorTotal: currency);
begin
  valor_total := pValorTotal;
end;

procedure Compras.setValorUnitario(pValorUnitario: currency);
begin
  valor_unitario := pValorUnitario;
end;

function Compras.clone: Compras;
var
  aRoupa: Roupas;
begin
  Result:= Compras.crieObj;
  Result.setModelo(modelo);
  Result.setSerie(serie);
  Result.setNumNota(num_nota);
  Result.setDataEmissao(data_emissao);
  Result.setDataChegada(data_chegada);
  Result.setUmFornecedor(umFornecedor.clone);
  Result.setQtdRoupas(qtdRoupas);
  Result.setValorUnitario(valor_unitario);
  Result.setDesconto(desconto);
  Result.setValorTotal(valor_total);
  Result.setQtdTotalRoupa(qtdTotalRoupa);
  Result.setQtdTotalDesconto(qtdTotalDesconto);
  Result.setTotalValor(totalValor);
  Result.setFrete(frete);
  Result.setSeguro(seguro);
  Result.setOutrasDespesas(outras_despesas);
  Result.setUmaCondicaoPagamento(umaCondicaoPagamento.clone);
  Result.setObservacao(observacao);
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);

  if Assigned(listaRoupas) then
    if listaRoupas.Count > 0 then
    begin
      for aRoupa in listaRoupas do
        Result.getListaRoupas.Add(aRoupa.clone);
    end;
end;

end.
