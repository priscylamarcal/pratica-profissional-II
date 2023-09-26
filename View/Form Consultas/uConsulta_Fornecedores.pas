﻿unit uConsulta_Fornecedores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroFornecedores, uFornecedores, uCtrlFornecedores, uFilterSearch;

type
  Tform_consulta_fornecedores = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroFornecedores: Tform_cadastro_fornecedores;
    oFornecedor: Fornecedores;
    aCtrlFornecedores: ctrlFornecedores;
  public
    { Public declarations }
    procedure novo; override;
    procedure alterar; override;
    procedure excluir; override;
    procedure sair; override;
    procedure pesquisar; override;
    procedure conhecaObj(pCtrl: TObject; pObj: TObject); override;
    procedure setFrmCadastro(pObj: TObject); override;
    procedure tipoFiltro; override;
  end;

var
  form_consulta_fornecedores: Tform_consulta_fornecedores;

implementation

{$R *.dfm}

{ Tform_consulta_fornecedores }
procedure Tform_consulta_fornecedores.alterar;
var
  form: Tform_cadastro_fornecedores;
begin
  inherited;
  aCtrlFornecedores.carregar(oFornecedor);
  oCadastroFornecedores.conhecaObj(aCtrlFornecedores, oFornecedor);

  oCadastroFornecedores.ComboBox_tipo_fornecedor.Enabled := False;
  oCadastroFornecedores.edt_cpf_cnpj.Enabled := False;
  oCadastroFornecedores.edt_rg_ie.Enabled := False;

  oCadastroFornecedores.btn_botao_alterar_item.Enabled := False;
  oCadastroFornecedores.btn_botao_excluir_item.Enabled := False;
  oCadastroFornecedores.Caption := 'Alteração de Fornecedor';
  oCadastroFornecedores.ShowModal;
  if form.salvou then
    Self.pesquisar;
  inherited;
end;

procedure Tform_consulta_fornecedores.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oFornecedor := Fornecedores(pObj);
  aCtrlFornecedores := ctrlFornecedores(pCtrl);
  Self.DBGrid.DataSource := TDataSource(aCtrlFornecedores.getDS);
end;

procedure Tform_consulta_fornecedores.excluir;
var
  mCaption: string;
begin
  inherited;
  aCtrlFornecedores.carregar(oFornecedor);
  mCaption := oCadastroFornecedores.btn_botao_salvar.Caption;
  oCadastroFornecedores.btn_botao_salvar.Caption := 'Excluir';
  oCadastroFornecedores.conhecaObj(aCtrlFornecedores, oFornecedor);
  oCadastroFornecedores.Caption := 'Exclusão de Fornecedor';
  oCadastroFornecedores.bloqueiaEdt;
  oCadastroFornecedores.bloqueaiaBtnPesquisa;
  oCadastroFornecedores.ShowModal;
  oCadastroFornecedores.btn_botao_salvar.Caption := mCaption;
  oCadastroFornecedores.desbloqueiaEdt;
  oCadastroFornecedores.desbloqueiaBtnPesquisa;
end;

procedure Tform_consulta_fornecedores.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex := 2;
  edt_pesquisa.Clear;
  Self.pesquisar;
  inherited;
end;

procedure Tform_consulta_fornecedores.novo;
var
  form: Tform_cadastro_fornecedores;
begin
  inherited;
  oFornecedor.LimparDados;
  oCadastroFornecedores.conhecaObj(aCtrlFornecedores, oFornecedor);
  oCadastroFornecedores.limpaEdt;
  oCadastroFornecedores.limparItens;
  oCadastroFornecedores.lbl_nome_tipo.Caption := '';
  oCadastroFornecedores.ComboBox_tipo_fornecedor.Enabled := True;
  oCadastroFornecedores.edt_cpf_cnpj.Enabled := True;
  oCadastroFornecedores.edt_rg_ie.Enabled := True;
  oCadastroFornecedores.btn_botao_alterar_item.Enabled := False;
  oCadastroFornecedores.btn_botao_excluir_item.Enabled := False;
  oCadastroFornecedores.Caption := 'Cadastro de Fornecedor';
  oCadastroFornecedores.ShowModal;
  if form.salvou then
    Self.pesquisar;
  inherited;
