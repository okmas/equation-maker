object Form1: TForm1
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 56
    Top = 40
    Width = 59
    Height = 13
    Caption = 'pocet rovnic'
  end
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 88
    Height = 13
    Caption = 'pocet premennych'
  end
  object Label3: TLabel
    Left = 56
    Top = 80
    Width = 42
    Height = 13
    Caption = 'prvocislo'
  end
  object Edit1: TEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 0
    Text = '10'
  end
  object Edit2: TEdit
    Left = 152
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '10'
  end
  object Edit3: TEdit
    Left = 152
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '997'
  end
  object Button1: TButton
    Left = 176
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 3
    OnClick = Button1Click
  end
end
