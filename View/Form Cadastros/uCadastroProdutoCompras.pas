unit uCadastroProdutoCompras;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tform_cadastro_add_roupa_compra = class(Tform_cadastro_pai)
    list_view_produtos: TListView;
    lbl_total_quantidade: TLabel;
    edt_total_quantidade: PriTEdit;


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadastro_add_roupa_compra: Tform_cadastro_add_roupa_compra;

implementation

{$R *.dfm}




end.
