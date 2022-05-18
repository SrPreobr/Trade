{$A8,B-,C-,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q+,R+,S-,T-,U-,V+,W+,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE ON}
{$WARN UNSAFE_CODE ON}
{$WARN UNSAFE_CAST ON}

unit BalansUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls,
  Menus, Grids, DBGrids, ComCtrls, Mask, DB, DBTables, Buttons;

type
  TBalansForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    Label1: TLabel;
    ComboBoxAgent: TComboBox;
    ComboBoxUnit: TComboBox;
    Panel3: TPanel;
    GroupBox2: TGroupBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBGridNakl1: TDBGrid;
    Splitter1: TSplitter;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    EditDocN1: TEdit;
    EditDocN2: TEdit;
    EditDocDate1: TEdit;
    Label11: TLabel;
    EditDocTime1: TEdit;
    Label12: TLabel;
    EditDocDate2: TEdit;
    EditDocTime2: TEdit;
    Panel1: TPanel;
    DBGridPrihodNakl: TDBGrid;
    SaveDialog1: TSaveDialog;
    TabSheet3: TTabSheet;
    Panel6: TPanel;
    DBGridPrihodTovar: TDBGrid;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Panel7: TPanel;
    Button2: TButton;
    Panel8: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    Panel9: TPanel;
    Splitter4: TSplitter;
    ComboBoxNaklKind1: TComboBox;
    ButtonPrihodNakl: TButton;
    Panel10: TPanel;
    Splitter5: TSplitter;
    TabSheet6: TTabSheet;
    Panel11: TPanel;
    ComboBoxNaklKind3: TComboBox;
    ButtonPrihodTovarGroup: TButton;
    Splitter6: TSplitter;
    DBGridPrihodTovarGroup: TDBGrid;
    TabSheet7: TTabSheet;
    Panel12: TPanel;
    ButtonProdazha: TButton;
    Splitter7: TSplitter;
    DBGridProdazha: TDBGrid;
    Panel13: TPanel;
    ButtonSavePrihodNakl: TButton;
    DBNavigator1: TDBNavigator;
    Panel14: TPanel;
    ButtonSavePrihodTovar: TButton;
    DBNavigator2: TDBNavigator;
    Panel15: TPanel;
    ButtonSavePrihodTovarGroup: TButton;
    DBNavigator3: TDBNavigator;
    Panel16: TPanel;
    ButtonSaveProdazha: TButton;
    DBNavigatorProdazha: TDBNavigator;
    Panel17: TPanel;
    Panel18: TPanel;
    Splitter8: TSplitter;
    DBGridZakupka: TDBGrid;
    SpeedButtonNow: TSpeedButton;
    ComboBoxNaklKind4: TComboBox;
    ButtonCashToNakl: TButton;
    TabSheet8: TTabSheet;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    DBGridCashTo: TDBGrid;
    Splitter9: TSplitter;
    DBGridCashToTovar: TDBGrid;
    Splitter10: TSplitter;
    Panel23: TPanel;
    DBGridCashToTovarGroup: TDBGrid;
    StaticText2: TStaticText;
    Label22: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    GroupBox3: TGroupBox;
    RadioButtonSortName: TRadioButton;
    RadioButtonSortPrib: TRadioButton;
    Panel24: TPanel;
    CheckBoxFilter: TCheckBox;
    ButtonSaveCashNakl: TButton;
    Panel25: TPanel;
    Splitter11: TSplitter;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Label17: TLabel;
    Label18: TLabel;
    DBGridRas: TDBGrid;
    DBGridRasOf: TDBGrid;
    Button3: TButton;
    RadioGroup1: TRadioGroup;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioGroup3: TRadioGroup;
    Panel29: TPanel;
    CheckBoxAgentFrom: TCheckBox;
    ComboBoxAgentFrom: TComboBox;
    ButtonZakupka: TButton;
    Panel30: TPanel;
    StaticText4: TStaticText;
    EditLocate: TEdit;
    CheckBoxUpper: TCheckBox;
    Splitter12: TSplitter;
    Panel31: TPanel;
    ButtonPrihodTovar: TButton;
    Label23: TLabel;
    ComboBoxNaklKind2: TComboBox;
    RadioGroup2: TRadioGroup;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    Label26: TLabel;
    Splitter13: TSplitter;
    Panel32: TPanel;
    StaticText1: TStaticText;
    EditPrihodTovarLocate: TEdit;
    CheckBoxPrihodTovarUpper: TCheckBox;
    DBGridNakl2: TDBGrid;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label4: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    MaskEditOstatok2: TMaskEdit;
    MaskEditOstatok1: TMaskEdit;
    MaskEditPrihod: TMaskEdit;
    ButtonBalans: TButton;
    MaskEditBalans: TMaskEdit;
    MaskEditPereOzenka: TMaskEdit;
    MaskEditCashTo: TMaskEdit;
    MaskEditPerem: TMaskEdit;
    MaskEditOstatokZakupka2: TMaskEdit;
    MaskEditOstatokZakupka1: TMaskEdit;
    MaskEditPrihodZakupka: TMaskEdit;
    MaskEditPeremZakupka: TMaskEdit;
    MaskEditPrihodPerCent: TMaskEdit;
    MaskEditOstatokPerCent1: TMaskEdit;
    MaskEditOstatokPerCent2: TMaskEdit;
    MaskEditPeremPerCent: TMaskEdit;
    MaskEditPereOzenkaPerCent: TMaskEdit;
    MaskEditDohodPerCent: TMaskEdit;
    MaskEditDohod: TMaskEdit;
    MaskEditPlus: TMaskEdit;
    MaskEditMinus: TMaskEdit;
    Button1: TButton;
    EditLike: TEdit;
    CheckBoxLike: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure Showing(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBoxUnitDropDown(Sender: TObject);
    procedure ComboBoxAgentClick(Sender: TObject);
    procedure ComboBoxUnitClick(Sender: TObject);
    procedure SetFilter;

    procedure SetOstatok1;
    procedure RadioButtonClick(Sender: TObject);
    procedure DBGridNakl1CellClick(Column: TColumn);
    procedure DBGridNakl2CellClick(Column: TColumn);
    procedure ButtonBalansClick(Sender: TObject);
    procedure ButtonSavePrihodNaklClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ButtonPrihodNaklClick(Sender: TObject);
    procedure ButtonPrihodTovarClick(Sender: TObject);
    procedure ButtonPrihodTovarGroupClick(Sender: TObject);
    procedure ButtonProdazhaClick(Sender: TObject);
    procedure ButtonZakupkaClick(Sender: TObject);
    procedure ComboBoxAgentFromClick(Sender: TObject);
    procedure SpeedButtonNowClick(Sender: TObject);
    procedure ButtonCashToNaklClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure RadioButtonSortClick(Sender: TObject);
    procedure ButtonSaveCashNaklClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure EditLocateChange(Sender: TObject);
    procedure DBGridZakupkaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridZakupkaKeyPress(Sender: TObject; var Key: Char);
    procedure EditPrihodTovarLocateChange(Sender: TObject);
    procedure DBGridPrihodTovarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGridPrihodTovarKeyPress(Sender: TObject; var Key: Char);
    procedure ScWindowScale;
    procedure LikeEditChange(Sender: TObject);
    procedure LikeCheckChange(Sender: TObject);
  private
    { Private declarations }
    AgentCod, UnitCod, AgentCodFrom : Integer;
    Ostatok1, OstatokZakupka1,
    Ostatok2,  OstatokZakupka2,
    Perem, PeremZakupka,
    Prihod, PrihodZakupka, PrihodPerCent,
    Balans, BalansZakupka, DohodPerCent, Dohod,
    PereoZenka, CashTo  : Currency;
    AgentFilter,   UnitFilter,   NaklFilter : String;
    AgentFiltered, UnitFiltered, NaklFiltered : Boolean;
    Firster : Boolean;
  public
    { Public declarations }
  end;

var
  BalansForm: TBalansForm;

implementation

uses MainUnit, InstallUnit, DMUnit;

{$R *.dfm}

procedure TBalansForm.FormCreate(Sender: TObject);
var    MenuIt :  TMenuItem;
       LookUpResults : Variant;
       I : Integer;
       IKind : TNaklKind;
begin
   MenuIt:=TMenuItem.Create(MainForm.WindowMenu);
   MenuIt.Caption := 'Переучет';
   MenuIt.Visible := True;
   MenuIt.OnClick := Showing;

   InstallForm.BalansActiv:=True;
   MainForm.WindowMenu.Add(MenuIt);
   SpeedButtonNow.Click;
(*
// начало блока первоначальной установки
  Firster :=True;
  AgentCod := AgentSelf;
  UnitCod  := 0;

  ComboBoxAgent.Clear;
  DM.TableAgent.Filter:='Activ=True';
  DM.TableAgent.Filtered:= True;
  DM.TableAgent.First;
  I:=0;
  repeat
    ComboBoxAgent.Items.Add(DM.TableAgent.FieldByName('AgentName').AsString);
    If DM.TableAgent.FieldByName('Cod').AsInteger=AgentCod then
      ComboBoxAgent.ItemIndex:=I;
    DM.TableAgent.Next;
    Inc(I);
  until DM.TableAgent.Eof;

  DM.TableAgent.Filter:='(([AgentKind] = 2) OR ([AgentKind] = 0)) and ([Activ]=True)';  //Postav or Univer
  DM.TableAgent.Filtered:=True;
  DM.TableAgent.First;
  repeat
    ComboBoxAgentFrom.Items.Add(DM.TableAgent.FieldByName('AgentName').AsString);
    DM.TableAgent.Next;
  until DM.TableAgent.Eof;
  AgentCodFrom :=0;
  ComboBoxAgentFrom.Text:='';
  DM.TableAgent.Filter:='';
  DM.TableAgent.Filtered:=False;

  ComboBoxUnitDropDown(Sender);
  If ComboBoxUnit.Items.Count>0 then
  begin
    ComboBoxUnit.ItemIndex:=1;
    ComboBoxUnitClick(Sender);
  end;


   DM.TableNakl.Filtered:= True;
   SetFilter;
   RadioButton1.Checked:=True;

  AgentFilter  := DM.TableAgent.Filter;     // записываем параметры фильтрации
  AgentFiltered:= DM.TableAgent.Filtered;

  UnitFilter  := DM.TableUnit.Filter;
  UnitFiltered:= DM.TableUnit.Filtered;

  NaklFilter  := DM.TableNakl.Filter;
  NaklFiltered:= DM.TableNakl.Filtered;

  For IKind:=Succ(Low(TNaklKind)) to High(TNaklKind)  do
  begin
    ComboBoxNaklKind1.Items.Add(NaklName[IKind]);
    ComboBoxNaklKind2.Items.Add(NaklName[IKind]);
    ComboBoxNaklKind3.Items.Add(NaklName[IKind]);
    ComboBoxNaklKind4.Items.Add(NaklName[IKind]);
  end;
  ComboBoxNaklKind1.ItemIndex:=2;
  ComboBoxNaklKind2.ItemIndex:=2;
  ComboBoxNaklKind3.ItemIndex:=2;
  ComboBoxNaklKind4.ItemIndex:=6;
// конец блока первоначальной установки
*)
  ScWindowScale;
end;

procedure TBalansForm.SetFilter;
begin
   DM.TableNakl.Filter  := '([Kind] = 4)';
   If AgentCod<>0 then DM.TableNakl.Filter  :=DM.TableNakl.Filter+
      ' and ([AgentCodFrom] = '''+IntToStr(AgentCod)+''')';
   If UnitCod<>0 then DM.TableNakl.Filter  :=DM.TableNakl.Filter+
      ' and ([UnitCodFrom] = '''+IntToStr(UnitCod)+''')';
end;

procedure TBalansForm.FormClose(Sender: TObject; var Action: TCloseAction);
var    MenuIt :  TMenuItem;
begin
  MenuIt:=MainForm.WindowMenu.Find('Переучет');
  MainForm.WindowMenu.Delete(MainForm.WindowMenu.IndexOf(MenuIt));
  InstallForm.BalansActiv:=False;
  Action:= caFree;

  DM.QueryPrihod.Close;
  DM.QueryPereOzenka.Close;
  DM.QueryParentSon.Close;
  DM.QueryZakupka.Close;
  DM.QueryPrihodNakl.Close;
  DM.QueryCashTo.Close;
  DM.QueryCashToTovar.Close;
  DM.QueryPrihodTovar.Close;
  DM.QueryCashToTovarGroup.Close;
  DM.QueryPrihodTovarGroup.Close;
  DM.QueryRas.Close;
  DM.QueryProdazha.Close;
  DM.QueryProdazha0.Close;
  DM.QueryRasOf.Close;
  DM.QueryPerem.Close;
end;

procedure TBalansForm.FormDeactivate(Sender: TObject);
begin
//возвращаем параметры фильтрации
  DM.TableAgent.Filter  := AgentFilter;
  DM.TableAgent.Filtered:= AgentFiltered;

  DM.TableUnit.Filter  := UnitFilter;
  DM.TableUnit.Filtered:= UnitFiltered;

  DM.TableNakl.Filter  := NaklFilter;
  DM.TableNakl.Filtered:= NaklFiltered;
  DM.TableNakl.Last;
(*
  DM.TableAgent.Filter  :='' ;     //   обнуляем фильтры   AgentFilter
  DM.TableAgent.Filtered:=False;   //   AgentFiltered

  DM.TableUnit.Filter   :='' ;     //  UnitFilter
  DM.TableUnit.Filtered :=False;  //  UnitFiltered

  DM.TableNakl.Filter   :='';     //  NaklFilter
  DM.TableNakl.Filtered :=False;  //  NaklFiltered
*)
end;

procedure TBalansForm.Showing(Sender: TObject);
begin
  Show;
end;

procedure TBalansForm.FormActivate(Sender: TObject);
var    MenuIt :  TMenuItem;
       LookUpResults : Variant;
       I : Integer;
       IKind : TNaklKind;
begin
  AgentFilter  := DM.TableAgent.Filter;     // записываем параметры фильтрации
  AgentFiltered:= DM.TableAgent.Filtered;

  UnitFilter  := DM.TableUnit.Filter;
  UnitFiltered:= DM.TableUnit.Filtered;

  NaklFilter  := DM.TableNakl.Filter;
  NaklFiltered:= DM.TableNakl.Filtered;


// начало блока первоначальной установки
  Firster :=True;
  AgentCod := AgentSelf;
  UnitCod  := 0;

  ComboBoxAgent.Clear;
  DM.TableAgent.Filter:='Activ=True';
  DM.TableAgent.Filtered:= True;
  DM.TableAgent.First;
  I:=0;
  repeat
    ComboBoxAgent.Items.Add(DM.TableAgent.FieldByName('AgentName').AsString);
    If DM.TableAgent.FieldByName('Cod').AsInteger=AgentCod then
      ComboBoxAgent.ItemIndex:=I;
    DM.TableAgent.Next;
    Inc(I);
  until DM.TableAgent.Eof;

  DM.TableAgent.Filter:='(([AgentKind] = 2) OR ([AgentKind] = 0)) and ([Activ]=True)';  //Postav or Univer
  DM.TableAgent.Filtered:=True;
  DM.TableAgent.First;
  repeat
    ComboBoxAgentFrom.Items.Add(DM.TableAgent.FieldByName('AgentName').AsString);
    DM.TableAgent.Next;
  until DM.TableAgent.Eof;
  AgentCodFrom :=0;
  ComboBoxAgentFrom.Text:='';
  DM.TableAgent.Filter:='';
  DM.TableAgent.Filtered:=False;

  ComboBoxUnitDropDown(Sender);
  If ComboBoxUnit.Items.Count>0 then
  begin
    ComboBoxUnit.ItemIndex:=1;
    ComboBoxUnitClick(Sender);
  end;
   DM.TableNakl.Filtered:= True;
   SetFilter;
   RadioButton1.Checked:=True;

  For IKind:=Succ(Low(TNaklKind)) to High(TNaklKind)  do
  begin
    ComboBoxNaklKind1.Items.Add(NaklName[IKind]);
    ComboBoxNaklKind2.Items.Add(NaklName[IKind]);
    ComboBoxNaklKind3.Items.Add(NaklName[IKind]);
    ComboBoxNaklKind4.Items.Add(NaklName[IKind]);
  end;
  ComboBoxNaklKind1.ItemIndex:=2;
  ComboBoxNaklKind2.ItemIndex:=2;
  ComboBoxNaklKind3.ItemIndex:=2;
  ComboBoxNaklKind4.ItemIndex:=6;
// конец блока первоначальной установки


(*
   MenuIt:=TMenuItem.Create(MainForm.WindowMenu);
   MenuIt.Caption := 'Переучет';
   MenuIt.Visible := True;
   MenuIt.OnClick := Showing;

   InstallForm.BalansActiv:=True;
   MainForm.WindowMenu.Add(MenuIt);
*)

  if Firster then begin
    RadioButtonClick(Sender);
    DBGridNakl2.OnCellClick(DBGridNakl2.Columns[DBGridNakl2.SelectedIndex]);
    SpeedButtonNow.OnClick(Sender);
    
    ButtonBalans.Enabled     := InstallForm.Dostup >= 4;  // активация кнопки Баланс
    ButtonCashToNakl.Enabled := InstallForm.Dostup >= 4;
    Firster:=False;
  end;
end;

procedure TBalansForm.ComboBoxUnitDropDown(Sender: TObject);
begin

        IF UnitActivOnly
        then DM.TableUnit.Filter    := '([Activ]=True) and '+'([AgentCod] = '+ IntToStr(AgentCod)+')'
        else DM.TableUnit.Filter    := '([AgentCod] = '+ IntToStr(AgentCod)+')';

        DM.TableUnit.Filtered  := True;
        ComboBoxUnit.Clear;
        DM.TableUnit.First;
        repeat
          ComboBoxUnit.Items.Add(DM.TableUnit.FieldByName('UnitName').AsString);
          DM.TableUnit.Next;
        until DM.TableUnit.Eof;

end;

procedure TBalansForm.ComboBoxAgentClick(Sender: TObject);
var LookUpResults : Variant;
begin
  LookUpResults :=DM.TableAgent.LookUp('AgentName',ComboBoxAgent.Text, 'Cod');
  case VarType(LookUpResults) of
    varEmpty : ;
    varNull  : ;
    else  begin
        ComboBoxUnit.Clear;
        AgentCod := LookUpResults;
        SetFilter;
    end;
  end; // case
end;

procedure TBalansForm.ComboBoxUnitClick(Sender: TObject);
var LookUpResults : Variant;
begin
  LookUpResults :=DM.TableUnit.LookUp('UnitName',ComboBoxUnit.Text, 'Cod');
  case VarType(LookUpResults) of
    varEmpty : ;
    varNull  : ;
    else  begin
      UnitCod := LookUpResults;
      SetFilter;
    end;
  end; // case
end;

procedure TBalansForm.SetOstatok1;
begin
  If RadioButton1.Checked then   // from 0
  begin
    Ostatok1                     := 0;
    MaskEditOstatok1.Text        :='0';
    OstatokZakupka1              := 0;
    MaskEditOstatokZakupka1.Text :='0';
    MaskEditOstatokPerCent1.Text :='0';

    EditDocN1.Text        :='Нет';
    EditDocDate1.Text     :='01.01.2000';
    EditDocTime1.Text     :='00:00:00';

    DM.DataSourceProdazha.DataSet:= DM.QueryProdazha0;
  end
  else begin
    with DM.QueryNaklSum do begin
      Close;
      ParamByName('NaklCod').Value:=DBGridNakl1.DataSource.DataSet.FieldByName('Cod').AsInteger;
      Open;
    end;
//    Ostatok1              := DBGridNakl1.DataSource.DataSet.FieldByName('Sum').AsCurrency;
    Ostatok1        := DM.QueryNaklSum.FieldByName('SumAll').AsCurrency;
    OstatokZakupka1 := DM.QueryNaklSum.FieldByName('SumAll0').AsCurrency;

    MaskEditOstatok1.Text        := FormatCurr('######0.00, , ',Ostatok1);
    MaskEditOstatokZakupka1.Text := FormatCurr('######0.00, , ',OstatokZakupka1);
    MaskEditOstatokPerCent1.Text := FormatCurr('######0.00, , ',DM.QueryNaklSum.FieldByName('PerCent').AsCurrency);

    EditDocN1.Text        := InttoStr(DBGridNakl1.DataSource.DataSet.FieldByName('DocN').AsInteger);
    EditDocDate1.Text     := DateToStr(DBGridNakl1.DataSource.DataSet.FieldByName('DocDate').AsDateTime);
    EditDocTime1.Text     := TimeToStr(DBGridNakl1.DataSource.DataSet.FieldByName('DocTime').AsDateTime);

    DM.DataSourceProdazha.DataSet:= DM.QueryProdazha;
  end;
end;

procedure TBalansForm.RadioButtonClick(Sender: TObject);
begin
  SetOstatok1;
end;

procedure TBalansForm.DBGridNakl1CellClick(Column: TColumn);
begin
    RadioButton1.Checked:=False;
    RadioButton2.Checked:=True;

    SetOstatok1;
end;

procedure TBalansForm.DBGridNakl2CellClick(Column: TColumn);
begin
//    Ostatok2              := DBGridNakl2.DataSource.DataSet.FieldByName('Sum').AsCurrency;
//    MaskEditOstatok2.Text := FormatCurr('######0.00, , ',Ostatok2);
    with DM.QueryNaklSum do begin
      Close;
      ParamByName('NaklCod').Value:=DBGridNakl2.DataSource.DataSet.FieldByName('Cod').AsInteger;
      Open;
    end;
//    Ostatok1              := DBGridNakl1.DataSource.DataSet.FieldByName('Sum').AsCurrency;
    Ostatok2       := DM.QueryNaklSum.FieldByName('SumAll').AsCurrency;
    OstatokZakupka2:= DM.QueryNaklSum.FieldByName('SumAll0').AsCurrency;

    MaskEditOstatok2.Text        := FormatCurr('######0.00, , ',Ostatok2);
    MaskEditOstatokZakupka2.Text := FormatCurr('######0.00, , ',OstatokZakupka2);
    MaskEditOstatokPerCent2.Text := FormatCurr('######0.00, , ',DM.QueryNaklSum.FieldByName('PerCent').AsCurrency);

    EditDocN2.Text        := InttoStr(DBGridNakl2.DataSource.DataSet.FieldByName('DocN').AsInteger);
    EditDocDate2.Text     := DateToStr(DBGridNakl2.DataSource.DataSet.FieldByName('DocDate').AsDateTime);
    EditDocTime2.Text     := TimeToStr(DBGridNakl2.DataSource.DataSet.FieldByName('DocTime').AsDateTime);
end;

procedure TBalansForm.ButtonBalansClick(Sender: TObject);
var     SaveCursor : TCursor;
begin
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }

  with DM.QueryPrihod do begin
    Close;
    ParamByName('AgentCod').Value:=AgentCod;
    ParamByName('UnitCod').Value :=UnitCod;
    ParamByName('DocDate1').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate2').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime1').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime2').Value  :=StrToTime(EditDocTime2.Text);

    Open;
  end;
    Prihod       := DM.QueryPrihod.FieldByName('SumAll').AsCurrency;
    PrihodZakupka:= DM.QueryPrihod.FieldByName('SumAll0').AsCurrency;
    PrihodPerCent:= DM.QueryPrihod.FieldByName('PerCent').AsCurrency;

    MaskEditPrihod.Text       :=FormatCurr('######0.00, , ',DM.QueryPrihod.FieldByName('SumAll').AsCurrency);
    MaskEditPrihodZakupka.Text:=FormatCurr('######0.00, , ',DM.QueryPrihod.FieldByName('SumAll0').AsCurrency);
    MaskEditPrihodPerCent.Text:=FormatCurr('######0.00, , ',PrihodPerCent);

   with DM.QueryPereOzenka do begin
    Close;
    ParamByName('AgentCod').Value:=AgentCod;
    ParamByName('UnitCod').Value :=UnitCod;
    ParamByName('DocDate1').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate2').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime1').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime2').Value  :=StrToTime(EditDocTime2.Text);

    Open;
  end;
    PereOzenka := DM.QueryPereOzenka.FieldByName('SumAll').AsCurrency;
    MaskEditPereOzenka.Text       :=FormatCurr('######0.00, , ',DM.QueryPereOzenka.FieldByName('SumAll').AsCurrency);
    MaskEditPereOzenkaPerCent.Text:=FormatCurr('######0.00, , ',DM.QueryPereOzenka.FieldByName('PerCent').AsCurrency);

   with DM.QueryPerem do begin
    Close;
    ParamByName('AgentCodFrom').Value:=AgentCod;
    ParamByName('UnitCodFrom').Value :=UnitCod;
    ParamByName('NaklKind').Value    :=7;         //CashTo

    ParamByName('DocDate1').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate2').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime1').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime2').Value  :=StrToTime(EditDocTime2.Text);

    Open;
  end;
    CashTo:= DM.QueryPerem.FieldByName('SumAll').AsCurrency;
    MaskEditCashTo.Text:=FormatCurr('######0.00, , ',DM.QueryPerem.FieldByName('SumAll').AsCurrency);

   with DM.QueryPerem do begin
    Close;
    ParamByName('AgentCodFrom').Value:=AgentCod;
    ParamByName('UnitCodFrom').Value :=UnitCod;
    ParamByName('NaklKind').Value :=5;            //Perem

    ParamByName('DocDate1').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate2').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime1').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime2').Value  :=StrToTime(EditDocTime2.Text);

    Open;
  end;
    Perem       := DM.QueryPerem.FieldByName('SumAll').AsCurrency;
    PeremZakupka:= DM.QueryPerem.FieldByName('SumAll0').AsCurrency;

    MaskEditPerem.Text       :=FormatCurr('######0.00, , ',DM.QueryPerem.FieldByName('SumAll').AsCurrency);
    MaskEditPeremZakupka.Text:=FormatCurr('######0.00, , ',DM.QueryPerem.FieldByName('SumAll0').AsCurrency);
    MaskEditPeremPerCent.Text:=FormatCurr('######0.00, , ',DM.QueryPerem.FieldByName('PerCent').AsCurrency);

   MaskEditPlus.Text  := FormatCurr('######0.00, , ', Ostatok2+ CashTo+ Perem );
   MaskEditMinus.Text := FormatCurr('######0.00, , ', Ostatok1+ Prihod+ PereOzenka );

   Balans:= (Ostatok2+ CashTo+ Perem) - (Ostatok1+ Prihod+ PereOzenka);
   MaskEditBalans.Text := FormatCurr('######0.00, , ', Balans );
   If Balans>=0 then MaskEditBalans.Font.Color := clGreen
     else MaskEditBalans.Font.Color := clRed;

   If CashTo<>0 then
    DohodPerCent := 100-
     ( (PrihodZakupka+OstatokZakupka1)-(OstatokZakupka2+Perem*(1-PrihodPerCent/100))+  // если товар утрачен}
        Balans*(1-PrihodPerCent/100) )  //
        /
      CashTo*100
   else DohodPerCent :=0;

   MaskEditDohodPerCent.Text:= FormatCurr('######0.00, , ',DohodPerCent);
   MaskEditDohod.Text:= FormatCurr('######0.00, , ',CashTo-
     ( (PrihodZakupka+OstatokZakupka1)-  //  Закупка старого товара + закупка прхода
       (OstatokZakupka2+(Perem-Balans)*(1-PrihodPerCent/100)) )+  // - Закупка  остатков
        Balans*(1-PrihodPerCent/100) ); // минус Закупка недостачи

   // ButtonPrihodNakl.Click;       //Накладные
   // ButtonPrihodTovar.Click;      //Содержимое Накладных
   // ButtonPrihodTovarGroup.Click; //Содержимое Накладных сгруппированное по товарам
  finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;

end;


procedure TBalansForm.ButtonSavePrihodNaklClick(Sender: TObject);
begin
//  SaveDialog1.InitialDir:='';
  SaveDialog1.FileName:= 'Запрос '+
     ComboBoxAgent.Text+' '+ComboBoxUnit.Text+'.txt';
  If SaveDialog1.Execute then begin
    If Sender=ButtonSavePrihodNakl       then DM.DataSetToText(DM.QueryPrihodNakl,SaveDialog1.FileName);
    If Sender=ButtonSavePrihodTovar      then DM.DataSetToText(DM.QueryPrihodTovar,SaveDialog1.FileName);
    If Sender=ButtonSavePrihodTovarGroup then DM.DataSetToText(DM.QueryPrihodTovarGroup,SaveDialog1.FileName);
  end;

end;

procedure TBalansForm.Button2Click(Sender: TObject);
var St:String;
begin
{  // заполнение таблицы Parent
  St:= DM.TableNakl.Filter;
  DM.TableNakl.Filter:='';
  DM.TableNakl.First;

  If Not DM.TableParent.Active then DM.TableParent.Open;
  while not DM.TableNakl.Eof do
    begin
      If DM.TableNakl.FieldByName('ParentCod').AsInteger<>0 then
        begin
          DM.TableParent.Append;
          DM.TableParent.FieldByName('ParentCod').AsInteger:= DM.TableNakl.FieldByName('ParentCod').AsInteger;
          DM.TableParent.FieldByName('SonCod').AsInteger   := DM.TableNakl.FieldByName('Cod').AsInteger;
          DM.TableParent.Post;
        end;
      DM.TableNakl.Next;
    end;
  DM.TableNakl.Filter := St;
  DM.TableParent.Close;
}
{
// замена Москва на Офис в накл Закупке
  St:= DM.TableNakl.Filter;
  DM.TableNakl.Filter:='';
  DM.TableNakl.First;

  If Not DM.TableParent.Active then DM.TableParent.Open;
  while not DM.TableNakl.Eof do
    begin
      If (DM.TableNakl.FieldByName('Kind').AsInteger=3) and // 1-Zakupka  7-Выплаты  3-Prihod
         (DM.TableNakl.FieldByName('UnitCodFrom').AsInteger=2) // Москва
      then
        begin
          DM.TableNakl.Edit;
          DM.TableNakl.FieldByName('SkladCodFrom').AsInteger:= 1;
          DM.TableNakl.FieldByName('SkladCodTo').AsInteger:= 1;
          DM.TableNakl.FieldByName('UnitCodFrom').AsInteger:= 7;  //Офис
          DM.TableNakl.Post;
        end;
      DM.TableNakl.Next;
    end;
  DM.TableNakl.Filter := St;
  DM.TableParent.Close;
}
end;

procedure TBalansForm.ButtonPrihodNaklClick(Sender: TObject);
var     SaveCursor : TCursor;
begin
 Label22.Caption:= 'Объект: ' + ComboBoxAgent.Text+' '+ComboBoxUnit.Text;
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }
   with DM.QueryPrihodNakl do begin
    Close;

    ParamByName('NaklKind1').Value:=ComboBoxNaklKind1.ItemIndex+1;
    ParamByName('NaklKind2').Value:=ComboBoxNaklKind1.ItemIndex+1;

    If RadioButton3.Checked then begin  //(PereOzenka)
        SQL[12] := 'N.AgentCodFrom=A.Cod and';
        SQL[13] := 'N.UnitCodFrom=U.Cod  and';
        SQL[15] := 'N.AgentCodTo=:AgentCod1 and';
        SQL[16] := 'N.UnitCodTo=:UnitCod1   and';

        SQL[37] := 'N.AgentCodFrom=A.Cod and';
        SQL[38] := 'N.UnitCodFrom=U.Cod  and';
        SQL[40] := 'N.AgentCodTo=:AgentCod2 and';
        SQL[41] := 'N.UnitCodTo=:UnitCod2   and';
    end
      else begin
        SQL[12] := 'N.AgentCodTo=A.Cod and';
        SQL[13] := 'N.UnitCodTo=U.Cod  and';
        SQL[15] := 'N.AgentCodFrom=:AgentCod1 and';
        SQL[16] := 'N.UnitCodFrom=:UnitCod1   and';

        SQL[37] := 'N.AgentCodTo=A.Cod and';
        SQL[38] := 'N.UnitCodTo=U.Cod  and';
        SQL[40] := 'N.AgentCodFrom=:AgentCod2 and';
        SQL[41] := 'N.UnitCodFrom=:UnitCod2   and';
      end;
     
    If (ComboBoxNaklKind1.ItemIndex+1)=9 then begin  //(PereOzenka)
        SQL[6] := 'SUM(  Kolvo*(Zena-Zena0) ) as Сумма,';
        SQL[31]:= 'SUM(  Kolvo*(Zena-Zena0) ) as Сумма,';
    end
      else begin
        SQL[6] := 'sum(Rec .Kolvo*Rec .Zena)  as Сумма,';
        SQL[31]:= 'sum(Rec .Kolvo*Rec .Zena)  as Сумма,';
      end;

    ParamByName('AgentCod1').Value:=AgentCod;
    ParamByName('UnitCod1').Value :=UnitCod;
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);

    ParamByName('AgentCod2').Value:=AgentCod;
    ParamByName('UnitCod2').Value :=UnitCod;
    ParamByName('DocDate21').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate211').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate222').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime21').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime22').Value  :=StrToTime(EditDocTime2.Text);
    Open;
  end;
  finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;
end;

procedure TBalansForm.ButtonPrihodTovarClick(Sender: TObject);
var     SaveCursor : TCursor;
        I : Integer;
begin
 Label26.Caption:=  ComboBoxAgent.Text+' '+ComboBoxUnit.Text;
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }
   with DM.QueryPrihodTovar do begin
    Close;
    ParamByName('NaklKind1').Value:=ComboBoxNaklKind2.ItemIndex+1;
    ParamByName('NaklKind2').Value:=ComboBoxNaklKind2.ItemIndex+1;

    ParamByName('AgentCod1').Value:=AgentCod;
    ParamByName('UnitCod1').Value :=UnitCod;
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);

    ParamByName('AgentCod2').Value:=AgentCod;
    ParamByName('UnitCod2').Value :=UnitCod;
    ParamByName('DocDate21').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate211').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate222').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime21').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime22').Value  :=StrToTime(EditDocTime2.Text);
    Open;
  end;
  with DBGridPrihodTovar do
    For I:=0 to Columns.Count-1 do begin
      If Columns[I].FieldName='ProizvName'    then Columns[I].Width:=60;
      If Columns[I].FieldName='Fasovka'       then Columns[I].Width:=50;
      If Columns[I].FieldName='Колво'         then Columns[I].Width:=40;
      If Columns[I].FieldName='NНакл'         then Columns[I].Width:=40;
      If Columns[I].FieldName='Проц'          then Columns[I].Width:=40;
      If Columns[I].FieldName='ТекЦенаЗак'    then Columns[I].Width:=55;
      If Columns[I].FieldName='ЦенаПрихода'   then Columns[I].Width:=55;
      If Columns[I].FieldName='ЦенаЗакупки'   then Columns[I].Width:=55;
      If Columns[I].FieldName='СуммаЗакупки'  then Columns[I].Width:=55;
      If Columns[I].FieldName='СуммаПрихода'  then Columns[I].Width:=55;
    end;
  finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;
end;

procedure TBalansForm.ButtonPrihodTovarGroupClick(Sender: TObject);
var     SaveCursor : TCursor;
begin
 Label24.Caption:= 'Объект: '+ ComboBoxAgent.Text+' '+ComboBoxUnit.Text;
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }
   with DM.QueryPrihodTovarGroup do begin
    Close;
    ParamByName('NaklKind1').Value:=ComboBoxNaklKind2.ItemIndex+1;
    ParamByName('NaklKind2').Value:=ComboBoxNaklKind2.ItemIndex+1;

    ParamByName('AgentCod1').Value:=AgentCod;
    ParamByName('UnitCod1').Value :=UnitCod;
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);

    ParamByName('AgentCod2').Value:=AgentCod;
    ParamByName('UnitCod2').Value :=UnitCod;
    ParamByName('DocDate21').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate211').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate222').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime21').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime22').Value  :=StrToTime(EditDocTime2.Text);
    Open;
  end;
  finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;

end;

procedure TBalansForm.ButtonProdazhaClick(Sender: TObject);
const Pref='T.';
var     SaveCursor : TCursor;
        Buf: String;
        i : Integer;
begin
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }
   with TQuery(DM.DataSourceProdazha.DataSet) do begin
    Close;
    ParamByName('AgentCod1').Value:=AgentCod;
    ParamByName('UnitCod1').Value :=UnitCod;

    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);

    If RadioButton2.Checked then  // отсчет от накладной
    begin
      ParamByName('ODocN1').Value :=StrToInt(EditDocN1.Text);
      ParamByName('AgentCod3').Value:=AgentCod; //  Ost 1
      ParamByName('UnitCod3').Value :=UnitCod; //
    end
    else
    begin      //  от нулевой точки
//      ParamByName('DocDate21').Value   :=StrToDate(EditDocDate1.Text);
//      ParamByName('DocDate22').Value   :=StrToDate(EditDocDate2.Text);
//      ParamByName('DocDate211').Value  :=StrToDate(EditDocDate1.Text);
//      ParamByName('DocDate222').Value  :=StrToDate(EditDocDate2.Text);
    end;

    ParamByName('AgentCod4').Value:=AgentCod; //  Ost 2
    ParamByName('UnitCod4').Value :=UnitCod; //
    ParamByName('ODocN2').Value :=StrToInt(EditDocN2.Text);

    If CheckBoxFilter.Checked and (DM.TableTovar.Filter<>'') then
    begin
      buf:=DM.TableTovar.Filter;
      i:=1;
      while i<= length(Buf) do
      begin
        If Buf[i]='[' then System.Insert(Pref,buf,i+1);
        Inc(i);
      end;
      i:=1;
      while i<= length(Buf) do
      begin
        If (Buf[i]='[') or (Buf[i]=']') then System.Delete(buf,i,1);
        Inc(i);
      end;
      SQL[37]:= ' and ('+ buf+')';
    end
    else SQL[37]:= '';

    Open;
   end; //with TQuery(DataSourceProdazha.DataSet)

  finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;
end;

procedure TBalansForm.ButtonZakupkaClick(Sender: TObject);
var     SaveCursor : TCursor;
        I : Integer;
begin
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }
   with DM.QueryZakupka do begin
    Close;

//
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);
    If CheckBoxAgentFrom.Checked and (AgentCodFrom<>0)
      then SQL[17]:= 'and N.AgentCodFrom='+IntToStr(AgentCodFrom)
    else   SQL[17]:= '';

    Open;
  end;
  with DBGridZakupka do
    For I:=0 to Columns.Count-1 do begin
      If Columns[I].FieldName='ProizvName'    then Columns[I].Width:=60;
      If Columns[I].FieldName='AgentName'     then Columns[I].Width:=60;
      If Columns[I].FieldName='Fasovka'       then Columns[I].Width:=50;
      If Columns[I].FieldName='Колво'         then Columns[I].Width:=40;
      If Columns[I].FieldName='NНакл'         then Columns[I].Width:=40;
      If Columns[I].FieldName='ЦенаЗакупки'   then Columns[I].Width:=60;
      If Columns[I].FieldName='СуммаЗакупки'  then Columns[I].Width:=60;
    end;
  finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;

end;

procedure TBalansForm.ComboBoxAgentFromClick(Sender: TObject);
var LookUpResults : Variant;
begin
  LookUpResults :=DM.TableAgent.LookUp('AgentName',ComboBoxAgentFrom.Text, 'Cod');
  case VarType(LookUpResults) of
    varEmpty : ;
    varNull  : ;
    else  begin
        AgentCodFrom := LookUpResults;
    end;
  end; // case

end;

procedure TBalansForm.SpeedButtonNowClick(Sender: TObject);
begin
  EditDocDate2.Text:=DateToStr(Now);
  EditDocTime2.Text:=TimeToStr(Now);
  Ostatok2         := 0;
  MaskEditOstatok2.Text        := FormatCurr('######0.00, , ',Ostatok2);
end;

procedure TBalansForm.ButtonCashToNaklClick(Sender: TObject);
var     SaveCursor : TCursor;
        I: Integer;
begin
 Label25.Caption:= 'Отправитель: '+ ComboBoxAgent.Text+' '+ComboBoxUnit.Text;
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }
   with DM.QueryCashTo do begin
    Close;
    ParamByName('NaklKind1').Value:=ComboBoxNaklKind4.ItemIndex+1;
    ParamByName('NaklKind2').Value:=ComboBoxNaklKind4.ItemIndex+1;

    If (ComboBoxNaklKind4.ItemIndex+1)=9 then begin  //(PereOzenka)
        SQL[4] := 'SUM(  Kolvo*(Zena-Zena0) ) Сумма,';
        SQL[25]:= 'SUM(  Kolvo*(Zena-Zena0) ) Сумма,';
    end
      else begin
        SQL[4] := 'sum(Rec .Kolvo*Rec .Zena)  as Сумма,';
        SQL[25]:= 'sum(Rec .Kolvo*Rec .Zena)  as Сумма,';
      end;

    ParamByName('AgentCod1').Value:=AgentCod;
    ParamByName('UnitCod1').Value :=UnitCod;
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);

    ParamByName('AgentCod2').Value:=AgentCod;
    ParamByName('UnitCod2').Value :=UnitCod;
    ParamByName('DocDate21').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate211').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate222').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime21').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime22').Value  :=StrToTime(EditDocTime2.Text);
    Open;
  end;
   with DM.QueryCashToTovar do begin
    Close;
    ParamByName('NaklKind1').Value:=ComboBoxNaklKind4.ItemIndex+1;

    If (ComboBoxNaklKind4.ItemIndex+1)=9 then begin  //(PereOzenka)
        SQL[5]:= '(  Rec.Kolvo*(Rec.Zena-Rec.Zena0) ) as Сумма';
    end
      else begin
        SQL[5]:= '(Rec.Kolvo*Rec.Zena)  as Сумма';
      end;

    ParamByName('AgentCod1').Value:=AgentCod;
    ParamByName('UnitCod1').Value :=UnitCod;
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);

    Open;
  end;
   with DM.QueryCashToTovarGroup do begin
    Close;
    ParamByName('NaklKind1').Value:=ComboBoxNaklKind4.ItemIndex+1;

    If (ComboBoxNaklKind4.ItemIndex+1)=9 then begin  //(PereOzenka)
        SQL[4]:= 'SUM(  Kolvo*(Zena-Zena0) ) as Сумма';
    end
      else begin
        SQL[4]:= 'sum(Rec.Kolvo*Rec.Zena)  as Сумма';
      end;

    ParamByName('AgentCod1').Value:=AgentCod;
    ParamByName('UnitCod1').Value :=UnitCod;
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);

    Open;
  end;
  with DBGridCashToTovarGroup do
    For I:=0 to Columns.Count-1 do begin
      If Columns[I].FieldName='TovarName' then Columns[I].Width:=120;
    end;
  finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;
end;

procedure TBalansForm.Button1Click(Sender: TObject);
var    St  : String;

 procedure PrToFile;
 var SaveCursor : TCursor;
     Fil : TextFile;
 begin
      try
        SaveCursor := Screen.Cursor;
        Screen.Cursor := crHourglass;    { Show hourglass cursor }

        AssignFile(Fil,SaveDialog1.FileName);
        ReWrite(Fil);
        WriteLn(Fil,''+#09+ComboBoxAgent.Text+#09+ComboBoxUnit.Text+#09+'');
        WriteLn(Fil,Label5.Caption+#09+MaskEditOstatok1.Text+#09+Label9.Caption+#09+MaskEditOstatok2.Text);
        WriteLn(Fil,Label6.Caption+#09+MaskEditPrihod.Text+#09+Label8.Caption+#09+MaskEditCashTo.Text);
        WriteLn(Fil,Label7.Caption+#09+MaskEditPereOzenka.Text+#09+Label10.Caption+#09+MaskEditPerem.Text);
        WriteLn(Fil,Label21.Caption+#09+MaskEditMinus.Text+#09+Label20.Caption+#09+MaskEditPlus.Text);
        WriteLn(Fil,''+#09+Label4.Caption+#09+MaskEditBalans.Text+#09+'');
        WriteLn(Fil);
      finally
       CloseFile(Fil);
       Screen.Cursor := SaveCursor;  { Always restore to normal }
      end;
 end;

begin
  SaveDialog1.FileName:= 'Переучет '+
     ComboBoxAgent.Text+' '+ComboBoxUnit.Text+'.txt';

  SaveDialog1.InitialDir:=NaklPrintPath;
  If SaveDialog1.Execute then
   If Not FileExists(SaveDialog1.FileName) then PrToFile
   else If  (MessageDlg('Файл '+SaveDialog1.FileName+' уже существует!'+#10#13+
                    'Заменить его новым ?',
                     mtConfirmation		, [mbYes, mbNo], 0) = mrYes) then PrToFile;
end;

procedure TBalansForm.RadioButtonSortClick(Sender: TObject);
begin
  If RadioButtonSortPrib.Checked then TQuery(DM.DataSourceProdazha.DataSet).SQL[42]:= 'ORDER BY  11  Desc'
  else TQuery(DM.DataSourceProdazha.DataSet).SQL[42]:= '';
end;

procedure TBalansForm.ButtonSaveCashNaklClick(Sender: TObject);
begin
  SaveDialog1.FileName:= 'Запрос Выплаты '+
     ComboBoxAgent.Text+' '+ComboBoxUnit.Text+'.txt';
  If SaveDialog1.Execute then begin
    DM.DataSetToText(DM.QueryCashTo,SaveDialog1.FileName);
  end;

  SaveDialog1.FileName:= 'Запрос Выплаты по Группам '+
     ComboBoxAgent.Text+' '+ComboBoxUnit.Text+'.txt';
  If SaveDialog1.Execute then begin
    DM.DataSetToText(DM.QueryCashToTovarGroup,SaveDialog1.FileName);
  end;

end;

procedure TBalansForm.Button3Click(Sender: TObject);
var     SaveCursor : TCursor;
        I: Integer;
begin
  with DM.QueryRas do begin
    close;
    ParamByName('AgentCod1').Value  :=AgentCod;
    ParamByName('UnitCod1').Value   :=UnitCod;
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);

    Open;
  end;
  with DM.QueryRasOf do begin
    close;
    ParamByName('AgentCod1').Value  :=AgentCod;   //расходы (выплаты) из Офиса в сторону юнита
    ParamByName('UnitCod1').Value   :=UnitCod;
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate12').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate111').Value :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate122').Value :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime11').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime12').Value  :=StrToTime(EditDocTime2.Text);

    Open;
  end;

end;

procedure TBalansForm.EditLocateChange(Sender: TObject);
begin
  If ((EditLocate.SelStart=1) {or (EditLocate.SelStart=0)} ) and CheckBoxUpper.Checked
  then begin
    EditLocate.Text:=AnsiUpperCase(EditLocate.Text[1]);
    EditLocate.SelStart:=1;
  end;
  If DM.QueryZakupka.Active then
   If Not DM.QueryZakupka.Locate('TovarName',EditLocate.Text,[loCaseInsensitive,loPartialKey])
     then begin

     end;
//  DM.TableTovar.FindNearest([EditLocate.Text,'']);

end;

procedure TBalansForm.DBGridZakupkaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var St:String;
begin
// If Key=vk_Return then DBGrid1.OnCellClick(DBGrid1.Columns[DBGrid1.SelectedIndex]);
 If (Key=vk_Back) and (Not( dgEditing in DBGridZakupka.Options))  then
     If Length(EditLocate.Text)>0 then begin
       St:=EditLocate.Text;
       Delete(St,Length(EditLocate.Text),1);
       EditLocate.Text:=St;
     end;
end;

procedure TBalansForm.DBGridZakupkaKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Not( dgEditing in DBGridZakupka.Options) then
   if ((Key in ['A'..'z']) or
       (Key in ['А'..'я']) or
       (Key in ['0'..'9']))
     then
       If (EditLocate.Text='') and CheckBoxUpper.Checked then EditLocate.Text:=AnsiUpperCase(Key)
       else EditLocate.Text:=EditLocate.Text+Key;
end;

procedure TBalansForm.EditPrihodTovarLocateChange(Sender: TObject);
begin
  If ((EditPrihodTovarLocate.SelStart=1) {or (EditPrihodTovarLocate.SelStart=0)} ) and CheckBoxPrihodTovarUpper.Checked
  then begin
    EditPrihodTovarLocate.Text:=AnsiUpperCase(EditPrihodTovarLocate.Text[1]);
    EditPrihodTovarLocate.SelStart:=1;
  end;
  If DM.QueryPrihodTovar.Active then
   If Not DM.QueryPrihodTovar.Locate('TovarName',EditPrihodTovarLocate.Text,[loCaseInsensitive,loPartialKey])
     then begin

     end;
//  DM.TableTovar.FindNearest([EditLocate.Text,'']);
end;

procedure TBalansForm.LikeEditChange(Sender: TObject);
var St : string;
begin
  If CheckBoxLike.Checked then
    if (EditLike.Text<>'') then
    begin
      //DM.QueryPrihodTovar.Filtered:=false;
      St := 'TovarName Like '''+'%'+ EditLike.Text+'%'+'''';

      DM.QueryPrihodTovar.Close;
      DM.QueryPrihodTovar.SQL[19] := 'and '+ St;  // ind string from 0
      DM.QueryPrihodTovar.SQL[43] := 'and '+ St;

        //DM.QueryPrihodTovar.Filter := St;
      //DM.QueryPrihodTovar.Filtered:=true;
      DM.QueryPrihodTovar.Open;
    end

    else  
    begin
      //if DM.QueryPrihodTovar.Filtered then DM.QueryPrihodTovar.Filtered:=false;
      DM.QueryPrihodTovar.Close;
      DM.QueryPrihodTovar.SQL[19] := '';
      DM.QueryPrihodTovar.SQL[19] := '';
      DM.QueryPrihodTovar.Open;
    end;
end;

procedure TBalansForm.LikeCheckChange(Sender: TObject);
var St : string;
begin
  If CheckBoxLike.Checked  and (EditLike.Text<>'') then
  begin
      //DM.QueryPrihodTovar.Filtered:=false;
      St := 'TovarName Like '''+'%'+ EditLike.Text+'%'+'''';   // % заменяет любое колво символов
//      St := St+ ' OR TovarName Like '''+'%'+ AnsiUpperCase(EditLike.Text[1])+'%'+'''';

      DM.QueryPrihodTovar.Close;
      DM.QueryPrihodTovar.SQL[19] := 'and '+ St;  // ind string from 0
      DM.QueryPrihodTovar.SQL[43] := 'and '+ St;

        //DM.QueryPrihodTovar.Filter := St;
      //DM.QueryPrihodTovar.Filtered:=true;
      DM.QueryPrihodTovar.Open;
  end;

    if (not CheckBoxLike.Checked) and (EditLike.Text<>'')  then
    begin
      //if DM.QueryPrihodTovar.Filtered then DM.QueryPrihodTovar.Filtered:=false;
      DM.QueryPrihodTovar.Close;
      DM.QueryPrihodTovar.SQL[19] := '';
      DM.QueryPrihodTovar.SQL[19] := '';
      DM.QueryPrihodTovar.Open;
    end;
end;


procedure TBalansForm.DBGridPrihodTovarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
  var St:String;
begin
// If Key=vk_Return then DBGridPrihodTovar.OnCellClick(DBGridPrihodTovar.Columns[DBGridPrihodTovar.SelectedIndex]);
 If (Key=vk_Back) and (Not( dgEditing in DBGridPrihodTovar.Options))  then
     If Length(EditPrihodTovarLocate.Text)>0 then begin
       St:=EditPrihodTovarLocate.Text;
       Delete(St,Length(EditPrihodTovarLocate.Text),1);
       EditPrihodTovarLocate.Text:=St;
     end;
end;

procedure TBalansForm.DBGridPrihodTovarKeyPress(Sender: TObject;
  var Key: Char);
begin
 If Not( dgEditing in DBGridPrihodTovar.Options) then
   if ((Key in ['A'..'z']) or
       (Key in ['А'..'я']) or
       (Key in ['0'..'9']))
     then
       If (EditPrihodTovarLocate.Text='') and CheckBoxPrihodTovarUpper.Checked
       then EditPrihodTovarLocate.Text:=AnsiUpperCase(Key)
       else EditPrihodTovarLocate.Text:=EditPrihodTovarLocate.Text+Key;
end;

procedure TBalansForm.ScWindowScale;
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