end;

procedure Tform_consulta_fornecedores.pesquisar;
var
  vFilter: TFilterSearch;
  pchave: string;
begin
  // inherited;
  vFilter := TFilterSearch.Create;
  try
    Try
      case combobox_tipo_filtro.ItemIndex of
        0:
          begin
            if edt_pesquisa.Text = '' then
            begin
              MessageDlg('Campo do filtro não pode ser vazio!', MtInformation,
                [MbOK], 0);
              edt_pesquisa.SetFocus;
              Exit;
            end;
            vFilter.TipoConsulta := TpCCodigo;
            vFilter.Codigo := StrToInt(edt_pesquisa.Text);
          end;
        1:
          begin
            if edt_pesquisa.Text = '' then
            begin
              MessageDlg('Campo do filtro não pode ser vazio!', MtInformation,
                [MbOK], 0);
              edt_pesquisa.SetFocus;
              Exit;
            end;
            vFilter.TipoConsulta := TpCParam;
            vFilter.Parametro := Uppercase(edt_pesquisa.Text);
          end;
        2:
          begin
            vFilter.TipoConsulta := TpCTODOS;
          end;
      end;
    finally
      aCtrlFornecedores.pesquisar(vFilter, pchave);
      if Self.DBGrid.DataSource.DataSet.IsEmpty then
      begin
        btn_botao_alterar.Enabled := False;
        btn_botao_excluir.Enabled := False;
      end
      else
      begin
        btn_botao_alterar.Enabled := True;
        btn_botao_excluir.Enabled := True;
      end;
      vFilter.Free;
    end;
  Except
    // on e: exception do
    // ShowMessage(e.ClassName +'asdfasdfasdf');
  End;
end;

procedure Tform_consulta_fornecedores.sair;
var
  mFornecedor: Fornecedores;
begin
  if (Self.btn_botao_sair.Caption = 'Selecionar') then
  begin
    mFornecedor := Fornecedores.crieObj;
    aCtrlFornecedores.carregar(TObject(mFornecedor));
    oFornecedor.setCodigo(mFornecedor.getCodigo);
    oFornecedor.setNomeRazaoSocial(mFornecedor.getNomeRazaoSocial);
    inherited sair;
  end
  else
    inherited sair;
end;

procedure Tform_consulta_fornecedores.setFrmCadastro(pObj: TObject);
var
  form: Tform_cadastro_fornecedores;
begin
  inherited;
  oCadastroFornecedores := Tform_cadastro_fornecedores(pObj);
  if form.salvou then
    Self.pesquisar;
  inherited;
end;

procedure Tform_consulta_fornecedores.spb_botao_pesquisarClick(Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_fornecedores.tipoFiltro;
begin
  inherited;
  case combobox_tipo_filtro.ItemIndex of
    0: // código
      begin
        edt_pesquisa.TextHint := 'DIGITE AQUI PARA CONSULTAR POR CÓDIGO!';
        edt_pesquisa.NumbersOnly := True;
        edt_pesquisa.Enabled := True;
        edt_pesquisa.Clear;
      end;
    1: // fornecedor
      begin
        edt_pesquisa.TextHint := 'DIGITE AQUI PARA CONSULTAR POR FORNECEDOR!';
        edt_pesquisa.NumbersOnly := False;
        edt_pesquisa.Enabled := True;
        edt_pesquisa.Clear;
      end;
    2: // todos
      begin
        edt_pesquisa.NumbersOnly := False;
        edt_pesquisa.Enabled := False;
        edt_pesquisa.Clear;
      end;
  end;
end;

end.
