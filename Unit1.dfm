object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
  ClientWidth = 635
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 635
    Height = 299
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'k'#252't'#252'phane'
      object ListBox1: TListBox
        Left = 464
        Top = 24
        Width = 121
        Height = 209
        ItemHeight = 13
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 128
        Top = 48
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Edit1'
      end
      object Button1: TButton
        Left = 174
        Top = 96
        Width = 75
        Height = 25
        Caption = 'T'#252'rk->eng'
        TabOrder = 2
        OnClick = Button1Click
      end
      object Button4: TButton
        Left = 88
        Top = 96
        Width = 75
        Height = 25
        Caption = 'eng->t'#252'rk'
        TabOrder = 3
        OnClick = Button4Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'kay'#305't'
      ImageIndex = 1
      object ListBox2: TListBox
        Left = 408
        Top = 3
        Width = 177
        Height = 214
        ItemHeight = 13
        TabOrder = 0
      end
      object Edit2: TEdit
        Left = 48
        Top = 40
        Width = 121
        Height = 21
        TabOrder = 1
        Text = 'Edit2'
      end
      object Button2: TButton
        Left = 80
        Top = 80
        Width = 75
        Height = 25
        Caption = 'Ekle'
        TabOrder = 2
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 456
        Top = 223
        Width = 75
        Height = 25
        Caption = 'Kaydet'
        TabOrder = 3
        OnClick = Button3Click
      end
    end
  end
end
