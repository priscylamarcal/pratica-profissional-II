inherited form_cadastro_funcionario: Tform_cadastro_funcionario
  Caption = 'Cadastro de Funcion'#225'rio'
  ClientHeight = 680
  ClientWidth = 964
  ExplicitWidth = 980
  ExplicitHeight = 719
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    Width = 964
    Height = 680
    ExplicitWidth = 964
    ExplicitHeight = 680
    inherited ScrollBox1: TScrollBox
      Width = 964
      Height = 680
      Font.Height = -13
      ParentFont = False
      ExplicitWidth = 964
      ExplicitHeight = 680
      inherited lbl_cod_usuario: TLabel
        Top = 1055
        ExplicitTop = 578
      end
      inherited lbl_codigo: TLabel
        Top = 41
        ExplicitTop = 41
      end
      inherited lbl_data_cadastro: TLabel
        Top = 1055
        ExplicitTop = 578
      end
      inherited lbl_data_ult_alt: TLabel
        Top = 1055
        ExplicitTop = 578
      end
      object lbl_titulo_dados_gerais: TLabel [4]
        Left = 16
        Top = 16
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
      object lbl_funcionario: TLabel [5]
        Left = 112
        Top = 41
        Width = 78
        Height = 16
        Caption = 'Funcion'#225'rio *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_sexo: TLabel [6]
        Left = 603
        Top = 41
        Width = 40
        Height = 16
        Caption = 'Sexo *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_titulo_endereco: TLabel [7]
        Left = 16
        Top = 106
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
      object lbl_endereco: TLabel [8]
        Left = 8
        Top = 132
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
      object lbl_numero: TLabel [9]
        Left = 8
        Top = 194
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
      object lbl_bairro: TLabel [10]
        Left = 96
        Top = 194
        Width = 46
        Height = 16
        Caption = 'Bairro *'
      end
      object lbl_cep: TLabel [11]
        Left = 547
        Top = 194
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
      object lbl_codigo_cidade: TLabel [12]
        Left = 8
        Top = 266
        Width = 39
        Height = 16
        Caption = 'C'#243'digo'
      end
      object lbl_cidade: TLabel [13]
        Left = 96
        Top = 267
        Width = 51
        Height = 16
        Caption = 'Cidade *'
      end
      object lbl_uf: TLabel [14]
        Left = 547
        Top = 266
        Width = 15
        Height = 16
        Caption = 'UF'
      end
      object lbl_contatos: TLabel [15]
        Left = 16
        Top = 545
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
      object lbl_tipo_contato: TLabel [16]
        Left = 94
        Top = 579
        Width = 91
        Height = 16
        Caption = 'Tipo de Contato'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_nome_tipo: TLabel [17]
        Left = 314
        Top = 579
        Width = 147
        Height = 16
        Caption = 'Nome do tipo selecionado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_algo_contato: TLabel [18]
        Left = 560
        Top = 579
        Width = 73
        Height = 16
        Caption = 'Observa'#231#245'es'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_obs: TLabel [19]
        Left = 16
        Top = 880
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
      object lbl_cod_contato: TLabel [20]
        Left = 8
        Top = 579
        Width = 39
        Height = 16
        Caption = 'C'#243'digo'
      end
      object lbl_titulo_trabalho: TLabel [21]
        Left = 16
        Top = 403
        Width = 82
        Height = 18
        Caption = 'TRABALHO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_cod_cargo: TLabel [22]
        Left = 8
        Top = 428
        Width = 39
        Height = 16
        Caption = 'C'#243'digo'
      end
      object lbl_salario: TLabel [23]
        Left = 8
        Top = 489
        Width = 52
        Height = 16
        Caption = 'Sal'#225'rio *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_cargo: TLabel [24]
        Left = 99
        Top = 428
        Width = 46
        Height = 16
        Caption = 'Cargo *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_data_admissao: TLabel [25]
        Left = 445
        Top = 428
        Width = 103
        Height = 16
        Caption = 'Data de Admiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_data_demissao: TLabel [26]
        Left = 575
        Top = 426
        Width = 103
        Height = 16
        Caption = 'Data de Demiss'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_comissao: TLabel [27]
        Left = 168
        Top = 491
        Width = 93
        Height = 16
        Caption = 'Comiss'#227'o (%) *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_cpf: TLabel [28]
        Left = 8
        Top = 331
        Width = 34
        Height = 16
        Caption = 'CPF *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_rg: TLabel [29]
        Left = 128
        Top = 331
        Width = 28
        Height = 16
        Caption = 'RG *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_data_nascimento: TLabel [30]
        Left = 282
        Top = 331
        Width = 126
        Height = 16
        Caption = 'Data de Nascimento *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_complemento: TLabel [31]
        Left = 416
        Top = 132
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
      inherited edt_cod_usuario: PriTEdit
        Top = 1070
        TabOrder = 18
        ExplicitTop = 1070
      end
      inherited edt_codigo: PriTEdit
        Top = 60
        TabOrder = 23
        ExplicitTop = 60
      end
      inherited edt_data_cadastro: PriTEdit
        Top = 1070
        TabOrder = 24
        ExplicitTop = 1070
      end
      inherited edt_data_ult_alt: PriTEdit
        Top = 1070
        TabOrder = 25
        ExplicitTop = 1070
      end
      inherited pnl_bottom: TPanel
        Top = 1094
        Width = 947
        TabOrder = 26
        ExplicitTop = 1094
        ExplicitWidth = 947
        inherited pnl_botao_salvar: TPanel
          Left = 610
          ExplicitLeft = 610
        end
        inherited pnl_botao_cancelar: TPanel
          Left = 779
          ExplicitLeft = 779
        end
      end
      object edt_nome: PriTEdit
        Left = 112
        Top = 60
        Width = 461
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 80
        ParentFont = False
        TabOrder = 1
        MudarCor = clCream
      end
      object edt_endereco: PriTEdit
        Left = 8
        Top = 154
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
        TabOrder = 2
        MudarCor = clCream
      end
      object edt_numero: PriTEdit
        Left = 8
        Top = 216
        Width = 65
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 8
        ParentFont = False
        TabOrder = 4
        MudarCor = clCream
      end
      object edt_bairro: PriTEdit
        Left = 96
        Top = 216
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
        TabOrder = 5
        MudarCor = clCream
      end
      object edt_uf: PriTEdit
        Left = 547
        Top = 288
        Width = 80
        Height = 24
        TabStop = False
        CharCase = ecUpperCase
        ReadOnly = True
        TabOrder = 21
        MudarCor = clCream
      end
      object edt_cep: PriTMaskEdit
        Left = 547
        Top = 216
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
        TabOrder = 6
        Text = '  .   -   '
        MudarCor = clCream
        TipoMascara = tmCEP
      end
      object edt_pesquisar_cidade: PriTEdit
        Left = 94
        Top = 288
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
        TabOrder = 8
        MudarCor = clCream
      end
      object pnl_adicionar_cidade: TPanel
        Left = 490
        Top = 290
        Width = 35
        Height = 22
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 27
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
      object edt_nome_tipo_selecionado: PriTEdit
        Left = 314
        Top = 601
        Width = 220
        Height = 24
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 15
        MudarCor = clCream
      end
      object edt_algo: PriTEdit
        Left = 561
        Top = 601
        Width = 180
        Height = 24
        CharCase = ecUpperCase
        MaxLength = 50
        TabOrder = 16
        MudarCor = clCream
      end
      object edt_tipo_contato: PriTEdit
        Left = 98
        Top = 601
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
        TabOrder = 22
        MudarCor = clCream
      end
      object pnl_pesquisa_tipo_contato: TPanel
        Left = 270
        Top = 603
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
          ExplicitLeft = 2
          ExplicitTop = 5
        end
      end
      object memo_obs: TMemo
        Left = 8
        Top = 911
        Width = 921
        Height = 130
        MaxLength = 250
        ScrollBars = ssVertical
        TabOrder = 17
      end
      object rb_mas: TRadioButton
        Left = 604
        Top = 63
        Width = 74
        Height = 17
        Caption = 'Masculino'
        TabOrder = 19
      end
      object rb_fem: TRadioButton
        Left = 606
        Top = 86
        Width = 70
        Height = 17
        Caption = 'Feminino'
        Checked = True
        TabOrder = 20
        TabStop = True
      end
      object edt_cod_cidade: PriTEdit
        Left = 8
        Top = 288
        Width = 80
        Height = 24
        MaxLength = 4
        NumbersOnly = True
        TabOrder = 7
        MudarCor = clCream
      end
      object edt_cod_contato: PriTEdit
        Left = 8
        Top = 601
        Width = 80
        Height = 24
        MaxLength = 4
        NumbersOnly = True
        TabOrder = 14
        MudarCor = clCream
      end
      object ListView1: TListView
        Left = 8
        Top = 703
        Width = 921
        Height = 162
        Columns = <
          item
            Caption = 'Tipo de Contato'
            Width = 180
          end
          item
            Width = 180
          end
          item
            Caption = 'Observa'#231#227'o'
            Width = 180
          end>
        RowSelect = True
        TabOrder = 29
        TabStop = False
        ViewStyle = vsReport
        OnSelectItem = ListView1SelectItem
      end
      object edt_cod_cargo: PriTEdit
        Left = 8
        Top = 448
        Width = 80
        Height = 24
        MaxLength = 4
        NumbersOnly = True
        TabOrder = 11
        MudarCor = clCream
      end
      object edt_salario: PriTEdit
        Left = 3
        Top = 511
        Width = 121
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 6
        NumbersOnly = True
        ParentFont = False
        TabOrder = 12
        MudarCor = clCream
      end
      object edt_comissao: PriTEdit
        Left = 168
        Top = 511
        Width = 121
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 2
        NumbersOnly = True
        ParentFont = False
        TabOrder = 13
        MudarCor = clCream
      end
      object edt_cargo: PriTEdit
        Left = 98
        Top = 448
        Width = 280
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
      object pnl_btn_pesquisa: TPanel
        Left = 386
        Top = 450
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
          ExplicitLeft = -2
        end
      end
      object edt_mask_cpf: PriTMaskEdit
        Left = 8
        Top = 352
        Width = 97
        Height = 24
        EditMask = '999.999.999-99;1;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 9
        Text = '   .   .   -  '
        MudarCor = clCream
        TipoMascara = tmCPF
      end
      object edt_rg: PriTEdit
        Left = 126
        Top = 352
        Width = 121
        Height = 24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 14
        ParentFont = False
        TabOrder = 10
        MudarCor = clCream
      end
      object edt_complemento: PriTEdit
        Left = 416
        Top = 154
        Width = 277
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 60
        ParentFont = False
        TabOrder = 3
        MudarCor = clCream
      end
      object pnl_adicionar_contato: TPanel
        Left = 576
        Top = 648
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
      object pnl_botao_alterar_item: TPanel
        Left = 704
        Top = 648
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
        TabOrder = 32
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
          ExplicitLeft = -32
          ExplicitWidth = 150
        end
      end
      object pnl_remover_item: TPanel
        Left = 829
        Top = 648
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
        TabOrder = 33
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
      object pbl_limpar_grid: TPanel
        Left = 829
        Top = 392
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
        TabOrder = 34
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
      object date_data_admissao: TDateTimePicker
        Left = 445
        Top = 448
        Width = 103
        Height = 24
        Date = 45160.000000000000000000
        Time = 0.844680520836846000
        TabOrder = 35
      end
      object date_data_demissao: TDateTimePicker
        Left = 575
        Top = 448
        Width = 103
        Height = 24
        Date = 45160.000000000000000000
        Time = 0.844680520836846000
        TabOrder = 36
      end
      object date_data_nasc: TDateTimePicker
        Left = 282
        Top = 352
        Width = 119
        Height = 24
        Date = 45160.000000000000000000
        Time = 0.844680520836846000
        TabOrder = 37
      end
    end
  end
end
