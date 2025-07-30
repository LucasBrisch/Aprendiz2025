object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 514
  ClientWidth = 828
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object Panel1: TPanel
    Left = 144
    Top = 96
    Width = 553
    Height = 313
    TabOrder = 0
    object PontosRestantes: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 75
      Width = 545
      Height = 21
      Margins.Top = 10
      Align = alTop
      Alignment = taCenter
      Caption = 'Pontos Restantes: 30'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 143
    end
    object Button1: TButton
      Left = 1
      Top = 287
      Width = 551
      Height = 25
      Align = alBottom
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
    object inputNome: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 1
      Width = 545
      Height = 23
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 1
      TextHint = 'Escolha um nome'
    end
    object Panel2: TPanel
      Left = 1
      Top = 24
      Width = 551
      Height = 41
      Align = alTop
      TabOrder = 2
      object Masculino: TRadioButton
        Left = 1
        Top = 1
        Width = 104
        Height = 39
        Align = alLeft
        Caption = 'Masculino'
        TabOrder = 0
      end
      object Feminino: TRadioButton
        Left = 176
        Top = 1
        Width = 374
        Height = 39
        Align = alRight
        Caption = 'Feminino'
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 99
      Width = 551
      Height = 161
      Align = alTop
      ShowCaption = False
      TabOrder = 3
      object AtackPanel: TPanel
        Left = 371
        Top = 1
        Width = 185
        Height = 159
        Align = alLeft
        TabOrder = 0
        object ATAQUE: TLabel
          Left = 1
          Top = 1
          Width = 183
          Height = 28
          Align = alTop
          Alignment = taCenter
          Caption = 'ATAQUE'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 73
        end
        object AtaqueStatus: TLabel
          AlignWithMargins = True
          Left = 1
          Top = 29
          Width = 183
          Height = 28
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          Alignment = taCenter
          Caption = '10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 22
        end
        object Panel4: TPanel
          Left = 1
          Top = 67
          Width = 183
          Height = 41
          Align = alTop
          TabOrder = 0
          object AtackMinus: TLabel
            AlignWithMargins = True
            Left = 11
            Top = 1
            Width = 11
            Height = 39
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = AtackMinusClick
            ExplicitHeight = 37
          end
          object AtackPlus: TLabel
            AlignWithMargins = True
            Left = 154
            Top = 1
            Width = 18
            Height = 39
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alRight
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = AtackPlusClick
            ExplicitHeight = 37
          end
        end
      end
      object DefensePanel: TPanel
        Left = 186
        Top = 1
        Width = 185
        Height = 159
        Align = alLeft
        TabOrder = 1
        object DEFESA: TLabel
          Left = 1
          Top = 1
          Width = 183
          Height = 28
          Align = alTop
          Alignment = taCenter
          Caption = 'DEFESA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 68
        end
        object DefesaStatus: TLabel
          AlignWithMargins = True
          Left = 1
          Top = 29
          Width = 183
          Height = 28
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          Alignment = taCenter
          Caption = '10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 22
        end
        object Panel5: TPanel
          Left = 1
          Top = 67
          Width = 183
          Height = 41
          Align = alTop
          TabOrder = 0
          object DefenseMinus: TLabel
            AlignWithMargins = True
            Left = 11
            Top = 1
            Width = 11
            Height = 39
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = DefenseMinusClick
            ExplicitHeight = 37
          end
          object DefensePlus: TLabel
            AlignWithMargins = True
            Left = 154
            Top = 1
            Width = 18
            Height = 39
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alRight
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = DefensePlusClick
            ExplicitHeight = 37
          end
        end
      end
      object HealthPanel: TPanel
        Left = 1
        Top = 1
        Width = 185
        Height = 159
        Align = alLeft
        TabOrder = 2
        object VIDA: TLabel
          Left = 1
          Top = 1
          Width = 183
          Height = 28
          Align = alTop
          Alignment = taCenter
          Caption = 'VIDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 44
        end
        object VidaStatus: TLabel
          AlignWithMargins = True
          Left = 1
          Top = 29
          Width = 183
          Height = 28
          Margins.Left = 0
          Margins.Top = 0
          Margins.Right = 0
          Margins.Bottom = 10
          Align = alTop
          Alignment = taCenter
          Caption = '10'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -20
          Font.Name = 'Segoe UI'
          Font.Style = []
          ParentFont = False
          ExplicitWidth = 22
        end
        object Panel6: TPanel
          Left = 1
          Top = 67
          Width = 183
          Height = 41
          Align = alTop
          TabOrder = 0
          object HealthMinus: TLabel
            AlignWithMargins = True
            Left = 11
            Top = 1
            Width = 11
            Height = 39
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = '-'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = HealthMinusClick
            ExplicitHeight = 37
          end
          object HealthPlus: TLabel
            AlignWithMargins = True
            Left = 154
            Top = 1
            Width = 18
            Height = 39
            Margins.Left = 0
            Margins.Top = 0
            Margins.Right = 10
            Margins.Bottom = 0
            Align = alRight
            Caption = '+'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -27
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentFont = False
            OnClick = HealthPlusClick
            ExplicitLeft = 152
            ExplicitHeight = 37
          end
        end
      end
    end
  end
end
