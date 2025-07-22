object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  TextHeight = 15
  object numero: TEdit
    Left = 242
    Top = 105
    Width = 121
    Height = 23
    HelpType = htKeyword
    HelpKeyword = 'Insira um numero'
    TabOrder = 0
    OnKeyDown = numeroKeyDown
  end
  object Adicionar: TButton
    Left = 384
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Adicionar'
    TabOrder = 1
    OnClick = AdicionarClick
  end
  object Verificar: TButton
    Left = 242
    Top = 237
    Width = 121
    Height = 25
    Caption = 'Verificar'
    TabOrder = 2
    OnClick = VerificarClick
  end
  object Lista: TListBox
    Left = 242
    Top = 134
    Width = 121
    Height = 97
    ItemHeight = 15
    TabOrder = 3
  end
  object Remover: TButton
    Left = 384
    Top = 135
    Width = 75
    Height = 25
    Caption = 'Remover'
    TabOrder = 4
    OnClick = RemoverClick
  end
end
