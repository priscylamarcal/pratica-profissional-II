inherited form_cadastro_add_roupa_venda: Tform_cadastro_add_roupa_venda
  Caption = 'Adicionar Roupa'
  ClientHeight = 401
  ExplicitHeight = 440
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    Height = 401
    ExplicitHeight = 401
    inherited ScrollBox1: TScrollBox
      Height = 401
      ExplicitHeight = 401
      inherited lbl_cod_usuario: TLabel
        Top = 293
        ExplicitTop = 293
      end
      inherited lbl_codigo: TLabel
        Left = 312
        Top = 293
        Visible = False
        ExplicitLeft = 312
        ExplicitTop = 293
      end
      inherited lbl_data_cadastro: TLabel
        Top = 293
        ExplicitTop = 293
      end
      inherited lbl_data_ult_alt: TLabel
        Top = 293
        ExplicitTop = 293
      end
      object lbl_total_quantidade: TLabel [4]
        Left = 666
        Top = 202
        Width = 162
        Height = 16
        Caption = 'Quantidade Total de Roupas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited edt_cod_usuario: PriTEdit
        Top = 308
        ExplicitTop = 308
      end
      inherited edt_codigo: PriTEdit
        Left = 312
        Top = 308
        Visible = False
        ExplicitLeft = 312
        ExplicitTop = 308
      end
      inherited edt_data_cadastro: PriTEdit
        Top = 308
        ExplicitTop = 308
      end
      inherited edt_data_ult_alt: PriTEdit
        Top = 308
        ExplicitTop = 308
      end
      inherited pnl_bottom: TPanel
        Top = 346
        ExplicitTop = 346
        inherited pnl_botao_salvar: TPanel
          inherited btn_botao_salvar: TSpeedButton
            Caption = 'Adicionar'
          end
        end
      end
      object list_view_produtos: TListView
        Left = 8
        Top = 25
        Width = 820
        Height = 162
        Columns = <
          item
            Caption = 'Cor/Tamanho'
            Width = 320
          end
          item
            Caption = 'C'#243'digo'
            Width = 100
          end>
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ReadOnly = True
        RowSelect = True
        ParentFont = False
        TabOrder = 5
        TabStop = False
        ViewStyle = vsReport
      end
      object edt_total_quantidade: PriTEdit
        Left = 748
        Top = 224
        Width = 80
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
        MudarCor = clCream
      end
    end
  end
end
