object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 744
  ClientWidth = 1177
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object PanelCriarPersonagem: TPanel
    Left = 296
    Top = 88
    Width = 561
    Height = 353
    TabOrder = 0
    object PontosRestantes: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 75
      Width = 553
      Height = 21
      Margins.Top = 10
      Align = alTop
      Alignment = taCenter
      Caption = 'Pontos Restantes: X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 134
    end
    object Enviar: TButton
      Left = 1
      Top = 327
      Width = 559
      Height = 25
      Align = alBottom
      Caption = 'Enviar'
      TabOrder = 0
      OnClick = EnviarClick
      ExplicitTop = 287
      ExplicitWidth = 551
    end
    object inputNome: TEdit
      AlignWithMargins = True
      Left = 4
      Top = 1
      Width = 553
      Height = 23
      Margins.Top = 0
      Margins.Bottom = 0
      Align = alTop
      TabOrder = 1
      TextHint = 'Escolha um nome'
      ExplicitWidth = 545
    end
    object Panel2: TPanel
      Left = 1
      Top = 24
      Width = 559
      Height = 41
      Align = alTop
      TabOrder = 2
      ExplicitWidth = 551
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
        Left = 184
        Top = 1
        Width = 374
        Height = 39
        Align = alRight
        Caption = 'Feminino'
        TabOrder = 1
        ExplicitLeft = 176
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 99
      Width = 559
      Height = 161
      Align = alTop
      ShowCaption = False
      TabOrder = 3
      ExplicitWidth = 551
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
            ExplicitHeight = 37
          end
        end
      end
    end
  end
  object main: TPanel
    Left = 0
    Top = 528
    Width = 1177
    Height = 216
    Align = alBottom
    TabOrder = 1
    object Proxima: TButton
      Left = 1064
      Top = 1
      Width = 112
      Height = 214
      Align = alRight
      Caption = 'Proxima'
      TabOrder = 0
    end
    object Button1: TButton
      Left = 241
      Top = 1
      Width = 150
      Height = 214
      Align = alLeft
      Caption = 'Button1'
      TabOrder = 1
      ExplicitLeft = 265
    end
    object Button2: TButton
      Left = 498
      Top = 1
      Width = 150
      Height = 214
      Align = alLeft
      TabOrder = 2
      ExplicitLeft = 668
      ExplicitTop = -7
    end
    object Button3: TButton
      Left = 755
      Top = 1
      Width = 150
      Height = 214
      Align = alLeft
      Caption = 'Button3'
      TabOrder = 3
      ExplicitLeft = 720
    end
    object espaço: TPanel
      Left = 391
      Top = 1
      Width = 107
      Height = 214
      Align = alLeft
      Caption = 'espa'#231'o'
      ShowCaption = False
      TabOrder = 4
      ExplicitLeft = 409
    end
    object espaço2: TPanel
      Left = 648
      Top = 1
      Width = 107
      Height = 214
      Align = alLeft
      ShowCaption = False
      TabOrder = 5
      ExplicitLeft = 672
    end
    object Espaço3: TPanel
      Left = 1
      Top = 1
      Width = 240
      Height = 214
      Align = alLeft
      ShowCaption = False
      TabOrder = 6
    end
  end
end
