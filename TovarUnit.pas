unit TovarUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCGrids, DBCtrls, StdCtrls, ExtCtrls, Printers, Variants, MaskUtils,
  Mask, Grids, DBGrids, DB, Spin, Menus,
  InstallUnit, DMUnit, ComCtrls, IdBaseComponent, IdNetworkCalculator,
  DBTables,
  ComObj, ActiveX;

type
  TTovarForm = class(TForm)
    PrintDialog1: TPrintDialog;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel: TPanel;
    DBGrid1: TDBGrid;
    ButtonClose: TButton;
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    ButtonPrepPrint: TButton;
    Panel2: TPanel;
    CheckBoxZakupkaVis: TCheckBox;
    CheckBoxRoznVis: TCheckBox;
    CheckBoxMelkOptVis: TCheckBox;
    CheckBoxOptVis: TCheckBox;
    CheckBoxBrutoVis: TCheckBox;
    CheckBoxActivVis: TCheckBox;
    CheckBoxFasovkaVis: TCheckBox;
    CheckBoxProizvVis: TCheckBox;
    CheckBoxGrupVis: TCheckBox;
    CheckBoxAgentVis: TCheckBox;
    CheckBoxEdIzmerVis: TCheckBox;
    Label1: TLabel;
    Panel4: TPanel;
    StaticText2: TStaticText;
    CheckBoxGrup: TCheckBox;
    CheckBoxProizv: TCheckBox;
    CheckBoxAgent: TCheckBox;
    ComboBoxGrup: TComboBox;
    ComboBoxProizv: TComboBox;
    ComboBoxAgent: TComboBox;
    CheckBoxActiv: TCheckBox;
    Panel5: TPanel;
    StaticText5: TStaticText;
    EditLocate: TEdit;
    StaticText4: TStaticText;
    ComboBoxPodbor: TComboBox;
    CheckBoxActivForUnit0: TCheckBox;
    CheckBoxActivForUnit1: TCheckBox;
    CheckBoxActivForUnit2: TCheckBox;
    Button2: TButton;
    Button1: TButton;
    CheckBoxCodVis: TCheckBox;
    Panel6: TPanel;
    Label2: TLabel;
    CheckBoxTab: TCheckBox;
    Panel7: TPanel;
    Label3: TLabel;
    CheckBoxUpper: TCheckBox;
    CheckBoxZakupkaSrVis: TCheckBox;
    CheckBoxRoznSrVis: TCheckBox;
    CheckBoxMelkOptSrVis: TCheckBox;
    CheckBoxOptSrVis: TCheckBox;
    CheckBoxPakVis: TCheckBox;
    Button3: TButton;
    CheckBoxPerCentRoznVis: TCheckBox;
    CheckBoxPerCentMelkOptVis: TCheckBox;
    CheckBoxPerCentOptVis: TCheckBox;
    CheckBoxNetoVis: TCheckBox;
    Panel8: TPanel;
    CheckBoxPriceVis: TCheckBox;
    CheckBoxDateVis: TCheckBox;
    StatusBar1: TStatusBar;
    Panel27: TPanel;
    Label19: TLabel;
    Button4: TButton;
    CheckBoxActivZakazVis: TCheckBox;
    CheckBoxAgentRedVis: TCheckBox;
    Panel9: TPanel;
    ButtonMySql: TButton;
    Label4: TLabel;
    QueryMySql: TQuery;
    SpinEditIndex: TSpinEdit;
    Label5: TLabel;
    Panel10: TPanel;
    Label6: TLabel;
    Button5: TButton;
    Panel11: TPanel;
    Label7: TLabel;
    ButtonKursRub: TButton;
    MaskEditKursRub: TMaskEdit;
    Label8: TLabel;
    Panel12: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    ButtonBaseRub: TButton;
    MaskEditKursRub1: TMaskEdit;
    TabSheet3: TTabSheet;
    GroupBox1: TGroupBox;
    CheckBoxActivZakaz: TCheckBox;
    CheckBoxUnit: TCheckBox;
    ComboBoxUnit: TComboBox;
    CheckBoxFasovka: TCheckBox;
    ComboBoxFasovka: TComboBox;
    Panel3: TPanel;
    CheckBoxOpt: TCheckBox;
    CheckBoxMelkOpt2: TCheckBox;
    CheckBoxRozn: TCheckBox;
    StaticText7: TStaticText;
    SpinEditPercentMelkOpt2: TSpinEdit;
    SpinEditPercentZakupka: TSpinEdit;
    SpinEditPercentRozn: TSpinEdit;
    SpinEditPercentOpt: TSpinEdit;
    StaticText8: TStaticText;
    StaticText9: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    CheckBoxMelkOpt1: TCheckBox;
    SpinEditPercentMelkOpt1: TSpinEdit;
    StaticText1: TStaticText;
    RadioGroup1: TRadioGroup;
    RadioButtonTovar: TRadioButton;
    RadioButtonPrice: TRadioButton;
    ButtonExcelSave: TButton;
    Panel13: TPanel;
    Label11: TLabel;
    ButtonTovarMaxDate: TButton;
    QueryTovarMaxDate: TQuery;
    CheckBoxLike: TCheckBox;
    EditLike: TEdit;
    CheckBoxRecomPrVis: TCheckBox;
    procedure ButtonCloseClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure EditLocateChange(Sender: TObject);
    procedure FilterChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure ComboBoxPodborChange(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ButtonPrepPrintClick(Sender: TObject);
    procedure SpinEditPercentZakupkaChange(Sender: TObject);
    procedure CheckBoxColumnClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Showing(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure SetComboGrup;
    procedure ShowFormClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure ButtonMySqlClick(Sender: TObject);
    procedure ButtonActivRoznClick(Sender: TObject);
    procedure ScWindowScale;
    procedure ButtonKursRubClick(Sender: TObject);
    procedure ButtonBaseRubClick(Sender: TObject);
    procedure ButtonExcelSaveClick(Sender: TObject);
    function  CheckExcelInstall:boolean;
    procedure ButtonTovarMaxDateClick(Sender: TObject);
  private
    { Private declarations }
    GrupCod, ProizvCod, AgentCodFrom, UnitN : Integer;
    Gruper,Proizver,Agenter, Uniter : Boolean;
    Row : Integer;
    NStr,NSpace,NPage: Integer;
//    FPrn: System.Text;
    Fil : TextFile;
    FileName: String;
    PrintingToFile:Boolean;   // идет печать в файл
  public
    { Public declarations }
    StFilter,                //текущая фильтрация тблицы товара или прайса
    SqlFilter     : String;  //текущая фильтрация тблицы товара или прайса в формате SQL
    procedure BeforePost;
  end;

var
  TovarForm:  TTovarForm;

implementation

uses NaklUnit, MainUnit;

{$R *.DFM}

procedure TTovarForm.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TTovarForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DM.TableTovar.Filter:='';
 DM.TableTovar.Filtered:=False;
 If MainForm.PrintToFile.Checked then begin
    If  PrintingToFile then CloseFile(Fil);
    PrintingToFile := False;
 end
  else If Printer.Printing then Printer.EndDoc;

 Action:=caHide;
end;

procedure TTovarForm.FilterChange(Sender: TObject);
var LookUpResults : Variant;
    Gruper,Proizver,Agenter, Uniter : Boolean;
    ActivCod : Integer;
begin
  Gruper    :=False;
  Proizver  :=False;
  Agenter   :=False;
  Uniter    :=False;

  ActivCod:=DM.TableTovar.FieldByName('Cod').AsInteger;   //запомнить позицию

  DM.TableAgent.Filtered:=False;
//  DM.TableTovar.Filter:='';

  If CheckBoxGrup.Checked then begin
    LookUpResults :=DM.TableGrup.LookUp('GrupName',ComboBoxGrup.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        Gruper  := True;
        GrupCod := LookUpResults;
      end;
  end;
  If CheckBoxProizv.Checked then begin
    LookUpResults :=DM.TableProizv.LookUp('ProizvName',ComboBoxProizv.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        Proizver  := True;
        ProizvCod := LookUpResults;
      end;
  end;
  If CheckBoxAgent.Checked then begin
    LookUpResults :=DM.TableAgent.LookUp('AgentName',ComboBoxAgent.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        Agenter  := True;
        AgentCodFrom := LookUpResults;
      end;
  end;
  If CheckBoxUnit.Checked then begin
    LookUpResults :=DM.TableUnit.LookUp('UnitName',ComboBoxUnit.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        Uniter  := LookUpResults<>7; // не для офиса cod=7
        case LookUpResults  of
          2,8 : UnitN   :=0; // для 57     используется  ячейка Москвы
            3 : UnitN   :=1; // для 85
          6,9 : UnitN   :=2; // для Эскаро используется  ячейка №21
        end;
      end;
  end;
  
  StFilter:='';
  SqlFilter:='';
  If CheckBoxActiv.Checked then begin
    StFilter:='[Activ] = True';
    SqlFilter:='T.Activ = True';
  end;
  If CheckBoxActivZakaz.Checked then begin
    If StFilter='' then StFilter:='[ActivZakaz] = True'
    else StFilter:=StFilter+' and [ActivZakaz] = True';
    If SqlFilter<>'' then SqlFilter:= SqlFilter + ' and ';
    SqlFilter:= SqlFilter + 'T.ActivZakaz = True'
  end;
  If Gruper then begin
    If StFilter='' then StFilter:='([GrupCod] = '+IntToStr(GrupCod)+')'
    else StFilter:=StFilter+' and ([GrupCod] = '+IntToStr(GrupCod)+')';
    If SqlFilter<>'' then SqlFilter:= SqlFilter + ' and ';
    SqlFilter:= SqlFilter + 'T.GrupCod = '+IntToStr(GrupCod);
  end;
  If Proizver then begin
    If StFilter='' then StFilter:='[ProizvCod] = '+IntToStr(ProizvCod)
    else StFilter:=StFilter+ ' and [ProizvCod] = '+IntToStr(ProizvCod);
    If SqlFilter<>'' then SqlFilter:= SqlFilter + ' and ';
    SqlFilter:= SqlFilter + 'T.ProizvCod = '+IntToStr(ProizvCod);
  end;
  If Agenter then  begin
    If StFilter='' then StFilter:='[AgentCod] = '+IntToStr(AgentCodFrom)
    else StFilter:=StFilter+ ' and [AgentCod] = '+IntToStr(AgentCodFrom);
    If SqlFilter<>'' then SqlFilter:= SqlFilter + ' and ';
    SqlFilter:= SqlFilter + 'T.AgentCod = '+IntToStr(AgentCodFrom);
  end;
  If Uniter then begin
    If StFilter='' then StFilter:='[ActivForUnit'+IntToStr(UnitN)+'] = True'
    else StFilter:=StFilter+ ' and [ActivForUnit'+IntToStr(UnitN)+'] = True';
    If SqlFilter<>'' then SqlFilter:= SqlFilter + ' and ';
    SqlFilter:= SqlFilter + 'T.ActivForUnit'+IntToStr(UnitN)+' = True';
  end;
  If CheckBoxFasovka.Checked then begin
    If StFilter='' then StFilter:='[Fasovka] = '''+ComboBoxFasovka.Text+''''
    else StFilter:=StFilter+ ' and [Fasovka] = '''+ComboBoxFasovka.Text+'''';
    If SqlFilter<>'' then SqlFilter:= SqlFilter + ' and ';
    SqlFilter:= SqlFilter + 'T.Fasovka = '''+ComboBoxFasovka.Text+'''';
  end;
  // http://web-developments.ru/filtratsiya-dannih-delfi-delphi
  // Like не поддерживается по видемому  для таблиц
  If CheckBoxLike.Checked and (EditLike.Text<>'') then begin
    If StFilter='' then StFilter:='TovarName Like '''+EditLike.Text+''+''''
    else StFilter:=StFilter+ ' and TovarName Like '''+EditLike.Text+''+'''';
    If SqlFilter<>'' then SqlFilter:= SqlFilter + ' and ';
    SqlFilter:= SqlFilter + 'T.TovarName Like '''+EditLike.Text+'''';
  end;



  If  DbGrid1.DataSource.DataSet=DM.TableTovar then
  begin
    DbGrid1.DataSource.DataSet.Filter:=StFilter;
    If Debuger then StatusBar1.SimpleText:='TableTovar.Filter= '+DM.TableTovar.Filter+'.';

    If (Not DbGrid1.DataSource.DataSet.Filtered) and (StFilter<>'') then DbGrid1.DataSource.DataSet.Filtered:=True;
    If (DbGrid1.DataSource.DataSet.Filtered)     and (StFilter='')  then DbGrid1.DataSource.DataSet.Filtered:=False;
  end;


  DM.TableAgent.Filter:='(([AgentKind] = 2) OR ([AgentKind] = 0)) and ([Activ] =True)';  //Postav or Univer
  DM.TableAgent.Filtered:=True;

  If RadioButtonTovar.Checked and (ActivCod<>0)    //восстановить позицию
  then DM.TableTovar.Locate('Cod',ActivCod,[]);
end;

procedure TTovarForm.SetComboGrup;
begin
  ComboBoxGrup.Clear;
  ComboBoxProizv.Clear;
  ComboBoxAgent.Clear;

  if GrupActivOnly then begin
    DM.TableGrup.Filter:='([Activ]=True)';  //Postav or Univer
    DM.TableGrup.Filtered:=True;
  end;
  DM.TableGrup.First;
  repeat
    ComboBoxGrup.Items.Add(DM.TableGrup.FieldByName('GrupName').AsString{+' Cod='+
                           IntToStr(DM.TableGrup.FieldByName('Cod').AsInteger)});
    DM.TableGrup.Next;
  until DM.TableGrup.Eof;
  ComboBoxGrup.Text:='';

  if ProizvActivOnly then begin
    DM.TableProizv.Filter:='([Activ]=True)';  //Postav or Univer
    DM.TableProizv.Filtered:=True;
  end;
  DM.TableProizv.First;
  repeat
    ComboBoxProizv.Items.Add(DM.TableProizv.FieldByName('ProizvName').AsString);
    DM.TableProizv.Next;
  until DM.TableProizv.Eof;
  ComboBoxProizv.Text:='';

  DM.TableAgent.Filter:='(([AgentKind] = 2) OR ([AgentKind] = 0))';  //Postav or Univer
  If PostavActivOnly then DM.TableAgent.Filter:= DM.TableAgent.Filter +' and ([Activ]=True)';
  DM.TableAgent.Filtered:=True;
  DM.TableAgent.First;
  repeat
    ComboBoxAgent.Items.Add(DM.TableAgent.FieldByName('AgentName').AsString);
    DM.TableAgent.Next;
  until DM.TableAgent.Eof;
  ComboBoxAgent.Text:='';
  DM.TableAgent.Filter:='';
  DM.TableAgent.Filtered:=False;

end;

procedure TTovarForm.FormCreate(Sender: TObject);
var I : Integer;
    MenuIt :  TMenuItem;
begin
  SetComboGrup;

  DM.QueryTovarFasovka.Open;
  DM.QueryTovarFasovka.First;
  repeat
    ComboBoxFasovka.Items.Add(DM.QueryTovarFasovka.FieldByName('Fasovka').AsString);
    DM.QueryTovarFasovka.Next;
  until DM.QueryTovarFasovka.Eof;
  ComboBoxFasovka.Text:='';

  DM.TableUnit.Filter:='[AgentCod] = '+IntToStr(AgentSelf);  //Postav or Univer
  DM.TableUnit.Filtered:=True;
  DM.TableUnit.First;
  repeat
    if (DM.TableUnit.FieldByName('Cod').AsInteger<>7) // office
       and  DM.TableUnit.FieldByName('Activ').AsBoolean
    then    ComboBoxUnit.Items.Add(DM.TableUnit.FieldByName('UnitName').AsString);
    DM.TableUnit.Next;
  until DM.TableUnit.Eof;
  ComboBoxUnit.ItemIndex:=0;
  DM.TableUnit.Filtered:=False;
      CheckBoxActivForUnit2.Caption:= CheckBoxActivForUnit0.Caption + ComboBoxUnit.Items[0]; //ячейка 2 для №21 и Эскаро
      // CheckBoxActivForUnit0.Caption:= CheckBoxActivForUnit1.Caption + ComboBoxUnit.Items[I]; //№85
      // CheckBoxActivForUnit1.Caption:= CheckBoxActivForUnit2.Caption + ComboBoxUnit.Items[I];  //№57 и Москва

  ComboBoxPodbor.ItemIndex:=0;
  If PrintPath='' then FileName:=ExtractFilePath(Application.EXEName)+PrintTovarFileName else
    If PrintPath[1]='\' then
      FileName:=ExtractFilePath(Application.EXEName)+PrintPath+PrintTovarFileName
    else   FileName:= PrintPath+PrintTovarFileName;
  PrintingToFile := False;

   MenuIt:=TMenuItem.Create(MainForm.WindowMenu);
   MenuIt.Caption := Caption;
   MenuIt.Visible := True;
   MenuIt.OnClick := Showing;

   MainForm.WindowMenu.Add(MenuIt);
   ScWindowScale;
end;     //FormCreate

procedure TTovarForm.BeforePost;
// для авто занесения группы, произв, постав
begin
  If CheckBoxGrup.Checked   and DM.TableTovar['GrupCod']=varEmpty   then DM.TableTovar['GrupCod']:=GrupCod     ;
  If CheckBoxProizv.Checked and DM.TableTovar['ProizvCod']=varEmpty then DM.TableTovar['ProizvCod']:=ProizvCod ;
  If CheckBoxAgent.Checked and
     ((DM.TableTovar['AgentCod']=varEmpty) or (DM.TableTovar['AgentCod']=varNull)) then DM.TableTovar['AgentCod']:=AgentCodFrom ;
end;

procedure TTovarForm.FormActivate(Sender: TObject);
begin
  // контроль прав доступа
  DBGrid1.ReadOnly := InstallForm.Dostup <= 2;
  If InstallForm.Dostup <= 2 then DBNavigator1.VisibleButtons :=[nbFirst,nbPrior,nbNext,nbLast]
  else DBNavigator1.VisibleButtons :=[nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel];
  CheckBoxAgentVis   .Checked := InstallForm.Dostup >= 1;
  CheckBoxZakupkaVis .Checked := InstallForm.Dostup >= 1;
//  CheckBoxAgentVis   .Enabled := InstallForm.Dostup >= 1;
  If CheckBoxMelkOptVis .Checked then CheckBoxMelkOptVis .Checked := InstallForm.Dostup >= 1;
  If CheckBoxOptVis     .Checked then CheckBoxOptVis     .Checked := InstallForm.Dostup >= 1;

  If CheckBoxPerCentRoznVis.Checked then CheckBoxPerCentRoznVis.Checked := InstallForm.Dostup >= 1;

  CheckBoxZakupkaVis    .Enabled := InstallForm.Dostup >= 3;
  CheckBoxPerCentRoznVis.Enabled := InstallForm.Dostup >= 3;
  ButtonPrepPrint       .Enabled := InstallForm.Dostup >= 3;
  ButtonExcelSave       .Enabled := InstallForm.Dostup >= 3;

  Button4.Enabled             := InstallForm.Dostup >= 4;
  Button1.Visible             := InstallForm.Dostup >= 4;

  If ComboBoxPodbor.ItemIndex=0 then
    DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel]
  else
    DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];

  Row:=1;
  EditLocate.Text:='';
  //If Debuger then StatusBar1.SimpleText:='Начат поиск строки таблицы Товаров.';
  If RadioButtonTovar.Checked and (DM.TableTovarActivCod<>0)
  then DM.TableTovar.Locate('Cod',DM.TableTovarActivCod,[]);
  If Debuger then StatusBar1.SimpleText:='Текущая строка таблицы Товаров найдена, Filter='+DM.TableTovar.Filter+'.';
  ShowFormClick(Sender);
end;

procedure TTovarForm.FormDeactivate(Sender: TObject);
begin
  DM.TableTovarActivCod:=DM.TableTovar.FieldByName('Cod').AsInteger;
  DM.TablePriceActivCod:=DM.TablePrice.FieldByName('Cod').AsInteger;
//  DM.TableTovar.Filter  :='';
  DM.TableTovar.Filtered:=False;
  DM.TablePrice.Filtered:=False;
  DM.TableAgent.Filter:='';  //
  DM.TableAgent.Filtered:=False;
  DM.TableProizv.Filter:='';  //
  DM.TableProizv.Filtered:=False;
  DM.TableGrup.Filter:='';  //
  DM.TableGrup.Filtered:=False;
end;


procedure TTovarForm.DBGrid1CellClick(Column: TColumn);
var Buf:String;
    CodTovar: Integer;
begin
  If FormParAr[EditFormKind].Activ then begin
    DM.TableRecNakl.Edit;
    DM.TableRecNakl.FieldByName('TovarCod').AsInteger:=DM.TableTovar.FieldByName('Cod').AsInteger;

    DM.TableRecNakl.Post;
    FormParAr[EditFormKind].RecActivCod :=DM.TableRecNakl.FieldByName('Cod').AsInteger;

    NaklFormAr[EditFormKind].SetFocus;
  end;
end;

procedure TTovarForm.Button1Click(Sender: TObject);
var Fil : TextFile;
    St,BufSt: String;
    Buf,I : Integer;
begin
(*
//  OpenDialog1.InitialDir:='\\new\c\preobr\delphi\trade\base';
  OpenDialog1.Filter:='*.txt';
  If OpenDialog1.Execute then begin
    AssignFile(Fil,OpenDialog1.Filename);
    Reset(Fil);
    while Not(Eof(Fil)) do begin
      Readln(Fil,St);
      Buf:=0;
      For I:=1 to Length(St) do If (St[I]=#9) and (Buf=0) then Buf:=I;
      DM.TableTovar.Append;
      DM.TableTovar['TovarName']:=Copy(St,1,Buf-1);
      Delete(St,1,Buf);
      DM.TableTovar['GrupCod']:=1;
      Buf:=0;
      For I:=1 to Length(St) do If (St[I]=#9) and (Buf=0) then Buf:=I;
      DM.TableTovar['Fasovka']:= Copy(St,1,Buf-1);
      Delete(St,1,Buf);
      DM.TableTovar['EdIzmerCod']:=2;
      DM.TableTovar['ProizvCod']:=1;
      DM.TableTovar['AgentCod']:=5;
      DM.TableTovar['ZenaZakupka']:=0;
      DM.TableTovar['ZenaRozn']:=StrToCurr(St);
      DM.TableTovar['ZenaMelkOpt']:=StrToCurr(St);
      DM.TableTovar['ZenaOpt']:=StrToCurr(St)*0.9;
      DM.TableTovar['Activ']:=True;
      DM.TableTovar['Pr']:='';
      DM.TableTovar.Post;
    end;
    CloseFile(Fil);
  end;
*)
//  DM.TableTovar.Filter:='';
//  DM.TableTovar.Filtered:= True;
{*  DM.TableTovar.First;
  While Not  DM.TableTovar.Eof do begin
    If DM.TableTovar['ZenaRozn'] <>  DM.TableTovar['ZenaOpt'] then begin
      DM.TableTovar.Edit;
      DM.TableTovar['ZenaRozn']:= DM.TableTovar['ZenaOpt'];
      DM.TableTovar.Post;
    end;
    DM.TableTovar.Next;
  end;
*}
  While Not  DM.TableTovar.Eof do begin
      DM.TableTovar.Edit;
      DM.TableTovar['ActivZakaz']:=  not DM.TableTovar['Activ'];
      DM.TableTovar.Post;
    DM.TableTovar.Next;
  end;
end;

procedure TTovarForm.ComboBoxPodborChange(Sender: TObject);
var I:TFormKind;
begin
  inherited;
  case ComboBoxPodbor.ItemIndex of
    0: begin
         DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel];
         InstallForm.PodborerChange(FTovar,FTovar);
       end;
    1: begin
         DBNavigator1.VisibleButtons := [nbFirst,nbPrior,nbNext,nbLast];
         For I:=Succ(Low(FormParAr)) to High(FormParAr) do
           If  FormParAr[TFormKind(I)].Activ       and
               (NaklFormAr[TFormKind(I)].Caption=ComboBoxPodbor.Text) and

               ( (FormParAr[TFormKind(I)].Deystv = Redakt) or
                 (FormParAr[TFormKind(I)].Deystv = Sozdan)) then
           begin
             If (DM.TableTovar.State =dsEdit) or (DM.TableTovar.State =dsInsert)
               then DM.TableTovar.Post;
             InstallForm.PodborerChange(FTovar,I);
           end;
       end; // 1
  end;
    
end;

procedure TTovarForm.EditLocateChange(Sender: TObject);
begin
  If ((EditLocate.SelStart=1) {or (EditLocate.SelStart=0)} ) and CheckBoxUpper.Checked then begin
    EditLocate.Text:=AnsiUpperCase(EditLocate.Text[1]);
    EditLocate.SelStart:=1;
  end;
  If Not DM.TableTovar.Locate('TovarName',EditLocate.Text,[loCaseInsensitive,loPartialKey])
    then begin

    end;
//  DM.TableTovar.FindNearest([EditLocate.Text,'']);
end;


procedure TTovarForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid1.Canvas do
  begin
    If ((Column.Field.FieldName='ZenaZakupka') or (Column.Field.FieldName='ZenaRozn') or
        (Column.Field.FieldName='ZenaMelkOpt') or (Column.Field.FieldName='ZenaOpt')) and
        not (gdFocused in State) then
      If Column.Field.Value = 0 then
      begin
        Font.Color := clRed;
        Font.Style := [fsBold];
        FillRect(Rect);
        TextOut(Rect.Right-2-TextWidth(Column.Field.Text),Rect.Top,Column.Field.Text);
        Exit;
      end;
    If  ( (Column.Field.FieldName='PerCentRozn') or (Column.Field.FieldName='PerCentMelkOpt') or
          (Column.Field.FieldName='PerCentOpt')  or (Column.Field.FieldName='RecomPr') )
         and  not (gdFocused in State)  then
      If (Column.Field.Value <=20) or (Column.Field.Value >=40) then
      begin
        If (Column.Field.Value <=20) then Font.Color := clPurple;
        If (Column.Field.Value >=40) then Font.Color := clBlue;
        If (Column.Field.Value >=50) then Font.Color := clGreen;
        // Font.Style := [fsBold];
        FillRect(Rect);
        TextOut(Rect.Right-2-TextWidth(Column.Field.Text),Rect.Top,Column.Field.Text);
        Exit;
      end;
    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end; {with}
end;

procedure TTovarForm.ButtonPrepPrintClick(Sender: TObject);
const Interval=1.3;
      StrToPage=70;
      TabGoriz1=5;
      TabGoriz2=8;
      TabGoriz3=42;
      TabVert=10;
var   PosVert : Integer;
      St : String;
begin
  If MainForm.PrintToFile.Checked  then   {печать в файл}
    If Not PrintingToFile then begin
     AssignFile(Fil,FileName);
     ReWrite(Fil);
     PrintingToFile := True;
     WriteLn(Fil,'Выборка из Справочника Товаров.');
     WriteLn(Fil);
      NStr:=1;
      NPage:=1;
      NSpace:=0;
      DM.TableTovar.First;
    end;  // If Not PrintingToFile
     try
      While Not  DM.TableTovar.Eof do begin
//       If DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency=0 then
       begin
        If CheckBoxTab.Checked then
        begin
         St:=IntToStr(NStr)+#09;
         St:=St+DM.TableTovar.FieldByName('TovarName').AsString+#09;
         If CheckBoxFasovkaVis.Checked   then St:=St+DM.TableTovar.FieldByName('Fasovka').AsString+#09;
         If CheckBoxProizvVis.Checked    then St:=St+DM.TableTovar.FieldByName('ProizvName').AsString+#09;
         If CheckBoxGrupVis.Checked      then St:=St+DM.TableTovar.FieldByName('GrupName').AsString+#09;
         If CheckBoxAgentVis.Checked     then St:=St+DM.TableTovar.FieldByName('AgentName').AsString+#09;
         If CheckBoxAgentRedVis.Checked  then St:=St+DM.TableTovar.FieldByName('AgentRedName').AsString+#09;
         If CheckBoxEdIzmerVis.Checked   then St:=St+DM.TableTovar.FieldByName('EdIzmerName').AsString+#09;
         If CheckBoxZakupkaSrVis.Checked then St:=St+FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaZakupkaSr').AsCurrency)+#09;
         If CheckBoxZakupkaVis.Checked   then St:=St+FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency)+#09;
         If CheckBoxRoznSrVis.Checked    then St:=St+FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaRoznSr').AsCurrency)+#09;
         If CheckBoxRoznVis.Checked      then St:=St+FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaRozn').AsCurrency)+#09;
         If CheckBoxMelkOptSrVis.Checked then St:=St+FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaMelkOptSr').AsCurrency)+#09;
         If CheckBoxMelkOptVis.Checked   then St:=St+FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaMelkOpt').AsCurrency)+#09;
         If CheckBoxOptSrVis.Checked     then St:=St+FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaOptSr').AsCurrency)+#09;
         If CheckBoxOptVis.Checked       then St:=St+FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaOpt').AsCurrency)+#09;
         If CheckBoxBrutoVis.Checked     then St:=St+DM.TableTovar.FieldByName('Bruto').AsString+#09;
         If CheckBoxNetoVis.Checked      then St:=St+DM.TableTovar.FieldByName('Neto').AsString+#09;
         If CheckBoxPakVis.Checked       then St:=St+DM.TableTovar.FieldByName('Pak').AsString+#09;
         If CheckBoxActivVis.Checked     then St:=St+DM.TableTovar.FieldByName('Activ').AsString+#09;
         If St[Length(St)]=#09           then Delete(St,Length(St),1);
        end
        else begin   //If CheckBoxTab.Checked
         St:=FormatMaskText('99999;0;0',IntToStr(NStr));
         St:=St+FormatMaskText('CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC;0; ',DM.TableTovar.FieldByName('TovarName').AsString);
         If CheckBoxFasovkaVis.Checked   then St:=St+FormatMaskText('CCCCCCCCCC;0;',          DM.TableTovar.FieldByName('Fasovka').AsString);
         If CheckBoxProizvVis.Checked    then St:=St+FormatMaskText('CCCCCCCCCCCCCCCCC;0;',   DM.TableTovar.FieldByName('ProizvName').AsString);
         If CheckBoxGrupVis.Checked      then St:=St+FormatMaskText('CCCCCCCCCCCCCCCCCCCC;0;',DM.TableTovar.FieldByName('GrupName').AsString);
         If CheckBoxAgentVis.Checked     then St:=St+FormatMaskText('CCCCCCCCCCCCC;0;',       DM.TableTovar.FieldByName('AgentName').AsString);
         If CheckBoxAgentRedVis.Checked  then St:=St+FormatMaskText('CCCCCC;0;',              DM.TableTovar.FieldByName('AgentRedName').AsString);
         If CheckBoxEdIzmerVis.Checked   then St:=St+FormatMaskText('CCCCC;0;',               DM.TableTovar.FieldByName('EdIzmerName').AsString);
         If CheckBoxZakupkaSrVis.Checked then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaZakupkaSr').AsCurrency)])+' ';
         If CheckBoxZakupkaVis.Checked   then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency)])+' ';
         If CheckBoxRoznSrVis.Checked    then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaRoznSr').AsCurrency)])+' ';
         If CheckBoxRoznVis.Checked      then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaRozn').AsCurrency)])+' ';
         If CheckBoxMelkOptSrVis.Checked then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaMelkOptSr').AsCurrency)])+' ';
         If CheckBoxMelkOptVis.Checked   then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaMelkOpt').AsCurrency)])+' ';
         If CheckBoxOptSrVis.Checked     then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaOptSr').AsCurrency)]);
         If CheckBoxOptVis.Checked       then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaOpt').AsCurrency)]);
         If CheckBoxBrutoVis.Checked     then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('Bruto').AsCurrency)]);
         If CheckBoxNetoVis.Checked      then St:=St+Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('Neto').AsCurrency)]);
         If CheckBoxPakVis.Checked       then St:=St+FormatMaskText('999;0;',DM.TableTovar.FieldByName('Pak').AsString);
         If CheckBoxActivVis.Checked     then St:=St+FormatMaskText('CCCCC;0;',DM.TableTovar.FieldByName('Activ').AsString);
        end;
        WriteLn(Fil,St);

        If ((NStr+NSpace) mod StrToPage)=0 then begin
          Inc(NPage);
        end;
        Inc(NStr);
       end; {If}
       DM.TableTovar.Next;
      end; {While}
     finally
     end;


  If Not MainForm.PrintToFile.Checked  then
   If (Not Printer.Printing) and PrintDialog1.Execute then begin
{
      AssignPrn(FPrn);
      ReWrite(FPrn);
      WriteLn(FPrn,'Проба!');
      CloseFile(FPrn);
}
      Printer.BeginDoc;
      Printer.Title:='Справочник Товары.';
      with Printer.Canvas do begin
        Pen.Color:=  clBlack;
        Font.Name:= 'FixedSys';
        Font.Size:= 10;
      end;
      NStr:=1;
      NPage:=1;
      NSpace:=0;
    try
      DM.TableTovar.First;
      While Not  DM.TableTovar.Eof do begin
        PosVert:= TabVert+(NStr+NSpace-(NPage-1)*StrToPage)*Round(Interval*Printer.Canvas.TextHeight('H'));
        Printer.Canvas.TextOut(TabGoriz1*Printer.Canvas.TextWidth('W'),PosVert,IntToStr(NStr));
        Printer.Canvas.TextOut(TabGoriz2*Printer.Canvas.TextWidth('W'),PosVert,DM.TableTovar.FieldByName('TovarName').AsString);
        Printer.Canvas.TextOut(TabGoriz3*Printer.Canvas.TextWidth('W'),PosVert,FormatCurr('#,##0.00',DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency));

        If ((NStr+NSpace) mod StrToPage)=0 then begin
          Printer.NewPage; Inc(NPage);
        end;
        DM.TableTovar.Next;
        Inc(NStr);
      end;
    finally
//     Printer.EndDoc;
    end;
  end  {If (Not Printer.Printing) and PrintDialog1.Execute}
  else
    try
      {Inc(NSpace);}
      DM.TableTovar.First;
      While Not  DM.TableTovar.Eof do begin
        PosVert:= TabVert+(NStr+NSpace-(NPage-1)*StrToPage)*Round(Interval*Printer.Canvas.TextHeight('H'));
        Printer.Canvas.TextOut(TabGoriz1*Printer.Canvas.TextWidth('W'),PosVert,IntToStr(NStr));
        Printer.Canvas.TextOut(TabGoriz2*Printer.Canvas.TextWidth('W'),PosVert,DM.TableTovar.FieldByName('TovarName').AsString);
        Printer.Canvas.TextOut(TabGoriz3*Printer.Canvas.TextWidth('W'),PosVert,FormatCurr('#,##0.00',DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency));
//        FormatMaskText

        If ((NStr+NSpace) mod StrToPage)=0 then begin
          Printer.NewPage; Inc(NPage);
        end;
        DM.TableTovar.Next;
        Inc(NStr);
      end;
    finally
//    Printer.EndDoc;
    end;
  If MainForm.PrintToFile.Checked then begin
    If  PrintingToFile then CloseFile(Fil);
    PrintingToFile := False;
  end
  else If Printer.Printing then Printer.EndDoc;
end;

procedure TTovarForm.SpinEditPercentZakupkaChange(Sender: TObject);
begin
  If TSpinEdit(Sender).Value>0 then TSpinEdit(Sender).Font.Color:= clRed
  else If TSpinEdit(Sender).Value=0 then TSpinEdit(Sender).Font.Color:= clBlack
       else If TSpinEdit(Sender).Value<0 then TSpinEdit(Sender).Font.Color:= clGreen;
end;

procedure TTovarForm.CheckBoxColumnClick(Sender: TObject);
var Ind : Integer;
begin
 If DBGrid1.Columns.Count>0 then
  For Ind:=0 to DBGrid1.Columns.Count-1 do begin
   If DBGrid1.Columns[Ind].FieldName='Cod'           then DBGrid1.Columns[Ind].Visible:=CheckBoxCodVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Fasovka'       then DBGrid1.Columns[Ind].Visible:=CheckBoxFasovkaVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='ProizvName'    then DBGrid1.Columns[Ind].Visible:=CheckBoxProizvVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='GrupName'      then DBGrid1.Columns[Ind].Visible:=CheckBoxGrupVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='AgentName'     then DBGrid1.Columns[Ind].Visible:=CheckBoxAgentVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='AgentRedName'  then DBGrid1.Columns[Ind].Visible:=CheckBoxAgentRedVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='EdIzmerName'   then DBGrid1.Columns[Ind].Visible:=CheckBoxEdIzmerVis.Checked;

   If DBGrid1.Columns[Ind].FieldName='ZenaZakupka'   then DBGrid1.Columns[Ind].Visible:=CheckBoxZakupkaVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='ZenaRozn'      then DBGrid1.Columns[Ind].Visible:=CheckBoxRoznVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='ZenaMelkOpt'   then DBGrid1.Columns[Ind].Visible:=CheckBoxMelkOptVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='ZenaOpt'       then DBGrid1.Columns[Ind].Visible:=CheckBoxOptVis.Checked;

   If DBGrid1.Columns[Ind].FieldName='PerCentRozn'   then DBGrid1.Columns[Ind].Visible:=CheckBoxPerCentRoznVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='PerCentMelkOpt'then DBGrid1.Columns[Ind].Visible:=CheckBoxPerCentMelkOptVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='PerCentOpt'    then DBGrid1.Columns[Ind].Visible:=CheckBoxPerCentOptVis.Checked;

   If DBGrid1.Columns[Ind].FieldName='RecomPr'       then DBGrid1.Columns[Ind].Visible:=CheckBoxRecomPrVis.Checked;

   If RadioButtonTovar.Checked then begin
     If DBGrid1.Columns[Ind].FieldName='ZenaZakupkaSr' then DBGrid1.Columns[Ind].Visible:= CheckBoxZakupkaSrVis.Checked;
     If DBGrid1.Columns[Ind].FieldName='ZenaRoznSr'    then DBGrid1.Columns[Ind].Visible:= CheckBoxRoznSrVis.Checked;
     If DBGrid1.Columns[Ind].FieldName='ZenaMelkOptSr' then DBGrid1.Columns[Ind].Visible:= CheckBoxMelkOptSrVis.Checked;
     If DBGrid1.Columns[Ind].FieldName='ZenaOptSr'     then DBGrid1.Columns[Ind].Visible:= CheckBoxOptSrVis.Checked;
     If DBGrid1.Columns[Ind].FieldName='Price'         then DBGrid1.Columns[Ind].Visible:= False;
     If DBGrid1.Columns[Ind].FieldName='EditDate'          then DBGrid1.Columns[Ind].Visible:= CheckBoxDateVis.Checked;
   end
   else begin
     If DBGrid1.Columns[Ind].FieldName='ZenaZakupkaSr' then DBGrid1.Columns[Ind].Visible:= False;
     If DBGrid1.Columns[Ind].FieldName='ZenaRoznSr'    then DBGrid1.Columns[Ind].Visible:= False;
     If DBGrid1.Columns[Ind].FieldName='ZenaMelkOptSr' then DBGrid1.Columns[Ind].Visible:= False;
     If DBGrid1.Columns[Ind].FieldName='ZenaOptSr'     then DBGrid1.Columns[Ind].Visible:= False;
     If DBGrid1.Columns[Ind].FieldName='Price'         then DBGrid1.Columns[Ind].Visible:= CheckBoxPriceVis.Checked;
     If DBGrid1.Columns[Ind].FieldName='EditDate'          then DBGrid1.Columns[Ind].Visible:= CheckBoxDateVis.Checked;
   end;

   If DBGrid1.Columns[Ind].FieldName='Bruto'         then DBGrid1.Columns[Ind].Visible:=CheckBoxBrutoVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Neto'          then DBGrid1.Columns[Ind].Visible:=CheckBoxNetoVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Activ'         then DBGrid1.Columns[Ind].Visible:=CheckBoxActivVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='ActivZakaz'    then DBGrid1.Columns[Ind].Visible:=CheckBoxActivZakazVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Pak'           then DBGrid1.Columns[Ind].Visible:=CheckBoxPakVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='ActivForUnit0' then DBGrid1.Columns[Ind].Visible:=CheckBoxActivForUnit0.Checked;
   If DBGrid1.Columns[Ind].FieldName='ActivForUnit1' then DBGrid1.Columns[Ind].Visible:=CheckBoxActivForUnit1.Checked;
   If DBGrid1.Columns[Ind].FieldName='ActivForUnit2' then DBGrid1.Columns[Ind].Visible:=CheckBoxActivForUnit2.Checked;
  end;
end;

procedure TTovarForm.Button2Click(Sender: TObject);
var buf : String;
    PointPos : Integer;
begin
  DM.TableTovar.First;
  while not DM.TableTovar.Eof do
  begin
{
    Buf := DM.TableTovar.FieldByName('Fasovka').AsString;
    PointPos := Pos('.',Buf);
    If PointPos > 0 then begin
      If PointPos < Length(Buf) then Buf[PointPos]:=','
      else Delete(Buf,PointPos,1);

        DM.TableTovar.Edit;
        DM.TableTovar.FieldByName('Fasovka').AsString :=Buf;
        DM.TableTovar.Post;
    end;
}
{
    If  VarType(DM.TableTovar.FieldByName('ProizvCod').AsVariant)=VarNull then begin
        DM.TableTovar.Edit;
        DM.TableTovar.FieldByName('ProizvCod').AsInteger :=1;
        DM.TableTovar.Post;
    end;    }

   { If  (DM.TableTovar.FieldByName('ZenaZakupka').AsFloat=0) and
        (DM.TableTovar.FieldByName('TovarName').AsString<>'') then
     begin
        DM.TableTovar.Edit;
        DM.TableTovar.FieldByName('ZenaZakupka').AsVariant:=Null;
        DM.TableTovar.Post;
//        DM.TableTovar.Last;
    end;    }
    If  (DM.TableTovar.FieldByName('ActivForUnit0').AsBoolean=True)  then
    begin
        DM.TableTovar.Edit;
        DM.TableTovar.FieldByName('ActivForUnit0').AsBoolean:=False;
        DM.TableTovar.Post;
    end;

    DM.TableTovar.Next;
  end;
end;
  
procedure TTovarForm.Showing(Sender: TObject);
begin
  Show;
end;

procedure TTovarForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var St:String;
begin
 If Key=vk_Return then DBGrid1.OnCellClick(DBGrid1.Columns[DBGrid1.SelectedIndex]);
 If (Key=vk_Back) and (Not( dgEditing in DBGrid1.Options))  then
     If Length(EditLocate.Text)>0 then begin
       St:=EditLocate.Text;
       Delete(St,Length(EditLocate.Text),1);
       EditLocate.Text:=St;
     end;
end;

procedure TTovarForm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
 If Not( dgEditing in DBGrid1.Options) then
   if ((Key in ['A'..'z']) or
       (Key in ['А'..'я']) or
       (Key in ['0'..'9']))
     then
       If (EditLocate.Text='') and CheckBoxUpper.Checked then EditLocate.Text:=AnsiUpperCase(Key)
       else EditLocate.Text:=EditLocate.Text+Key;
end;

procedure TTovarForm.DBGrid1DblClick(Sender: TObject);
begin
  If (DBGrid1.SelectedField.FieldName='Activ') or
     (DBGrid1.SelectedField.FieldName='ActivZakaz') or
     (DBGrid1.SelectedField.FieldName='ActivForUnit0') or
     (DBGrid1.SelectedField.FieldName='ActivForUnit1') or
     (DBGrid1.SelectedField.FieldName='ActivForUnit2') 
   then
    begin
      DBGrid1.DataSource.DataSet.Edit;
      DBGrid1.SelectedField.AsBoolean:= Not DBGrid1.SelectedField.AsBoolean;
      DBGrid1.DataSource.DataSet.Post;
    end;
end;

procedure TTovarForm.ShowFormClick(Sender: TObject);
var Ind : Integer;
begin

  If RadioButtonPrice.Checked  then
  begin
    DBNavigator1.DataSource.DataSet:=DM.TablePrice;
    DbGrid1.DataSource.DataSet:=DM.TablePrice;
  end;
  If RadioButtonTovar.Checked  then
  begin
    DBNavigator1.DataSource.DataSet:=DM.TableTovar;
    DbGrid1.DataSource.DataSet:=DM.TableTovar;
//    For Ind:=0 to DBGrid1.Columns.Count-1 do
//     If DBGrid1.Columns[Ind].FieldName='Cod'  then DbGrid1.Columns[Ind].FieldName:='Cod';
  end;
  CheckBoxZakupkaSrVis.Enabled  :=Not RadioButtonPrice.Checked;
  CheckBoxRoznSrVis.Enabled     :=Not RadioButtonPrice.Checked;
  CheckBoxMelkOptSrVis.Enabled  :=Not RadioButtonPrice.Checked;
  CheckBoxOptSrVis.Enabled      :=Not RadioButtonPrice.Checked;

  CheckBoxPriceVis.Enabled      :=    RadioButtonPrice.Checked;
//  CheckBoxDateVis.Enabled       :=    RadioButtonPrice.Checked;

  CheckBoxColumnClick(Sender);
  FilterChange(Sender);
end;

procedure TTovarForm.Button4Click(Sender: TObject);
var    SaveCursor : TCursor;
       LookupResults : Variant;
       UnitN:Integer;
       Uniter : Boolean;

begin

  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }

  Uniter  :=False;
  If CheckBoxUnit.Checked then begin
    LookUpResults :=DM.TableUnit.LookUp('UnitName',ComboBoxUnit.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        Uniter  := ComboBoxUnit.ItemIndex<>3; // не для офиса
        UnitN   := ComboBoxUnit.ItemIndex;
        If ComboBoxUnit.Text='Южный №57'    then UnitN   :=0;  // для 57     используется  ячейка 0 Москвы
        If ComboBoxUnit.Text='Южный №85'    then UnitN   :=1;  // для 85     используется  ячейка 1
        If ComboBoxUnit.Text='Южный №86-88' then UnitN   :=2;  // для Эскаро используется  ячейка 2 №21
      end;
  end;

  If Uniter then begin
    DM.TableTovar.Filtered:=False;
    DM.TableTovar.First;

    while Not DM.TableTovar.Eof do
    begin
      If DM.TableTovar.FieldByName('ActivForUnit'+IntToStr(UnitN)).AsBoolean then
      begin
        DM.TableTovar.Edit;
        DM.TableTovar.FieldByName('ActivForUnit'+IntToStr(UnitN)).AsBoolean:= False;
        DM.TableTovar.Post;
      end;
      DM.TableTovar.Next;
    end;
    DM.TableTovar.Filtered:= True;
  end;

  Screen.Cursor := SaveCursor;  { Always restore to normal }
end;

procedure TTovarForm.ButtonMySqlClick(Sender: TObject);
var  SaveCursor    : TCursor;
     FileNameMySql, DateNow : String;
     I : Integer;
     Year, Month, Day : Word;
begin
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }
    DecodeDate(Now, Year, Month, Day);
    DateNow:=IntToStr(Year)+'-'+ FormatFloat('00,,',Month)+'-'+ FormatFloat('00,,',Day);
    QueryMySql.Close;

    If TovarForm.SqlFilter <>'' then QueryMySql.Sql[5]:='and ' + TovarForm.SqlFilter;
    QueryMySql.Open;
    FileNameMySql:= ExtractFilePath(Application.EXEName)+ 'Tovar.sql';
    AssignFile(Fil,FileNameMySql);
    ReWrite(Fil);
    WriteLn(Fil,'-- Дамп данных таблицы `assort`');
    QueryMySql.First;
    I:=SpinEditIndex.Value;
    repeat
      WriteLn(Fil,'INSERT INTO `assort` VALUES (NULL, '+IntToStr(I)+', ''2'', '+    // П86
      ''''+QueryMySql.FieldByName('TovarName').AsString+''', '+
      ''''+QueryMySql.FieldByName('Fasovka').AsString+''', '+
      ''''+QueryMySql.FieldByName('ProizvName').AsString+''', '+
      ''''+QueryMySql.FieldByName('GrupName').AsString+''', '+
      ''''+QueryMySql.FieldByName('EdIzmerName').AsString+''', '+
      StringReplace(                                                       // без этого запятая вместо точки как разделитель дробной части
      FormatFloat('#####0.00',QueryMySql.FieldByName('ZenaRozn').AsFloat)  // если  '#####0.00,,' то вставляются пробелы меж тысячью
      , ',','.',[])
      +', '+
      '0.00, 0.00, ''1'', '''+
      DateNow+
      ''');');
      Inc(I);
      QueryMySql.Next;
    until QueryMySql.Eof ;   //or (I=100)
    CloseFile(Fil);
  finally
    QueryMySql.Close;
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;

end;

procedure TTovarForm.ButtonActivRoznClick(Sender: TObject);
var    SaveCursor : TCursor;

begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }

    DM.TableTovar.Filtered:=False;
    DM.TableTovar.First;

    while Not DM.TableTovar.Eof do
    begin
      If DM.TableTovar.FieldByName('Activ').AsBoolean then
      begin
        DM.TableTovar.Edit;
        DM.TableTovar.FieldByName('Activ').AsBoolean:= False;
        DM.TableTovar.Post;
      end;
      DM.TableTovar.Next;
    end;
    DM.TableTovar.Filtered:= True;

  Screen.Cursor := SaveCursor;  { Always restore to normal }
end;

procedure TTovarForm.ScWindowScale;
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

procedure TTovarForm.ButtonKursRubClick(Sender: TObject);
var    SaveCursor : TCursor;

begin

  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }


    DM.TableTovar.First;

    while Not DM.TableTovar.Eof do
    begin
        DM.TableTovar.Edit;
        DM.TableTovarZenaRoznSr.Value:=
        round ( DM.TableTovarZenaRozn.Value *StrToCurr(MaskEditKursRub.EditText) /10 )*10;
        DM.TableTovar.Post;

         DM.TableTovar.Next;
    end;

  Screen.Cursor := SaveCursor;  { Always restore to normal }

end;

procedure TTovarForm.ButtonBaseRubClick(Sender: TObject);
var    SaveCursor : TCursor;
       LookupResults : Variant;
       UnitN:Integer;
       Uniter : Boolean;

begin

  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }


    DM.TableTovar.First;
    DM.TableTovar.Filtered:= False;
    while Not DM.TableTovar.Eof do
    begin
        DM.TableTovar.Edit;
        // цена розничная округленно до 10 руб
        DM.TableTovarZenaRozn.Value:=
         round ( DM.TableTovarZenaRozn.Value *StrToCurr(MaskEditKursRub1.EditText) /10 )*10;

        // цена закупки ZenaZakupka
        DM.TableTovarZenaZakupka.Value:=
         DM.TableTovarZenaZakupka.Value*StrToCurr(MaskEditKursRub1.EditText);

        DM.TableTovar.Post;
        DM.TableTovar.Next;
    end;
    DM.TableTovar.Filtered:=True;

    DM.TableNakl.First;
    DM.TableNakl.Filtered:= False;
    while Not DM.TableNakl.Eof do
    begin
        DM.TableNakl.Edit;
        // сумма накладной
        DM.TableNaklSum.Value:=
          DM.TableNaklSum.Value*StrToCurr(MaskEditKursRub1.EditText);

        DM.TableNakl.Post;
        DM.TableNakl.Next;
    end;
    DM.TableNakl.Filtered:=True;

    DM.TableRecNakl.First;
    DM.TableRecNakl.Filtered:= False;
    while Not DM.TableRecNakl.Eof do
    begin
        DM.TableRecNakl.Edit;
        // цена позиций в накладной
        DM.TableRecNaklZena.Value:=
          DM.TableRecNaklZena.Value*StrToCurr(MaskEditKursRub1.EditText);
        // цена вспомогательная позиций в накладной
        DM.TableRecNaklZena0.Value:=
          DM.TableRecNaklZena0.Value*StrToCurr(MaskEditKursRub1.EditText);

        DM.TableRecNakl.Post;
        DM.TableRecNakl.Next;
    end;
    DM.TableRecNakl.Filtered:=True;

  Screen.Cursor := SaveCursor;  { Always restore to normal }

end;

function TTovarForm.CheckExcelInstall:boolean;
var
  ClassID: TCLSID;
  Rez : HRESULT;
begin
// ищем CLSID OLE-объекта
  Rez := CLSIDFromProgID(PWideChar(WideString('Excel.Application')), ClassID);
  if Rez = S_OK then  // объект найден
    Result := true
  else
    Result := false;
end;

procedure TTovarForm.ButtonExcelSaveClick(Sender: TObject);
  var Excel: OleVariant;
      FileName, St: String;
      NStr, col : Integer;
begin
  If CheckExcelInstall then begin
//    FileName:=ExtractFilePath(Application.EXEName)+ ChangeFileExt(PrintTovarFileName,'.xls');
    If ExcelPath='' then FileName:=ExtractFilePath(Application.EXEName)+ 'Tovar'  //  +'.xls
    else If ExcelPath[1]='\' then FileName:=ExtractFilePath(Application.EXEName)+ExcelPath+ 'Tovar'
         else FileName:= ExcelPath+ 'Tovar';

    Excel := CreateOleObject('Excel.Application');
    // Excel.Application.EnableEvents:=DisableAlerts;
    // Excel.Visible:=Visible;

    Excel.Visible := False;
    Excel.WorkBooks.Add;
    Excel.ActiveWorkBook.Sheets.Item[1].Activate;  // активация 1-го листа

      NStr:=1;
      DM.TableTovar.First;

     try

      While Not  DM.TableTovar.Eof do begin
         // St:=FormatMaskText('99999;0;0',IntToStr(NStr));
         col:=1;

         //Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=NStr;
         //Inc(col);

         St:=FormatMaskText('CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC;0;',DM.TableTovar.FieldByName('TovarName').AsString);
         Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
         Inc(col);

         If CheckBoxFasovkaVis.Checked   then begin
           St:=FormatMaskText('cccccccccc;0;',DM.TableTovar.FieldByName('Fasovka').AsString);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxProizvVis.Checked    then begin
           St:=FormatMaskText('CCCCCCCCCCCCCCCCC;0;',DM.TableTovar.FieldByName('ProizvName').AsString);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxGrupVis.Checked      then begin
           St:=FormatMaskText('CCCCCCCCCCCCCCCCCCCC;0;',DM.TableTovar.FieldByName('GrupName').AsString);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxAgentVis.Checked     then begin
           St:=FormatMaskText('CCCCCCCCCCCCC;0;',DM.TableTovar.FieldByName('AgentName').AsString);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxAgentRedVis.Checked  then begin
           St:=FormatMaskText('CCCCCC;0;',DM.TableTovar.FieldByName('AgentRedName').AsString);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxEdIzmerVis.Checked   then begin
           St:=FormatMaskText('CCCCC;0;',DM.TableTovar.FieldByName('EdIzmerName').AsString);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxZakupkaSrVis.Checked then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaZakupkaSr').AsCurrency)])+' ';
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxZakupkaVis.Checked   then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency)])+' ';
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxRoznSrVis.Checked    then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaRoznSr').AsCurrency)])+' ';
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxRoznVis.Checked      then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaRozn').AsCurrency)])+' ';
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxPerCentRoznVis.Checked      then begin
           St:=Format('%7s',[FormatCurr('0.0;;',DM.TableTovarPerCentRozn.AsCurrency)])+' ';
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;

         If CheckBoxMelkOptSrVis.Checked then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaMelkOptSr').AsCurrency)])+' ';
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxMelkOptVis.Checked   then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaMelkOpt').AsCurrency)])+' ';
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxOptSrVis.Checked     then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaOptSr').AsCurrency)]);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxOptVis.Checked       then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('ZenaOpt').AsCurrency)]);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxBrutoVis.Checked     then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('Bruto').AsCurrency)]);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxNetoVis.Checked      then begin
           St:=Format('%7s',[FormatCurr('0.00;;',DM.TableTovar.FieldByName('Neto').AsCurrency)]);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxPakVis.Checked       then begin
           St:=FormatMaskText('999;0;',DM.TableTovar.FieldByName('Pak').AsString);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
         If CheckBoxActivVis.Checked     then begin
           St:=FormatMaskText('CCCCC;0;',DM.TableTovar.FieldByName('Activ').AsString);
           Excel.ActiveWorkBook.ActiveSheet.Cells[NStr, col]:=St;
           Inc(col);
         end;
        Inc(NStr);
       DM.TableTovar.Next;
      end; {While}

     finally
     end;

    Excel.ActiveWorkBook.SaveAs(FileName);
    Excel.Quit;
    Excel:=Unassigned;
  end
  else   MessageDlg('Приложение MS Excel не установлено на этом компьютере! ',
      mtWarning, [mbYes], 0);

end;

procedure TTovarForm.ButtonTovarMaxDateClick(Sender: TObject);
var  SaveCursor    : TCursor;
begin
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }
//    DecodeDate(Now, Year, Month, Day);
 //   DateNow:=IntToStr(Year)+'-'+ FormatFloat('00,,',Month)+'-'+ FormatFloat('00,,',Day);
    QueryTovarMaxDate.Close;
    QueryTovarMaxDate.Open;

    QueryTovarMaxDate.First;
    repeat
          If DM.TableTovar.Locate('Cod',QueryTovarMaxDate.FieldByName('Cod').AsInteger,[]) then
//          If QueryTovarMaxDate.FieldByName('Cod').AsInteger=4039 then
          begin
            DM.TableTovar.Edit;
            DM.TableTovar.FieldByName('EditDate').AsDateTime:=QueryTovarMaxDate.FieldByName('MaxDate').AsDateTime;
            DM.TableTovar.Post;
          end
          else;

      QueryTovarMaxDate.Next;
    until QueryTovarMaxDate.Eof ;   //or (I=100)

  finally
    QueryTovarMaxDate.Close;
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;

end;

end.
