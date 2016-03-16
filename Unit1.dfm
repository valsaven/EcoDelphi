object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Eco'
  ClientHeight = 432
  ClientWidth = 250
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 22
    Top = 48
    Width = 108
    Height = 13
    Caption = 'Производительность'
  end
  object Label2: TLabel
    Left = 40
    Top = 70
    Width = 61
    Height = 13
    Caption = 'G (мкг/мин):'
  end
  object Label3: TLabel
    Left = 5
    Top = 100
    Width = 96
    Height = 13
    Caption = 'G (ppm при литре):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 22
    Top = 136
    Width = 88
    Height = 13
    Caption = 'Температура (C):'
  end
  object Label5: TLabel
    Left = 34
    Top = 160
    Width = 74
    Height = 13
    Caption = 'Коэффициент:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 22
    Top = 194
    Width = 142
    Height = 13
    Caption = 'Требуемая концентрация в:'
  end
  object Label7: TLabel
    Left = 33
    Top = 222
    Width = 31
    Height = 13
    Caption = 'мг/м3:'
  end
  object Label8: TLabel
    Left = 33
    Top = 248
    Width = 24
    Height = 13
    Caption = 'ppm:'
  end
  object Label9: TLabel
    Left = 22
    Top = 280
    Width = 124
    Height = 13
    Caption = 'Расход воздуха (л/мин):'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label14: TLabel
    Left = 8
    Top = 8
    Width = 8
    Height = 16
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label15: TLabel
    Left = 8
    Top = 46
    Width = 8
    Height = 16
    Caption = '2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label16: TLabel
    Left = 8
    Top = 134
    Width = 8
    Height = 16
    Caption = '3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label18: TLabel
    Left = 8
    Top = 192
    Width = 8
    Height = 16
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object ComboBox1: TComboBox
    Left = 22
    Top = 8
    Width = 145
    Height = 21
    TabOrder = 0
    Text = 'Выберите газ'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Cl2'
      'NO2'
      'H2S'
      'NH3'
      'SO2'
      'CO'
      'NO')
  end
  object Edit1: TEdit
    Left = 107
    Top = 66
    Width = 67
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 107
    Top = 96
    Width = 67
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 114
    Top = 133
    Width = 69
    Height = 21
    TabOrder = 3
    OnChange = Edit3Change
  end
  object Edit4: TEdit
    Left = 114
    Top = 160
    Width = 69
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 70
    Top = 219
    Width = 76
    Height = 21
    TabOrder = 5
    OnChange = Edit5Change
    OnMouseDown = Edit5MouseDown
  end
  object Edit6: TEdit
    Left = 70
    Top = 246
    Width = 76
    Height = 21
    TabOrder = 6
    OnChange = Edit6Change
    OnMouseDown = Edit6MouseDown
  end
  object Edit7: TEdit
    Left = 150
    Top = 279
    Width = 77
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGreen
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
    OnChange = Edit7Change
  end
  object GroupBox1: TGroupBox
    Left = 5
    Top = 304
    Width = 242
    Height = 128
    Caption = 'РРГ-12'
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentColor = False
    ParentFont = False
    TabOrder = 8
    object Label11: TLabel
      Left = 8
      Top = 20
      Width = 124
      Height = 13
      Caption = 'Расход воздуха (л/мин):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label12: TLabel
      Left = 14
      Top = 65
      Width = 82
      Height = 13
      Caption = 'U выходное (В):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label13: TLabel
      Left = 17
      Top = 100
      Width = 79
      Height = 13
      Caption = 'U заданное (В):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit8: TEdit
      Left = 145
      Top = 16
      Width = 77
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnChange = Edit8Change
    end
    object Edit9: TEdit
      Left = 108
      Top = 60
      Width = 67
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edit10: TEdit
      Left = 106
      Top = 98
      Width = 67
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
    end
  end
  object Button2: TButton
    Left = 222
    Top = 8
    Width = 25
    Height = 21
    Caption = '?'
    TabOrder = 9
    OnClick = Button2Click
  end
end
