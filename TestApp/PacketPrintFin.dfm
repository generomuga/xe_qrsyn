object FormPacketPrintFin: TFormPacketPrintFin
  Left = 0
  Top = 0
  Caption = 'Packet Print and Row Band'
  ClientHeight = 283
  ClientWidth = 447
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  DesignSize = (
    447
    283)
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 9
    Width = 433
    Height = 264
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Main'
      ExplicitLeft = 0
      ExplicitWidth = 445
      DesignSize = (
        425
        236)
      object LabelDir: TLabel
        Left = 24
        Top = 55
        Width = 85
        Height = 13
      end
      object Label2: TLabel
        Left = 24
        Top = 101
        Width = 31
        Height = 13
        Caption = 'Status'
      end
      object Button1: TButton
        Left = 24
        Top = 24
        Width = 75
        Height = 25
        Caption = 'Import'
        TabOrder = 0
        OnClick = Button1Click
      end
      object CheckBoxAbbrc: TCheckBox
        Left = 24
        Top = 76
        Width = 97
        Height = 17
        Caption = 'Include ABBRC1'
        TabOrder = 1
      end
      object Memo1: TMemo
        Left = 24
        Top = 120
        Width = 385
        Height = 97
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
      end
      object CheckBoxRowBand: TCheckBox
        Left = 127
        Top = 76
        Width = 97
        Height = 17
        Caption = 'Print Row Band'
        TabOrder = 3
      end
      object Button2: TButton
        Left = 326
        Top = 72
        Width = 75
        Height = 25
        Caption = 'Print'
        TabOrder = 4
        OnClick = Button2Click
      end
      object Edit1: TEdit
        Left = 222
        Top = 74
        Width = 98
        Height = 21
        TabOrder = 5
        Text = 'Packet-Print'
      end
      object Button3: TButton
        Left = 105
        Top = 24
        Width = 119
        Height = 25
        Caption = 'View Output Folder'
        TabOrder = 6
        OnClick = Button3Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 292
    Top = 57
  end
end
