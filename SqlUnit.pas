unit SqlUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, Grids, DBGrids, Menus, ExtCtrls, StdCtrls, DB,
  DBTables, DBCtrls, StrUtils;

type
  TSqlForm = class(TForm)
    MainMenu1: TMainMenu;
    FileMenu: TMenuItem;
    OpenMenu: TMenuItem;
    SaveMenu: TMenuItem;
    SaveAsMenu: TMenuItem;
    RunMenu: TMenuItem;
    CloseMenu: TMenuItem;
    N1: TMenuItem;
    ExitMenu: TMenuItem;
    DBGrid1: TDBGrid;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    DataSource1: TDataSource;
    N2: TMenuItem;
    SaveAsTextMenu: TMenuItem;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    Memo1: TMemo;
    Panel2: TPanel;
    Label1: TLabel;
    StaticText1: TStaticText;
    Splitter1: TSplitter;
    procedure OpenMenuClick(Sender: TObject);
    procedure RunMenuClick(Sender: TObject);
    procedure CloseMenuClick(Sender: TObject);
    procedure SaveMenuClick(Sender: TObject);
    procedure SaveAsMenuClick(Sender: TObject);
    procedure ExitMenuClick(Sender: TObject);
    procedure SaveAsTextMenuClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Showing(Sender: TObject);
    procedure Memo1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Memo1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ScWindowScale;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SqlForm: TSqlForm;

implementation

uses DMUnit, MainUnit, InstallUnit;

{$R *.dfm}

procedure TSqlForm.OpenMenuClick(Sender: TObject);
begin
  If Memo1.Modified then
    case MessageDlg('Сохранить изменения сделанные при редактировании Sql File'+#10#13+
                     OpenDialog1.FileName + ' ?',
        mtConfirmation  ,mbYesNoCancel,0) of
      mrYes   : begin
                  Memo1.Lines.SaveToFile(OpenDialog1.FileName);
                  Memo1.Modified:= False;
                  If OpenDialog1.Execute then Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
                end;
      mrNo    : begin
                  If OpenDialog1.Execute then Memo1.Lines.LoadFromFile(OpenDialog1.FileName);
                end;
      mrCancel: ;
    end
    else  If OpenDialog1.Execute then Memo1.Lines.LoadFromFile(OpenDialog1.FileName);

  Caption:= 'Sql '+ExtractFileName(OpenDialog1.FileName);
end;

procedure TSqlForm.RunMenuClick(Sender: TObject);
var I : Integer;
    Reader, SelectQ : Boolean;
    SaveCursor : TCursor;
begin
 If Memo1.Lines.Count >0 then begin
  DM.QuerySql.Close;
   DM.QuerySql.SQL.Clear;
  Reader:= False;
  SelectQ:=True;
  for I:=0 to Memo1.Lines.Count-1 do begin
    If Reader then DM.QuerySql.SQL.Add(Memo1.Lines[I]);
    If Memo1.Lines[I]= '*/' then Reader:=True;
    If AnsiContainsText(Memo1.Lines[I],'Insert') or
       AnsiContainsText(Memo1.Lines[I],'Update') or
       AnsiContainsText(Memo1.Lines[I],'Delete') or
       AnsiContainsText(Memo1.Lines[I],'Alter')
    then SelectQ:=False;
  end;
//  DM.QuerySql.SQL:=Memo1.Lines;
   try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }
    // DM.TableTovar.Close;
    If SelectQ then DM.QuerySql.Open else DM.QuerySql.ExecSQL;
    // DM.TableTovar.Open;
   finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
   end;
 end;
end;

procedure TSqlForm.CloseMenuClick(Sender: TObject);
begin
  If Memo1.Modified then
    case MessageDlg('Сохранить изменения сделанные при редактировании Sql File'+#10#13+
                     OpenDialog1.FileName + ' ?',
        mtConfirmation  ,mbYesNoCancel,0) of
      mrYes   : begin
                  Memo1.Lines.SaveToFile(OpenDialog1.FileName);
                  Memo1.Clear;
                end;
      mrNo    : Memo1.Clear;
      mrCancel: ;
    end;
