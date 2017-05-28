unit DelphiZXingQRCodeTestAppMainForm;


interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DelphiZXingQRCode, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Menus, dxGDIPlusClasses, Vcl.ComCtrls, StrUtils, dxPrnDev,
  cxClasses, dxPrnDlg, Printers, Vcl.Grids, Vcl.DBGrids,ShellApi;

type
  TFormQRSyngenta = class(TForm)
    edtText: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtQuietZone: TEdit;
    Label4: TLabel;
    LabelFname: TLabel;
    PrintDialog1: TPrintDialog;
    dxPrintDialog1: TdxPrintDialog;
    Button3: TButton;
    Button4: TButton;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    EditSearch: TEdit;
    RadioFptid: TRadioButton;
    RadioAdmnc: TRadioButton;
    RadioMatid: TRadioButton;
    RadioLotid: TRadioButton;
    Button1: TButton;
    CheckBoxPrint: TCheckBox;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Importdatasource1: TMenuItem;
    Database1: TMenuItem;
    Cleardatabase1: TMenuItem;
    OpenDialog: TOpenDialog;
    Panel1: TPanel;
    LabelMATID: TLabel;
    PaintBox1: TPaintBox;
    LabelAltid: TLabel;
    LabelDisclaimer: TLabel;
    LabelFPTID: TLabel;
    LabelADMNC: TLabel;
    LabelLOTID: TLabel;
    LabelGENCD: TLabel;
    LabelCGENE: TLabel;
    PaintBox2: TPaintBox;
    LabelCrpcd: TLabel;
    Label10: TLabel;
    cmbEncoding: TComboBox;
    Button2: TButton;
    GroupBox2: TGroupBox;
    RadioPrintLotid: TRadioButton;
    RadioPrintMatid: TRadioButton;
    GroupBox3: TGroupBox;
    RadioPrintAbbrc: TRadioButton;
    RadioPrintHighname: TRadioButton;
    LabelHighname: TLabel;
    RadioPolid: TRadioButton;
    GroupBox4: TGroupBox;
    Button5: TButton;
    Label5: TLabel;
    ButtonImportMcnbid: TButton;
    Label9: TLabel;
    OpenDialogAU: TOpenDialog;
    LabelAUSource: TLabel;
    Label11: TLabel;
    LabelNumRec: TLabel;
    GroupBox5: TGroupBox;
    EditExport: TEdit;
    Label12: TLabel;
    ButtonExport: TButton;
    LabelExport: TLabel;
    LabelMatid2: TLabel;
    LabelAbbrc: TLabel;
    Button6: TButton;
    Button7: TButton;
    Help1: TMenuItem;
    CheckBoxView: TCheckBox;
    CheckBoxAll: TCheckBox;
    EditFileAll: TEdit;
    Button8: TButton;
    LabelTreatment: TLabel;
    LabelUUID: TLabel;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure edtTextChange(Sender: TObject);
    procedure cmbEncodingChange(Sender: TObject);
    procedure edtQuietZoneChange(Sender: TObject);
    procedure LabelLOTIDContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure PaintBox2Paint(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure EditSearchChange(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure Importdatasource1Click(Sender: TObject);
    procedure Cleardatabase1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ButtonImportMcnbidClick(Sender: TObject);
    procedure ExportDatacsv1Click(Sender: TObject);
    procedure EditExportChange(Sender: TObject);
    procedure ButtonExportClick(Sender: TObject);
    procedure RadioPrintLotidClick(Sender: TObject);
    procedure RadioPrintMatidClick(Sender: TObject);
    procedure RadioPrintAbbrcClick(Sender: TObject);
    procedure RadioPrintHighnameClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Help1Click(Sender: TObject);
    procedure CheckBoxViewClick(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    QRCodeBitmap: TBitmap;
  public
    procedure Update1;
    procedure Update2;
    function GetColumnValue(MyDelim, MyColumn, MyText: string): string;
    procedure PrintBitmap(Canvas: TCanvas; DestRect: TRect; Bitmap: TBitmap);
    procedure Display;
    procedure Search(colname:String;value:String);
    procedure PrintSticker;
    procedure UpdatePrinted;
    procedure UpdatePrintedAll;
    procedure ImportCsv(filename:String);
    procedure Split(const Delimeter:Char;Input:String;const Strings:TStringList);
    //procedure AppendDb(id,crpcd,matid,highname,abbrc,cgene,admnc,polid,lotid,gencd,fptid,mcnbid,mvrmk,mltst,mstsl,labelled:String);
    //procedure AppendDb(id,crpcd,matid,highname,abbrc,cgene,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled:String);
    procedure AppendDb(id,crpcd,matid,highname,abbrc,cgene,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled:String);
    procedure ClearDB;
    //procedure AppendRow(id,crpcd,matid,highname,abbrc,cgene,admnc,polid,lotid,gencd,fptid,mcnbid,mvrmk,mltst,mstsl,labelled:String);
    procedure AppendRow(id,crpcd,matid,highname,abbrc,cgene,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled:String);
    procedure ExportDataCsv(filename:String);
    procedure OpenDb;
    procedure UpdateNo;
    procedure Delete;
    procedure PrintAll;
    procedure SaveSetPrint;
    function GetDosOutput(CommandLine: string; Work: string = ''): string;
    procedure PrintExport;
    procedure PrintAllQRSyn;
    procedure SaveLastImport;
    procedure SaveSetPrintOne;


  end;

  MainThread = Class(TThread)
    protected
      procedure Execute;override;
  End;

var
  FormQRSyngenta: TFormQRSyngenta;
  //for qrcode
  //lotid,mcnbid,pathexe : String;
  lotid,pathexe : String;

implementation

{$R *.dfm}

uses DataForm;

procedure TFormQRSyngenta.FormCreate(Sender: TObject);
begin

  QRCodeBitmap := TBitmap.Create;
  RadioMatid.Checked := True;
  RadioPrintLotid.Checked := True;
  RadioPrintHighname.Checked := True;

  LabelMATID.Caption := '';
  LabelLOTID.Caption := '';
  LabelGENCD.Caption := '';
  LabelADMNC.Caption := '';
  LabelFPTID.Caption := '';
  LabelAltid.Caption := '';
  LabelDisclaimer.Caption := '';
  LabelCGENE.Caption := '';
  LabelCrpcd.Caption := '';
  LabelHighname.Caption := '';
  LabelAbbrc.Caption := '';
  LabelTreatment.Caption := '';

  LabelAUSource.Caption := '';
  Label7.Caption := '';
  LabelNumrec.Caption := '';

  LabelExport.Caption := ExtractFilePath(Application.ExeName)+'SPIRIT Exported Files\';

end;


procedure TFormQRSyngenta.Button1Click(Sender: TObject);
var
  query : String;
begin

  //DataSource.DataSet.Filtered := False;
  //Showmessage(dbGrid1.Fields[0].AsString);

  query := 'select * from tbl_input where matid = '''+dbGrid1.Fields[2].AsString+'''';

  FormData.AbsQuerySearch.SQL.Clear;
  FormData.AbsQuerySearch.SQL.Add(query);
  FormData.AbsQuerySearch.ExecSQL;
  FormData.AbsTable.Refresh;

  //ormData.frxReport1.ShowReport();

end;

procedure TFormQRSyngenta.Button2Click(Sender: TObject);
begin
    if CheckBoxAll.Checked = True then
       begin
          with MainThread.Create do
             FreeOnTerminate := True;
       end
    else
      begin
          (*if RadioPrintLotid.Checked = True then
             begin
                 if dbGrid1.Fields[8].AsString <> 'null' then
                    begin
                       if dbGrid1.Fields[15].AsString = 'No' then
                          begin
                             if CheckBoxPrint.Checked = True then
                                begin
                                  PrintSticker;
                                  UpdatePrinted;
                                end
                             else
                                begin
                                  Application.MessageBox('Please check the ''Mark as Printed'' checkbox ','Print',
                                    MB_OK)
                                end;
                          end
                       else
                          begin
                               if (Application.MessageBox('Do you want to print it again?',
                              'Print',
                                        MB_YESNO)) = 6 then
                                  begin
                                    PrintSticker;
                                    UpdatePrinted;
                                  end;
                          end;

                    end
                 else
                   begin
                     Application.MessageBox('Click print option MATID. This is a duplicate record!','Print',
                                    MB_OK)
                   end;
             end
          else if RadioPrintMatid.Visible = True then
             begin
                 if dbGrid1.Fields[15].AsString = 'No' then
                    begin
                       if CheckBoxPrint.Checked = True then
                          begin
                            PrintSticker;
                            UpdatePrinted;
                          end
                       else
                          begin
                            Application.MessageBox('Please check the ''Mark as Printed'' checkbox ','Print',
                              MB_OK)
                          end;
                    end
                 else
                    begin
                         if (Application.MessageBox('Do you want to print it again?',
                        'Print',
                                  MB_YESNO)) = 6 then
                            begin
                              PrintSticker;
                              UpdatePrinted;
                            end;
                    end;

             end;
             *)
             SaveSetPrintOne;
             PrintAll;
             UpdatePrinted;
      end;

end;

procedure MainThread.Execute;
begin
   FormQRSyngenta.Button2.Caption := 'Printing...';
   FormQRSyngenta.PrintExport;
   //if FormQRSyngenta.CheckBoxAll.Checked = True then
    //
   //else

   FormQRSyngenta.SaveSetPrint;
   FormQRSyngenta.PrintAll;
   FormQRSyngenta.UpdatePrintedAll;
   FormQRSyngenta.Button2.Caption := 'Print';
end;



procedure TFormQRSyngenta.UpdatePrinted;
var
  query : String;
begin

  query := 'UPDATE tbl_input SET LABELLED=''Yes'' WHERE id='+dbGrid1.Fields[0].AsString+'';

  FormData.AbsQueryUpdate.SQL.Clear;
  FormData.AbsQueryUpdate.SQL.Add(query);
  FormData.AbsQueryUpdate.ExecSQL;
  FormData.AbsTable.Refresh;

end;

procedure TFormQRSyngenta.UpdatePrintedAll;
var
  query : String;
begin

  query := 'UPDATE tbl_input SET LABELLED=''Yes''';

  FormData.AbsQueryUpdate.SQL.Clear;
  FormData.AbsQueryUpdate.SQL.Add(query);
  FormData.AbsQueryUpdate.ExecSQL;
  FormData.AbsTable.Refresh;

end;


procedure TFormQRSyngenta.UpdateNo;
var
  query : String;
begin

  query := 'UPDATE tbl_input SET LABELLED=''No'' WHERE id='+dbGrid1.Fields[0].AsString+'';

  FormData.AbsQueryUpdate.SQL.Clear;
  FormData.AbsQueryUpdate.SQL.Add(query);
  FormData.AbsQueryUpdate.ExecSQL;
  FormData.AbsTable.Refresh;

end;


procedure TFormQRSyngenta.Delete;
var
  query : String;
begin

  query := 'delete from tbl_input WHERE ALTID='''+dbGrid1.Fields[11].AsString+'''';

  FormData.AbsQueryUpdate.SQL.Clear;
  FormData.AbsQueryUpdate.SQL.Add(query);
  FormData.AbsQueryUpdate.ExecSQL;
  FormData.AbsTable.Refresh;

end;


procedure TFormQRSyngenta.Split(const Delimeter:Char;Input:String;const Strings:TStringList);
begin
  Assert(Assigned(Strings));
  Strings.Clear;
  Strings.Delimiter := Delimeter;
  Strings.DelimitedText := Input;
end;


procedure TFormQRSyngenta.PrintSticker;
var
    Bitmap       :  TBitmap;
    FromLeft     :  INTEGER;
    FromTop      :  INTEGER;
    PrintedWidth :  INTEGER;
    PrintedHeight:  INTEGER;
    Pathexe : String;
    scale : Double;
    MyRect : TRect;
begin

  Pathexe := ExtractFilepath(Application.ExeName);

  if PrintDialog1.Execute then
     begin
        Printer.BeginDoc;
        TRY
          Bitmap := TBitmap.Create;
          TRY
            Bitmap.Width  := Panel1.Width;
            Bitmap.Height := Panel1.Height;
            Bitmap.PixelFormat := pf24bit;


            Bitmap.Canvas.CopyRect(Rect(0,0, Bitmap.Width,Bitmap.Height),
                                   FormQRSyngenta.Canvas,
                                   Rect(Panel1.Left, Panel1.Top,
                                        Panel1.Left + Panel1.Width,
                                        Panel1.Top  + Panel1.Height) );

        
            Printer.Title := 'QRSyn';

            PrintBitmap(Printer.Canvas,
              Rect(FromLeft, FromTop,
                   FromLeft + PrintedWidth,
                   FromTop  + PrintedHeight),
              Bitmap);


            Bitmap.SaveToFile(Pathexe+'Output\qrsyngenta_'+LabelMATID.Caption+'.bmp');

            scale := Printer.PageWidth / Bitmap.Width;
            MyRect.Left := 0;
            MyRect.Top := 0;
            MyRect.Right := trunc(Bitmap.Width * scale);
            MyRect.Right := trunc(Bitmap.Width * scale);
            MyRect.Bottom := trunc(Bitmap.Height * scale);
            Printer.Canvas.StretchDraw(MyRect, Bitmap);
            Printer.EndDoc;

          FINALLY
            Bitmap.Free
          END;
        FINALLY

        END

     end;
end;


procedure TFormQRSyngenta.RadioPrintAbbrcClick(Sender: TObject);
begin
  LabelAbbrc.Visible := True;
  LabelHighname.Visible := False;
  LabelMatid.Visible := True;
  Update1;
  Update2;
end;

procedure TFormQRSyngenta.RadioPrintHighnameClick(Sender: TObject);
begin
  LabelHighname.Visible := True;
  LabelAbbrc.Visible := False;
  LabelMatid.Visible := True;
  Update1;
  Update2;
end;

procedure TFormQRSyngenta.RadioPrintLotidClick(Sender: TObject);
begin
  LabelLotid.Visible := True;
  LabelMatid2.Visible := False;
  Update1;
  Update2;

end;

procedure TFormQRSyngenta.RadioPrintMatidClick(Sender: TObject);
begin
  LabelLotid.Visible := False;
  LabelMatid2.Visible := True;
  Update1;
  Update2;
end;

procedure TFormQRSyngenta.Button3Click(Sender: TObject);
const
  FullWindow = False;
var
  Win: HWND;
  DC: HDC;
  Bmp: TBitmap;
  FileName: string;
  WinRect: TRect;
  Width: Integer;
  Height: Integer;
begin
  FormQRSyngenta.Hide;
  try
    Application.ProcessMessages;
    Win := GetForegroundWindow;

    if FullWindow then
    begin
      GetWindowRect(Win, WinRect);
      DC := GetWindowDC(Win);
    end else
    begin

      DC := GetDC(Win);
    end;
    try
      Width := WinRect.Right - WinRect.Left;
      Height := WinRect.Bottom - WinRect.Top;

      Bmp := TBitmap.Create;
      try
        Bmp.Height := Height;
        Bmp.Width := Width;
        BitBlt(Bmp.Canvas.Handle, 0, 0, Width, Height, DC, 0, 0, SRCCOPY);
        FileName := 'Screenshot_' +
          FormatDateTime('mm-dd-yyyy-hhnnss', Now());
        Bmp.SaveToFile(Format('E:\Screenshots\%s.bmp', [FileName]));
      finally
        Bmp.Free;
      end;
    finally
      ReleaseDC(Win, DC);
    end;
  finally
    FormQRSyngenta.Show;
  end;
end;


procedure TFormQRSyngenta.Button5Click(Sender: TObject);
var
  idnum : Integer;
  handread,crpcd,matid,highname,abbrc,cgene,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled : String;
  ListAUSource : TStringList;
begin

  ListAUSource := TStringList.Create;
  ListAUSource.LoadFromFile(LabelAUSource.Caption);


  if ListAUSource.Count <> 0 then
     begin
          //idnum := 0;
          idnum := dbGrid1.DataSource.DataSet.RecordCount + 1;
          crpcd := dbGrid1.Fields[1].AsString;
          matid := dbGrid1.Fields[2].AsString;
          highname := dbGrid1.Fields[3].AsString;
          abbrc := dbGrid1.Fields[4].AsString;
          cgene := dbGrid1.Fields[5].AsString;
          admnc := dbGrid1.Fields[6].AsString;
          lotid := dbGrid1.Fields[7].AsString;
          gencd := dbGrid1.Fields[8].AsString;
          fptid := dbGrid1.Fields[9].AsString;
          //uuid := dbGrid1.Fields[10].AsString;
          uuid := GetColumnValue(',','2',ListAUSource[0]);
          //altid := dbGrid1.Fields[11].AsString;
          altid := GetColumnValue(',','1',ListAUSource[0]);
          //mcnbid := ListAUSource[0];
          mltst := dbGrid1.Fields[12].AsString;
          treatment := dbGrid1.Fields[13].AsString;
          disclaimer := dbGrid1.Fields[14].AsString;
          labelled := dbGrid1.Fields[15].AsString;

          AppendRow(inttostr(idnum),crpcd,matid,highname,abbrc,cgene,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,'No');

          ListAUSource.Delete(0);
          ListAUSource.SaveToFile(LabelAUSource.Caption);
          LabelNumRec.Caption := inttostr(ListAUSource.Count);
     end
  else
    begin
       Application.MessageBox('Please import new Container ID or Pre Label from MINT','Print',MB_OK)
    end;
end;

procedure TFormQRSyngenta.Button6Click(Sender: TObject);
begin
   if (Application.MessageBox('Are you sure you want to revert labelled column to no?',
	  		    'Print',
	                    MB_YESNO)) = 6 then
                begin
                  UpdateNo;
                end;
end;

procedure TFormQRSyngenta.Button7Click(Sender: TObject);
begin
  if dbGrid1.Fields[15].AsString = 'Yes' then
    begin
       Application.MessageBox('If you want to delete the row click ''Revert to No''.','Print',
                                MB_OK);

    end
  else
    begin
       if (Application.MessageBox('Are you sure you want to delete the record?',
                          'Print',
                                    MB_YESNO)) = 6 then
                              begin
                                Delete
                              end;

    end;


end;

procedure TFormQRSyngenta.Button8Click(Sender: TObject);
var
  pathexe,path : String;
begin
        pathexe := ExtractFilePath(Application.ExeName);
        path := 'select,'+pathexe+'Output';
        ShellExecute(0, nil, 'explorer.exe', PChar(path), nil,
        SW_SHOWNORMAL);
end;

procedure TFormQRSyngenta.ButtonExportClick(Sender: TObject);
var
  PathExe : String;
  ListExport : TStringList;
begin

  ListExport := TStringList.Create;
  //ListExport.Add('CRPCD,MATID,HIGNAME,ABBRC,CGENES,ADMNC,POLID,LOTID,GENCD,FPTID,MCNBID,MVRMK,MLTST,MSTSL,Labelled?');
  ListExport.Add('CRPCD,MATID,HIGNAME,ABBRC,CGENES,ADMNC,LOTID,GENCD,FPTID,UUID,ALTID,MLTST,TREATMENT,DISCLAIMER,Labelled?');

  ListExport.SaveToFile(PathExe+'SPIRIT Exported Files\'+EditExport.Text+'.csv');
  PathExe := ExtractFilePath(Application.ExeName);
  ExportdataCsv(PathExe+'SPIRIT Exported Files\'+EditExport.Text+'.csv');
  Application.MessageBox('Successfully exported!','Database',  MB_OK);

  //Printall;

end;

procedure TFormQRSyngenta.ButtonImportMcnbidClick(Sender: TObject);
var
  //ListMcnbidSource : Tstringlist;
  ListAUSource : Tstringlist;
begin
  //OpenDialogMcnBid.Execute
  if OpenDialogAU.Execute then
     begin
        ListAUSource := TStringList.Create;
        //LabelMcnbidSource.Caption := OpenDialogMcnbid.FileName;
        LabelAUSource.Caption := OpenDialogAU.FileName;

        ListAUSource.LoadFromFile(LabelAUSource.Caption);
        LabelNumrec.Caption := inttostr(ListAUSource.Count);
     end;
end;

procedure TFormQRSyngenta.PrintBitmap(Canvas: TCanvas; DestRect: TRect; Bitmap: TBitmap);
var
  BitmapHeader: pBitmapInfo;
  BitmapImage: Pointer;
  HeaderSize: DWORD;
  ImageSize: DWORD;
begin
  GetDIBSizes(Bitmap.Handle, HeaderSize, ImageSize);
  GetMem(BitmapHeader, HeaderSize);
  GetMem(BitmapImage, ImageSize);
  try
    GetDIB(Bitmap.Handle, Bitmap.Palette, BitmapHeader^, BitmapImage^);
    StretchDIBits(Canvas.Handle,
      DestRect.Left, DestRect.Top,
      DestRect.Right - DestRect.Left,
      DestRect.Bottom - DestRect.Top,
      0, 0,
      Bitmap.Width, Bitmap.Height,
      BitmapImage,
      TBitmapInfo(BitmapHeader^),
      DIB_RGB_COLORS,
      SRCCOPY)
  finally
    FreeMem(BitmapHeader);
    FreeMem(BitmapImage)
  end
end ;

procedure TFormQRSyngenta.cmbEncodingChange(Sender: TObject);
begin
  Update;
end;

procedure TFormQRSyngenta.DBGrid1CellClick(Column: TColumn);
begin
  Display;
  Update1;
  Update2;
end;

procedure TFormQRSyngenta.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Display;
  Update1;
  Update2;
end;

procedure TFormQRSyngenta.DBGrid1KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Display;
  Update1;
  Update2;
end;

procedure TFormQRSyngenta.edtQuietZoneChange(Sender: TObject);
begin
  Update;
end;

procedure TFormQRSyngenta.edtTextChange(Sender: TObject);
begin
  Update;
end;


procedure TFormQRSyngenta.ExportDatacsv1Click(Sender: TObject);
var
  PathExe : String;
  ListExport : TStringList;
begin

  ListExport := TStringList.Create;
  ListExport.Add('CRPCD,MATID,HIGNAME,ABBRC,CGENES,ADMNC,POLID,LOTID,GENCD,FPTID,MCNBID,MVRMK,MLTST,MSTSL,Labelled?');
  ListExport.SaveToFile(PathExe+'SPIRIT Exported Files\'+EditExport.Text+'.csv');
  PathExe := ExtractFilePath(Application.ExeName);
  ExportdataCsv(PathExe+'SPIRIT Exported Files\'+EditExport.Text+'.csv');
end;

procedure TFormQRSyngenta.FormDestroy(Sender: TObject);
begin
  QRCodeBitmap.Free;
end;

procedure TFormQRSyngenta.PaintBox1Paint(Sender: TObject);
var
  Scale: Double;
begin
  PaintBox1.Canvas.Brush.Color := clWhite;
  PaintBox1.Canvas.FillRect(Rect(0, 0, PaintBox1.Width, PaintBox1.Height));
  if ((QRCodeBitmap.Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox1.Width < PaintBox1.Height) then
    begin
      Scale := PaintBox1.Width / QRCodeBitmap.Width;
    end else
    begin
      Scale := PaintBox1.Height / QRCodeBitmap.Height;
    end;
    PaintBox1.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;
end;

procedure TFormQRSyngenta.PaintBox2Paint(Sender: TObject);
var
  Scale: Double;
begin
  PaintBox2.Canvas.Brush.Color := clWhite;
  PaintBox2.Canvas.FillRect(Rect(0, 0, PaintBox2.Width, PaintBox2.Height));
  if ((QRCodeBitmap.Width > 0) and (QRCodeBitmap.Height > 0)) then
  begin
    if (PaintBox2.Width < PaintBox2.Height) then
    begin
      Scale := PaintBox2.Width / QRCodeBitmap.Width;
    end else
    begin
      Scale := PaintBox2.Height / QRCodeBitmap.Height;
    end;
    PaintBox2.Canvas.StretchDraw(Rect(0, 0, Trunc(Scale * QRCodeBitmap.Width), Trunc(Scale * QRCodeBitmap.Height)), QRCodeBitmap);
  end;
end;

procedure TFormQRSyngenta.Update1;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try

    if RadioPrintLotid.Checked = True then
        //QRCode.Data := LabelLotid.Caption
        QRCode.Data := LabelMatid.Caption
    else if RadioPrintMatid.Checked = True then
        QRCode.Data := LabelMatid.Caption;

    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox1.Repaint;
end;

procedure TFormQRSyngenta.Update2;
var
  QRCode: TDelphiZXingQRCode;
  Row, Column: Integer;
begin
  QRCode := TDelphiZXingQRCode.Create;
  try

    QRCode.Data := LabelUUID.Caption;
    QRCode.Encoding := TQRCodeEncoding(cmbEncoding.ItemIndex);
    QRCode.QuietZone := StrToIntDef(edtQuietZone.Text, 4);
    QRCodeBitmap.SetSize(QRCode.Rows, QRCode.Columns);
    for Row := 0 to QRCode.Rows - 1 do
    begin
      for Column := 0 to QRCode.Columns - 1 do
      begin
        if (QRCode.IsBlack[Row, Column]) then
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clBlack;
        end else
        begin
          QRCodeBitmap.Canvas.Pixels[Column, Row] := clWhite;
        end;
      end;
    end;
  finally
    QRCode.Free;
  end;
  PaintBox2.Repaint;
end;



function TFormQRSyngenta.GetColumnValue(MyDelim, MyColumn, MyText: string): string;
var
  mytrim,myvalue : String;
  i, x, endpos, mycount : Integer;
begin
  MyText := TrimLeft(TrimRight((MyText)))+MyDelim+' ';
  i := 1;
  mycount := 0;
  x := Length(mytext);

  while i <= x do
      begin
        mytrim := Copy(mytext, i, 1);
        if mytrim <> MyDelim then
           begin
             endpos := PosEx(MyDelim,mytext,i);
             myvalue := Copy(mytext, i, ((endpos-i)));
             i := endpos;
             mycount := mycount + 1;
             if mycount = StrToInt(MyColumn) then
                begin
                  Result := myvalue;
                  i := x+1;
                end;
           end
        else
           i := i + 1;
      end;
end;


procedure TFormQRSyngenta.Help1Click(Sender: TObject);
var
  pathexe,path : String;
begin
    pathexe := ExtractFilePath(Application.ExeName);
    path := 'select,'+pathexe+'Help';
    ShellExecute(0, nil, 'explorer.exe', PChar(path), nil,
    SW_SHOWNORMAL);
 end;

procedure TFormQRSyngenta.Importdatasource1Click(Sender: TObject);
begin
  if OpenDialog.Execute then
      begin
         ImportCsv(OpenDialog.FileName);
         LabelFname.Caption := OpenDialog.FileName;
         SaveLastImport;
      end;
end;

procedure TFormQRSyngenta.ImportCsv(filename:String);
var
   InputFile : TextFile;
   handread,crpcd,matid,highname,abbrc,cgene,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled : String;
   ListElements : TStringList;
   ctr : integer;
begin

   ctr := 0;

   ListElements := TStringList.Create;

   AssignFile(InputFile,filename);
   Reset(InputFile);

   while not eof(InputFile) do
      begin
          Readln(InputFile,handread);
          handread := StringReplace(handread,' ','',[rfReplaceAll]);

          Split(',',handread,ListElements);

          crpcd := Trim(ListElements[0]);
          matid := Trim(ListElements[1]);
          highname := Trim(ListElements[2]);
          abbrc := Trim(ListElements[3]);
          cgene := Trim(ListElements[4]);
          admnc := Trim(ListElements[5]);
          lotid := Trim(ListElements[6]);
          gencd := Trim(ListElements[7]);
          fptid := Trim(ListElements[8]);
          uuid := Trim(ListElements[9]);
          altid := Trim(ListElements[10]);
          mltst := Trim(ListElements[11]);
          treatment := Trim(ListElements[12]);
          disclaimer := Trim(ListElements[13]);
          labelled := Trim(ListElements[14]);

          if crpcd <> '' then
            crpcd := crpcd
          else
            crpcd := 'null';

          if matid <> '' then
            matid := matid
          else
            matid := 'null';

          if highname <> '' then
            highname := highname
          else
            highname := 'null';

          if abbrc <> '' then
            abbrc := abbrc
          else
            abbrc := 'null';

          if cgene <> '' then
            cgene := cgene
          else
            cgene := 'null';

          if admnc <> '' then
            admnc := admnc
          else
            admnc := 'null';

          if lotid <> '' then
            lotid := lotid
          else
            lotid := 'null';

          if gencd <> '' then
            gencd := gencd
          else
            gencd := 'null';

          if fptid <> '' then
            fptid := fptid
          else
            fptid := 'null';

          if uuid <> '' then
            uuid := uuid
          else
            uuid := 'null';

          if altid <> '' then
            altid := altid
          else
            altid := 'null';

          if mltst <> '' then
            mltst := mltst
          else
            mltst := 'null';

          if treatment <> '' then
            treatment := treatment
          else
            treatment := 'null';

          if disclaimer <> '' then
            disclaimer := disclaimer
          else
            disclaimer := 'null';

          if labelled <> '' then
            labelled := labelled
          else
            labelled := 'null';

           if ctr <> 0 then
              AppendDb(inttostr(ctr),crpcd,matid,highname,abbrc,cgene,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled);

           ctr := ctr + 1;
      end;

   CloseFile(InputFile);

end;

procedure TFormQRSyngenta.AppendDb(id,crpcd,matid,highname,abbrc,cgene,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled:String);
var
  query : String;
begin

  query := 'Insert into tbl_input(id,crpcd,matid,highname,abbrc,cgenes,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled) '+
            'values ('+id+','''+crpcd+''','''+matid+''','''+highname+''','''+abbrc+''','''+cgene+''','''+admnc+''','''+lotid+''','''+gencd+''','''+fptid+''','''+uuid+''','''+altid+''','''+mltst+''','''+treatment+''','''+disclaimer+''','''+labelled+''')';

  FormData.AbsQuery.SQL.Clear;
  FormData.AbsQuery.SQL.Add(query);
  FormData.AbsQuery.ExecSQL;
  FormData.AbsTable.Refresh;
end;

procedure TFormQRSyngenta.CheckBoxViewClick(Sender: TObject);
 var
  pathexe,path : String;
begin
    if CheckBoxView.Checked = True then
      begin
        pathexe := ExtractFilePath(Application.ExeName);
        path := 'select,'+pathexe+'SPIRIT Exported Files';
        ShellExecute(0, nil, 'explorer.exe', PChar(path), nil,
        SW_SHOWNORMAL);
      end;
end;

procedure TFormQRSyngenta.Cleardatabase1Click(Sender: TObject);
begin
  ClearDb;
end;

procedure TFormQRSyngenta.ClearDB;
var
  query : String;
begin
  query := 'delete from tbl_input';
  FormData.AbsQuery.SQL.Clear;
  FormData.AbsQuery.SQL.Add(query);
  FormData.AbsQuery.ExecSQL;
  FormData.AbsTable.Refresh;

end;

procedure TFormQRSyngenta.LabelLOTIDContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
  Update;
end;

procedure TFormQRSyngenta.Display;
var
  ListExport : TStringList;
begin

  ListExport := TStringList.Create;

  if RadioPrintLotid.Checked = True then
     begin
       //checks lotid if missing
       if dbGrid1.Fields[7].AsString <> 'null' then
          begin
            LabelLotid.Caption := dbGrid1.Fields[7].AsString;
            LabelMatid.Caption := dbGrid1.Fields[2].AsString;
            LabelMatid2.Caption := dbGrid1.Fields[2].AsString;
          end
       else
          begin
            LabelLotid.Caption := '';
            LabelMatid.Caption := dbGrid1.Fields[2].AsString;
            LabelMatid2.Caption := dbGrid1.Fields[2].AsString;
          end;

       if dbGrid1.Fields[2].AsString <> 'null' then
          begin
            LabelMatid.Caption := dbGrid1.Fields[2].AsString;
            LabelMatid2.Caption := dbGrid1.Fields[2].AsString;
          end
       else
          begin
            LabelMatid.Caption := '';
            LabelMatid2.Caption := '';
          end;
     end

  else if RadioPrintMatid.Checked = True then
     begin

       if dbGrid1.Fields[2].AsString <> 'null' then
          LabelLotid.Caption := dbGrid1.Fields[2].AsString
       else
          LabelLotid.Caption := '';

       if dbGrid1.Fields[7].AsString <> 'null' then
          begin
            LabelMatid.Caption := dbGrid1.Fields[2].AsString;
            LabelMatid2.Caption := dbGrid1.Fields[2].AsString;
          end
       else
          begin
            LabelMatid.Caption := dbGrid1.Fields[2].AsString;
            LabelMatid2.Caption := dbGrid1.Fields[2].AsString;
          end;
     end;

  if RadioPrintHighname.Checked = True then
     begin
        if dbGrid1.Fields[3].AsString <> 'null' then
          LabelHighname.Caption := dbGrid1.Fields[3].AsString
        else
          LabelHighname.Caption := '';
     end
  else if RadioPrintAbbrc.Checked = True then
     begin
        if dbGrid1.Fields[4].AsString <> 'null' then
          LabelAbbrc.Caption := dbGrid1.Fields[4].AsString
        else
          LabelAbbrc.Caption := '';
     end;

  if dbGrid1.Fields[8].AsString <> 'null' then
     LabelGencd.Caption := dbGrid1.Fields[8].AsString
  else
     LabelGencd.Caption := '';

  if dbGrid1.Fields[5].AsString <> 'null' then
     LabelCgene.Caption := dbGrid1.Fields[5].AsString
  else
     LabelCgene.Caption := '';

  if dbGrid1.Fields[6].AsString <> 'null' then
     LabelAdmnc.Caption := dbGrid1.Fields[6].AsString
  else
     LabelAdmnc.Caption := '';

  if dbGrid1.Fields[9].AsString <> 'null' then
     LabelFptid.Caption := dbGrid1.Fields[9].AsString
  else
     LabelFptid.Caption := '';

  if dbGrid1.Fields[11].AsString <> 'null' then
     LabelAltid.Caption := dbGrid1.Fields[11].AsString
  else
     LabelAltid.Caption := '';

  if dbGrid1.Fields[14].AsString <> 'null' then
     LabelDisclaimer.Caption := dbGrid1.Fields[14].AsString
  else
     LabelDisclaimer.Caption := '';

  if dbGrid1.Fields[1].AsString <> 'null' then
     LabelCrpcd.Caption := dbGrid1.Fields[1].AsString
  else
     LabelCrpcd.Caption := '';

  if dbGrid1.Fields[13].AsString <> 'null' then
     LabelTreatment.Caption := dbGrid1.Fields[13].AsString
  else
     LabelTreatment.Caption := '';

  if dbGrid1.Fields[10].AsString <> 'null' then
     LabelUUID.Caption := dbGrid1.Fields[10].AsString
  else
     LabelUUID.Caption := '';

  ListExport.Add('CRPCD,MATID,HIGNAME,ABBRC,CGENES,ADMNC,LOTID,GENCD,FPTID,UUID,ALTID,MLTST,TREATMENT,DISCLAIMER,Labelled?');
  ListExport.Add(dbGrid1.Fields[1].AsString+','+dbGrid1.Fields[2].AsString+','+dbGrid1.Fields[3].AsString+','+
  dbGrid1.Fields[4].AsString+','+dbGrid1.Fields[5].AsString+','+dbGrid1.Fields[6].AsString+','+dbGrid1.Fields[7].AsString+','+
  dbGrid1.Fields[8].AsString+','+dbGrid1.Fields[9].AsString+','+dbGrid1.Fields[10].AsString+','+dbGrid1.Fields[11].AsString+','+
  dbGrid1.Fields[12].AsString+','+dbGrid1.Fields[13].AsString+','+dbGrid1.Fields[14].AsString+','+dbGrid1.Fields[15].AsString);

  ListExport.SaveToFile(PathExe+'temp\tmp_all.csv');

end;





procedure TFormQRSyngenta.EditExportChange(Sender: TObject);
begin
  LabelExport.Caption := ExtractFilePath(Application.ExeName)+'SPIRIT Exported Files\'+EditExport.Text+'.csv';
end;

procedure TFormQRSyngenta.EditSearchChange(Sender: TObject);
var
  colname : String;
begin

    if RadioFptid.Checked = True then
       colname := 'fptid'
    else if RadioAdmnc.Checked = True then
       colname := 'admnc'
    else if RadioMatid.Checked = True then
       colname := 'matid'
    else if RadioLotid.Checked = True then
       colname := 'lotid'
    else if RadioPolid.Checked = True then
       colname := 'polid';

    Search(colname,EditSearch.Text);

end;

procedure TFormQRSyngenta.Search(colname:String;value:String);
var
  query : String;
begin

  FormData.DataSource.DataSet.Filtered := True;
  query := '[' + colname + '] LIKE ''%' + value + '%''';
  FormData.DataSource.DataSet.Filter := query;

  FormData.AbsTable.Refresh;

end;

procedure TFormQRSyngenta.AppendRow(id,crpcd,matid,highname,abbrc,cgene,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled:String);
var
  query : String;
begin

  query := 'Insert into tbl_input (id,crpcd,matid,highname,abbrc,cgenes,admnc,lotid,gencd,fptid,uuid,altid,mltst,treatment,disclaimer,labelled) '+
            'values ('+id+','''+crpcd+''','''+matid+''','''+highname+''','''+abbrc+''','''+cgene+''','''+admnc+''','''+lotid+''','''+gencd+''','''+fptid+''','''+uuid+''','''+altid+''','''+mltst+''','''+treatment+''','''+disclaimer+''','''+labelled+''')';

  FormData.AbsQuery.SQL.Clear;
  FormData.AbsQuery.SQL.Add(query);
  FormData.AbsQuery.ExecSQL;
  FormData.AbsTable.Refresh;
end;

procedure TFormQRSyngenta.ExportDataCsv(filename:String);
var
  col,row : integer;
  TextOutCsv : TextFile;
  handread : String;
begin

  AssignFile(TextOutCsv,filename);
  Append(TextOutCsv);

    DbGrid1.DataSource.DataSet.First;
    DbGrid1.SelectedIndex := 0;
    for row := 0 to DbGrid1.DataSource.DataSet.RecordCount-1 do
      begin
          for col := 1 to DbGrid1.Columns.Count-1 do
              begin
                  handread := handread + DbGrid1.Columns[col].Field.AsString+',';
              end;

              Writeln(TextOutcsv,handread);
              handread := '';


           DBGrid1.DataSource.DataSet.Next;
      end;

  CloseFile(TextOutCsv);
end;




procedure TFormQRSyngenta.OpenDb;
var
  Pathexe : String;
begin
  PathExe := ExtractFilePath(Application.ExeName);
  FormData.AbsDatabase.DatabaseFileName := PathExe+'\syngentadb.ABS';
  FormData.AbsDatabase.Connected := True;
  FormData.AbsTable.Active := True;

end;

procedure TFormQRSyngenta.PrintExport;
var
  ListExport : TStringList;
begin
  ListExport := TStringList.Create;
  ListExport := TStringList.Create;
  ListExport.Add('CRPCD,MATID,HIGNAME,ABBRC,CGENES,ADMNC,LOTID,GENCD,FPTID,UUID,ALTID,MLTST,TREATMENT,DISCLAIMER,Labelled?');
  ListExport.SaveToFile(PathExe+'temp\tmp_all_all.csv');
  PathExe := ExtractFilePath(Application.ExeName);
  ExportdataCsv(PathExe+'temp\tmp_all_all.csv');
end;


procedure TFormQRSyngenta.PrintAll;
var
  switch : String;
begin

  Label7.Visible := True;
  pathexe := ExtractFilePath(Application.ExeName);

  //SaveSetPrint;
  Label7.Caption := 'Creating pdf file...';
  Label7.Caption := GetDosOutput('');
  Label7.Caption := pathexe+'Output\Syngenta_Packet_Print.pdf'+'Done!';

   Application.MessageBox('Done ','Print',
                                    MB_OK)
end;

procedure TFormQRSyngenta.PrintAllQRSyn;
var
  filename : String;
  ListSet : TStringList;
  ListLast : TStringList;
begin
  filename := pathexe+'setprint.txt';
  ListLast := TStringList.Create;
  ListLast.LoadFromFile(pathexe+'temp\last.dat');

  if (ListLast[0] <> '') and fileexists(ListLast[0]) then
     begin
        if DbGrid1.datasource.DataSet.RecordCount <> 0 then
           begin
              ListSet := TStringList.Create;
              ListSet.Add('null');
              //ListSet.Add(pathexe+'temp\tmp_all.csv'+','+EditFileAll.Text+'.pdf');
              ListSet.Add(ListLast[0]+','+EditFileAll.Text+'.pdf');
              ListSet.SaveToFile(filename);
              Label7.Caption := GetDosOutput('')
           end;
     end
  else
    begin
          Application.MessageBox('Please clear the database and import the new input file!','Print',
                                    MB_OK);
    end;
end;


procedure TFormQRSyngenta.SaveSetPrint;
var
  filename : String;
  ListSet : TStringList;
begin
  filename := pathexe+'setprint.txt';

  if DbGrid1.datasource.DataSet.RecordCount <> 0 then
     begin
        ListSet := TStringList.Create;
        ListSet.Add('null');
        if RadioPrintAbbrc.Checked = True then
          ListSet.Add(pathexe+'temp\tmp_all_all.csv'+','+EditFileAll.Text+'.pdf'+','+'0')
        else
          ListSet.Add(pathexe+'temp\tmp_all_all.csv'+','+EditFileAll.Text+'.pdf'+','+'1');
        ListSet.SaveToFile(filename);
     end;
end;

procedure TFormQRSyngenta.SaveSetPrintOne;
var
  filename : String;
  ListSet : TStringList;
begin
  filename := pathexe+'setprint.txt';

  if DbGrid1.datasource.DataSet.RecordCount <> 0 then
     begin
        ListSet := TStringList.Create;
        ListSet.Add('null');
        //ListSet.Add(pathexe+'temp\tmp_all.csv'+','+dbGrid1.Fields[11].AsString+'.pdf');
        if RadioPrintAbbrc.Checked = True then
          ListSet.Add(pathexe+'temp\tmp_all.csv'+','+dbGrid1.Fields[11].AsString+'.pdf'+','+'0')
        else
          ListSet.Add(pathexe+'temp\tmp_all.csv'+','+dbGrid1.Fields[11].AsString+'.pdf'+','+'1');
        ListSet.SaveToFile(filename);
     end;
end;



function TFormQRSyngenta.GetDosOutput(CommandLine: string; Work: string = ''): string;
var
  SA: TSecurityAttributes;
  SI: TStartupInfo;
  PI: TProcessInformation;
  StdOutPipeRead, StdOutPipeWrite: THandle;
  WasOK: Boolean;
  Buffer: array[0..255] of AnsiChar;
  BytesRead: Cardinal;
  WorkDir: string;
  Handle: Boolean;
begin

  Result := '';
  with SA do
       begin
         nLength := SizeOf(SA);
         bInheritHandle := True;
         lpSecurityDescriptor := nil;
       end;
  CreatePipe(StdOutPipeRead, StdOutPipeWrite, @SA, 0);
  try
    with SI do
         begin
           FillChar(SI, SizeOf(SI), 0);
           cb := SizeOf(SI);
           dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
           wShowWindow := SW_HIDE;
           hStdInput := GetStdHandle(STD_INPUT_HANDLE);
           hStdOutput := StdOutPipeWrite;
           hStdError := StdOutPipeWrite;
         end;
    WorkDir := ExtractFilePath(Application.ExeName);
    Handle := CreateProcess(nil, PChar(Pathexe+'dist\qrsyn.exe' + CommandLine), nil, nil, True, 0, nil, PChar(WorkDir), SI, PI);
    CloseHandle(StdOutPipeWrite);
    if Handle then
       try
         repeat
           WasOK := ReadFile(StdOutPipeRead, Buffer, 255, BytesRead, nil);
           if BytesRead > 0 then
              begin
                Buffer[BytesRead] := #0;
                Result := Result + Buffer;
              end;

         until not WasOK or (BytesRead = 0);
           WaitForSingleObject(PI.hProcess, INFINITE);
       finally
         CloseHandle(PI.hThread);
         CloseHandle(PI.hProcess);
       end;

  finally
    CloseHandle(StdOutPipeRead);
  end;

end;

procedure TFormQRSyngenta.SaveLastImport;
var
  ListLastImport : TStringList;
begin
  ListLastImport := TstringList.Create;
  if OpenDialog.FileName <> '' then
    begin
      ListLastImport.Add(OpenDialog.FileName);
      ListLastImport.SaveToFile(pathexe+'temp\'+'last.dat');
    end
  else
    begin
      Application.MessageBox('Please clear the database and import the new input file!','Print',
                                    MB_OK);
    end;


end;



end.
