unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCGrids, DBCtrls, StdCtrls, ExtCtrls,Grids, DBGrids, DB, DBTables,
  Menus,  ComCtrls, IniFiles,
  InstallUnit, Buttons;

type
  TMainForm = class(TForm)
    MainMenu1: TMainMenu;
    StatusBar: TStatusBar;
    Panel: TPanel;
    FileMenu: TMenuItem;
    SpravMenu: TMenuItem;
    DeystMenu: TMenuItem;
    ZhurnalMenu: TMenuItem;
    OthetBalansItem: TMenuItem;
    HelpMenu: TMenuItem;
    TovarMenu: TMenuItem;
    PokupSprav: TMenuItem;
    PostavSprav: TMenuItem;
    EdIzmerSprav: TMenuItem;
    N2: TMenuItem;
    SotrudnSprav: TMenuItem;
    UnitSprav: TMenuItem;
    N3: TMenuItem;
    AboutHelp: TMenuItem;
    ExitFile: TMenuItem;
    GrupSprav: TMenuItem;
    ZakupkaDeyst: TMenuItem;
    PeremDeyst: TMenuItem;
    CashFromDeyst: TMenuItem;
    CashToDeyst: TMenuItem;
    VozvratZakupkaDeyst: TMenuItem;
    VozvratProdazhaDeyst: TMenuItem;
    ProdazhaDeyst: TMenuItem;
    ZhurnalZakupkaItem: TMenuItem;
    ZhurnalProdazhaItem: TMenuItem;
    N7: TMenuItem;
    ZhurnalAllItem: TMenuItem;
    PrintSetup: TMenuItem;
    N6: TMenuItem;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintToFile: TMenuItem;
    ZhurnalPrihodItem: TMenuItem;
    PrihodDeyst: TMenuItem;
    OstatokDeyst: TMenuItem;
    ZhurnalOstatokItem: TMenuItem;
    PereOzenkaDeyst: TMenuItem;
    WindowMenu: TMenuItem;
    Show1: TMenuItem;
    Hide1: TMenuItem;
    N5: TMenuItem;
    ArrangeAll1: TMenuItem;
    Cascade1: TMenuItem;
    Tile1: TMenuItem;
    N4: TMenuItem;
    TableToText: TMenuItem;
    OpenDialog1: TOpenDialog;
    SQLMenu: TMenuItem;
    SchetDeyst: TMenuItem;
    ZhurnalPeremItem: TMenuItem;
    ZhurnalSchetItem: TMenuItem;
    ZhurnalCashToItem: TMenuItem;
    ZhurnalCashFromItem: TMenuItem;
    ZhurnalPereOzenkaItem: TMenuItem;
    N8: TMenuItem;
    ProizvSprav: TMenuItem;
    ValutaSprav: TMenuItem;
    KursSprav: TMenuItem;
    Password: TEdit;
    LabelSotrudn: TLabel;
    BitBtn1: TBitBtn;
    TextToTable: TMenuItem;
    LabelAlias: TLabel;
    SaldoMenu: TMenuItem;
    SaldoZakupMenu: TMenuItem;
    WindowScaleUpItem: TMenuItem;
    WindowScaleDownItem: TMenuItem;
    N1: TMenuItem;
    N9: TMenuItem;
    CopyBaseToFtp: TMenuItem;
    CopyBaseFromFtp: TMenuItem;
    ProgressBar1: TProgressBar;
    Timer1: TTimer;
    procedure ExitFileClick(Sender: TObject);
    procedure TovarMenuClick(Sender: TObject);
    procedure NewNaklDeystClick(Sender: TObject);
    procedure ZhurnalClick(Sender: TObject);
    procedure PrintSetupClick(Sender: TObject);
    procedure PrintToFileClick(Sender: TObject);
    procedure TableToTextClick(Sender: TObject);
    procedure SQLMenuClick(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure SpravClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure PasswordEnter(Sender: TObject);
    procedure SetDostup;
    procedure PasswordKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure TextToTableClick(Sender: TObject);
    procedure SaldoZakupMenuClick(Sender: TObject);
    procedure WindowScaleUpItemClick(Sender: TObject);
    procedure WindowScaleDownItemClick(Sender: TObject);
    procedure AdjustResolution;
    procedure FormCreate(Sender: TObject);
    procedure WindowScale(A,B : Integer; oForm:TForm);
    procedure CopyBaseFromFtpClick(Sender: TObject);
    procedure CopyBaseToFtpClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses  TovarUnit, NaklUnit, ZhurnalUnit, DMUnit, SqlUnit , BalansUnit,  SpravUnit,
  SaldoUnit;

{$R *.DFM}

procedure TMainForm.ExitFileClick(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.TovarMenuClick(Sender: TObject);
begin

  TovarForm.DBGrid1.ReadOnly:=False;
  TovarForm.DBGrid1.Options:=[dgEditing,dgAlwaysShowEditor,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];

  TovarForm.Show;
end;

procedure TMainForm.NewNaklDeystClick(Sender: TObject);
var FormKind, K, Opened : TFormKind;
    FormEdit : Boolean;  // накл может быть открыта в реж редакт(создания)

begin
  If Sender = ZakupkaDeyst    then FormKind := FZakupka;
  If Sender = ProdazhaDeyst   then FormKind := FProdazha;
  If Sender = PrihodDeyst     then FormKind := FPrihod;
  If Sender = OstatokDeyst    then FormKind := FOstatok;
  If Sender = PeremDeyst      then FormKind := FPerem;
  If Sender = SchetDeyst      then FormKind := FSchet;
  If Sender = CashToDeyst     then FormKind := FCashTo;
  If Sender = CashFromDeyst   then FormKind := FCashFrom;
  If Sender = PereOzenkaDeyst then FormKind := FPereOzenka;

    FormEdit := False;
    For K:=Succ(Low(FormParAr)) to High(FormParAr) do
      If FormParAr[K].Activ and ((FormParAr[K].Deystv=Sozdan) or
         (FormParAr[K].Deystv=Redakt) or (FormParAr[K].Deystv=VosStan))
      then begin
        FormEdit := True;
        Opened:=K;
      end;

    case FormEdit of
     true:  // одна из накл находится в режиме редакт
       If MessageDlg('Одновременно в режиме редактирования(создания)'+#10#13+
                  'может находится только одна накладная!'+#10#13+
                  'В данный момент это :'+NaklFormAr[Opened].Caption+#10#13+
                  'Закрыть её и приступить к созданию новой накладной ?',
                     mtWarning, mbOKCancel, 0)=mrOk then
       begin
         If FormParAr[Opened].Activ   then NaklFormAr[Opened].Close;
         Application.CreateForm(TNaklForm, NaklFormAr[FormKind]);
         If NaklFormAr[FormKind].SetNakl(Sender,0,FormKind,Sozdan) then   NaklFormAr[FormKind].Show;
       end
       else NaklFormAr[Opened].Show;
     false: begin
       Application.CreateForm(TNaklForm, NaklFormAr[FormKind]);
       If NaklFormAr[FormKind].SetNakl(Sender,0,FormKind,Sozdan) then   NaklFormAr[FormKind].Show;
     end;
    end;

end;

procedure TMainForm.ZhurnalClick(Sender: TObject);
begin
  If Sender= ZhurnalZakupkaItem    then  ZhurnalForm.SetProsmotr(Zakupka);
  If Sender= ZhurnalProdazhaItem   then  ZhurnalForm.SetProsmotr(Prodazha);
  If Sender= ZhurnalPrihodItem     then  ZhurnalForm.SetProsmotr(Prihod);
  If Sender= ZhurnalOstatokItem    then  ZhurnalForm.SetProsmotr(Ostatok);
  If Sender= ZhurnalPeremItem      then  ZhurnalForm.SetProsmotr(Perem);
  If Sender= ZhurnalSchetItem      then  ZhurnalForm.SetProsmotr(Schet);
  If Sender= ZhurnalCashToItem     then  ZhurnalForm.SetProsmotr(CashTo);
  If Sender= ZhurnalCashFromItem   then  ZhurnalForm.SetProsmotr(CashFrom);
  If Sender= ZhurnalPereOzenkaItem then  ZhurnalForm.SetProsmotr(PereOzenka);

  If Sender= ZhurnalAllItem      then  ZhurnalForm.SetProsmotr(All);

  ZhurnalForm.Show;
end;

procedure TMainForm.PrintSetupClick(Sender: TObject);
begin
  PrinterSetupDialog1.Execute;
end;

procedure TMainForm.PrintToFileClick(Sender: TObject);
begin
  PrintToFile.Checked:=Not PrintToFile.Checked;
end;


procedure TMainForm.TableToTextClick(Sender: TObject);
var FileName : String;
begin
    OpenDialog1.InitialDir:='';
    OpenDialog1.Filter:='DB Files|*.DB|All Files|*.*';
    If OpenDialog1.Execute then begin
      DM.Table1.TableName   :=ExtractFileName(OpenDialog1.FileName);
      DM.Table1.DatabaseName:=ExtractFileDir (OpenDialog1.FileName);
      FileName:= ChangeFileExt(DM.Table1.TableName,'.txt');
      FileName:=ExtractFilePath(OpenDialog1.FileName)+ FileName;
      If MessageDlg('Преобразовать Таблицу:  '+OpenDialog1.FileName+#10#13+
          'в текстовый файл '+FileName+' ?'+#10#13+
          'Разделитель=Tab.',
          mtConfirmation  ,[mbYes,mbNo]	,0) = mrYes then
      begin
        DM.DataSetToText(DM.Table1, FileName);
     end; // If MessageDlg
    end;

end;

procedure TMainForm.TextToTableClick(Sender: TObject);
var FileName, TableName : String;

begin
    OpenDialog1.InitialDir:='';
    OpenDialog1.Filter:='Txt Files|*.txt|All Files|*.*';
    If OpenDialog1.Execute then begin
      FileName:= ExtractFileName(OpenDialog1.FileName);

      TableName:= ChangeFileExt(FileName,'.db');
      TableName:= ExtractFilePath(OpenDialog1.FileName)+ TableName;

      DM.Table1.TableName:=    TableName;
      DM.Table1.DatabaseName:= ExtractFileDir(OpenDialog1.FileName);

      If MessageDlg('Преобразовать текстовый файл : '+ExtractFileName(OpenDialog1.FileName)+#10#13+
          'в Таблицу '+TableName+' ?'+#10#13+
          'Таблица должна быть уже создана и иметь соответствующую структуру.'+#10#13+
          'Разделитель=Tab.',
          mtConfirmation  ,[mbYes,mbNo]	,0) = mrYes then
      begin
        DM.TextToDataSet(FileName, DM.Table1);
      end;
   end; // If MessageDlg

end;

procedure TMainForm.SQLMenuClick(Sender: TObject);
begin
  If Not InstallForm.SqlActiv then Application.CreateForm(TSqlForm, SqlForm);
  SqlForm.Show;
end;

procedure TMainForm.N8Click(Sender: TObject);
begin
  If Not InstallForm.BalansActiv then Application.CreateForm(TBalansForm, BalansForm);
  BalansForm.Show;

end;

procedure TMainForm.SpravClick(Sender: TObject);
begin
  If Not InstallForm.SpravActiv then Application.CreateForm(TSpravForm, SpravForm);

  If Sender = GrupSprav    then SpravForm.DBGrid1.DataSource:= DM.DataSourceGrup;
  If Sender = PokupSprav   then SpravForm.DBGrid1.DataSource:= DM.DataSourceAgent;
  If Sender = PostavSprav  then SpravForm.DBGrid1.DataSource:= DM.DataSourceAgent;
  If Sender = ProizvSprav  then SpravForm.DBGrid1.DataSource:= DM.DataSourceProizv;

//  If Sender = PriceSprav   then SpravForm.DBGrid1.DataSource:= DM.DataSourceGrup;
//  If Sender = KursSprav    then SpravForm.DBGrid1.DataSource:= DM.DataSourceGrup;
  If Sender = EdIzmerSprav then SpravForm.DBGrid1.DataSource:= DM.DataSourceEdIzmer;
  If Sender = SotrudnSprav then SpravForm.DBGrid1.DataSource:= DM.DataSourceSotrudn;
  If Sender = UnitSprav    then SpravForm.DBGrid1.DataSource:= DM.DataSourceUnit;
  If Sender = ValutaSprav  then SpravForm.DBGrid1.DataSource:= DM.DataSourceValuta;
  If Sender = KursSprav    then SpravForm.DBGrid1.DataSource:= DM.DataSourceKurs;

  SpravForm.DBNavigator1.DataSource:= SpravForm.DBGrid1.DataSource;
  SpravForm.Obj:= TControl(Sender).Name;

  SpravForm.Show;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
var I : TFormKind;
begin
 try
 For I:=Low(FormParAr) to High(FormParAr) do
    If FormParAr[I].Activ then NaklFormAr[I].Close;
  If (InstallForm.SqlActiv) and (SqlForm<>Nil) then SqlForm.Close;

  with DM.QueryNaklsSum do begin
      Close;
      DM.QueryNaklsSum.SQL[4]:= 'where N.Cod=Rec.NaklCod';
      Open;
  end;

  InstallForm.IniFile:= TIniFile.Create(InstallForm.IniName);

  InstallForm.IniFile.WriteFloat('CrSum','SumAll',DM.QueryNaklsSum.FieldByName('SumAll').AsCurrency);
  InstallForm.IniFile.WriteFloat('CrSum','SumAll0',DM.QueryNaklsSum.FieldByName('SumAll0').AsCurrency);
  InstallForm.IniFile.WriteFloat('CrSum','PerCent',DM.QueryNaklsSum.FieldByName('PerCent').AsCurrency);

 finally
 
    InstallForm.IniFile.Free;
    DM.QueryNaklsSum.Close;
 end;
end;

procedure TMainForm.FormActivate(Sender: TObject);
begin
  SetDostup;
  // LabelAlias.Caption := MyAliasName;
end;

procedure TMainForm.SetDostup;

begin
  SchetDeyst     .Enabled:= InstallForm.Dostup >= 1;
  DeystMenu      .Enabled:= InstallForm.Dostup >= 1;
  ZhurnalMenu    .Enabled:= InstallForm.Dostup >= 1;
  WindowMenu     .Enabled:= InstallForm.Dostup >= 1;

  ProdazhaDeyst  .Enabled:= InstallForm.Dostup >= 2;

  PrintToFile    .Enabled:= InstallForm.Dostup >= 3;
  TableToText    .Enabled:= InstallForm.Dostup >= 3;
  TextToTable    .Enabled:= InstallForm.Dostup >= 3;

  ZakupkaDeyst   .Enabled:= InstallForm.Dostup >= 3;
  PrihodDeyst    .Enabled:= InstallForm.Dostup >= 3;
  OstatokDeyst   .Enabled:= InstallForm.Dostup >= 3;
  PeremDeyst     .Enabled:= InstallForm.Dostup >= 3;
  CashToDeyst    .Enabled:= InstallForm.Dostup >= 3;
  CashFromDeyst  .Enabled:= InstallForm.Dostup >= 3;
  PereOzenkaDeyst.Enabled:= InstallForm.Dostup >= 3;

  OthetBalansItem.Enabled:= InstallForm.Dostup >= 3;

//  BalansForm.ButtonBalans.Enabled:= InstallForm.Dostup >= 4;                                                   // ButtonBalans

  SaldoMenu         .Enabled:= InstallForm.Dostup >= 4;
  SQLMenu           .Enabled:= InstallForm.Dostup >= 4;

  CashToDeyst       .Enabled:= InstallForm.Dostup >= 4;
  PeremDeyst        .Enabled:= InstallForm.Dostup >= 4;
  OstatokDeyst      .Enabled:= InstallForm.Dostup >= 4;
  SchetDeyst        .Enabled:= InstallForm.Dostup >= 4;
  ProdazhaDeyst     .Enabled:= InstallForm.Dostup >= 4;
  CashFromDeyst     .Enabled:= InstallForm.Dostup >= 4;


  ZhurnalCashToItem   .Enabled:= InstallForm.Dostup >= 4;
  ZhurnalPeremItem    .Enabled:= InstallForm.Dostup >= 4;
  ZhurnalSchetItem    .Enabled:= InstallForm.Dostup >= 4;
  ZhurnalProdazhaItem .Enabled:= InstallForm.Dostup >= 4;
  ZhurnalCashFromItem .Enabled:= InstallForm.Dostup >= 4;

  ZhurnalForm.SetComboBoxTipDoc;

end;


procedure TMainForm.PasswordEnter(Sender: TObject);
begin
  case InstallForm.SotrudnCod of
    4: If Password.Text ='Лена'   then InstallForm.Dostup := InstallForm.DostupInBase;
    9: If Password.Text ='ббосс'  then InstallForm.Dostup := InstallForm.DostupInBase;
   10: If Password.Text ='солов'  then InstallForm.Dostup := InstallForm.DostupInBase;
  end;
  If InstallForm.Dostup >= 1 then begin
      MainForm.Password.Visible:= False;
      MainForm.BitBtn1 .Visible:= False;
  end;
  SetDostup;
end;

procedure TMainForm.PasswordKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If Key=vk_Return then PasswordEnter(Sender);
end;


procedure TMainForm.SaldoZakupMenuClick(Sender: TObject);
begin
  If Not InstallForm.SaldoActiv then Application.CreateForm(TSaldoForm, SaldoForm);
  SaldoForm.Show;
end;

procedure TMainForm.WindowScale(A,B : Integer; oForm:TForm);
var rc : TRect;
    newWidth, newHeight : Integer;
begin
  //ChangeScale(A, B); //Увеличение A>B
  oForm.ScaleBy(A, B);   // owner

  rc           := GetClientRect;
  newWidth     := (rc.Right - rc.Left) * A div B;
  newHeight    := (rc.Bottom - rc.Top) * A div B;
  oForm.Width  := oForm.Width + newWidth - (rc.Right - rc.Left);
  oForm.Height := oForm.Height + newHeight - (rc.Bottom - rc.Top);
end;

procedure TMainForm.WindowScaleUpItemClick(Sender: TObject);
var i: Integer;
begin
  for i := 0 to Application.ComponentCount - 1 do
  begin
    if (Application.Components[i] is TForm)
    then WindowScale(110, 100, Application.Components[i] as TForm);
  end;
 //Увеличение на 10 % (новый масштаб – 110 %)
end;

procedure TMainForm.WindowScaleDownItemClick(Sender: TObject);
var i: Integer;
begin
  for i := 0 to Application.ComponentCount - 1 do
  begin
    if (Application.Components[i] is TForm)
    then WindowScale(90, 100, Application.Components[i] as TForm);
  end;
   //Уменьшение на 10 % (новый масштаб – 80 %)
end;

procedure TMainForm.AdjustResolution;
 var iPercentage, i:integer;
begin
  if Screen.Width > PrScreenWidth then
    begin
      iPercentage:=Round(((Screen.Width-PrScreenWidth)/PrScreenWidth)*100)+100;
      for i := 0 to Application.ComponentCount - 1 do
      begin
        if (Application.Components[i] is TForm)
        then WindowScale(iPercentage, 100, Application.Components[i] as TForm); // oForm.ScaleBy
      end;
    end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  AdjustResolution;
end;

procedure TMainForm.CopyBaseFromFtpClick(Sender: TObject);
begin
      MessageDlg('Файлы Базы будут обновлены с Интернета. ' +#10#13+
                 'При обычной скорости Интернет это занимает 10 сек. ' +#10#13+
                 'После этого программа автоматически закроется. ' +#10#13+
                 'Для продолжения работы надо запустить её по новой.'

                  ,
                  mtWarning, [mbYes], 0);

  ProgressBar1.Visible := True;
  Timer1.Enabled := True;
  DM.Database1.Connected := False;
  DM.CopyFromFtp;
  BackToFtp := False;
  DM.Database1.Connected := True;
  Close;

end;

procedure TMainForm.CopyBaseToFtpClick(Sender: TObject);
begin
      MessageDlg('Файлы Базы будут сохранены на Интернет. ' +#10#13+
                 'При обычной скорости Интернет это занимает 10 сек. ' 

                  ,
                  mtWarning, [mbYes], 0);
  ProgressBar1.Visible := True;
  Timer1.Enabled := True;

//  DM.Database1.Connected := False;
  DM.CopyToFtp;
//  DM.Database1.Connected := True;

  ProgressBar1.Visible := False;
  Timer1.Enabled := False;

end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  ProgressBar1.Position := ProgressBar1.Position+1;
  If  ProgressBar1.Position = ProgressBar1.Max
  then ProgressBar1.Position := ProgressBar1.Min;
end;

initialization
//    DM.SessionMy.AddPassword(SotrudnPassWord);
end.