end;

procedure TSqlForm.SaveMenuClick(Sender: TObject);
begin
  Memo1.Lines.SaveToFile(OpenDialog1.FileName);
  Memo1.Modified:= False;
end;

procedure TSqlForm.SaveAsMenuClick(Sender: TObject);
begin
  SaveDialog1.FileName:=  OpenDialog1.FileName;
  If SaveDialog1.Execute then begin
    Memo1.Lines.SaveToFile(SaveDialog1.FileName);
    Memo1.Modified:= False;
    Caption:= 'Sql '+ExtractFileName(SaveDialog1.FileName);
    OpenDialog1.FileName := SaveDialog1.FileName;
  end;
end;

procedure TSqlForm.ExitMenuClick(Sender: TObject);
begin
  Close;
end;

procedure TSqlForm.SaveAsTextMenuClick(Sender: TObject);
begin
  SaveDialog1.FileName:= ChangeFileExt(OpenDialog1.FileName,'.txt');
  If SaveDialog1.Execute then begin
    DM.DataSetToText(DM.QuerySql,SaveDialog1.FileName);
  end;
end;

procedure TSqlForm.FormClose(Sender: TObject; var Action: TCloseAction);
var     MenuIt :  TMenuItem;
begin
  MenuIt:=MainForm.WindowMenu.Find('Sql');
  MainForm.WindowMenu.Delete(MainForm.WindowMenu.IndexOf(MenuIt));
  InstallForm.SqlActiv:=False;
  Action:= caFree;
end;

procedure TSqlForm.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  If Memo1.Modified then
    case MessageDlg('Сохранить изменения сделанные при редактировании Sql File'+#10#13+
                     OpenDialog1.FileName + ' ?',
        mtConfirmation  ,mbYesNoCancel,0) of
      mrYes   : begin
                  Memo1.Lines.SaveToFile(OpenDialog1.FileName);
                  CanClose := True;
                end;
      mrNo    : CanClose := True;
      mrCancel: CanClose := False;
    end;
end;

procedure TSqlForm.FormCreate(Sender: TObject);
var    MenuIt :  TMenuItem;
begin
   MenuIt:=TMenuItem.Create(MainForm.WindowMenu);
   MenuIt.Caption := 'Sql';
   MenuIt.Visible := True;
   MenuIt.OnClick := Showing;
   
   InstallForm.SqlActiv:=True;
   MainForm.WindowMenu.Add(MenuIt);
   ScWindowScale;
end;

procedure TSqlForm.Showing(Sender: TObject);
begin
  Show;
end;

procedure TSqlForm.Memo1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Label1.Caption:=IntToStr(Memo1.CaretPos.Y+1)+' : '+IntToStr(Memo1.CaretPos.X+1)
end;

procedure TSqlForm.Memo1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Label1.Caption:=IntToStr(Memo1.CaretPos.Y+1)+' : '+IntToStr(Memo1.CaretPos.X+1)
end;

procedure TSqlForm.ScWindowScale;
var rc : TRect;
    newWidth, newHeight : Integer;
    iPercentage:integer;
begin
  if Screen.Width > PrScreenWidth then
    begin
      iPercentage:=Round(((Screen.Width-PrScreenWidth)/PrScreenWidth)*100)+100;
      ScaleBy(iPercentage,100);  // oForm.ScaleBy
      rc           := GetClientRect;
      newWidth     := (rc.Right - rc.Left) * iPercentage div 100;
      newHeight    := (rc.Bottom - rc.Top) * iPercentage div 100;
      Width  := Width + newWidth - (rc.Right - rc.Left);
      Height := Height + newHeight - (rc.Bottom - rc.Top);
    end;
end;

end.
