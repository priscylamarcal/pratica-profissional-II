unit uProdutoCompras;

interface

uses Classes,
     SysUtils,
     uPai,
     uVariacoesRoupas,
     uFornecedores;

type ProdutoCompra = class

  private

  protected
  numeroProduto: integer;
	variacoesRoupas: VariacaoRoupa;
  qtd: integer;
  valorUnitario: currency;
  desconto: currency;
  valorTotal: currency;
  modelo: string;
  serie: string;
  num_nota: string;
  Fornecedor: Fornecedores;

  public
     constructor crieObj;
     destructor destrua_se;

     function getvariacoesRoupas: VariacaoRoupa;
     function getqtd: integer;
     function getvalorUnitario: currency;
     function getdesconto: currency;
     function getvalorTotal: currency;
     function getnumeroProduto: integer;
     function getmodelo: string;
     function getserie: string;
     function getnum_nota: string;
     function getFornecedor: Fornecedores;

     procedure setvariacoesRoupas(pVariacoesRoupas: VariacaoRoupa);
     procedure setqtd(pQtd: integer);
     procedure setvalorUnitario(pValorUnitario: currency);
     procedure setdesconto(pDesconto: currency);
     procedure setvalorTotal(pValorTotal: currency);
     procedure setnumeroProduto(pNumeroProduto: integer);
     procedure setmodelo(pModelo: string);
     procedure setserie(pSerie: string);
     procedure setnum_nota(pNum_Nota: string);
     procedure setFornecedor(pFornecedor: Fornecedores);

     function clone : ProdutoCompra;
     procedure limparDados;
  end;
  implementation
{ ProdutoCompra }

function ProdutoCompra.clone: ProdutoCompra;
begin
  result := ProdutoCompra.crieObj;

  result.variacoesRoupas := variacoesRoupas.Clone;
  result.setqtd(qtd);
  result.setvalorUnitario(ValorUnitario);
  result.setdesconto(Desconto);
  result.setvalorTotal(ValorTotal);
  result.setnumeroProduto(NumeroProduto);
  result.setmodelo(Modelo);
  result.setserie(Serie);
  result.setnum_nota(Num_Nota);
  result.setFornecedor(Fornecedor);
end;

constructor ProdutoCompra.crieObj;
begin
   variacoesRoupas := VariacaoRoupa.crieObj;
   fornecedor := Fornecedores.crieObj;

   limparDados;
end;

destructor ProdutoCompra.destrua_se;
begin
   variacoesRoupas.destrua_se;
end;

function ProdutoCompra.getdesconto: currency;
begin
   result := desconto;
end;

function ProdutoCompra.getFornecedor: Fornecedores;
begin
   result := fornecedor;
end;

function ProdutoCompra.getmodelo: string;
begin
   result := modelo;
end;

function ProdutoCompra.getnumeroProduto: integer;
begin
  result := numeroProduto;
end;

function ProdutoCompra.getnum_nota: string;
begin
  result := num_nota;
end;

function ProdutoCompra.getqtd: integer;
begin
   result := qtd;
end;

function ProdutoCompra.getserie: string;
begin
   result := serie;
end;

function ProdutoCompra.getvalorTotal: currency;
begin
   result := valorTotal;
end;

function ProdutoCompra.getvalorUnitario: currency;
begin
   result := ValorUnitario;
end;

function ProdutoCompra.getvariacoesRoupas: VariacaoRoupa;
begin
   result := VariacoesRoupas;
end;

procedure ProdutoCompra.limparDados;
begin
  variacoesRoupas.limparDados;
  qtd := 0;
  valorUnitario := 0;
  desconto := 0;
  valorTotal := 0;
  numeroProduto := 0;
  fornecedor.limparDados;
  num_nota := '';
  serie := '';
  modelo := '';
end;

procedure ProdutoCompra.setdesconto(pDesconto: currency);
begin
  desconto := pDesconto;
end;

procedure ProdutoCompra.setFornecedor(pFornecedor: Fornecedores);
begin
  fornecedor := pFornecedor;
end;

procedure ProdutoCompra.setmodelo(pModelo: string);
begin
  modelo := pModelo;
end;

procedure ProdutoCompra.setnumeroProduto(pNumeroProduto: integer);
begin
  numeroProduto := pNumeroProduto;
end;

procedure ProdutoCompra.setnum_nota(pNum_Nota: string);
begin
  num_nota := pNum_nota;
end;

procedure ProdutoCompra.setqtd(pQtd: integer);
begin
  Qtd := pQtd;
end;

procedure ProdutoCompra.setserie(pSerie: string);
begin
  serie := pSerie;
end;

procedure ProdutoCompra.setvalorTotal(pValorTotal: currency);
begin
  valorTotal := pValorTotal;
end;

procedure ProdutoCompra.setvalorUnitario(pValorUnitario: currency);
begin
  ValorUnitario := PValorUnitario;
end;

procedure ProdutoCompra.setvariacoesRoupas(pVariacoesRoupas: VariacaoRoupa);
begin
  VariacoesRoupas := pVariacoesRoupas;
end;

end.
