unit uCadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.StdCtrls, campoEdit,
  Vcl.Buttons, Vcl.ExtCtrls,
  uEstados,
  uCtrlEstados,
  uConsulta_Paises,
  uPaises,
  uCtrlPaises;

type
  Tform_cadastro_estados = class(Tform_cadastro_pai)
    edt_estado: PriTEdit;
    edt_uf: PriTEdit;
    lbl_estado: TLabel;
    lbl_uf: TLabel;
    edt_pesquisar_pais_estado: PriTEdit;
    pnl_btn_pesquisa: TPanel;
    btn_pesquisa: TSpeedButton;
    lbl_pais_estado: TLabel;
    lbl_cod_pais: TLabel;
    edt_cod_pais: PriTEdit;
    procedure FormActivate(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
  private
    { Private declarations }
    oEstado: Estados;
    aCtrlEstados: ctrlEstados;
    aConsultaPaises: Tform_consulta_paises;
    NomeEstado: string;
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
    procedure setFrmConsultaPaises(pConsulta: TObject);
  end;

var
  form_cadastro_estados: Tform_cadastro_estados;

implementation

{$R *.dfm}

{ Tform_cadastro_estados }
procedure Tform_cadastro_estados.bloqueiaEdt;
begin
  inherited;
  self.edt_estado.Enabled := False;
  self.edt_uf.Enabled := False;
  self.edt_cod_pais.Enabled := False;
  self.edt_pesquisar_pais_estado.Enabled := False;
end;

procedure Tform_cadastro_estados.btn_pesquisaClick(Sender: TObject);
var
  aux: string;
begin
  // inherited;
  aConsultaPaises.conhecaObj(aCtrlEstados.getCtrlPaises, oEstado.getoPais);
  aux := aConsultaPaises.btn_botao_sair.Caption;
  aConsultaPaises.btn_botao_sair.Caption := 'Selecionar';
  aConsultaPaises.ShowModal;
  aConsultaPaises.btn_botao_sair.Caption := aux;
  self.edt_cod_pais.Text := IntToStr(oEstado.getoPais.getCodigo);
  self.edt_pesquisar_pais_estado.Text := oEstado.getoPais.getPais;

end;

procedure Tform_cadastro_estados.carregaEdt;
begin
  inherited;
  if oEstado.getCodigo <> 0 then
    self.edt_codigo.Text := IntToStr(oEstado.getCodigo);
  self.edt_estado.Text := oEstado.getEstado;
  self.edt_uf.Text := oEstado.getUF;
  self.edt_cod_pais.Text := IntToStr(oEstado.getoPais.getCodigo);
  self.edt_pesquisar_pais_estado.Text := oEstado.getoPais.getPais;
  self.edt_data_cadastro.Text := DateToStr(oEstado.getDataCad);
  self.edt_data_ult_alt.Text := DateToStr(oEstado.getUltAlt);
  NomeEstado := oEstado.getEstado;
end;

procedure Tform_cadastro_estados.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oEstado := Estados(pObj);
  aCtrlEstados := ctrlEstados(pCtrl);
  self.limpaEdt;
  self.carregaEdt;
end;

procedure Tform_cadastro_estados.desbloqueiaEdt;
begin
  inherited;
  self.edt_estado.Enabled := True;
  self.edt_uf.Enabled := True;
  self.edt_cod_pais.Enabled := True;
  self.edt_pesquisar_pais_estado.Enabled := True;
end;

procedure Tform_cadastro_estados.FormActivate(Sender: TObject);
begin
  inherited;
  if self.btn_botao_salvar.Caption = 'Salvar' then
    edt_estado.SetFocus;
end;

procedure Tform_cadastro_estados.limpaEdt;
begin
  inherited;
  self.edt_estado.Clear;
  self.edt_uf.Clear;
  self.edt_cod_pais.Clear;
  self.edt_pesquisar_pais_estado.Clear;
  self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_estados.sair;
begin
  inherited;
end;

procedure Tform_cadastro_estados.salvar;
begin
  inherited;
  if validaFormulario then
  begin
    oEstado.setCodigo(StrToInt(self.edt_codigo.Text));
    oEstado.setEstado(self.edt_estado.Text);
    oEstado.setUF(self.edt_uf.Text);
    oEstado.getoPais.setCodigo(StrToInt(edt_cod_pais.Text));
    oEstado.getoPais.setPais(edt_pesquisar_pais_estado.Text);
//    oEstado.setDataCad(Date);
//    oEstado.setUltAlt(Date);
    oEstado.setCodUsu(StrToInt(self.edt_cod_usuario.Text));
    if self.btn_botao_salvar.Caption = 'Salvar' then // INCLUIR-ALTERAR
    begin
      if (oEstado.getCodigo = 0) then
      begin
        if (aCtrlEstados.VerificaExiste(oEstado)) then
        // verifica se existe pais quando � incluir
        begin
          ShowMessage('J� existe um Estado ' + oEstado.getEstado +
            ' cadastrado no pa�s ' + oEstado.getoPais.getPais + '!');
          edt_estado.SetFocus;
          Exit;
        end;
      end
      else
      begin
        if not(NomeEstado = oEstado.getEstado) then
        // verifica se mudou o nome na alteracao
          if aCtrlEstados.VerificaExiste(oEstado) then
          // se mudou verifica se j� existe pais com o nome
          begin
            aCtrlEstados.SetPosicao(oEstado.getCodigo);
            ShowMessage('J� existe um Estado ' + oEstado.getEstado +
              ' cadastrado no pa�s ' + oEstado.getoPais.getPais + '!');
            edt_estado.SetFocus;
            Exit;
          end;
      end;
      aCtrlEstados.SetPosicao(oEstado.getCodigo);
      aCtrlEstados.salvar(oEstado.clone);
    end
    else // EXCLUIR
      if aCtrlEstados.ValidaExclusao(oEstado.clone) then
        aCtrlEstados.excluir(oEstado.clone)
      else
        ShowMessage
          ('O Estado est� cadastrado em uma cidade, n�o pode ser exclu�do!');
    self.sair;
  end;
end;

procedure Tform_cadastro_estados.setFrmConsultaPaises(pConsulta: TObject);
begin
  aConsultaPaises := Tform_consulta_paises(pConsulta);
end;

function Tform_cadastro_estados.validaFormulario: Boolean;
begin
  Result := False;
  if self.edt_estado.Text = '' then
  begin
    MessageDlg('O campo Estado � obrigat�rio!', MtInformation, [MbOK], 0);
    edt_estado.SetFocus;
    Exit;
  end;
  if self.edt_uf.Text = '' then
  begin
    MessageDlg('O campo UF � obrigat�rio!', MtInformation, [MbOK], 0);
    edt_uf.SetFocus;
    Exit;
  end;
  if self.edt_pesquisar_pais_estado.Text = '' then
  begin
    MessageDlg('O campo Pa�s � obrigat�rio!', MtInformation, [MbOK], 0);
    edt_pesquisar_pais_estado.SetFocus;
    Exit;
  end;
  Result := True;
end;

end.
