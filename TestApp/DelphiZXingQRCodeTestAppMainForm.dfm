object FormQRSyngenta: TFormQRSyngenta
  Left = 0
  Top = 0
  Caption = 'QRSyngenta'
  ClientHeight = 664
  ClientWidth = 1219
  Color = clBtnFace
  Constraints.MinHeight = 320
  Constraints.MinWidth = 550
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  DesignSize = (
    1219
    664)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 1000
    Top = 395
    Width = 22
    Height = 13
    Caption = 'Text'
    Visible = False
  end
  object Label2: TLabel
    Left = 1009
    Top = 541
    Width = 43
    Height = 13
    Caption = 'Encoding'
    Visible = False
  end
  object Label3: TLabel
    Left = 1000
    Top = 414
    Width = 52
    Height = 13
    Caption = 'Quiet zone'
    Visible = False
  end
  object Label4: TLabel
    Left = 1000
    Top = 491
    Width = 38
    Height = 13
    Caption = 'Preview'
    Visible = False
  end
  object LabelFname: TLabel
    Left = 443
    Top = 486
    Width = 3
    Height = 13
  end
  object Label6: TLabel
    Left = 616
    Top = 371
    Width = 32
    Height = 13
    Caption = 'MATID'
    Visible = False
  end
  object Label7: TLabel
    Left = 8
    Top = 642
    Width = 46
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Filename:'
    Visible = False
    ExplicitTop = 643
  end
  object Label8: TLabel
    Left = 63
    Top = 599
    Width = 3
    Height = 13
    Anchors = [akLeft, akBottom]
    Visible = False
    ExplicitTop = 585
  end
  object Label10: TLabel
    Left = 407
    Top = 587
    Width = 43
    Height = 13
    Anchors = [akLeft, akBottom]
    Caption = 'Encoding'
    Visible = False
  end
  object edtText: TEdit
    Left = 1000
    Top = 437
    Width = 93
    Height = 21
    TabOrder = 0
    Text = 'Hello world'
    Visible = False
    OnChange = edtTextChange
  end
  object edtQuietZone: TEdit
    Left = 1000
    Top = 464
    Width = 89
    Height = 21
    TabOrder = 1
    Text = '4'
    Visible = False
    OnChange = edtQuietZoneChange
  end
  object Button3: TButton
    Left = 994
    Top = 364
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 2
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 1000
    Top = 510
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 3
    Visible = False
  end
  object PageControl1: TPageControl
    Left = 7
    Top = 7
    Width = 1203
    Height = 417
    ActivePage = TabSheet1
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 4
    object TabSheet1: TTabSheet
      Caption = 'Main'
      DesignSize = (
        1195
        389)
      object DBGrid1: TDBGrid
        Left = 17
        Top = 81
        Width = 1162
        Height = 296
        Anchors = [akLeft, akTop, akRight, akBottom]
        Color = clDefault
        DataSource = FormData.DataSource
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnKeyDown = DBGrid1KeyDown
        OnKeyUp = DBGrid1KeyUp
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 32
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRPCD'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MATID'
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'HIGHNAME'
            Width = 134
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ABBRC'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CGENES'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADMNC'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTID'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GENCD'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FPTID'
            Width = 108
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UUID'
            Width = 103
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALTID'
            Width = 77
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MLTST'
            Width = 49
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TREATMENT'
            Width = 91
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DISCLAIMER'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LABELLED'
            Width = 61
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 17
        Top = 5
        Width = 1162
        Height = 66
        Anchors = [akLeft, akTop, akRight]
        Caption = 'Search'
        TabOrder = 1
        DesignSize = (
          1162
          66)
        object EditSearch: TEdit
          Left = 360
          Top = 24
          Width = 252
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          OnChange = EditSearchChange
        end
        object RadioFptid: TRadioButton
          Left = 20
          Top = 29
          Width = 53
          Height = 17
          Caption = 'FPTID'
          TabOrder = 1
        end
        object RadioAdmnc: TRadioButton
          Left = 81
          Top = 29
          Width = 53
          Height = 17
          Caption = 'ADMNC'
          TabOrder = 2
        end
        object RadioMatid: TRadioButton
          Left = 156
          Top = 29
          Width = 53
          Height = 17
          Caption = 'MATID'
          TabOrder = 3
        end
        object RadioLotid: TRadioButton
          Left = 225
          Top = 29
          Width = 53
          Height = 17
          Caption = 'LOTID'
          TabOrder = 4
        end
        object Button1: TButton
          Left = 999
          Top = 14
          Width = 75
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = 'Print'
          TabOrder = 5
          Visible = False
          OnClick = Button1Click
        end
        object CheckBoxPrint: TCheckBox
          Left = 928
          Top = 29
          Width = 111
          Height = 17
          Caption = 'Mark as "Printed"'
          Checked = True
          State = cbChecked
          TabOrder = 6
        end
        object Button2: TButton
          Left = 618
          Top = 19
          Width = 92
          Height = 32
          Anchors = [akLeft, akBottom]
          Caption = 'Print'
          TabOrder = 7
          OnClick = Button2Click
        end
        object RadioPolid: TRadioButton
          Left = 288
          Top = 29
          Width = 53
          Height = 17
          Caption = 'POLID'
          TabOrder = 8
          Visible = False
        end
        object CheckBoxAll: TCheckBox
          Left = 717
          Top = 29
          Width = 47
          Height = 17
          Caption = 'All'
          TabOrder = 9
        end
        object EditFileAll: TEdit
          Left = 750
          Top = 27
          Width = 86
          Height = 21
          TabOrder = 10
          Text = 'QRSyngenta_all'
        end
        object Button8: TButton
          Left = 843
          Top = 25
          Width = 75
          Height = 25
          Caption = 'View Folder'
          TabOrder = 11
          OnClick = Button8Click
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 17
    Top = 441
    Width = 384
    Height = 192
    Anchors = [akLeft, akBottom]
    Color = clHighlightText
    Ctl3D = True
    ParentBackground = False
    ParentCtl3D = False
    TabOrder = 5
    StyleElements = []
    object LabelMATID: TLabel
      Left = 91
      Top = 18
      Width = 115
      Height = 31
      Caption = 'LabelMatid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object PaintBox1: TPaintBox
      Left = 15
      Top = 12
      Width = 67
      Height = 65
      OnPaint = PaintBox1Paint
    end
    object LabelAltid: TLabel
      Left = 180
      Top = 57
      Width = 59
      Height = 20
      Caption = 'LabelAltid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object LabelDisclaimer: TLabel
      Left = 134
      Top = 150
      Width = 62
      Height = 20
      Caption = 'Disclaimer'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object LabelFPTID: TLabel
      Left = 22
      Top = 124
      Width = 63
      Height = 20
      Caption = 'LabelFptid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object LabelADMNC: TLabel
      Left = 21
      Top = 142
      Width = 96
      Height = 23
      Caption = 'LabelAdmnc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Arial Narrow'
      Font.Style = [fsBold]
      ParentFont = False
      StyleElements = []
    end
    object LabelLOTID: TLabel
      Left = 22
      Top = 81
      Width = 62
      Height = 20
      Caption = 'LabelLotid'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
      OnContextPopup = LabelLOTIDContextPopup
    end
    object LabelGENCD: TLabel
      Left = 147
      Top = 124
      Width = 73
      Height = 20
      Caption = 'LabelGencd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object LabelCGENE: TLabel
      Left = 165
      Top = 80
      Width = 80
      Height = 20
      Caption = 'LabelCgenes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object PaintBox2: TPaintBox
      Left = 303
      Top = 12
      Width = 67
      Height = 65
      OnPaint = PaintBox2Paint
    end
    object LabelCrpcd: TLabel
      Left = 230
      Top = 14
      Width = 69
      Height = 20
      Caption = 'LabelCrpcd'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
      OnContextPopup = LabelLOTIDContextPopup
    end
    object LabelHighname: TLabel
      Left = 22
      Top = 103
      Width = 93
      Height = 20
      Caption = 'LabelHighname'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object LabelMatid2: TLabel
      Left = 82
      Top = 80
      Width = 72
      Height = 20
      Caption = 'LabelMatid2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
      OnContextPopup = LabelLOTIDContextPopup
    end
    object LabelAbbrc: TLabel
      Left = 22
      Top = 103
      Width = 69
      Height = 20
      Caption = 'LabelAbbrc'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object LabelTreatment: TLabel
      Left = 21
      Top = 164
      Width = 91
      Height = 20
      Caption = 'LabelTreatment'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Style = []
      ParentFont = False
      StyleElements = []
    end
    object LabelUUID: TLabel
      Left = 236
      Top = 40
      Width = 50
      Height = 13
      Caption = 'LabelUUID'
      Visible = False
    end
  end
  object cmbEncoding: TComboBox
    Left = 403
    Top = 607
    Width = 145
    Height = 21
    Style = csDropDownList
    Anchors = [akLeft, akBottom]
    ItemIndex = 3
    TabOrder = 6
    Text = 'ISO-8859-1'
    Visible = False
    OnChange = cmbEncodingChange
    Items.Strings = (
      'Auto'
      'Numeric'
      'Alphanumeric'
      'ISO-8859-1'
      'UTF-8 without BOM'
      'UTF-8 with BOM')
  end
  object GroupBox2: TGroupBox
    Left = 407
    Top = 441
    Width = 146
    Height = 68
    Anchors = [akLeft, akBottom]
    Caption = 'Print option'
    TabOrder = 7
    object RadioPrintLotid: TRadioButton
      Left = 18
      Top = 22
      Width = 89
      Height = 17
      Caption = 'LOTID'
      TabOrder = 0
      OnClick = RadioPrintLotidClick
    end
    object RadioPrintMatid: TRadioButton
      Left = 18
      Top = 43
      Width = 89
      Height = 17
      Caption = 'MATID'
      TabOrder = 1
      OnClick = RadioPrintMatidClick
    end
  end
  object GroupBox3: TGroupBox
    Left = 408
    Top = 513
    Width = 146
    Height = 68
    Anchors = [akLeft, akBottom]
    Caption = 'Print option'
    TabOrder = 8
    object RadioPrintAbbrc: TRadioButton
      Left = 18
      Top = 22
      Width = 89
      Height = 17
      Caption = 'ABBRC'
      TabOrder = 0
      OnClick = RadioPrintAbbrcClick
    end
    object RadioPrintHighname: TRadioButton
      Left = 18
      Top = 43
      Width = 89
      Height = 17
      Caption = 'HIGHNAME'
      TabOrder = 1
      OnClick = RadioPrintHighnameClick
    end
  end
  object GroupBox4: TGroupBox
    Left = 561
    Top = 447
    Width = 645
    Height = 106
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Duplicate'
    TabOrder = 9
    DesignSize = (
      645
      106)
    object Label5: TLabel
      Left = 17
      Top = 49
      Width = 170
      Height = 13
      Caption = 'Source of ALTID and UUID for dups'
    end
    object Label9: TLabel
      Left = 16
      Top = 77
      Width = 30
      Height = 13
      Caption = 'Action'
    end
    object LabelAUSource: TLabel
      Left = 222
      Top = 49
      Width = 72
      Height = 13
      Anchors = [akLeft, akRight, akBottom]
      Caption = 'LabelAUSource'
    end
    object Label11: TLabel
      Left = 194
      Top = 74
      Width = 138
      Height = 19
      Anchors = [akLeft, akBottom]
      Caption = 'Remaining record/s'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object LabelNumRec: TLabel
      Left = 338
      Top = 74
      Width = 96
      Height = 19
      Caption = 'LabelNumRec'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Button5: TButton
      Left = 51
      Top = 66
      Width = 136
      Height = 33
      Anchors = [akLeft, akBottom]
      Caption = 'Append row'
      TabOrder = 0
      OnClick = Button5Click
    end
    object ButtonImportMcnbid: TButton
      Left = 18
      Top = 20
      Width = 73
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Import'
      TabOrder = 1
      OnClick = ButtonImportMcnbidClick
    end
    object Button7: TButton
      Left = 443
      Top = 65
      Width = 177
      Height = 33
      Anchors = [akLeft, akBottom]
      Caption = 'Delete row (only for duplicates)'
      TabOrder = 2
      OnClick = Button7Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 561
    Top = 559
    Width = 645
    Height = 74
    Anchors = [akLeft, akRight, akBottom]
    Caption = 'Database'
    TabOrder = 10
    object Label12: TLabel
      Left = 16
      Top = 32
      Width = 42
      Height = 13
      Caption = 'Filename'
    end
    object LabelExport: TLabel
      Left = 388
      Top = 32
      Width = 57
      Height = 13
      Caption = 'LabelExport'
    end
    object EditExport: TEdit
      Left = 66
      Top = 29
      Width = 151
      Height = 21
      TabOrder = 0
      OnChange = EditExportChange
    end
    object ButtonExport: TButton
      Left = 228
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Export'
      TabOrder = 1
      OnClick = ButtonExportClick
    end
    object CheckBoxView: TCheckBox
      Left = 309
      Top = 30
      Width = 76
      Height = 17
      Caption = 'View Folder'
      TabOrder = 2
      OnClick = CheckBoxViewClick
    end
  end
  object Button6: TButton
    Left = 1073
    Top = 61
    Width = 108
    Height = 25
    Caption = 'Revert to "No"'
    TabOrder = 11
    OnClick = Button6Click
  end
  object PrintDialog1: TPrintDialog
    Left = 1008
    Top = 613
  end
  object dxPrintDialog1: TdxPrintDialog
    Left = 1063
    Top = 604
  end
  object MainMenu1: TMainMenu
    Left = 1008
    Top = 568
    object File1: TMenuItem
      Caption = 'File'
      object Importdatasource1: TMenuItem
        Caption = 'Import data source...'
        OnClick = Importdatasource1Click
      end
    end
    object Database1: TMenuItem
      Caption = 'Database'
      object Cleardatabase1: TMenuItem
        Caption = 'Clear database'
        OnClick = Cleardatabase1Click
      end
    end
    object Help1: TMenuItem
      Caption = 'Help'
      OnClick = Help1Click
    end
  end
  object OpenDialog: TOpenDialog
    Left = 1080
    Top = 552
  end
  object OpenDialogAU: TOpenDialog
    Filter = '*.*'
    Left = 1048
    Top = 480
  end
end
