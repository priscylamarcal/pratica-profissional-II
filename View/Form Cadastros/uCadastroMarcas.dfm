inherited form_cadastro_marcas: Tform_cadastro_marcas
  Caption = 'Cadastro de Marca'
  ClientHeight = 216
  ExplicitHeight = 255
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    Height = 216
    ExplicitHeight = 216
    inherited ScrollBox1: TScrollBox
      Height = 216
      ExplicitHeight = 216
      inherited lbl_cod_usuario: TLabel
        Top = 117
        ExplicitTop = 117
      end
      inherited lbl_data_cadastro: TLabel
        Top = 117
        ExplicitTop = 117
      end
      inherited lbl_data_ult_alt: TLabel
        Top = 117
        ExplicitTop = 117
      end
      object lbl_marca: TLabel [4]
        Left = 112
        Top = 16
        Width = 47
        Height = 16
        Caption = 'Marca *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited edt_cod_usuario: PriTEdit
        Top = 132
        ExplicitTop = 132
      end
      inherited edt_data_cadastro: PriTEdit
        Top = 132
        ExplicitTop = 132
      end
      inherited edt_data_ult_alt: PriTEdit
        Top = 132
        ExplicitTop = 132
      end
      inherited pnl_bottom: TPanel
        Top = 161
        ExplicitTop = 161
      end
      object edt_marca: PriTEdit
        Left = 112
        Top = 35
        Width = 566
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 80
        ParentFont = False
        TabOrder = 5
        MudarCor = clCream
      end
    end
  end
end
