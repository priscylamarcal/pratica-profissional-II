unit uCadastroTiposContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, uTiposContatos, uCtrlTiposContatos;

type
  Tform_cadastro_tipo_contato = class(Tform_cadastro_pai)
    lbl_tipo_contato: TLabel;
    edt_tipo_contato: PriTEdit;
  private
    { Private declarations }
    oTipoContato: TiposContatos;
    aCtrlTiposContatos: ctrlTiposContatos;
    NomeTipoContato: string;
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
  end;

var
  form_cadastro_tipo_contato: Tform_cadastro_tipo_contato;

implementation

{$R *.dfm}

{ Tform_cadastro_tipo_contato }
procedure Tform_cadastro_tipo_contato.bloqueiaEdt;
begin
  inherited;
  self.edt_tipo_contato.Enabled := False;
end;

procedure Tform_cadastro_tipo_contato.carregaEdt;
begin
  inherited;
  if oTipoContato.getCodigo <> 0 then
    self.edt_codigo.Text := IntToStr(oTipoContato.getCodigo);
  self.edt_tipo_contato.Text := oTipoContato.getTipoContato;
  self.edt_data_cadastro.Text := DateToStr(oTipoContato.getDataCad);
  self.edt_data_ult_alt.Text := DateToStr(oTipoContato.getUltAlt);
  NomeTipoContato := oTipoContato.getTipoContato;
end;

procedure Tform_cadastro_tipo_contato.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oTipoContato := TiposContatos(pObj);
  aCtrlTiposContatos := ctrlTiposContatos(pCtrl);
  self.limpaEdt;
  self.carregaEdt;
end;

procedure Tform_cadastro_tipo_contato.desbloqueiaEdt;
begin
  inherited;
  self.edt_tipo_contato.Enabled := True;
end;

procedure Tform_cadastro_tipo_contato.limpaEdt;
begin
  inherited;
  self.edt_tipo_contato.Clear;
  self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_tipo_contato.sair;
begin
  inherited;
end;

procedure Tform_cadastro_tipo_contato.salvar;
begin
  inherited;
  if validaFormulario then
  begin
    oTipoContato.setCodigo(StrToInt(self.edt_codigo.Text));
    oTipoContato.setTipoContato(self.edt_tipo_contato.Text);
    //oTipoContato.setDataCad(Date);
    //oTipoContato.setUltAlt(Date);
    oTipoContato.setCodUsu(StrToInt(self.edt_cod_usuario.Text));

    if self.btn_botao_salvar.Caption = 'Salvar' then // INCLUIR-ALTERAR
    begin
      if (oTipoContato.getCodigo = 0) then
      begin
        if (aCtrlTiposContatos.VerificaExiste(oTipoContato.getTipoContato)) then
        // verifica se existe Tipo de Contato quando � incluir
        begin
          ShowMessage('J� existe um Tipo de Contato ' +
            oTipoContato.getTipoContato + ' cadastrado!');
          edt_tipo_contato.SetFocus;
          Exit;
        end;
      end
      else
      begin
        if not(NomeTipoContato = oTipoContato.getTipoContato) then
          if (aCtrlTiposContatos.VerificaExiste(oTipoContato.getTipoContato))
          then // se mudou verifica se j� existe Tipo de Contato com o nome
          begin
            aCtrlTiposContatos.SetPosicao(oTipoContato.getCodigo);
            ShowMessage('J� existe um Tipo de Contato ' +
              oTipoContato.getTipoContato + ' cadastrado!');
            edt_tipo_contato.SetFocus;
            Exit;
          end;
      end;
      aCtrlTiposContatos.salvar(oTipoContato.clone);
    end
    else // EXCLUIR
      if aCtrlTiposContatos.ValidaExclusao(oTipoContato.clone) then
        aCtrlTiposContatos.excluir(oTipoContato.clone)
      else
        ShowMessage
          ('O Tipo de Contato est� sendo usado por outro registro, n�o pode ser exclu�do!');

    self.sair;
  end;
end;

function Tform_cadastro_tipo_contato.validaFormulario: Boolean;
begin
  Result := False;
  if self.edt_tipo_contato.Text = '' then
  begin
    MessageDlg('O campo Tipo Contato � obrigat�rio!', MtInformation, [MbOK], 0);
    edt_tipo_contato.SetFocus;
    Exit;
  end;
  Result := True;
end;

end.
