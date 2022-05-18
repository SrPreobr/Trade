unit SpravUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DBCtrls, ExtCtrls,
  Menus, DB, StdCtrls;

type
  TSpravForm = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    CheckBoxActiv: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Showing(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure FilterChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ScWindowScale;
  private
    { Private declarations }
  public
    { Public declarations }
    Obj :String;
  end;

var
  SpravForm: TSpravForm;

implementation

uses DMUnit, MainUnit, InstallUnit, TovarUnit;

{$R *.dfm}

procedure TSpravForm.FormClose(Sender: TObject; var Action: TCloseAction);
var     MenuIt :  TMenuItem;
begin
  MenuIt:=MainForm.WindowMenu.Find(Caption);
  MainForm.WindowMenu.Delete(MainForm.WindowMenu.IndexOf(MenuIt));
  InstallForm.SpravActiv:=False;
  Action:= caFree;
end;

procedure TSpravForm.FormCreate(Sender: TObject);
var     MenuIt :  TMenuItem;
begin
   MenuIt:=TMenuItem.Create(MainForm.WindowMenu);
   MenuIt.Caption := 'Справочник';
   MenuIt.Visible := True;
   MenuIt.OnClick := Showing;

   InstallForm.SpravActiv:=True;
   MainForm.WindowMenu.Add(MenuIt);
   ScWindowScale;
end;

procedure TSpravForm.Showing(Sender: TObject);
begin
  Show;
end;

procedure TSpravForm.FilterChange(Sender: TObject);
begin
  If obj='GrupSprav'    then GrupActivOnly    :=  CheckBoxActiv.Checked;
  If obj='PokupSprav'   then PokupActivOnly   :=  CheckBoxActiv.Checked;
  If obj='PostavSprav'  then PostavActivOnly  :=  CheckBoxActiv.Checked;
  If obj='ProizvSprav'  then ProizvActivOnly  :=  CheckBoxActiv.Checked;
  If obj='EdIzmerSprav' then EdIzmerActivOnly :=  CheckBoxActiv.Checked;
  If obj='SotrudnSprav' then SotrudnActivOnly :=  CheckBoxActiv.Checked;
  If obj='UnitSprav'    then UnitActivOnly    :=  CheckBoxActiv.Checked;
  If obj='ValutaSprav'  then ValutaActivOnly  :=  CheckBoxActiv.Checked;
  If obj='KursSprav'    then KursActivOnly    :=  CheckBoxActiv.Checked;

  If (obj='GrupSprav') or (obj='PostavSprav') or (obj='ProizvSprav') then TovarForm.SetComboGrup;
  
  If DBGrid1.DataSource <> DM.DataSourceAgent then
    If CheckBoxActiv.Checked then
    begin
      DBGrid1.DataSource.DataSet.Filter:='Activ = True';
      DBGrid1.DataSource.DataSet.Filtered:= True;
    end
    else DBGrid1.DataSource.DataSet.Filtered:= False
  else //  DBGrid1.DataSource = DM.DataSourceAgent
    begin
//      DM.TableAgent.Filter:='';
      If Obj='PostavSprav' then DM.TableAgent.Filter:= '(([AgentKind] = 2) OR ([AgentKind] = 0))'; //Postav or Univer
      If Obj='PokupSprav'  then DM.TableAgent.Filter:= '(([AgentKind] = 1) OR ([AgentKind] = 0))'; //Pokup  or Univer
      If CheckBoxActiv.Checked then DM.TableAgent.Filter:= DM.TableAgent.Filter+' and ([Activ] =True)'
      else ;
      DM.TableAgent.Filtered:=True;
    end;
end;

procedure TSpravForm.FormActivate(Sender: TObject);
begin
  If obj='GrupSprav'    then CheckBoxActiv.Checked := GrupActivOnly;
  If obj='PokupSprav'   then CheckBoxActiv.Checked := PokupActivOnly;
  If obj='PostavSprav'  then CheckBoxActiv.Checked := PostavActivOnly;
  If obj='ProizvSprav'  then CheckBoxActiv.Checked := ProizvActivOnly;
  If obj='EdIzmerSprav' then CheckBoxActiv.Checked := EdIzmerActivOnly;
  If obj='SotrudnSprav' then CheckBoxActiv.Checked := SotrudnActivOnly;
  If obj='UnitSprav'    then CheckBoxActiv.Checked := UnitActivOnly;
  If obj='ValutaSprav'  then CheckBoxActiv.Checked := ValutaActivOnly;
  If obj='KursSprav'    then CheckBoxActiv.Checked := KursActivOnly;
  CheckBoxActiv.OnClick(Sender);

  // контроль прав доступа
  DBGrid1.ReadOnly := InstallForm.Dostup <= 1;
  If InstallForm.Dostup <= 1 then DBNavigator1.VisibleButtons :=[nbFirst,nbPrior,nbNext,nbLast]
  else DBNavigator1.VisibleButtons :=[nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];

end;

procedure TSpravForm.FormDeactivate(Sender: TObject);
begin
  DBGrid1.DataSource.DataSet.Filtered:= False;
end;

procedure TSpravForm.DBGrid1DblClick(Sender: TObject);
begin
  If obj='SotrudnSprav' then begin
    MainForm.LabelSotrudn.Visible:= True;
    MainForm.LabelSotrudn.Caption:= DM.TableSotrudn.FieldByName('FIO').AsString;
    If DM.TableSotrudn.FieldByName('Dolzhn').AsString<>'' then
    MainForm.LabelSotrudn.Caption:=MainForm.LabelSotrudn.Caption+ ' - '+ DM.TableSotrudn.FieldByName('Dolzhn').AsString;
    InstallForm.SotrudnCod   := DM.TableSotrudn.FieldByName('Cod').AsInteger;
    InstallForm.DostupInBase := DM.TableSotrudn.FieldByName('Dostup').AsInteger;
    If InstallForm.DostupInBase < InstallForm.Dostup then InstallForm.Dostup := InstallForm.DostupInBase;

    If DM.TableSotrudn.FieldByName('Dostup').AsInteger >= 1 then begin
      MainForm.Password.Visible:= True;
      MainForm.BitBtn1 .Visible:= True;
      MainForm.SetDostup;
      MainForm.Password.SetFocus;
      MainForm.Password.Text:='';
    end;
  end;
end;

procedure TSpravForm.ScWindowScale;
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
