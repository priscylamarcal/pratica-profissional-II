unit uConsulta_Funcionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroFuncionarios, uCtrlFuncionarios, uFuncionarios, uFilterSearch;

type
  Tform_consulta_funcionarios = class(Tform_consulta_pai)
    procedure spb_botao_pesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    oCadastroFuncionarios : Tform_cadastro_funcionario;

    oFuncionario : Funcionarios;
    aCtrlFuncionarios : ctrlFuncionarios;
  public
    { Public declarations }
    procedure novo;                                           override;
    procedure alterar;                                        override;
    procedure excluir;                                        override;
    procedure sair;                                           override;
    procedure pesquisar;                                      override;
    procedure conhecaObj ( pCtrl : TObject; pObj : TObject ); override;
    procedure setFrmCadastro ( pObj : TObject );                  override;
    procedure tipoFiltro;                                     override;
  end;

var
  form_consulta_funcionarios: Tform_consulta_funcionarios;

implementation

{$R *.dfm}

{ Tform_consulta_funcionarios }

procedure Tform_consulta_funcionarios.alterar;
var form : Tform_cadastro_funcionario;
begin
  inherited;
  oCadastroFuncionarios.limpaEdt;
  aCtrlFuncionarios.carregar( oFuncionario );
  oCadastroFuncionarios.conhecaObj( aCtrlFuncionarios, oFuncionario );

  //oCadastroFuncionarios.btn_remover_item.Enabled:= False;
  //oCadastroFuncionarios.btn_botao_alterar_item.Enabled:= False;

  oCadastroFuncionarios.Caption:= 'Altera��o de Funcion�rio';

  oCadastroFuncionarios.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;

end;

procedure Tform_consulta_funcionarios.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oFuncionario:= Funcionarios( pObj );
  aCtrlFuncionarios:= ctrlFuncionarios( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlFuncionarios.getDS );
end;

procedure Tform_consulta_funcionarios.excluir;
var mCaption: string;
begin
  inherited;
  aCtrlFuncionarios.carregar(oFuncionario);

  mCaption := oCadastroFuncionarios.btn_botao_salvar.caption;
  oCadastroFuncionarios.btn_botao_salvar.caption := 'Excluir';

  oCadastroFuncionarios.conhecaObj( aCtrlFuncionarios, oFuncionario );

  oCadastroFuncionarios.Caption:= 'Exclus�o de Cargo';

  oCadastroFuncionarios.bloqueiaEdt;

  oCadastroFuncionarios.bloqueaiaBtnPesquisa;

  oCadastroFuncionarios.ShowModal;

  oCadastroFuncionarios.btn_botao_salvar.caption := mCaption;

  oCadastroFuncionarios.desbloqueiaEdt;

  oCadastroFuncionarios.desbloqueiaBtnPesquisa;
end;

procedure Tform_consulta_funcionarios.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;
  edt_pesquisa.Clear;
  self.pesquisar; inherited;
end;

procedure Tform_consulta_funcionarios.novo;
var form : Tform_cadastro_funcionario;
begin
  inherited;
  oFuncionario.limparDados;
  oCadastroFuncionarios.conhecaObj( aCtrlFuncionarios, oFuncionario );
  oCadastroFuncionarios.limpaEdt;
  oCadastroFuncionarios.limparItens;

  oCadastroFuncionarios.lbl_nome_tipo.Caption:= '';

  oCadastroFuncionarios.btn_remover_item.Enabled:= False;
  oCadastroFuncionarios.btn_botao_alterar_item.Enabled:= False;

  oCadastroFuncionarios.Caption:= 'Cadastro de Funcion�rio';

  oCadastroFuncionarios.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;

end;

procedure Tform_consulta_funcionarios.pesquisar;
var vFilter : TFilterSearch;
    pchave : string;
begin
  //inherited;
  VFilter   := TFilterSearch.Create;

  try
    Try
     case combobox_tipo_filtro.ItemIndex of
      0:
        begin
          if edt_pesquisa.Text = '' then
          begin
            MessageDlg( 'Campo do filtro n�o pode ser vazio!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
           Exit;
          end;

          vFilter.TipoConsulta:= TpCCodigo;
          vFilter.Codigo:= StrToInt(edt_pesquisa.Text);
        end;
    1:
        begin
          if Length( edt_pesquisa.Text ) < 3 then
          begin
            MessageDlg( 'Digite ao menos 3 caracteres para consulta!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
            Exit;
          end;
          VFilter.TipoConsulta := TpCParam;
          VFilter.Parametro    := Uppercase( edt_pesquisa.Text );
        end;
      2:
        begin
          VFilter.TipoConsulta := TpCTODOS;
        end;
    end;

  finally
    aCtrlFuncionarios.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_funcionarios.sair;
var mFuncionario : Funcionarios;
begin
  if self.btn_botao_sair.Caption='Selecionar' then
  begin
    mFuncionario:= Funcionarios.crieObj;
    aCtrlFuncionarios.carregar( TObject( mFuncionario ) );

    oFuncionario.setCodigo( mFuncionario.getCodigo );
    oFuncionario.setNomeRazaoSocial( mFuncionario.getNomeRazaoSocial );

    inherited sair;

  end
  else
    inherited sair;
end;

procedure Tform_consulta_funcionarios.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_funcionario;
begin
  inherited;
  oCadastroFuncionarios:= Tform_cadastro_funcionario( pObj );

//  if form.salvou then
//    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_funcionarios.spb_botao_pesquisarClick(Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_funcionarios.tipoFiltro;
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
    1:  //funcionario
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR FUNCION�RIO!';
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    2: //todos
      begin
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= false;
        edt_pesquisa.Clear;
      end;
  end;
end;

end.
