inherited form_consulta_fornecedores: Tform_consulta_fornecedores
  Caption = 'Consulta de Fornecedores'
  ExplicitLeft = 2
  TextHeight = 13
  inherited pnl_fundo: TPanel
    inherited pnl_topo: TPanel
      inherited pnl_dentro_topo: TPanel
        Width = 1292
        ExplicitWidth = 1288
        inherited combobox_tipo_filtro: TComboBox1
          ItemIndex = 2
          Items.Strings = (
            'C'#211'DIGO'
            'FORNECEDOR'
            'TODOS')
        end
      end
    end
  end
end
