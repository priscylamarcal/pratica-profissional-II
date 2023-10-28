unit uConsulta_Variacoes_Roupas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids, uVariacoesRoupas, uCtrlVariacoesRoupas,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, campoEdit, ComboBox, Vcl.ExtCtrls, uFilterSearch, uDm, uDAO;

type
  Tform_consulta_Variacoes_Roupas = class(Tform_consulta_pai)
  private
    { Private declarations }
    aVariacaoRoupa : VariacaoRoupa;
    aCtrlVariacaoRoupa : CtrlVariacoesRoupas;
  public
    { Public declarations }
    procedure sair;                                           override;
    procedure pesquisar;                                      override;
    procedure conhecaObj ( pCtrl : TObject; pObj : TObject ); override;
    procedure tipoFiltro;                                     override;
  public
    { Public declarations }
  end;

var
  form_consulta_Variacoes_Roupas: Tform_consulta_Variacoes_Roupas;

implementation

{$R *.dfm}

{ Tform_consulta_Variacoes_Roupas }

procedure Tform_consulta_Variacoes_Roupas.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aVariacaoRoupa:= VariacaoRoupa( pObj );
  aCtrlVariacaoRoupa := CtrlVariacoesRoupas( pCtrl );
  self.DBGrid.DataSource:= TDataSource( aCtrlVariacaoRoupa.getDSView );
end;

procedure Tform_consulta_Variacoes_Roupas.pesquisar;
var vFilter : TFilterSearch;
    pchave : string;
begin
  inherited;
  VFilter   := TFilterSearch.Create;
  try
    Try
     case combobox_tipo_filtro.ItemIndex of
      0:
        begin
          VFilter.TipoConsulta := TpCTODOS;
        end;
    end;
  finally
    aCtrlVariacaoRoupa.pesquisarView(VFilter, pchave);
    VFilter.Free;
  end;
  Except

  End;

end;

procedure Tform_consulta_Variacoes_Roupas.sair;
//var
//  mVariacaoRoupa: VariacaoRoupa;
begin
  if (Self.btn_botao_sair.Caption = 'Selecionar') then
  begin
    //mVariacaoRoupa := VariacaoRoupa.crieObj;
    aVariacaoRoupa.setNumeroVariacao(DBGrid.DataSource.Dataset.FieldByName('NUMERO_VARIACAO').Value);
    aVariacaoRoupa.setCodRoupa(DBGrid.DataSource.Dataset.FieldByName('COD_ROUPA').Value);
    aCtrlVariacaoRoupa.recuperar(aVariacaoRoupa);
    //aVariacaoRoupa := mVariacaoRoupa.clone;

    inherited sair;
  end
  else
    inherited sair;

end;

procedure Tform_consulta_Variacoes_Roupas.tipoFiltro;
begin
  inherited;
      case combobox_tipo_filtro.ItemIndex of
    0:  //c�digo
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR C�DIGO!';
        edt_pesquisa.NumbersOnly:= true;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    1: //todos
      begin
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= false;
        edt_pesquisa.Clear;
      end;
  end;
end;

end.
