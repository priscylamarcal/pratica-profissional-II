inherited form_cadastro_clientes: Tform_cadastro_clientes
  Caption = 'Cadastro de Cliente'
  ClientHeight = 739
  ClientWidth = 932
  OnActivate = FormActivate
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  ExplicitTop = -376
  ExplicitWidth = 948
  ExplicitHeight = 778
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    Width = 932
    Height = 739
    ExplicitWidth = 932
    ExplicitHeight = 739
    inherited ScrollBox1: TScrollBox
      Width = 932
      Height = 739
      VertScrollBar.Position = 432
      ExplicitWidth = 932
      ExplicitHeight = 739
      inherited lbl_cod_usuario: TLabel
        Top = 645
        ExplicitTop = 967
      end
      inherited lbl_codigo: TLabel
        Top = -392
        ExplicitTop = 40
      end
      inherited lbl_data_cadastro: TLabel
        Top = 645
        ExplicitTop = 959
      end
      inherited lbl_data_ult_alt: TLabel
        Top = 645
        ExplicitTop = 959
      end
      object lbl_titulo_dados_gerais: TLabel [4]
        Left = 16
        Top = -416
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
      object lbl_tipo_cliente: TLabel [5]
        Left = 112
        Top = -392
        Width = 86
        Height = 16
        Caption = 'Tipo de Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_razao_social: TLabel [6]
        Left = 8
        Top = -338
        Width = 85
        Height = 16
        Caption = 'Raz'#227'o Social *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_nome_fantasia: TLabel [7]
        Left = 500
        Top = -338
        Width = 97
        Height = 16
        Caption = 'Nome Fantasia *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_titulo_endereco: TLabel [8]
        Left = 16
        Top = -280
        Width = 83
        Height = 18
        Caption = 'ENDERE'#199'O'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_endereco: TLabel [9]
        Left = 8
        Top = -252
        Width = 65
        Height = 16
        Caption = 'Endere'#231'o *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_numero: TLabel [10]
        Left = 432
        Top = -252
        Width = 57
        Height = 16
        Caption = 'N'#250'mero *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_complemento: TLabel [11]
        Left = 579
        Top = -252
        Width = 79
        Height = 16
        Caption = 'Complemento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_bairro: TLabel [12]
        Left = 8
        Top = -190
        Width = 37
        Height = 13
        Caption = 'Bairro *'
      end
      object lbl_cep: TLabel [13]
        Left = 432
        Top = -190
        Width = 22
        Height = 16
        Caption = 'CEP'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_codigo_cidade: TLabel [14]
        Left = 8
        Top = -123
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
      object lbl_cidade: TLabel [15]
        Left = 96
        Top = -123
        Width = 51
        Height = 16
        Caption = 'Cidade *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_uf: TLabel [16]
        Left = 539
        Top = -123
        Width = 15
        Height = 16
        Caption = 'UF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_algo_contato: TLabel [17]
        Left = 539
        Top = 179
        Width = 67
        Height = 16
        Caption = 'Observa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_contatos: TLabel [18]
        Left = 16
        Top = 154
        Width = 84
        Height = 18
        Caption = 'CONTATOS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_nome_tipo: TLabel [19]
        Left = 308
        Top = 179
        Width = 4
        Height = 16
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_tipo_contato: TLabel [20]
        Left = 96
        Top = 179
        Width = 103
        Height = 16
        Caption = 'Tipo de Contato *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_vendedor_responsavel: TLabel [21]
        Left = 96
        Top = 3
        Width = 143
        Height = 16
        Caption = 'Vendedor/Respons'#225'vel *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_cnpj: TLabel [22]
        Left = 8
        Top = -60
        Width = 40
        Height = 16
        Caption = 'CNPJ *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_ie: TLabel [23]
        Left = 184
        Top = -60
        Width = 23
        Height = 16
        Caption = 'IE *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_titulo_financeiro: TLabel [24]
        Left = 16
        Top = 61
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
      object lbl_limite_credito: TLabel [25]
        Left = 6
        Top = 92
        Width = 109
        Height = 16
        Caption = 'Limite de Cr'#233'dito *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_cod_condicao_pagamento: TLabel [26]
        Left = 134
        Top = 92
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
      object lbl_condicao_pagamento: TLabel [27]
        Left = 224
        Top = 92
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
      object lbl_obs: TLabel [28]
        Left = 16
        Top = 469
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
      object lbl_cod_contato: TLabel [29]
        Left = 8
        Top = 179
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
      object lbl_cod_vendedor_responsavel: TLabel [30]
        Left = 8
        Top = 3
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
      inherited edt_cod_usuario: PriTEdit
        Top = 660
        TabOrder = 22
        ExplicitTop = 660
      end
      inherited edt_codigo: PriTEdit
        Top = -373
        TabOrder = 23
        ExplicitTop = -373
      end
      inherited edt_data_cadastro: PriTEdit
        Top = 660
        TabOrder = 24
        ExplicitTop = 660
      end
      inherited edt_data_ult_alt: PriTEdit
        Top = 660
        TabOrder = 25
        ExplicitTop = 660
      end
      inherited pnl_bottom: TPanel
        Top = 684
        Width = 915
        TabOrder = 26
        ExplicitTop = 684
        ExplicitWidth = 915
        inherited pnl_botao_salvar: TPanel
          Left = 584
          ExplicitLeft = 584
        end
        inherited pnl_botao_cancelar: TPanel
          Left = 752
          ExplicitLeft = 752
        end
      end
      object ComboBox_tipo_cliente: TComboBox1
        Left = 112
        Top = -373
        Width = 145
        Height = 22
        Style = csOwnerDrawFixed
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemIndex = 0
        ParentFont = False
        TabOrder = 27
        Text = 'PESSOA JUR'#205'DICA'
        Items.Strings = (
          'PESSOA JUR'#205'DICA')
        MudarCor = clCream
      end
      object edt_razao_social: PriTEdit
        Left = 8
        Top = -320
        Width = 465
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
      object edt_nome_fantasia: PriTEdit
        Left = 500
        Top = -320
        Width = 346
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 80
        ParentFont = False
        TabOrder = 6
        MudarCor = clCream
      end
      object edt_bairro: PriTEdit
        Left = 8
        Top = -168
        Width = 392
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 10
        MudarCor = clCream
      end
      object edt_cep: PriTMaskEdit
        Left = 432
        Top = -168
        Width = 80
        Height = 24
        EditMask = '99.999-999;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 10
        ParentFont = False
        TabOrder = 11
        Text = '  .   -   '
        MudarCor = clCream
        TipoMascara = tmCEP
      end
      object edt_cod_cidade: PriTEdit
        Left = 8
        Top = -104
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
        TabOrder = 12
        MudarCor = clCream
      end
      object edt_cidade: PriTEdit
        Left = 96
        Top = -104
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
        TabOrder = 4
        MudarCor = clCream
      end
      object edt_uf: PriTEdit
        Left = 539
        Top = -104
        Width = 80
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
        TabOrder = 3
        MudarCor = clCream
      end
      object edt_endereco: PriTEdit
        Left = 8
        Top = -230
        Width = 393
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 7
        MudarCor = clCream
      end
      object edt_numero: PriTEdit
        Left = 432
        Top = -230
        Width = 121
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 8
        MudarCor = clCream
      end
      object edt_complemento: PriTEdit
        Left = 579
        Top = -230
        Width = 267
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 9
        MudarCor = clCream
      end
      object pnl_adicionar_cidade: TPanel
        Left = 487
        Top = -102
        Width = 35
        Height = 22
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 28
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
          ExplicitWidth = 65
          ExplicitHeight = 21
        end
      end
      object edt_algo: PriTEdit
        Left = 539
        Top = 201
        Width = 180
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 20
        MudarCor = clCream
      end
      object edt_nome_tipo_selecionado: PriTEdit
        Left = 308
        Top = 201
        Width = 220
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 50
        ParentFont = False
        TabOrder = 19
        MudarCor = clCream
      end
      object edt_tipo_contato: PriTEdit
        Left = 96
        Top = 201
        Width = 166
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
        TabOrder = 0
        MudarCor = clCream
      end
      object pnl_pesquisa_tipo_contato: TPanel
        Left = 263
        Top = 203
        Width = 35
        Height = 22
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 29
        object btn_pesquisa_tipo_contato: TSpeedButton
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
          OnClick = btn_pesquisa_tipo_contatoClick
          ExplicitWidth = 65
          ExplicitHeight = 21
        end
      end
      object edt_pesquisar_registro: PriTEdit
        Left = 96
        Top = 22
        Width = 280
        Height = 24
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
        MudarCor = clCream
      end
      object pnl_btn_pesquisa: TPanel
        Left = 376
        Top = 24
        Width = 35
        Height = 22
        BevelOuter = bvNone
        TabOrder = 30
        object btn_pesquisa: TSpeedButton
          Left = 0
          Top = 0
          Width = 35
          Height = 22
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          OnClick = btn_pesquisaClick
          ExplicitWidth = 65
          ExplicitHeight = 21
        end
      end
      object edt_cnpj: PriTMaskEdit
        Left = 8
        Top = -40
        Width = 124
        Height = 24
        EditMask = '99.999.999/9999-99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 18
        ParentFont = False
        TabOrder = 13
        Text = '  .   .   /    -  '
        MudarCor = clCream
        TipoMascara = tmCNPJ
      end
      object edt_ie: PriTEdit
        Left = 184
        Top = -40
        Width = 121
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 14
        MudarCor = clCream
      end
      object edt_limite_credito: PriTEdit
        Left = 8
        Top = 112
        Width = 80
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        NumbersOnly = True
        ParentFont = False
        TabOrder = 16
        MudarCor = clCream
      end
      object edt_cod_condicao_pagamento: PriTEdit
        Left = 134
        Top = 112
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
        TabOrder = 17
        MudarCor = clCream
      end
      object edt_pesquisa_condicao_pagamento: PriTEdit
        Left = 222
        Top = 112
        Width = 280
        Height = 24
        TabStop = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 1
        MudarCor = clCream
      end
      object pnl_pesquisa_condicao_pagamento: TPanel
        Left = 506
        Top = 113
        Width = 35
        Height = 22
        BevelOuter = bvNone
        TabOrder = 31
        object btn_pesquisa_condicao_pagamento: TSpeedButton
          Left = 0
          Top = 0
          Width = 35
          Height = 22
          Cursor = crHandPoint
          Align = alClient
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
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
          ParentFont = False
          OnClick = btn_pesquisa_condicao_pagamentoClick
          ExplicitWidth = 65
          ExplicitHeight = 21
        end
      end
      object memo_obs: TMemo
        Left = 8
        Top = 493
        Width = 838
        Height = 130
        MaxLength = 250
        ScrollBars = ssVertical
        TabOrder = 21
      end
      object edt_cod_contato: PriTEdit
        Left = 8
        Top = 201
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
        TabOrder = 18
        MudarCor = clCream
      end
      object edt_cod_vendedor_responsavel: PriTEdit
        Left = 8
        Top = 22
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
        TabOrder = 15
        MudarCor = clCream
      end
      object pbl_limpar_grid: TPanel
        Left = 789
        Top = -66
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
        TabOrder = 32
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
          ExplicitLeft = 24
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnl_botao_excluir_item: TPanel
        Left = 752
        Top = 238
        Width = 94
        Height = 40
        BevelOuter = bvNone
        Color = clRed
        ParentBackground = False
        TabOrder = 33
        object btn_botao_excluir_item: TSpeedButton
          Left = 0
          Top = 0
          Width = 94
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Remover'
          Flat = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          OnClick = btn_botao_excluir_itemClick
          ExplicitLeft = 40
          ExplicitTop = 16
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object pnl_botao_alterar: TPanel
        Left = 640
        Top = 238
        Width = 94
        Height = 40
        BevelOuter = bvNone
        Color = 1624307
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 34
        object btn_botao_alterar_item: TSpeedButton
          Left = 0
          Top = 0
          Width = 94
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
          ExplicitLeft = -12
          ExplicitTop = -15
          ExplicitWidth = 150
        end
      end
      object pnl_adicionar_contato: TPanel
        Left = 520
        Top = 238
        Width = 94
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
        TabOrder = 35
        object btn_adicionar_contato: TSpeedButton
          Left = 0
          Top = 0
          Width = 94
          Height = 40
          Cursor = crHandPoint
          Align = alClient
          Caption = 'Adicionar'
          Flat = True
          OnClick = btn_adicionar_contatoClick
          ExplicitLeft = 56
          ExplicitTop = 8
          ExplicitWidth = 23
          ExplicitHeight = 22
        end
      end
      object GridContatos: TDBGrid
        Left = 16
        Top = 291
        Width = 830
        Height = 172
        DataSource = dsContatos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 36
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'TipoContato'
            Title.Caption = 'Tipo Contato'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'observacao'
            Title.Caption = 'Observa'#231#227'o'
            Visible = True
          end>
      end
    end
  end
  object cdsContatos: TClientDataSet
    PersistDataPacket.Data = {
      A30000009619E0BD010000001800000005000000000003000000A30010636F64
      5F7469706F5F636F6E7461746F04000100000000000A6F62736572766163616F
      01004900000001000557494454480200020032000964657363726963616F0100
      4900000001000557494454480200020032000B5469706F436F6E7461746F0100
      4900000001000557494454480200020032000A6E756D436F6E7461746F040001
      00000000000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 400
    Top = 360
    object cdsContatoscod_tipo_contato: TIntegerField
      FieldName = 'cod_tipo_contato'
    end
    object cdsContatosobservacao: TStringField
      FieldName = 'observacao'
      Size = 50
    end
    object cdsContatosdescricao: TStringField
      FieldName = 'descricao'
      Size = 50
    end
    object cdsContatosTipoContato: TStringField
      FieldName = 'TipoContato'
      Size = 50
    end
    object cdsContatosnumContato: TIntegerField
      FieldName = 'numContato'
    end
  end
  object dsContatos: TDataSource
    DataSet = cdsContatos
    Left = 336
    Top = 368
  end
end
