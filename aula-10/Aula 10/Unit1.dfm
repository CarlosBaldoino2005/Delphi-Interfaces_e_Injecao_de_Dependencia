object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 486
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Button1: TButton
    Left = 262
    Top = 410
    Width = 75
    Height = 25
    Caption = 'Vender'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 8
    Top = 311
    Width = 329
    Height = 27
    TabOrder = 1
    Text = '1'
  end
  object Edit2: TEdit
    Left = 8
    Top = 344
    Width = 329
    Height = 27
    TabOrder = 2
    Text = '10'
  end
  object Edit3: TEdit
    Left = 8
    Top = 377
    Width = 329
    Height = 27
    TabOrder = 3
    Text = '25'
  end
  object Memo1: TMemo
    Left = 8
    Top = 14
    Width = 633
    Height = 291
    Lines.Strings = (
      'Memo1')
    TabOrder = 4
  end
end
