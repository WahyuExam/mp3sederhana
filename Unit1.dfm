object Form1: TForm1
  Left = 392
  Top = 188
  Width = 312
  Height = 354
  Align = alCustom
  Caption = 'MP3 Sederhana'
  Color = clGradientActiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lst1: TListBox
    Left = 8
    Top = 40
    Width = 281
    Height = 233
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Times New Roman'
    Font.Style = []
    ItemHeight = 15
    ParentFont = False
    TabOrder = 0
    OnDblClick = lst1DblClick
  end
  object mp1: TMediaPlayer
    Left = 8
    Top = 8
    Width = 281
    Height = 30
    VisibleButtons = [btPlay, btPause, btStop, btNext, btBack]
    TabOrder = 1
  end
  object btn1: TBitBtn
    Left = 16
    Top = 280
    Width = 41
    Height = 25
    Caption = '+'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = btn1Click
  end
  object btn2: TBitBtn
    Left = 64
    Top = 280
    Width = 41
    Height = 25
    Caption = '-'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TBitBtn
    Left = 112
    Top = 280
    Width = 75
    Height = 25
    Caption = 'Bersih'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = btn3Click
  end
  object dlgOpen1: TOpenDialog
    Filter = 'MPEG audio|*.mp3'
    Left = 328
    Top = 48
  end
end
