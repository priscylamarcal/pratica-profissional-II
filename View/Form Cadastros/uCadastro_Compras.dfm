﻿inherited form_cadastro_compras: Tform_cadastro_compras
  Caption = 'Cadastrar Compra'
  ClientHeight = 724
  ClientWidth = 860
  OnCreate = FormCreate
  ExplicitTop = -95
  ExplicitWidth = 876
  ExplicitHeight = 763
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    Width = 860
    Height = 724
    ExplicitWidth = 848
    ExplicitHeight = 748
    inherited ScrollBox1: TScrollBox
      Width = 860
      Height = 724
      VertScrollBar.Position = 244
      ExplicitWidth = 848
      ExplicitHeight = 748
      inherited lbl_cod_usuario: TLabel
        Top = 1113
        ExplicitTop = 622
      end
      inherited lbl_codigo: TLabel
        Left = 744
        Top = -204
        Visible = False
        ExplicitLeft = 744
        ExplicitTop = -369
      end
      inherited lbl_data_cadastro: TLabel
        Top = 1113
        ExplicitTop = 630
      end
      inherited lbl_data_ult_alt: TLabel
        Top = 1113
        ExplicitTop = 622
      end
      object lbl_titulo_dados_gerais: TLabel [4]
        Left = 16
        Top = -228
        Width = 116
        Height = 18
        Caption = 'DADOS GERAIS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_modelo: TLabel [5]
        Left = 8
        Top = -204
        Width = 53
        Height = 16
        Caption = 'Modelo *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_serie: TLabel [6]
        Left = 168
        Top = -202
        Width = 42
        Height = 16
        Caption = 'S'#233'rie *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_num_nota: TLabel [7]
        Left = 328
        Top = -202
        Width = 105
        Height = 16
        Caption = 'N'#250'mero da Nota *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_data_emissao: TLabel [8]
        Left = 488
        Top = -202
        Width = 107
        Height = 16
        Caption = 'Data de Emiss'#227'o *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_data_chegada: TLabel [9]
        Left = 616
        Top = -202
        Width = 98
        Height = 16
        Caption = 'Data de Chegada'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_cidade: TLabel [10]
        Left = 112
        Top = -145
        Width = 77
        Height = 16
        Caption = 'Fornecedor *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_codigo_fornecedor: TLabel [11]
        Left = 8
        Top = -146
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
      object lbl_titulo_roupas: TLabel [12]
        Left = 16
        Top = -91
        Width = 64
        Height = 18
        Caption = 'ROUPAS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_cod_produto: TLabel [13]
        Left = 8
        Top = -62
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
      object lbl_roupa: TLabel [14]
        Left = 112
        Top = -62
        Width = 48
        Height = 16
        Caption = 'Roupa *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_unidade_medida: TLabel [15]
        Left = 8
        Top = -1
        Width = 109
        Height = 15
        Caption = 'Unidade de Medida'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_valor_total: TLabel [16]
        Left = 320
        Top = 70
        Width = 63
        Height = 16
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_desconto: TLabel [17]
        Left = 216
        Top = 70
        Width = 52
        Height = 16
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_valor_unitario: TLabel [18]
        Left = 112
        Top = 70
        Width = 90
        Height = 16
        Caption = 'Valor Unit'#225'rio *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_quantidade: TLabel [19]
        Left = 10
        Top = 70
        Width = 77
        Height = 16
        Caption = 'Quantidade *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_titulo_total: TLabel [20]
        Left = 16
        Top = 389
        Width = 49
        Height = 18
        Caption = 'TOTAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_total_quantidade: TLabel [21]
        Left = 8
        Top = 421
        Width = 65
        Height = 16
        Caption = 'Quantidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_total_desconto: TLabel [22]
        Left = 112
        Top = 421
        Width = 52
        Height = 16
        Caption = 'Desconto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_total_valor_total: TLabel [23]
        Left = 216
        Top = 421
        Width = 63
        Height = 16
        Caption = 'Valor Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_titulo_financeiro: TLabel [24]
        Left = 16
        Top = 581
        Width = 99
        Height = 18
        Caption = 'FINANCEIRO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_codigo_condicao_pagamento: TLabel [25]
        Left = 10
        Top = 613
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
      object edt_condicao_pagamento: TLabel [26]
        Left = 120
        Top = 613
        Width = 156
        Height = 16
        Caption = 'Condi'#231#245'es de Pagamento *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_frete: TLabel [27]
        Left = 8
        Top = 517
        Width = 30
        Height = 16
        Caption = 'Frete'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_seguro: TLabel [28]
        Left = 112
        Top = 517
        Width = 41
        Height = 16
        Caption = 'Seguro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_outras_despesas: TLabel [29]
        Left = 216
        Top = 517
        Width = 96
        Height = 16
        Caption = 'Outras Despesas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_titulo_obs: TLabel [30]
        Left = 16
        Top = 921
        Width = 113
        Height = 18
        Caption = 'OBSERVA'#199#213'ES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_codigo_roupa: TLabel [31]
        Left = 132
        Top = -2
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
      object lbl_tamanho: TLabel [32]
        Left = 312
        Top = -2
        Width = 54
        Height = 16
        Caption = 'Tamanho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_cor: TLabel [33]
        Left = 226
        Top = -2
        Width = 20
        Height = 16
        Caption = 'Cor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_outros_valores: TLabel [34]
        Left = 16
        Top = 485
        Width = 140
        Height = 18
        Caption = 'OUTROS VALORES'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      inherited edt_cod_usuario: PriTEdit
        Top = 1128
        ReadOnly = True
        ExplicitTop = 1128
      end
      inherited edt_codigo: PriTEdit
        Left = 742
        Top = -182
        TabStop = False
        TabOrder = 19
        Visible = False
        ExplicitLeft = 742
        ExplicitTop = -182
      end
      inherited edt_data_cadastro: PriTEdit
        Left = 10
        Top = 1128
        ReadOnly = True
        TabOrder = 20
        ExplicitLeft = 10
        ExplicitTop = 1128
      end
      inherited edt_data_ult_alt: PriTEdit
        Top = 1128
        ReadOnly = True
        TabOrder = 21
        ExplicitTop = 1128
      end
      inherited pnl_bottom: TPanel
        Top = 1152
        Width = 843
        TabOrder = 22
        ExplicitTop = 1152
        ExplicitWidth = 843
        inherited pnl_botao_salvar: TPanel
          Left = 510
          ExplicitLeft = 510
        end
        inherited pnl_botao_cancelar: TPanel
          Left = 678
          ExplicitLeft = 678
          inherited btn_botao_cancelar: TSpeedButton
            ExplicitLeft = 1
            ExplicitHeight = 40
          end
        end
      end
      object data_emissao_nota: TDateTimePicker
        Left = 488
        Top = -183
        Width = 103
        Height = 24
        Date = 44485.000000000000000000
        Time = 0.662260243057971800
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object data_chegada_nota: TDateTimePicker
        Left = 616
        Top = -183
        Width = 103
        Height = 24
        Date = 44485.000000000000000000
        Time = 0.662260243057971800
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edt_num_modelo: PriTEdit
        Left = 8
        Top = -183
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        MudarCor = clCream
      end
      object edt_num_serie: PriTEdit
        Left = 168
        Top = -183
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 2
        MudarCor = clCream
      end
      object edt_num_nota: PriTEdit
        Left = 328
        Top = -183
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        MudarCor = clCream
      end
      object edt_cod_fornecedor: PriTEdit
        Left = 8
        Top = -124
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
        ReadOnly = True
        TabOrder = 6
        MudarCor = clCream
      end
      object edt_pesquisar_fornecedor: PriTEdit
        Left = 112
        Top = -124
        Width = 389
        Height = 24
        TabStop = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 23
        MudarCor = clCream
      end
      object pnl_adicionar_cidade: TPanel
        Left = 514
        Top = -122
        Width = 35
        Height = 22
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 24
        object btn_adicionar_cidade: TSpeedButton
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
          OnClick = btn_adicionar_cidadeClick
          ExplicitLeft = 8
          ExplicitTop = -8
        end
      end
      object pnl_adicionar_produto: TPanel
        Left = 514
        Top = -42
        Width = 35
        Height = 22
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 25
        object btn_adicionar_produto: TSpeedButton
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
          OnClick = btn_adicionar_produtoClick
          ExplicitLeft = -7
        end
      end
      object edt_produto: PriTEdit
        Left = 112
        Top = -44
        Width = 389
        Height = 24
        TabStop = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 26
        MudarCor = clCream
      end
      object edt_cod_produto: PriTEdit
        Left = 8
        Top = -44
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
        ReadOnly = True
        TabOrder = 7
        MudarCor = clCream
      end
      object edt_unidade_medida: PriTEdit
        Left = 8
        Top = 20
        Width = 109
        Height = 24
        TabStop = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 27
        MudarCor = clCream
      end
      object edt_quant_produto: PriTEdit
        Left = 8
        Top = 92
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 8
        Text = '0'
        OnChange = edt_quant_produtoChange
        MudarCor = clCream
      end
      object edt_valor_unitario: PriTEdit
        Left = 112
        Top = 92
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 9
        Text = '0'
        OnChange = edt_valor_unitarioChange
        MudarCor = clCream
      end
      object edt_valor_total: PriTEdit
        Left = 320
        Top = 92
        Width = 80
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
        MudarCor = clCream
      end
      object pbl_limpar_grid: TPanel
        Left = 355
        Top = 148
        Width = 100
        Height = 40
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
        TabOrder = 28
        Visible = False
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
      object pnl_remover_item: TPanel
        Left = 722
        Top = 148
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
        TabOrder = 29
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
          ExplicitLeft = 8
        end
      end
      object pnl_botao_alterar_item: TPanel
        Left = 232
        Top = 148
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
        TabOrder = 30
        Visible = False
        object btn_botao_alterar_item: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Alterar'
          Enabled = False
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btn_botao_alterar_itemClick
          ExplicitLeft = -32
          ExplicitWidth = 150
        end
      end
      object pnl_adicionar_contato: TPanel
        Left = 606
        Top = 148
        Width = 100
        Height = 40
        BevelOuter = bvNone
        Color = 4227072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 31
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
          ExplicitTop = -8
        end
      end
      object edt_total_quantidade: PriTEdit
        Left = 10
        Top = 444
        Width = 80
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
        MudarCor = clCream
      end
      object edt_total_desconto: PriTEdit
        Left = 112
        Top = 444
        Width = 80
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 12
        MudarCor = clCream
      end
      object edt_total_valor_total: PriTEdit
        Left = 216
        Top = 444
        Width = 80
        Height = 24
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
        MudarCor = clCream
      end
      object pnl_btn_condicao_pagamento: TPanel
        Left = 514
        Top = 637
        Width = 35
        Height = 22
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 32
        object btn_botão_pesquisar_condicao_pagamento: TSpeedButton
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
          OnClick = btn_botão_pesquisar_condicao_pagamentoClick
          ExplicitLeft = 8
          ExplicitTop = -8
        end
      end
      object edt_codigo_condicao_pagamento: PriTEdit
        Left = 8
        Top = 635
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
        ReadOnly = True
        TabOrder = 17
        MudarCor = clCream
      end
      object edit_condicao_pagamento: PriTEdit
        Left = 119
        Top = 635
        Width = 389
        Height = 24
        TabStop = False
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 33
        MudarCor = clCream
      end
      object edt_frete: PriTEdit
        Left = 8
        Top = 539
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 14
        OnChange = edt_freteChange
        MudarCor = clCream
      end
      object edt_seguro: PriTEdit
        Left = 112
        Top = 539
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 15
        OnChange = edt_seguroChange
        MudarCor = clCream
      end
      object edt_outras_despesas: PriTEdit
        Left = 216
        Top = 539
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 16
        OnChange = edt_outras_despesasChange
        MudarCor = clCream
      end
      object memo_obs: TMemo
        Left = 8
        Top = 951
        Width = 820
        Height = 156
        MaxLength = 250
        ScrollBars = ssVertical
        TabOrder = 18
      end
      object edt_codigo_roupa: PriTEdit
        Left = 132
        Top = 20
        Width = 69
        Height = 24
        TabStop = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 34
        MudarCor = clCream
      end
      object edt_Desconto: PriTEdit
        Left = 216
        Top = 92
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        NumbersOnly = True
        ParentFont = False
        TabOrder = 35
        Text = '0'
        OnChange = edt_DescontoChange
        MudarCor = clCream
      end
      object list_view_produtos: TDBGrid
        Left = 8
        Top = 210
        Width = 820
        Height = 162
        DataSource = DsProdutoCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 36
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Produto'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UnidadeMedida'
            Title.Caption = 'Unidade de Medida'
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'quantidade'
            Title.Caption = 'Quantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorUnitario'
            Title.Caption = 'Valor Unit'#225'rio'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Desconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ValorTotal'
            Visible = True
          end>
      end
      object edt_tamanho: PriTEdit
        Left = 312
        Top = 20
        Width = 65
        Height = 24
        TabStop = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 37
        MudarCor = clCream
      end
      object Grid_Condicoes_pagamento: TDBGrid
        Left = 8
        Top = 681
        Width = 820
        Height = 226
        DataSource = ds_Parcelas
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 38
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'Numero_parcela'
            Title.Caption = 'N'#250'mero da Parcela'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valor'
            Title.Caption = 'Valor da Parcela'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'data_vencimento'
            Title.Caption = 'Data Vencimento'
            Visible = True
          end>
      end
      object edt_cor: PriTEdit
        Left = 224
        Top = 20
        Width = 65
        Height = 24
        TabStop = False
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 39
        MudarCor = clCream
      end
      object pnl_gerar_parcelas: TPanel
        Left = 555
        Top = 629
        Width = 100
        Height = 40
        BevelOuter = bvNone
        Color = 12615680
        ParentBackground = False
        TabOrder = 40
        object btn_gerarParcelas: TSpeedButton
          Left = 0
          Top = 0
          Width = 100
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Gerar Parcelas'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clHighlightText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btn_gerarParcelasClick
          OnMouseEnter = btn_gerarParcelasMouseEnter
          OnMouseLeave = btn_gerarParcelasMouseLeave
          ExplicitLeft = 16
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
    end
  end
  object DsProdutoCompra: TDataSource
    DataSet = dset_produtoGrid
    Left = 448
    Top = 480
  end
  object dset_produtoCompra: TClientDataSet
    PersistDataPacket.Data = {
      170100009619E0BD01000000180000000900000000000300000017010E554E49
      444144455F4D45444944410100490000000100055749445448020002001E0003
      51544404000100000000000E56414C4F525F554E49544152494F080004000000
      010007535542545950450200490006004D6F6E65790008444553434F4E544F08
      0004000000010007535542545950450200490006004D6F6E6579000B56414C4F
      525F544F54414C080004000000010007535542545950450200490006004D6F6E
      6579000B49445F564152494143414F04000100000000000849445F524F555041
      040001000000000005524F555041010049000000010005574944544802000200
      1E000E4E554D45524F5F50524F4455544F04000100000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 392
    Top = 480
    object dset_produtoCompraUNIDADE_MEDIDA: TStringField
      FieldName = 'UNIDADE_MEDIDA'
      Size = 30
    end
    object dset_produtoCompraQTD: TIntegerField
      FieldName = 'QTD'
    end
    object dset_produtoCompraVALOR_UNITARIO: TCurrencyField
      FieldName = 'VALOR_UNITARIO'
    end
    object dset_produtoCompraDESCONTO: TCurrencyField
      FieldName = 'DESCONTO'
    end
    object dset_produtoCompraVALOR_TOTAL: TCurrencyField
      FieldName = 'VALOR_TOTAL'
    end
    object dset_produtoCompraID_VARIACAO: TIntegerField
      FieldName = 'ID_VARIACAO'
    end
    object dset_produtoCompraID_ROUPA: TIntegerField
      FieldName = 'ID_ROUPA'
    end
    object dset_produtoCompraROUPA: TStringField
      FieldName = 'ROUPA'
      Size = 30
    end
    object dset_produtoCompraNUMERO_PRODUTO: TIntegerField
      FieldName = 'NUMERO_PRODUTO'
    end
  end
  object dset_produtoGrid: TClientDataSet
    PersistDataPacket.Data = {
      E10000009619E0BD010000001800000006000000000003000000E1000750726F
      6475746F0100490000000100055749445448020002001E000D556E6964616465
      4D656469646101004900000001000557494454480200020014000A7175616E74
      696461646504000100000000000D56616C6F72556E69746172696F0800040000
      00010007535542545950450200490006004D6F6E65790008446573636F6E746F
      080004000000010007535542545950450200490006004D6F6E6579000A56616C
      6F72546F74616C080004000000010007535542545950450200490006004D6F6E
      6579000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 320
    Top = 480
    object dset_produtoGridProduto: TStringField
      FieldName = 'Produto'
      Size = 30
    end
    object dset_produtoGridUnidadeMedida: TStringField
      FieldName = 'UnidadeMedida'
    end
    object dset_produtoGridquantidade: TIntegerField
      FieldName = 'quantidade'
    end
    object dset_produtoGridValorUnitario: TCurrencyField
      FieldName = 'ValorUnitario'
    end
    object dset_produtoGridDesconto: TCurrencyField
      FieldName = 'Desconto'
    end
    object dset_produtoGridValorTotal: TCurrencyField
      FieldName = 'ValorTotal'
    end
  end
  object ds_Parcelas: TDataSource
    DataSet = dset_ParcelasCompras
    Left = 448
    Top = 336
  end
  object dset_ParcelasCompras: TClientDataSet
    PersistDataPacket.Data = {
      6B0000009619E0BD0100000018000000030000000000030000006B000E4E756D
      65726F5F70617263656C6104000100000000000576616C6F7208000400000001
      0007535542545950450200490006004D6F6E6579000F646174615F76656E6369
      6D656E746F08000800000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 352
    Top = 360
    object dset_ParcelasComprasNumero_parcela: TIntegerField
      FieldName = 'Numero_parcela'
    end
    object dset_ParcelasComprasvalor: TCurrencyField
      FieldName = 'valor'
    end
    object dset_ParcelasComprasdata_vencimento: TDateTimeField
      FieldName = 'data_vencimento'
    end
  end
end
