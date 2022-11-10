object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 420
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 400
    Height = 400
  end
  object Panel1: TPanel
    Left = 416
    Top = 8
    Width = 249
    Height = 400
    TabOrder = 0
    object Button1: TButton
      Left = 8
      Top = 80
      Width = 75
      Height = 25
      Caption = 'X+'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 168
      Top = 80
      Width = 75
      Height = 25
      Caption = 'X-'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 8
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Y+'
      TabOrder = 2
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 168
      Top = 128
      Width = 75
      Height = 25
      Caption = 'Y-'
      TabOrder = 3
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 8
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Z+'
      TabOrder = 4
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 168
      Top = 176
      Width = 75
      Height = 25
      Caption = 'Z-'
      TabOrder = 5
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 88
      Top = 216
      Width = 75
      Height = 25
      Caption = 'Pintar Cubo'
      TabOrder = 6
      OnClick = Button7Click
    end
  end
end
