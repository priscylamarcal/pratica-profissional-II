unit uCadastroCondicoesPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, campoEdit, Vcl.ExtCtrls, Vcl.ComCtrls,
  uCondicoesPagamentos, uCtrlCondicoesPagamentos, uConsulta_FormasPagamentos,
  uParcelas,
  uCtrlParcelas, Datasnap.DBClient;

type
  Tform_cadastro_condicao_pagamento = class(Tform_cadastro_pai)
    edt_condicao_pagamento: PriTEdit;
    edt_num_parcelas: PriTEdit;
    edt_desconto: PriTEdit;
    edt_juros: PriTEdit;
    edt_multa: PriTEdit;
    lbl_condicao_pagamento: TLabel;
    lbl_num_parcelas: TLabel;
    lbl_desconto: TLabel;
    lbl_juros: TLabel;
    lbl_multa: TLabel;
    pnl_adicionar_contato: TPanel;
    btn_adicionar_contato: TSpeedButton;
    pnl_remover_item: TPanel;
    btn_remover_item: TSpeedButton;
    pnl_botao_alterar_item: TPanel;
    btn_botao_alterar_item: TSpeedButton;
    lbl_dias: TLabel;
    edt_dias: PriTEdit;
    lbl_porcentagem: TLabel;
    edt_porcentagem: PriTEdit;
    pbl_limpar_grid: TPanel;
    btn_limpar_grid: TSpeedButton;
    lbl_totais: TLabel;
    lbl_total_porc: TLabel;
    edt_pesquisar_registro: PriTEdit;
    pnl_btn_pesquisa: TPanel;
    btn_pesquisa: TSpeedButton;
    edt_cod_forma: PriTEdit;
    lbl_codigo_forma: TLabel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    GridParcelas: TDBGrid;
    dsParcelas: TDataSource;
    cdsParcelas: TClientDataSet;
    cdsParcelasNumParcela: TIntegerField;
    cdsParcelasDias: TIntegerField;
    cdsParcelasPORCENTAGEM: TFloatField;
    cdsParcelasCodFormaPgto: TIntegerField;
    cdsParcelasDscFormaPgto: TStringField;
    procedure btn_adicionar_contatoMouseEnter(Sender: TObject);
    procedure btn_adicionar_contatoMouseLeave(Sender: TObject);
    procedure btn_botao_alterar_itemMouseEnter(Sender: TObject);
    procedure btn_botao_alterar_itemMouseLeave(Sender: TObject);
    procedure btn_adicionar_contatoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn_limpar_gridClick(Sender: TObject);
    procedure btn_remover_itemClick(Sender: TObject);
    procedure btn_botao_alterar_itemClick(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
    procedure edt_porcentagemKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    aCondicao: CondicoesPagamentos;
    aCtrlCondicoes: ctrlCondicoesPagamentos;
    aParcela: Parcela;
    aCtrlParcelas: ctrlParcelas;
    aConsultaFormas: Tform_consulta_formas_pagamentos;
  public
    { Public declarations }
    procedure conhecaObj(pCtrl, pObj: TObject); override;
    procedure salvar; override;
    procedure sair; override;
    procedure limpaEdt; override;
    procedure carregaEdt; override;
    procedure bloqueiaEdt; override;
    procedure desbloqueiaEdt; override;
    function validaFormulario: Boolean; override;
    procedure setFrmConsultaFormas(pConsulta: TObject);
    procedure bloqueaiaBtnPesquisa;
    procedure desbloqueiaBtnPesquisa;
    procedure adicionarItens(pEdit: Boolean);
    // procedure bloquearItens(pBloq: boolean);
    procedure limparItens;
    procedure limparItensParcelas;
  end;

var
  form_cadastro_condicao_pagamento: Tform_cadastro_condicao_pagamento;

implementation

{$R *.dfm}

procedure Tform_cadastro_condicao_pagamento.bloqueaiaBtnPesquisa;
begin
  self.btn_pesquisa.Visible := False;
  self.btn_adicionar_contato.Enabled := False;
  self.btn_botao_alterar_item.Enabled := False;
  self.btn_remover_item.Enabled := False;
  self.btn_limpar_grid.Enabled := False;
end;
// procedure Tform_cadastro_condicao_pagamento.bloquearItens(pBloq: boolean);
// begin
// btn_adicionar_contato.Enabled := pBloq;
// btn_remover_item.Enabled := pBloq;
// end;

procedure Tform_cadastro_condicao_pagamento.bloqueiaEdt;
begin
  inherited;
  self.edt_condicao_pagamento.Enabled := False;
  self.edt_num_parcelas.Enabled := False;
  self.edt_dias.Enabled := False;
  self.edt_porcentagem.Enabled := False;
  self.edt_desconto.Enabled := False;
  self.edt_juros.Enabled := False;
  self.edt_multa.Enabled := False;
  self.edt_cod_forma.Enabled := False;
end;

procedure Tform_cadastro_condicao_pagamento.carregaEdt;
var
  aParcela: Parcela;
begin
  inherited;
  if aCondicao.getCodigo <> 0 then
    self.edt_codigo.Text := IntToStr(aCondicao.getCodigo);
  self.edt_condicao_pagamento.Text := aCondicao.getCondicao;
  self.edt_data_cadastro.Text := DateToStr(aCondicao.getDataCad);
  self.edt_data_ult_alt.Text := DateToStr(aCondicao.getUltAlt);
  self.edt_juros.Text := FloatToStr(aCondicao.getJuros);
  self.edt_desconto.Text := FloatToStr(aCondicao.getDesconto);
  self.edt_multa.Text := FloatToStr(aCondicao.getMulta);
  cdsParcelas.DisableControls;
  for aParcela in aCondicao.getListaParcelas do
  begin
    cdsParcelas.Append;
    cdsParcelas.FieldByName('NumParcela').AsInteger := aParcela.getParcelas;
    cdsParcelas.FieldByName('Dias').AsInteger := aParcela.getDias;
    cdsParcelas.FieldByName('Porcentagem').AsFloat := aParcela.getPorcentagem;
    cdsParcelas.FieldByName('CodFormaPgto').AsInteger :=
      aParcela.getaFormaPgto.getCodigo;
    cdsParcelas.FieldByName('DscFormaPgto').AsString :=
      aParcela.getaFormaPgto.getFormaPagamento;
    cdsParcelas.Post;
    edt_num_parcelas.Text := IntToStr(aParcela.getParcelas + 1);
    lbl_total_porc.Caption := FloatToStr(StrToFloat(lbl_total_porc.Caption) +
      (aParcela.getPorcentagem));
  end;
  cdsParcelas.First;
  cdsParcelas.EnableControls;
  if edt_num_parcelas.Text = '' then
    edt_num_parcelas.Text := '1';
  // self.edt_cod_forma.Text:=  IntToStr (aCondicao.getaFormaPgto.getCodigo);
  // self.edt_pesquisar_registro.Text:= aCondicao.getaFormaPgto.getFormaPagamento;
end;

procedure Tform_cadastro_condicao_pagamento.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aCondicao := CondicoesPagamentos(pObj);
  aCtrlCondicoes := ctrlCondicoesPagamentos(pCtrl);
  self.limpaEdt;
  self.limparItens;
  self.carregaEdt;
end;

procedure Tform_cadastro_condicao_pagamento.desbloqueiaBtnPesquisa;
begin
  self.btn_pesquisa.Visible := True;
  self.btn_adicionar_contato.Enabled := True;
  self.btn_botao_alterar_item.Enabled := True;
  self.btn_remover_item.Enabled := True;
  self.btn_limpar_grid.Enabled := True;
end;

procedure Tform_cadastro_condicao_pagamento.desbloqueiaEdt;
begin
  inherited;
  self.edt_condicao_pagamento.Enabled := True;
  self.edt_num_parcelas.Enabled := True;
  self.edt_dias.Enabled := True;
  self.edt_porcentagem.Enabled := True;
  self.edt_desconto.Enabled := True;
  self.edt_juros.Enabled := True;
  self.edt_multa.Enabled := True;
  self.edt_cod_forma.Enabled := True;
end;

procedure Tform_cadastro_condicao_pagamento.edt_porcentagemKeyPress
  (Sender: TObject; var Key: Char);
begin
  inherited;
  if not(Key in ['0' .. '9', ',', #8]) then
    Key := #0;
end;

procedure Tform_cadastro_condicao_pagamento.FormCreate(Sender: TObject);
begin
  inherited;
  if cdsParcelas.Active then
    cdsParcelas.Close;
  cdsParcelas.Open;
  cdsParcelas.EmptyDataSet;
end;

procedure Tform_cadastro_condicao_pagamento.FormShow(Sender: TObject);
begin
  inherited;
  if self.btn_botao_salvar.Caption = 'Salvar' then
    edt_condicao_pagamento.SetFocus;
end;

procedure Tform_cadastro_condicao_pagamento.limpaEdt;
begin
  inherited;
  self.edt_condicao_pagamento.Clear;
  self.edt_num_parcelas.Clear;
  self.edt_cod_forma.Clear;
  self.edt_pesquisar_registro.Clear;
  self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
  self.lbl_total_porc.Caption := '0';
  self.cdsParcelas.EmptyDataSet;
end;

procedure Tform_cadastro_condicao_pagamento.sair;
begin
  inherited;
end;

procedure Tform_cadastro_condicao_pagamento.salvar;
var
  I: Integer;
  aParcela: Parcela;
  item: TListItem;
begin
  inherited;
  if validaFormulario then
  begin
    aCondicao.setCodigo(StrToInt(self.edt_codigo.Text));
    aCondicao.setCondicao(self.edt_condicao_pagamento.Text);
    aCondicao.setJuros(StrToFloat(edt_juros.Text));
    aCondicao.setDesconto(StrToFloat(edt_desconto.Text));
    aCondicao.setMulta(StrToFloat(edt_juros.Text));
    // aCondicao.setDataCad( Date );
    // aCondicao.setUltAlt( Date );
    aCondicao.setCodUsu(StrToInt(self.edt_cod_usuario.Text));
    aCondicao.getListaParcelas.Clear;
    cdsParcelas.DisableControls;
    try
      cdsParcelas.First;
      while not(cdsParcelas.Eof) do
      begin
        aParcela := Parcela.crieObj;
        with aParcela, cdsParcelas do
        begin
          setParcelas(FieldByName('NumParcela').AsInteger);
          setDias(FieldByName('Dias').AsInteger);
          setPorcentagem(FieldByName('Porcentagem').AsFloat);
          getaFormaPgto.setCodigo(FieldByName('CodFormaPgto').AsInteger);
          SetCodCondPgto(aCondicao.getCodigo);
        end;
        aCondicao.getListaParcelas.Add(aParcela);
        cdsParcelas.Next;
      end;
    finally
      cdsParcelas.EnableControls;
    end;

    if self.btn_botao_salvar.Caption = 'Salvar' then // INCLUIR-ALTERAR
      aCtrlCondicoes.salvar(aCondicao.clone)
    else // EXCLUIR
      aCtrlCondicoes.excluir(aCondicao.clone);
    // aCtrlParcelas.salvar(aParcela.clone);
    self.sair;
  end;
end;

procedure Tform_cadastro_condicao_pagamento.setFrmConsultaFormas
  (pConsulta: TObject);
begin
  aConsultaFormas := Tform_consulta_formas_pagamentos(pConsulta);
end;

function Tform_cadastro_condicao_pagamento.validaFormulario: Boolean;
begin
  Result := False;
  if self.edt_condicao_pagamento.Text = '' then
  begin
    MessageDlg('O campo Condi��o de Pagamento � obrigat�rio!', MtInformation,
      [MbOK], 0);
    edt_condicao_pagamento.SetFocus;
    Exit;
  end;
  if cdsParcelas.IsEmpty then
  begin
    MessageDlg('A condi��o de pagamento deve possuir pelo menos uma parcela!',
      MtInformation, [MbOK], 0);
    GridParcelas.SetFocus;
    Exit;
  end;
  if self.edt_desconto.Text = '' then
  begin
    MessageDlg('O campo Desconto � obrigat�rio!', MtInformation, [MbOK], 0);
    edt_desconto.SetFocus;
    Exit;
  end;
  if self.edt_juros.Text = '' then
  begin
    MessageDlg('O campo Juros � obrigat�rio!', MtInformation, [MbOK], 0);
    edt_juros.SetFocus;
    Exit;
  end;
  Result := True;
end;

procedure Tform_cadastro_condicao_pagamento.btn_pesquisaClick(Sender: TObject);
var
  aux: string;
begin
  // inherited;
  aConsultaFormas.conhecaObj(aCtrlCondicoes.getCtrlFormas,
    aCondicao.getaFormaPgto);
  aux := aConsultaFormas.btn_botao_sair.Caption;
  aConsultaFormas.btn_botao_sair.Caption := 'Selecionar';
  aConsultaFormas.ShowModal;
  aConsultaFormas.btn_botao_sair.Caption := aux;
  self.edt_cod_forma.Text := IntToStr(aCondicao.getaFormaPgto.getCodigo);
  self.edt_pesquisar_registro.Text := aCondicao.getaFormaPgto.getFormaPagamento;
end;

// ---------------------LIST VIEW BOT�ES---------------------//
procedure Tform_cadastro_condicao_pagamento.btn_adicionar_contatoClick
  (Sender: TObject);
begin
  adicionarItens(False);
end;

procedure Tform_cadastro_condicao_pagamento.adicionarItens(pEdit: Boolean);
  function validaItens: Boolean;
  begin
    Result := False;

    if self.edt_num_parcelas.Text = '' then
    begin
      MessageDlg('O campo N�mero de Parcelas � obrigat�rio!', MtInformation,
        [MbOK], 0);
      edt_num_parcelas.SetFocus;
      Exit;
    end;
    if self.edt_dias.Text = '' then
    begin
      MessageDlg('O campo Dias � obrigat�rio!', MtInformation, [MbOK], 0);
      edt_dias.SetFocus;
      Exit;
    end;
    if self.edt_porcentagem.Text = '' then
    begin
      MessageDlg('O campo Porcentagem � obrigat�rio!', MtInformation,
        [MbOK], 0);
      edt_porcentagem.SetFocus;
      Exit;
    end;
    if (StrToFloat(self.edt_porcentagem.Text)) > 100 then
    begin
      MessageDlg('A porcentagem n�o pode ultrapassar 100%!', MtInformation,
        [MbOK], 0);
      edt_porcentagem.SetFocus;
      Exit;
    end;
    if (StrToFloat(self.lbl_total_porc.Caption)) = 100 then
    begin
      MessageDlg('O total da porcentagem n�o pode ultrapassar de 100%!',
        MtInformation, [MbOK], 0);
      edt_porcentagem.SetFocus;
      Exit;
    end;
    if self.edt_pesquisar_registro.Text = '' then
    begin
      MessageDlg('A forma de pagamento � obrigat�ria!', MtInformation,
        [MbOK], 0);
      edt_pesquisar_registro.SetFocus;
      Exit;
    end;
    if (StrToFloat(self.lbl_total_porc.Caption)) +
      (StrToFloat(self.edt_porcentagem.Text)) > 100 then
    begin
      MessageDlg('O total da porcentagem n�o pode ultrapassar de 100%!',
        MtInformation, [MbOK], 0);
      edt_porcentagem.SetFocus;
      Exit;
    end;
    if StrToInt(edt_dias.Text) <= cdsParcelas.FieldByName('dias').AsInteger then
    begin
      MessageDlg
        ('O dia informado n�o pode ser menor ou igual ao �ltimo dia da parcela adicionada!',
        MtInformation, [MbOK], 0);
      edt_dias.SetFocus;
      Exit;
    end;
    if length(edt_cod_forma.Text) = 0 then
    begin
      MessageDlg('Informe uma Forma de Pagamento V�lida!', MtInformation,
        [MbOK], 0);
      edt_cod_forma.SetFocus;
      Exit;
    end;

    if length(edt_pesquisar_registro.Text) = 0 then
    begin
      MessageDlg('Informe uma Forma de Pagamento V�lida!', MtInformation,
        [MbOK], 0);
      edt_cod_forma.SetFocus;
      Exit;
    end;
    Result := True;

    edt_dias.SetFocus;
  end;

begin
  if validaItens then
  begin
    if pEdit then
      cdsParcelas.Edit
    else
      cdsParcelas.Append;
    cdsParcelas.FieldByName('NumParcela').AsInteger :=
      StrToInt(edt_num_parcelas.Text);
    cdsParcelas.FieldByName('Dias').AsInteger := StrToInt(edt_dias.Text);
    cdsParcelas.FieldByName('Porcentagem').AsFloat :=
      StrToFloat(edt_porcentagem.Text);
    cdsParcelas.FieldByName('CodFormaPgto').AsInteger :=
      StrToInt(edt_cod_forma.Text);
    cdsParcelas.FieldByName('DscFormaPgto').AsString :=
      (edt_pesquisar_registro.Text);
    cdsParcelas.Post;
    if not pEdit then
    begin
      edt_num_parcelas.Text := IntToStr(StrToInt(edt_num_parcelas.Text) + 1);
      lbl_total_porc.Caption := FloatToStr(StrToFloat(lbl_total_porc.Caption) +
        StrToFloat(edt_porcentagem.Text));
    end;
    limparItensParcelas;
  end;
end;

//
procedure Tform_cadastro_condicao_pagamento.limparItens;
begin
  // self.edt_num_parcelas.Clear;
  self.edt_dias.Clear;
  self.edt_porcentagem.Clear;
  self.edt_desconto.Clear;
  self.edt_juros.Clear;
  self.edt_multa.Clear;
  self.edt_cod_forma.Clear;
  self.edt_pesquisar_registro.Clear;
end;

procedure Tform_cadastro_condicao_pagamento.limparItensParcelas;
begin
  self.edt_cod_forma.Clear;
  self.edt_pesquisar_registro.Clear;
  self.edt_dias.Clear;
  self.edt_porcentagem.Clear;
end;

procedure Tform_cadastro_condicao_pagamento.btn_remover_itemClick
  (Sender: TObject);
begin
  if cdsParcelas.IsEmpty then
  begin
    MessageDlg('Nenhum Item Selecionado!', mtWarning, [MbOK], 0);
    Exit;
  end;
  if (cdsParcelas.RecNo = cdsParcelas.RecordCount) then
  begin
    lbl_total_porc.Caption := FloatToStr(StrToFloat(lbl_total_porc.Caption) -
      cdsParcelas.FieldByName('Porcentagem').AsFloat);
    cdsParcelas.Delete;
    edt_num_parcelas.Text := IntToStr(StrToInt(edt_num_parcelas.Text) - 1);
  end
  else
    MessageDlg('Primeiro deve excluir a �ltima parcela!', MtInformation,
      [MbOK], 0);
end;

procedure Tform_cadastro_condicao_pagamento.btn_limpar_gridClick
  (Sender: TObject);
begin
  inherited;
  cdsParcelas.EmptyDataSet;
  lbl_total_porc.Caption := '0';
  edt_num_parcelas.Text := '1';
end;

procedure Tform_cadastro_condicao_pagamento.btn_botao_alterar_itemClick
  (Sender: TObject);
begin
  if cdsParcelas.IsEmpty then
  begin
    MessageDlg('Nenhuma Parcela Selecionada!', mtWarning, [MbOK], 0);
    Exit;
  end;
  if GridParcelas.SelectedRows.CurrentRowSelected then
  begin
    MessageDlg('Nenhuma Parcela Selecionada!', mtWarning, [MbOK], 0);
    Exit;
  end;
  edt_num_parcelas.Text := cdsParcelas.FieldByName('NumParcela').AsString;
  edt_dias.Text := cdsParcelas.FieldByName('Dias').AsString;
  edt_porcentagem.Text := cdsParcelas.FieldByName('Porcentagem').AsString;
  edt_cod_forma.Text := cdsParcelas.FieldByName('CodFormaPgto').AsString;
  edt_pesquisar_registro.Text := cdsParcelas.FieldByName
    ('DscFormaPgto').AsString;
  lbl_total_porc.Caption := FloatToStr(StrToFloat(lbl_total_porc.Caption) -
    StrToFloat(edt_porcentagem.Text));
end;

// ---------------------ESTILOS BOT�ES---------------------//
procedure Tform_cadastro_condicao_pagamento.btn_adicionar_contatoMouseEnter
  (Sender: TObject);
begin
  btn_adicionar_contato.Font.Style := [fsBold];
end;

procedure Tform_cadastro_condicao_pagamento.btn_adicionar_contatoMouseLeave
  (Sender: TObject);
begin
  btn_adicionar_contato.Font.Style := [];
end;

procedure Tform_cadastro_condicao_pagamento.btn_botao_alterar_itemMouseEnter
  (Sender: TObject);
begin
  btn_botao_alterar_item.Font.Style := [fsBold];
end;

procedure Tform_cadastro_condicao_pagamento.btn_botao_alterar_itemMouseLeave
  (Sender: TObject);
begin
  btn_botao_alterar_item.Font.Style := [];
end;

end.
