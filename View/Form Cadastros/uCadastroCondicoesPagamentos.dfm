inherited form_cadastro_condicao_pagamento: Tform_cadastro_condicao_pagamento
  Caption = 'Cadastro de Condi'#231#227'o de Pagamento'
  ClientHeight = 703
  ClientWidth = 871
  OnCreate = FormCreate
  ExplicitWidth = 887
  ExplicitHeight = 742
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    Width = 871
    Height = 703
    ExplicitWidth = 871
    ExplicitHeight = 703
    inherited ScrollBox1: TScrollBox
      Width = 871
      Height = 703
      ExplicitWidth = 871
      ExplicitHeight = 703
      inherited lbl_cod_usuario: TLabel
        Top = 601
        ExplicitTop = 601
      end
      inherited lbl_data_cadastro: TLabel
        Top = 601
        ExplicitTop = 601
      end
      inherited lbl_data_ult_alt: TLabel
        Top = 601
        ExplicitTop = 601
      end
      object lbl_condicao_pagamento: TLabel [4]
        Left = 112
        Top = 16
        Width = 150
        Height = 16
        Caption = 'Condi'#231#227'o de Pagamento *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_desconto: TLabel [5]
        Left = 8
        Top = 66
        Width = 64
        Height = 16
        Caption = 'Desconto *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_juros: TLabel [6]
        Left = 112
        Top = 65
        Width = 42
        Height = 16
        Caption = 'Juros *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_multa: TLabel [7]
        Left = 216
        Top = 65
        Width = 31
        Height = 16
        Caption = 'Multa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_totais: TLabel [8]
        Left = 8
        Top = 562
        Width = 72
        Height = 16
        Caption = 'Total em %:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_total_porc: TLabel [9]
        Left = 171
        Top = 562
        Width = 7
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object GroupBox1: TGroupBox [10]
        Left = 3
        Top = 116
        Width = 614
        Height = 137
        Caption = 'PARCELAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        object lbl_codigo_forma: TLabel
          Left = 3
          Top = 81
          Width = 39
          Height = 16
          Caption = 'C'#243'digo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl_dias: TLabel
          Left = 109
          Top = 25
          Width = 36
          Height = 16
          Caption = 'Dias *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl_num_parcelas: TLabel
          Left = 3
          Top = 25
          Width = 60
          Height = 16
          Caption = 'N'#186' Parcela'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object lbl_porcentagem: TLabel
          Left = 213
          Top = 25
          Width = 103
          Height = 16
          Caption = 'Porcentagem % *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label2: TLabel
          Left = 109
          Top = 81
          Width = 135
          Height = 16
          Caption = 'Forma de Pagamento *'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object edt_cod_forma: PriTEdit
          Left = 3
          Top = 99
          Width = 80
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 4
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          MudarCor = clCream
        end
        object edt_dias: PriTEdit
          Left = 109
          Top = 42
          Width = 80
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 4
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          MudarCor = clCream
        end
        object edt_num_parcelas: PriTEdit
          Left = 3
          Top = 42
          Width = 80
          Height = 24
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 3
          NumbersOnly = True
          ParentFont = False
          TabOrder = 2
          MudarCor = clCream
        end
        object edt_porcentagem: PriTEdit
          Left = 213
          Top = 42
          Width = 108
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          MaxLength = 6
          ParentFont = False
          TabOrder = 3
          OnKeyPress = edt_porcentagemKeyPress
          MudarCor = clCream
        end
        object edt_pesquisar_registro: PriTEdit
          Left = 109
          Top = 99
          Width = 304
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          ReadOnly = True
          TabOrder = 4
          MudarCor = clCream
        end
        object pnl_btn_pesquisa: TPanel
          Left = 420
          Top = 100
          Width = 35
          Height = 22
          BevelOuter = bvNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          object btn_pesquisa: TSpeedButton
            Left = 0
            Top = 0
            Width = 35
            Height = 22
            Cursor = crHandPoint
            Align = alClient
            Flat = True
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFA2A2A21D1D1D737373FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9D0101010000001D1D1DFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9D9D9D0101
              01000000010101A2A2A2FFFFFFFFFFFFFFFFFFFFFFFFD5D5D5929292919191A9
              A9A9EFEFEFFFFFFF9E9E9E0101010000000101019D9D9DFFFFFFFFFFFFFFFFFF
              D4D4D43232320000000000000000000000000C0C0C6868680505050000000101
              019D9D9DFFFFFFFFFFFFFFFFFFBABABA0707070D0D0D898989CACACAE0E0E0B2
              B2B24747470000000000000505059E9E9EFFFFFFFFFFFFFFFFFFF0F0F01C1C1C
              232323E1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF878787000000686868FFFF
              FFFFFFFFFFFFFFFFFFFF7A7A7A010101C0C0C0FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF4747470C0C0CEFEFEFFFFFFFFFFFFFFFFFFF3F3F3F2A2A2A
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB2B2B2000000A9A9
              A9FFFFFFFFFFFFFFFFFF0F0F0F585858FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFFE0E0E0000000919191FFFFFFFFFFFFFFFFFF262626424242
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCACACA0000009292
              92FFFFFFFFFFFFFFFFFF5959590F0F0FF2F2F2FFFFFFFFFFFFFFFFFFFFFFFFFF
              FFFFFFFFFFFFFFFF888888000000D5D5D5FFFFFFFFFFFFFFFFFFBCBCBC010101
              686868FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDF0C0C0C323232FFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFF676767000000676767F2F2F2FFFFFFFFFFFFFF
              FFFFBDBDBD1F1F1F070707D4D4D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5
              6767670101010F0F0F4242425858582A2A2A0101011C1C1CBABABAFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBC5959592626260F0F0F3F
              3F3F7A7A7AF0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
            OnClick = btn_pesquisaClick
            ExplicitLeft = -8
          end
        end
      end
      inherited edt_cod_usuario: PriTEdit
        Top = 616
        TabOrder = 7
        ExplicitTop = 616
      end
      inherited edt_codigo: PriTEdit
        TabOrder = 8
      end
      inherited edt_data_cadastro: PriTEdit
        Top = 616
        TabOrder = 9
        ExplicitTop = 616
      end
      inherited edt_data_ult_alt: PriTEdit
        Top = 616
        TabOrder = 10
        ExplicitTop = 616
      end
      inherited pnl_bottom: TPanel
        Top = 648
        Width = 871
        TabOrder = 11
        ExplicitTop = 648
        ExplicitWidth = 871
      end
      object edt_condicao_pagamento: PriTEdit
        Left = 112
        Top = 35
        Width = 505
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 80
        ParentFont = False
        TabOrder = 3
        MudarCor = clCream
      end
      object edt_desconto: PriTEdit
        Left = 8
        Top = 82
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        NumbersOnly = True
        ParentFont = False
        TabOrder = 4
        MudarCor = clCream
      end
      object edt_juros: PriTEdit
        Left = 112
        Top = 82
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        NumbersOnly = True
        ParentFont = False
        TabOrder = 5
        MudarCor = clCream
      end
      object edt_multa: PriTEdit
        Left = 216
        Top = 82
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 4
        NumbersOnly = True
        ParentFont = False
        TabOrder = 6
        MudarCor = clCream
      end
      object pnl_adicionar_contato: TPanel
        Left = 515
        Top = 300
        Width = 100
        Height = 40
        Cursor = crHandPoint
        BevelOuter = bvNone
        Color = 4227072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        object btn_adicionar_contato: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Adicionar'
          Flat = True
          OnClick = btn_adicionar_contatoClick
          OnMouseEnter = btn_adicionar_contatoMouseEnter
          OnMouseLeave = btn_adicionar_contatoMouseLeave
          ExplicitLeft = 4
          ExplicitTop = 2
        end
      end
      object pnl_remover_item: TPanel
        Left = 630
        Top = 300
        Width = 100
        Height = 40
        Cursor = crHandPoint
        BevelOuter = bvNone
        Color = clRed
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object btn_remover_item: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 40
          Align = alClient
          Caption = 'Remover'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btn_remover_itemClick
          ExplicitLeft = 24
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnl_botao_alterar_item: TPanel
        Left = 200
        Top = 300
        Width = 100
        Height = 40
        Cursor = crHandPoint
        BevelOuter = bvNone
        Color = 1624307
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        Visible = False
        object btn_botao_alterar_item: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Alterar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btn_botao_alterar_itemClick
          OnMouseEnter = btn_botao_alterar_itemMouseEnter
          OnMouseLeave = btn_botao_alterar_itemMouseLeave
          ExplicitLeft = 40
          ExplicitTop = 2
        end
      end
      object pbl_limpar_grid: TPanel
        Left = 744
        Top = 300
        Width = 100
        Height = 40
        Cursor = crHandPoint
        BevelOuter = bvNone
        Color = clWhite
        DragCursor = crHandPoint
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 12
        object btn_limpar_grid: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Limpar'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btn_limpar_gridClick
          ExplicitLeft = 24
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object GridParcelas: TDBGrid
        Left = 2
        Top = 348
        Width = 844
        Height = 208
        DataSource = dsParcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 14
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'NumParcela'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Dias'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PORCENTAGEM'
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DscFormaPgto'
            Width = 383
            Visible = True
          end>
      end
    end
  end
  object dsParcelas: TDataSource
    AutoEdit = False
    DataSet = cdsParcelas
    Left = 496
    Top = 432
  end
  object cdsParcelas: TClientDataSet
    PersistDataPacket.Data = {
      840000009619E0BD01000000180000000500000000000300000084000A4E756D
      50617263656C610400010000000000044469617304000100000000000B504F52
      43454E544147454D08000400000000000C436F64466F726D615067746F040001
      00000000000C447363466F726D615067746F0100490000000100055749445448
      0200020014000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 544
    Top = 432
    object cdsParcelasNumParcela: TIntegerField
      DisplayLabel = 'N'#186' Parcela'
      FieldName = 'NumParcela'
    end
    object cdsParcelasDias: TIntegerField
      FieldName = 'Dias'
    end
    object cdsParcelasPORCENTAGEM: TFloatField
      DisplayLabel = 'Porcentagem'
      FieldName = 'PORCENTAGEM'
    end
    object cdsParcelasCodFormaPgto: TIntegerField
      FieldName = 'CodFormaPgto'
      Visible = False
    end
    object cdsParcelasDscFormaPgto: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'DscFormaPgto'
    end
  end
end
