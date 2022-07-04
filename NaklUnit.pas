unit NaklUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Mask, ExtCtrls, ComCtrls, Spin, Grids, DBGrids, Printers,
  DB, Variants, Menus, MaskUtils,
  InstallUnit, DMUnit, Buttons, Word2000, OleServer, DBTables
  //, DbiProcs
  ;

type
  TCalcFun=(Nul, Plus, Min, Mul, Dv );
  TNaklForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    SpinEditPercent: TSpinEdit;
    PrintDialog1: TPrintDialog;
    ButtonPereSchetZena: TButton;
    CheckBoxPercent: TCheckBox;
    Panel1: TPanel;
    Label7: TLabel;
    CheckBoxKolvoVis: TCheckBox;
    CheckBoxZenaVis: TCheckBox;
    CheckBoxFasovkaVis: TCheckBox;
    CheckBoxProizvVis: TCheckBox;
    CheckBoxEdIzmerVis: TCheckBox;
    CheckBoxTovarNameVis: TCheckBox;
    CheckBoxZenaMinusNdsVis: TCheckBox;
    CheckBoxSumVis: TCheckBox;
    CheckBoxNdsVis: TCheckBox;
    CheckBoxTovarCodVis: TCheckBox;
    CheckBoxNVis: TCheckBox;
    Panel6: TPanel;
    EditNaklKind: TEdit;
    Label3: TLabel;
    SpinEditN: TSpinEdit;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText7: TStaticText;
    StaticText16: TStaticText;
    StaticText4: TStaticText;
    DBLookupComboBoxAgentFrom: TDBLookupComboBox;
    DBLookupComboBoxAgentTo: TDBLookupComboBox;
    Label4: TLabel;
    DateTimePickerTime: TDateTimePicker;
    DateTimePickerDate: TDateTimePicker;
    DBLookupComboBoxUnitFrom: TDBLookupComboBox;
    DBLookupComboBoxUnitTo: TDBLookupComboBox;
    CheckBoxActiv: TCheckBox;
    StaticText14: TStaticText;
    StaticText1: TStaticText;
    DBLookupComboBoxSkladFrom: TDBLookupComboBox;
    DBLookupComboBoxSkladTo: TDBLookupComboBox;
    StaticText10: TStaticText;
    StaticText15: TStaticText;
    StaticText8: TStaticText;
    ComboBoxPodbor: TComboBox;
    DBLookupComboBoxSotrudnFrom: TDBLookupComboBox;
    DBLookupComboBoxSotrudnTo: TDBLookupComboBox;
    Panel7: TPanel;
    ButtonN: TButton;
    DBNavigator1: TDBNavigator;
    StaticText9: TStaticText;
    CheckBoxNDS: TCheckBox;
    MaskEditZakupkaNDS: TMaskEdit;
    ButtonClose: TButton;
    Panel8: TPanel;
    StaticText12: TStaticText;
    EditAvtor: TEdit;
    Panel10: TPanel;
    Panel9: TPanel;
    RadioButtonZenaFromParent: TRadioButton;
    RadioButtonZenaFromPanel: TRadioButton;
    CheckBoxShapkaFromParent: TCheckBox;
    CheckBoxRecFromParent: TCheckBox;
    ButtonNewN: TButton;
    StaticText18: TStaticText;
    StaticText17: TStaticText;
    StaticText21: TStaticText;
    EditCod: TEdit;
    CheckBoxParentShow: TCheckBox;
    EditCherez: TEdit;
    EditFrom: TEdit;
    EditOsnov: TEdit;
    EditPr: TEdit;
    Panel13: TPanel;
    ButtonPrepPrint: TButton;
    CheckBoxDelNol: TCheckBox;
    StaticText22: TStaticText;
    EditTo: TEdit;
    Splitter1: TSplitter;
    CheckBoxZena0Vis: TCheckBox;
    CheckBoxPerCentVis: TCheckBox;
    MaskEditPerCent: TMaskEdit;
    Panel14: TPanel;
    RadioButtonSortN: TRadioButton;
    RadioButtonSortName: TRadioButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    ComboBoxParent: TComboBox;
    BitBtnParentDel: TBitBtn;
    Panel4: TPanel;
    Label2: TLabel;
    CheckBoxZakupka: TCheckBox;
    CheckBoxRozn: TCheckBox;
    CheckBoxMelkOpt: TCheckBox;
    CheckBoxOpt: TCheckBox;
    Panel15: TPanel;
    Label1: TLabel;
    Panel16: TPanel;
    ButtonSetAllZens: TButton;
    CheckBoxKolvo: TCheckBox;
    SpinEditKolvo: TSpinEdit;
    Panel5: TPanel;
    Label5: TLabel;
    RadioButtonSql: TRadioButton;
    RadioButtonOpt: TRadioButton;
    RadioButtonMelkOpt: TRadioButton;
    RadioButtonRozn: TRadioButton;
    RadioButtonZakupka: TRadioButton;
    RadioButtonValue: TRadioButton;
    MaskEdit1: TMaskEdit;
    RadioButtonNot: TRadioButton;
    Panel17: TPanel;
    Label6: TLabel;
    RadioButtonSql0: TRadioButton;
    RadioButtonOpt0: TRadioButton;
    RadioButtonMelkOpt0: TRadioButton;
    RadioButtonRozn0: TRadioButton;
    RadioButtonZakupka0: TRadioButton;
    RadioButtonValue0: TRadioButton;
    MaskEdit0: TMaskEdit;
    RadioButtonNot0: TRadioButton;
    CheckBoxZenaFromParent: TCheckBox;
    Label10: TLabel;
    Panel18: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    Panel19: TPanel;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    DBGrid1: TDBGrid;
    MaskEditNaklSum0: TMaskEdit;
    MaskEditNaklSum: TMaskEdit;
    Label13: TLabel;
    TabSheet3: TTabSheet;
    Panel20: TPanel;
    Panel21: TPanel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    DBGridCheck: TDBGrid;
    DBNavigator2: TDBNavigator;
    ButtonSaveSql: TButton;
    SaveDialog1: TSaveDialog;
    Button1: TButton;
    RadioGroup1: TRadioGroup;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    Query1: TQuery;
    DataSourceCheck: TDataSource;
    Query2: TQuery;
    Panel22: TPanel;
    CheckBoxPreSum: TCheckBox;
    SpinEditPreSum1: TSpinEdit;
    SpinEditPreSum2: TSpinEdit;
    Label11: TLabel;
    Label12: TLabel;
    MaskEditNaklPreSum: TMaskEdit;
    QueryNaklPreSum: TQuery;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    Label14: TLabel;
    Panel2: TPanel;
    SpinEditCredit: TSpinEdit;
    StaticText11: TStaticText;
    DateTimePickerDateOplataPolnay: TDateTimePicker;
    RadioButtonKonsig: TRadioButton;
    RadioButtonReal: TRadioButton;
    RadioButtonOplach: TRadioButton;
    RadioButtonZachet: TRadioButton;
    StaticText6: TStaticText;
    MaskEdit2: TMaskEdit;
    StaticText5: TStaticText;
    ComboBoxValuta: TComboBox;
    CheckBoxPercent0: TCheckBox;
    Label15: TLabel;
    CheckBoxNPr: TCheckBox;
    CheckBoxTovarCodPr: TCheckBox;
    CheckBoxTovarNamePr: TCheckBox;
    CheckBoxProizvPr: TCheckBox;
    CheckBoxFasovkaPr: TCheckBox;
    CheckBoxEdIzmerPr: TCheckBox;
    CheckBoxZena0Pr: TCheckBox;
    CheckBoxKolvoPr: TCheckBox;
    CheckBoxZenaPr: TCheckBox;
    CheckBoxZenaMinusNdsPr: TCheckBox;
    CheckBoxSumPr: TCheckBox;
    CheckBoxNdsPr: TCheckBox;
    CheckBoxPerCentPr: TCheckBox;
    ButtonPr: TButton;
    PopupMenu1: TPopupMenu;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N1: TMenuItem;
    QueryDopOstatok: TQuery;
    TabSheet4: TTabSheet;
    Panel11: TPanel;
    Label8: TLabel;
    ButtonFromTovar: TButton;
    Panel12: TPanel;
    Label9: TLabel;
    ButtonDelAll: TButton;
    Panel23: TPanel;
    ButtonDopOstatok: TButton;
    Label16: TLabel;
    Panel24: TPanel;
    Label17: TLabel;
    ButtonNo0: TButton;
    QueryZapOstatok: TQuery;
    StatusBar1: TStatusBar;
    Splitter5: TSplitter;
    Splitter2: TSplitter;
    QueryMaxNaklN: TQuery;
    Panel25: TPanel;
    Label18: TLabel;
    ButtonSort: TButton;
    QuerySort: TQuery;
    CheckBoxUmnozh: TCheckBox;
    MaskEditUmnozh: TMaskEdit;
    Panel26: TPanel;
    QueryLocate: TQuery;
    StaticText13: TStaticText;
    EditPrihodTovarLocate: TEdit;
    CheckBoxPrihodTovarUpper: TCheckBox;
    StaticText19: TStaticText;
    EditCalc: TEdit;
    CheckBoxOneFile: TCheckBox;
    ButtonParent: TButton;
    ButtonFromParent: TButton;
    CheckBoxRazdel: TCheckBox;
    MaskEditRazdel: TMaskEdit;
    RadioButtonRoznSr: TRadioButton;
    SpinEditPercent0: TSpinEdit;
    CheckBoxUmnozh0: TCheckBox;
    MaskEditUmnozh0: TMaskEdit;
    CheckBoxRazdel0: TCheckBox;
    MaskEditRazdel0: TMaskEdit;
    CheckBoxAgentPr: TCheckBox;
    CheckBoxAgentVis: TCheckBox;
    CheckBoxOplataSrazu: TCheckBox;
    DateTimePickerDateOplata: TDateTimePicker;
    MaskEditOplataSum: TMaskEdit;
    CheckBoxRecomPrVis: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    function  SetNakl(Sender: TObject; Cod: Integer; Kind:TFormKind;
      DeystvKind : TDeystvKind): Boolean;
    procedure SpinEditCreditChange(Sender: TObject);
    procedure ButtonCloseClick(Sender: TObject);
    procedure ButtonCancelClick(Sender: TObject);
    procedure DateTimePickerDateOplataPolnayChange(Sender: TObject);
    procedure CheckBoxNDSClick(Sender: TObject);
    procedure ComboBoxPodborChange(Sender: TObject);
    procedure DBGrid1EditButtonClick(Sender: TObject);
    procedure DBGrid1ColExit(Sender: TObject);
    procedure SpinEditPercentChange(Sender: TObject);
    procedure ButtonNClick(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBLookupComboBoxUnitDropDown(Sender: TObject);
    procedure DBLookupComboBoxSkladDropDown(Sender: TObject);
    procedure ButtonPrepPrintClick(Sender: TObject);
    procedure ButtonPereSchetZenaClick(Sender: TObject);
    procedure DBLookupComboBoxAgentFromClick(Sender: TObject);
    procedure DBLookupComboBoxUnitFromClick(Sender: TObject);
    procedure DBLookupComboBoxSkladFromClick(Sender: TObject);
    procedure DBLookupComboBoxSotrudnFromClick(Sender: TObject);
    procedure DBLookupComboBoxAgentToClick(Sender: TObject);
    procedure DBLookupComboBoxUnitToClick(Sender: TObject);
    procedure SpinEditNDbClick(Sender: TObject);
    procedure DBLookupComboBoxSkladToClick(Sender: TObject);
    procedure CheckBoxColumnClick(Sender: TObject);
    procedure CheckBoxRecFromParentClick(Sender: TObject);
    procedure ButtonParentClick(Sender: TObject);
    procedure ButtonNewNClick(Sender: TObject);
    function  GetNewN:Integer;
    procedure ButtonFromTovarClick(Sender: TObject);
    procedure ButtonDelAllClick(Sender: TObject);
    procedure ButtonSetAllZensClick(Sender: TObject);
    procedure ButtonFromParentClick(Sender: TObject);
    procedure Showing(Sender: TObject);
    procedure DBLookupComboBoxAgentFromDropDown(Sender: TObject);
    procedure DBLookupComboBoxAgentToDropDown(Sender: TObject);
    procedure DBLookupComboBoxSotrudnDropDown(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBoxZakupkaClick(Sender: TObject);
    procedure ComboBoxParentAdd(ParentCod: Integer);
    procedure BitBtnParentDelClick(Sender: TObject);
    procedure ComboBoxParentChange(Sender: TObject);
    procedure ButtonSaveSqlClick(Sender: TObject);
    procedure RadioButtonCheckClick(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CheckBoxPreSumClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure RadioButtonSortNClick(Sender: TObject);
    procedure PopUpClick(Sender: TObject);
    procedure ButtonDopOstatokClick(Sender: TObject);
    procedure ButtonNo0Click(Sender: TObject);
    procedure ButtonSortClick(Sender: TObject);
    procedure EditPrihodTovarLocateChange(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure EditCalcExit(Sender: TObject);
    procedure CalcSetRes;
    procedure CalcRasbor;
    procedure EditCalcKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ScWindowScale;
    procedure CheckBoxOplataSrazuClick(Sender: TObject);
    procedure MaskEditOplataSumExit(Sender: TObject);
  private
    { Private declarations }
    FormKind : TFormKind;
    NaklKind : TNaklKind;
    NaklCod  : Integer;
//    BookMark :TBookMark;
    NStr,NSpace,NPage: Integer;
    Fil : TextFile;
//    MenuIndex : Integer;
     Sum, Sum0 : Currency;   // промежуточные суммы
     Calc1,Calc2, CalcRes : Currency;  // 1-e, 2-e and Res Calc
     CalcFieldName : String;
     CalcFun : TCalcFun;

    function  Save: Word;
    procedure NaklModified;
    procedure FilterChange(NCod:Integer);
    procedure ComboBoxParentItemsSet;
  public
    { Public declarations }
    Modified : Boolean;
    Deystv   : TDeystvKind;
    RezhFromParent:Boolean; // режим авто заполнения из родителя

    procedure ZenaRecNaklSet; //после изменения значения кода товара подставляет значения: Kolvo, NaklCod и Zena
    procedure ZakupkaSumSet;  // вычисляет сумму накладной или промежуточную сумму
                              // вызывается  в TableRecNaklAfterDelete, TableRecNaklAfterPost и TableRecNaklKolvoChange
end;

var
  NaklFormAr : array [TFormKind] of TNaklForm;

implementation

uses TovarUnit, MainUnit, ZhurnalUnit;

{$R *.DFM}


procedure TNaklForm.FormClose(Sender: TObject;  var Action: TCloseAction);
var     MenuIt :  TMenuItem;
        I : Integer;
        SaveCursor : TCursor;

begin
  SaveCursor     := Screen.Cursor;
  Screen.Cursor  := crHourglass;    { Show hourglass cursor }

  DM.TableRecNakl.DisableControls;
  DM.TableTovar.DisableControls;

  DM.TableRecNakl.DisableConstraints;
  DM.TableTovar.DisableConstraints;

  If Deystv=Prosmotr then  Action:=caFree
  else
  begin
    If DM.TableRecNakl.Modified then begin
      Modified :=True;
      DM.TableRecNakl.Post;
    end;
    NaklModified;
    case Save of
      mrYes,mrNo : Action:=caFree;  // Close Nakl
     mrCancel    : Action:=caNone;
    end;
  end;
  If Action=caFree then begin
       FormParAr[FormKind].Activ    :=False;
       If Deystv<>Prosmotr then begin
         TovarForm.ComboBoxPodbor.ItemIndex:=0; // Редак-ние Товара
         TovarForm.ComboBoxPodbor.OnChange(Sender);
       end
       else  //  Prosmotr
        If FormParAr[EditFormKind].Activ and (FormKind=InstallForm.PodborerFrom) then
         // удаляется накладная, из которой подбирали
         begin
           I:=NaklFormAr[EditFormKind].ComboBoxPodbor.Items.IndexOf(Caption);
           NaklFormAr[EditFormKind].ComboBoxPodbor.Items.Delete(I);// del Punkt
           NaklFormAr[EditFormKind].ComboBoxPodbor.Enabled :=
               NaklFormAr[EditFormKind].ComboBoxPodbor.Items.Count>1;
           NaklFormAr[EditFormKind].ComboBoxPodbor.ItemIndex :=0;  // From Tovar
           NaklFormAr[EditFormKind].ComboBoxPodbor.OnChange(Sender);
         end;
       MenuIt:=MainForm.WindowMenu.Find(Caption);   // del Punkt Menu in Windows
       If MenuIt<>nil
       then MainForm.WindowMenu.Delete(MainForm.WindowMenu.IndexOf(MenuIt));
       
    // DM.TableRecNakl.Filtered:=False;
  end;
  
  DM.TableRecNakl.EnableControls;
  DM.TableTovar.EnableControls;

  DM.TableRecNakl.EnableConstraints;
  DM.TableTovar.EnableConstraints;

  Screen.Cursor := SaveCursor;  { Always restore to normal }
end;

procedure TNaklForm.SpinEditCreditChange(Sender: TObject);
begin
  DateTimePickerDateOplataPolnay.Date:= DateTimePickerDate.Date+SpinEditCredit.Value;
end;

procedure TNaklForm.DateTimePickerDateOplataPolnayChange(Sender: TObject);
begin
  SpinEditCredit.Value := Trunc(DateTimePickerDateOplataPolnay.Date - DateTimePickerDate.Date);
  Modified := True;
end;

procedure TNaklForm.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TNaklForm.FilterChange(NCod:Integer);
//var Buf:Boolean;
//LookUpResults : Variant;
begin
{
  LookUpResults :=DM.TableUnit.LookUp('UnitName',DBLookupComboBoxUnitTo.Text,
  'Cod');
  If VarType(LookUpResults)<>varNull then
  begin
    If LookUpResults<>varEmpty then begin
      DM.TableSklad.Filter    :='UnitCod = '+ IntToStr(LookUpResults);
      DM.TableSklad.Filtered  :=True;
      DM.TableSotrudn.Filter  :='UnitCod = '+ IntToStr(LookUpResults);
      DM.TableSotrudn.Filtered:=True;
    end
    else  begin
      DM.TableSklad.Filtered  :=False;
      DM.TableSotrudn.Filtered:=False;
    end
  end
  else begin
    DM.TableSklad.Filtered  :=False;
    DM.TableSotrudn.Filtered:=False;
  end;
}
{
  DM.TableSklad.Filter:='UnitCod = '+ IntToStr(DM.TableUnit.FieldByName('Cod').AsInteger);
  DM.TableSklad.Filtered:=True;
  DM.TableSotrudn.Filter:='UnitCod = '+ IntToStr(DM.TableUnit.FieldByName('Cod').AsInteger);
  DM.TableSotrudn.Filtered:=True;

}
try
  If Not DM.TableNakl.Locate('Cod',NCod,[]) and Debuger then
       MessageDlg('Накладная с Кодом '+IntToStr(NCod)+' не найдена !',
      mtWarning, [mbYes], 0);
except
      MessageDlg('Накладная с Кодом '+IntToStr(NCod)+' не найдена !',
      mtWarning, [mbYes], 0);

end;
try
  DM.TableRecNakl.Filtered:=False;
  DM.TableRecNakl.Filter:='[NaklCod]='+IntToStr(NCod);
(*
  Поле [ProizvName] не может указываться в DM.TableRecNakl.Filter
  т.к. оно вычисляемое

  If True then begin
    DM.TableRecNakl.Filter:=DM.TableRecNakl.Filter + ' and [ProizvName] = '''+'Турция'+'''';;
  end;
*)

  DM.TableRecNakl.Filtered:=True;
except
   on E: Exception do begin
    {  ShowMessage(E.Message);}
      MessageDlg('При установке фильтра таблицы RecNakl : '+DM.TableRecNakl.Filter+'. Произошла ошибка. '+
                  E.Message,
                  mtWarning, [mbYes], 0);

     // DM.TableRecNakl.Close;
     // DM.TableRecNakl.Open;
   end;
end;
{
}
end;

procedure TNaklForm.NaklModified;
var    AgentCodFrom, UnitCodFrom, SkladCodFrom, SotrudnCodFrom,
       AgentCodTo, UnitCodTo, SkladCodTo, SotrudnCodTo  : Integer;

begin
  If (VarType(DBLookupComboBoxAgentFrom.KeyValue)=varNull) or (VarType(DBLookupComboBoxAgentFrom.KeyValue)=varEmpty) then AgentCodFrom:=0
  else  AgentCodFrom:= Integer(DBLookupComboBoxAgentFrom.KeyValue);

  If (VarType(DBLookupComboBoxUnitFrom.KeyValue)=varNull) or (VarType(DBLookupComboBoxUnitFrom.KeyValue)=varEmpty) then UnitCodFrom:=0
  else  UnitCodFrom:= Integer(DBLookupComboBoxUnitFrom.KeyValue);

  If (VarType(DBLookupComboBoxSkladFrom.KeyValue)=varNull) or (VarType(DBLookupComboBoxSkladFrom.KeyValue)=varEmpty) then SkladCodFrom:=0
  else  SkladCodFrom:= Integer(DBLookupComboBoxSkladFrom.KeyValue);

  If (VarType(DBLookupComboBoxSotrudnFrom.KeyValue)=varNull) or (VarType(DBLookupComboBoxSotrudnFrom.KeyValue)=varEmpty) then SotrudnCodFrom:=0
  else  SotrudnCodFrom:= Integer(DBLookupComboBoxSotrudnFrom.KeyValue);

  If (VarType(DBLookupComboBoxAgentTo.KeyValue)=varNull) or (VarType(DBLookupComboBoxAgentTo.KeyValue)=varEmpty) then AgentCodTo:=0
  else  AgentCodTo:= Integer(DBLookupComboBoxAgentTo.KeyValue);

  If (VarType(DBLookupComboBoxUnitTo.KeyValue)=varNull) or (VarType(DBLookupComboBoxUnitTo.KeyValue)=varEmpty) then UnitCodTo:=0
  else  UnitCodTo:= Integer(DBLookupComboBoxUnitTo.KeyValue);

  If (VarType(DBLookupComboBoxSkladTo.KeyValue)=varNull) or (VarType(DBLookupComboBoxSkladTo.KeyValue)=varEmpty) then SkladCodTo:=0
  else  SkladCodTo:= Integer(DBLookupComboBoxSkladTo.KeyValue);

  If (VarType(DBLookupComboBoxSotrudnTo.KeyValue)=varNull) or (VarType(DBLookupComboBoxSotrudnTo.KeyValue)=varEmpty) then SotrudnCodTo:=0
  else  SotrudnCodTo:= Integer(DBLookupComboBoxSotrudnTo.KeyValue);

  Modified := Modified or
    (DM.TableNakl.FieldByName('DocN').AsInteger <> SpinEditN.Value) or
    (Trunc(DM.TableNakl.FieldByName('DocDate').AsDateTime) <> Trunc(DateTimePickerDate.Date)) or
    (Trunc(DM.TableNakl.FieldByName('DateOplata').AsDateTime) <> Trunc(DateTimePickerDateOplata.Date)) or
    (Trunc(Frac(DM.TableNakl.FieldByName('DocTime').AsDateTime)*1000000) <> Trunc(Frac(DateTimePickerTime.Time)*1000000)) or
    (Trunc(DM.TableNakl.FieldByName('DateOplataPolnay').AsDateTime) <> Trunc(DateTimePickerDateOplataPolnay.Date)) or
    (DM.TableNakl.FieldByName('Pr').AsString       <> EditPr.Text) or
    (DM.TableNakl.FieldByName('PrOsnov').AsString  <> EditOsnov.Text) or
    (DM.TableNakl.FieldByName('PrCherez').AsString <> EditCherez.Text) or
    (DM.TableNakl.FieldByName('PrFrom').AsString   <> EditFrom.Text) or
    (DM.TableNakl.FieldByName('PrTo').AsString     <> EditTo.Text) or

    ( Trim( FormatCurr('######0.00, , ',DM.TableNakl.FieldByName('OplataSum').AsCurrency) )  <> Trim(MaskEditOplataSum.Text) ) or

//    (DM.TableNakl.FieldByName('ParentPr').AsString <> DBEditOsnov.Text) or
//    (DM.TableNakl.FieldByName('ParentCod').AsInteger <> FormParAr[FormKind].ParentCod) or
//    (DM.TableNakl.FieldByName('ValutaCod').AsString <> ComboBoxValuta.Text) or
    (DM.TableNakl.FieldByName('Activ').AsBoolean <> CheckBoxActiv.Checked) or
    ((DM.TableNakl.FieldByName('Oplata').AsInteger=0) and (Not RadioButtonOplach.Checked)) or
    ((DM.TableNakl.FieldByName('Oplata').AsInteger=1) and (Not RadioButtonReal.Checked)) or
    ((DM.TableNakl.FieldByName('Oplata').AsInteger=2) and (Not RadioButtonKonsig.Checked)) or
    ((DM.TableNakl.FieldByName('Oplata').AsInteger=3) and (Not RadioButtonZachet.Checked)) or

    (FormParAr[FormKind].AgentCodFrom   <> AgentCodFrom)   or
    (FormParAr[FormKind].UnitCodFrom    <> UnitCodFrom)    or
    (FormParAr[FormKind].SkladCodFrom   <> SkladCodFrom)   or
    (FormParAr[FormKind].SotrudnCodFrom <> SotrudnCodFrom) or

    (FormParAr[FormKind].AgentCodTo     <> AgentCodTo)     or
    (FormParAr[FormKind].UnitCodTo      <> UnitCodTo)      or
    (FormParAr[FormKind].SkladCodTo     <> SkladCodTo)     or
    (FormParAr[FormKind].SotrudnCodTo   <> SotrudnCodTo);
end;

function TNaklForm.Save: Word;
var vResult : Variant;
    Full   : Boolean;
    I, GetN, Ind, J : Integer;
    SaveCursor : TCursor;
    Buf : String;

begin
 If (Deystv=Sozdan) or (Deystv=VosStan) or ((Deystv=Redakt) and Modified) then
  case MessageDlg('Отменить изменения в строках товара нельзя!'+#10#13+
                  'Сохранить изменения сделанные при редактировании самой Накладной: ' +#10#13+
                  NaklName[NaklKind]+' № '+IntToStr(SpinEditN.Value),
        mtConfirmation  ,mbYesNoCancel,0) of
  mrYes :
  begin
   try
   try       //  Nakl
//    If Not DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.StartTransaction;
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }

    DM.TableRecNakl.DisableControls;
    DM.TableTovar.DisableControls;
    DM.TableNakl.DisableControls;

    If  (Deystv=Sozdan)  then begin
      GetN:= GetNewN;
      If SpinEditN.Value<>GetN then
        If MessageDlg('Номер новой Накладной: '+IntToStr(SpinEditN.Value)+#10#13+
        'не соответствует номеру очередной накладной данного типа '+IntToStr(GetN)+'!'+#10#13+
        'Изменить Номер '+IntToStr(SpinEditN.Value)+' на '+IntToStr(GetN)+' ?',
        mtConfirmation  ,[mbYes,mbNo]	,0) = mrYes
        then SpinEditN.Value := GetN;
    end; //  Deystv=Sozdan

//    Full:= DM.TableNakl.Locate('Cod', NaklCod,[]);

//  try
    If Debuger then StatusBar1.SimpleText:='Начато редактирование таблицы Накладных.';
    DM.TableNakl.Edit;
    DM.TableNakl.FieldByName('DocN').AsInteger   := SpinEditN.Value;
    DM.TableNakl.FieldByName('Kind').AsInteger:= ord(NaklKind);
//    DM.TableNakl.FieldByName('ParentCod').AsInteger   := FormParAr[FormKind].ParentCod;

    DM.TableNakl.FieldByName('DocDate').AsDateTime:=DateTimePickerDate.Date;
    DM.TableNakl.FieldByName('DocTime').AsDateTime:=DateTimePickerTime.Time;
    DM.TableNakl.FieldByName('DateOplataPolnay').AsDateTime:=DateTimePickerDateOplataPolnay.Date;

    if  (Trunc(DateTimePickerDateOplata.Date)<>0)
      //or  (DateTimePickerDateOplata.Date<>StrToDateTime('30.12.1899'))
    then DM.TableNakl.FieldByName('DateOplata').AsDateTime:= DateTimePickerDateOplata.Date;
    // если дата не вводилась поле не записываем

    // если сумма не вводилась, или равна нулю, то поле не записываем
    Buf := Trim(MaskEditOplataSum.Text);
    If Buf<>'' then begin
      for Ind:= 1 to Length (Buf) do begin
        if (Ind<=Length (Buf)) and not(Buf[Ind] in ['0'..'9', ',', '.', '-', '+']) then begin
          Delete (Buf, Ind,1);

          //if Buf[Ind]=',' then Buf[Ind]:='.';
        end;
      end;
      If StrToCurr(Buf)<>0 then DM.TableNakl.FieldByName('OplataSum').AsCurrency := StrToCurr(Buf);
    end;
    // else  DM.TableNakl.FieldByName('OplataSum').AsCurrency :=0;



    DM.TableNakl.FieldByName('RealZakupka').AsBoolean:=True;

    DM.TableNakl.FieldByName('Pr').AsString      := EditPr.Text;
    DM.TableNakl.FieldByName('PrCherez').AsString:= EditCherez.Text;
    DM.TableNakl.FieldByName('PrOsnov').AsString := EditOsnov.Text;
    DM.TableNakl.FieldByName('PrFrom').AsString  := EditFrom.Text;
    DM.TableNakl.FieldByName('PrTo').AsString    := EditTo.Text;

//    DM.TableNakl.FieldByName('ValutaCod').AsString:=ComboBoxValuta.Text;
    DM.TableNakl.FieldByName('Activ').AsBoolean:=CheckBoxActiv.Checked;

//    DM.TableZhurnal.AppendRecord([,Date,Time,NaklName[Zakupka],DM.TableNakl.FieldByName('Cod').AsInteger,
//                                 UnitCoderTo,SotrudnCoderTo,DeystvName[Deystv],'']);

     If RadioButtonOplach.Checked then DM.TableNakl.FieldByName('Oplata').AsInteger:=0;
     If RadioButtonReal.Checked   then DM.TableNakl.FieldByName('Oplata').AsInteger:=1;
     If RadioButtonKonsig.Checked then DM.TableNakl.FieldByName('Oplata').AsInteger:=2;
     If RadioButtonZachet.Checked then DM.TableNakl.FieldByName('Oplata').AsInteger:=3;

     FormParAr[FormKind].Oplata         := DM.TableNakl.FieldByName('Oplata').AsInteger;
     FormParAr[FormKind].AgentCodFrom   := DM.TableNakl.FieldByName('AgentCodFrom').AsInteger;
     FormParAr[FormKind].UnitCodFrom    := DM.TableNakl.FieldByName('UnitCodFrom').AsInteger;
     FormParAr[FormKind].SkladCodFrom   := DM.TableNakl.FieldByName('SkladCodFrom').AsInteger;
     FormParAr[FormKind].SotrudnCodFrom := DM.TableNakl.FieldByName('SotrudnCodFrom').AsInteger;
     FormParAr[FormKind].AgentCodTo     := DM.TableNakl.FieldByName('AgentCodTo').AsInteger;
     FormParAr[FormKind].UnitCodTo      := DM.TableNakl.FieldByName('UnitCodTo').AsInteger;
     FormParAr[FormKind].SkladCodTo     := DM.TableNakl.FieldByName('SkladCodTo').AsInteger;
     FormParAr[FormKind].SotrudnCodTo   := DM.TableNakl.FieldByName('SotrudnCodTo').AsInteger;

    DM.TableNakl.Post;


    If Debuger then StatusBar1.SimpleText:='Закончено редактирование таблицы Накладных.';
    except //  Nakl
      on E: Exception do
      case MessageDlg('При записи в таблицу TableNakl произошла ошибка !'+#10#13+
                  E.Message+#10#13+
                  'Отменить все изменения в TableNakl, сделанные в ходе'+#10#13+
                  'редактирования (создания) накладной ?',
                  mtWarning, [mbYes, mbNo], 0) of
        mrYes :begin
                   //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Rollback;
                   result:=mrNo;
                   Exit;
                end;
      end; // case
    end;

    try
     //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit; //  Nakl
      result:= mrYes;
    except

    end;


// Присвоить признак НеПолная если Цена=0
// корректировка полей Цен в таблице Tovar
//    If Not DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.StartTransaction; // Tovar

    If Debuger then StatusBar1.SimpleText:='Корректировка полей Цен в справочнике Товаров. Присвоение признаков Активный товар для подразделений.';

      // FilterChange(NaklCod); Восстановление фильтра RecNakl на всякий пожарный
    DM.TableRecNakl.Filter:='NaklCod = '+IntToStr(NaklCod);
    DM.TableRecNakl.Filtered:=True;

    DM.TableRecNakl.First;
    Full:= True;
    while not DM.TableRecNakl.Eof do begin

      If DM.TableRecNakl.FieldByName('Zena').AsCurrency=0 then Full:= False // Присвоить признак НеПолная если Цена=0
      else
      begin
       try // for TableTovar
        If CheckBoxZakupka.Checked then begin
          If DM.TableTovar.Locate('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,[]) then
            If (DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency  <> DM.TableRecNakl.FieldByName('Zena').AsCurrency) and
               (DM.TableRecNakl.FieldByName('Zena').AsCurrency<>0)
            then begin
              DM.TableTovar.Edit;
              DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency:=DM.TableRecNakl.FieldByName('Zena').AsCurrency;
              DM.TableTovar.FieldByName('EditDate').AsDateTime   := Now;
              DM.TableTovar.Post;
            end;
        end;

        If CheckBoxRozn.Checked then begin
          If DM.TableTovar.Locate('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,[]) then
            If (DM.TableTovar.FieldByName('ZenaRozn').AsCurrency  <> DM.TableRecNakl.FieldByName('Zena').AsCurrency) and
               (DM.TableRecNakl.FieldByName('Zena').AsCurrency<>0)
            then begin
              DM.TableTovar.Edit;
              DM.TableTovar.FieldByName('ZenaRozn').AsCurrency:=DM.TableRecNakl.FieldByName('Zena').AsCurrency;
              DM.TableTovar.FieldByName('EditDate').AsDateTime   := Now;
              DM.TableTovar.Post;
            end;
        end;

        If CheckBoxMelkOpt.Checked then begin
          If DM.TableTovar.Locate('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,[])  then
            If (DM.TableTovar.FieldByName('ZenaMelkOpt').AsCurrency  <> DM.TableRecNakl.FieldByName('Zena').AsCurrency) and
               (DM.TableRecNakl.FieldByName('Zena').AsCurrency<>0)
            then begin
              DM.TableTovar.Edit;
              DM.TableTovar.FieldByName('ZenaMelkOpt').AsCurrency:=DM.TableRecNakl.FieldByName('Zena').AsCurrency;
              DM.TableTovar.FieldByName('EditDate').AsDateTime   := Now;
              DM.TableTovar.Post;
            end;
        end;

        If CheckBoxOpt.Checked then begin
          If DM.TableTovar.Locate('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,[]) then
            If (DM.TableTovar.FieldByName('ZenaOpt').AsCurrency  <> DM.TableRecNakl.FieldByName('Zena').AsCurrency) and
               (DM.TableRecNakl.FieldByName('Zena').AsCurrency<>0)
            then begin
              DM.TableTovar.Edit;
              DM.TableTovar.FieldByName('ZenaOpt').AsCurrency:=DM.TableRecNakl.FieldByName('Zena').AsCurrency;
              DM.TableTovar.FieldByName('EditDate').AsDateTime   := Now;
              DM.TableTovar.Post;
            end;
        end;
        
       except //   TableTovar
        on E: Exception do
         case MessageDlg('При записи в таблицу TableTovar произошла ошибка !'+#10#13+
                  E.Message,
                  mtWarning, [mbYes], 0) of
           mrYes :begin
                  end;
        end; // case
       end; // except

      end;  //if  else

// Присвоить признак Активный товар для подразделений получателя если кол-во товара >0
// Присвоить признак Активный товар для розницы если кол-во товара >0
//      If Debuger then StatusBar1.SimpleText:='Присвоение признаков Активный товар для подразделений если кол-во товара >0.';
      If  ( (FormKind<>FPrihod) or (FormKind<>FPrihodOld) or (FormKind<>FPerem) or (FormKind<>FPeremOld) or
            (FormKind<>FOstatok) or (FormKind<>FOstatokOld))
          and
       DM.TableTovar.Locate('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,[]) then
       begin
         case DM.TableNakl.FieldByName('UnitCodTo').AsInteger of
           2: I:=0;     // UnitCodTo=2 -> ActivForUnit0 Москва
           3: I:=1;     // UnitCodTo=3 -> ActivForUnit1 85
           6: I:=2;     // UnitCodTo=6 -> ActivForUnit2 21
           7: I:=100;   // UnitCodTo=7 -> отсутствует ActivForUnit для офиса
           8: I:=0;     // UnitCodTo=8 -> ActivForUnit0 57
           9: I:=2;     // UnitCodTo=9 -> ActivForUnit2 86-88
         end; //case
        If      (I<>100) and (DM.TableRecNakl.FieldByName('Kolvo').AsInteger>0) and
                ( (Not DM.TableTovar.FieldByName('ActivForUnit'+IntToStr(I)).AsBoolean) or
                  (Not DM.TableTovar.FieldByName('Activ').AsBoolean)     )
        then
            begin
             try   // for TableTovar
              DM.TableTovar.Edit;
              if (Not DM.TableTovar.FieldByName('ActivForUnit'+IntToStr(I)).AsBoolean)
                then DM.TableTovar.FieldByName('ActivForUnit'+IntToStr(I)).AsBoolean:=True;
              if (Not DM.TableTovar.FieldByName('Activ').AsBoolean)
                then DM.TableTovar.FieldByName('Activ').AsBoolean:=True;
              DM.TableTovar.Post;
             except //   TableTovar
               on E: Exception do
                 case MessageDlg('При записи в таблицу TableTovar произошла ошибка !'+#10#13+
                    E.Message,
                     mtWarning, [mbYes], 0) of
                  mrYes :begin
                         end;
                 end; // case
             end;
            end;
       end;

      DM.TableRecNakl.Next;
    end;  //while not DM.TableRecNakl.Eof
    // закончено редактирование Tovar
//    If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit; //  Tovar

   try  //   TableNakl  второй раз
//    If Not DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.StartTransaction;
    DM.TableNakl.Edit;
    DM.TableNakl.FieldByName('Full').AsBoolean:=Full;

    vResult:= VarType(DM.TableRecNakl.LookUp('NaklCod', NaklCod,'Zena'));
    If vResult=varNull then begin
      DM.TableNakl.FieldByName('Full').AsBoolean:=False;
      if MessageDlg('Данная Накладная не содержит ни одной строки !'+#10#13+
                  'Сделать ее неактивной',
      mtWarning, [mbYes, mbNo], 0) = mrYes then
        DM.TableNakl.FieldByName('Activ').AsBoolean:=False;
    end;
    //If Full then begin
      If Debuger then StatusBar1.SimpleText:='Начат подсчет суммы Накладной.';
      ZakupkaSumSet;
      DM.TableNakl.FieldByName('Sum').AsCurrency:=DM.QueryNaklSum.FieldByName('SumAll').AsCurrency;
   // end;

    DM.TableNakl.Post;

   except // TableNakl
      on E: Exception do
        case MessageDlg('При записи в таблицу TableNakl признаков Activ или Full произошла ошибка !'+#10#13+
                  E.Message,
                  mtWarning, [mbYes], 0) of
          mrYes :;
        end; // case
   end;  // TableNakl
    // закончено редактирование TableNakl
//    If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit; //  TableNakl

    try  //  Zhurnal
      If Debuger then StatusBar1.SimpleText:='Начато редактирование таблицы Журнала.';
      //If Not DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.StartTransaction; //  StartTransaction

      DM.TableZhurnal.Append;
      DM.TableZhurnal['Date']         := Date;
      DM.TableZhurnal['Time']         := SysUtils.Time;
      DM.TableZhurnal['Kind']         := ord(NaklKind);

      DM.TableZhurnal['DocCod']       := DM.TableNakl['Cod'];
      DM.TableZhurnal['DocN']         := DM.TableNakl['DocN'];
      DM.TableZhurnal['DocDate']      := DateTimePickerDate.Date;
      DM.TableZhurnal['Sum']          := DM.QueryNaklSum['SumAll'];
      DM.TableZhurnal['Full']         := DM.TableNakl['Full'];
      DM.TableZhurnal['Oplata']       := DM.TableNakl.FieldByName('Oplata').AsInteger;

      DM.TableZhurnal['AgentCodFrom']   := DM.TableNakl.FieldByName('AgentCodFrom').AsInteger;
      DM.TableZhurnal['UnitCodFrom']    := DM.TableNakl.FieldByName('UnitCodFrom').AsInteger;
      DM.TableZhurnal['SkladCodFrom']   := DM.TableNakl.FieldByName('SkladCodFrom').AsInteger;
      DM.TableZhurnal['SotrudnCodFrom'] := DM.TableNakl.FieldByName('SotrudnCodFrom').AsInteger;

      DM.TableZhurnal['AgentCodTo']     := DM.TableNakl.FieldByName('AgentCodTo').AsInteger;
      DM.TableZhurnal['UnitCodTo']      := DM.TableNakl.FieldByName('UnitCodTo').AsInteger;
      DM.TableZhurnal['SkladCodTo']     := DM.TableNakl.FieldByName('SkladCodTo').AsInteger;
      DM.TableZhurnal['SotrudnCodTo']   := DM.TableNakl.FieldByName('SotrudnCodTo').AsInteger;

      DM.TableZhurnal['SotrudnCod']     := InstallForm.SotrudnCod;

      case Deystv of
        Redakt : If Modified then DM.TableZhurnal['Deystv']:=DeystvName[Redakt]
                 else             DM.TableZhurnal['Deystv']:=DeystvName[Prosmotr];
        Sozdan : DM.TableZhurnal['Deystv']:=DeystvName[Sozdan];
      end;
      DM.TableZhurnal['Pr']           := DM.TableNakl.FieldByName('Pr').AsString;
      DM.TableZhurnal.Post;
      If Debuger then StatusBar1.SimpleText:='Закончено редактирование таблицы Журнала.';

      except // Zhurnal
      on E: Exception do
        case MessageDlg('При записи в журнал регистрации измений в накладные произошла ошибка !'+#10#13+
                  E.Message+#10#13+
                  'Отменить внесение изменений в журнал ?',
                  mtWarning, [mbYes, mbNo], 0) of
          mrYes : //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Rollback
                  ;
        end; // case
      end;
      //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit; // Zhurnal

   finally
      //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit; // все таблицы
    Modified:=False;
    Screen.Cursor := SaveCursor;  { Always restore to normal }
    DM.TableRecNakl.EnableControls;
    DM.TableTovar.EnableControls;
    DM.TableNakl.EnableControls;
   end;
  end; // mrYes
  mrNo     : begin
   try
    If Debuger then StatusBar1.SimpleText:='Начато редактирование таблицы Накладных.';
    DM.TableNakl.Edit;
    DM.TableNakl.FieldByName('DocN').AsInteger   := SpinEditN.Value;
    DM.TableNakl.FieldByName('Kind').AsInteger:= ord(NaklKind);

    DM.TableNakl.FieldByName('DocDate').AsDateTime:=DateTimePickerDate.Date;
    DM.TableNakl.FieldByName('DocTime').AsDateTime:=DateTimePickerTime.Time;
   except // TableNakl
      on E: Exception do
        case MessageDlg('При записи в таблицу TableNakl признаков DocN, DocDate произошла ошибка !'+#10#13+
                  E.Message,
                  mtWarning, [mbYes], 0) of
          mrYes :;
        end; // case
   end;  // TableNakl
    // закончено редактирование TableNakl

    result:= mrNo;
    //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Rollback;
  end;
  mrCancel : result:= mrCancel;
  end // case   If (Deystv=Sozdan) or ((Deystv=Redakt) and Modified)
  else
    If ((Deystv=Redakt) and Not Modified) then begin
       result:= mrNo;
       //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
    end;
  If (Deystv=Prosmotr) then result:= mrNo;
end;

procedure TNaklForm.ButtonCancelClick(Sender: TObject);
begin
  CheckBoxActiv.Checked:=False;
  Close;
end;

function TNaklForm.SetNakl(Sender: TObject; Cod: Integer; Kind:TFormKind; DeystvKind : TDeystvKind): Boolean;
var Activ  :  Boolean;
    MenuIt :  TMenuItem;

 procedure SetControl;
 begin
  case Deystv of
   Sozdan :
    begin

    RadioButtonZachet.Checked := FormParAr[FormKind].Oplata=3;
    RadioButtonOplach.Checked := FormParAr[FormKind].Oplata=0;
    RadioButtonReal  .Checked := FormParAr[FormKind].Oplata=1;
    RadioButtonKonsig.Checked := FormParAr[FormKind].Oplata=2;
    CheckBoxActiv.Checked     :=True;

    EditNaklKind.Text:=NaklName[NaklKind];
//    DBEditPr.Text:='';

    DateTimePickerDate.Date:=Date;
    DateTimePickerDateOplata.Date:=0; //Date;
    MaskEditOplataSum.Text:=''; //'0,00';

    DateTimePickerTime.Time:=SysUtils.Time;
    DateTimePickerDate.OnChange(Sender);

    DM.TableNakl.Edit;
    DM.TableNakl.FieldByName('ParentCod').AsInteger     :=0;
    FormParAr[FormKind].ParentCod                       :=0;

    DM.TableNakl.FieldByName('Kind').AsInteger          :=Integer(NaklKind);
    DM.TableNakl.FieldByName('AgentCodTo').AsInteger    :=FormParAr[FormKind].AgentCodTo;
    DM.TableNakl.FieldByName('UnitCodTo').AsInteger     :=FormParAr[FormKind].UnitCodTo;
    DM.TableNakl.FieldByName('SkladCodTo').AsInteger    :=FormParAr[FormKind].SkladCodTo;
    DM.TableNakl.FieldByName('SotrudnCodTo').AsInteger  :=FormParAr[FormKind].SotrudnCodTo;
    DM.TableNakl.FieldByName('AgentCodFrom').AsInteger  :=FormParAr[FormKind].AgentCodFrom;
    DM.TableNakl.FieldByName('UnitCodFrom').AsInteger   :=FormParAr[FormKind].UnitCodFrom;
    DM.TableNakl.FieldByName('SkladCodFrom').AsInteger  :=FormParAr[FormKind].SkladCodFrom;
    DM.TableNakl.FieldByName('SotrudnCodFrom').AsInteger:=FormParAr[FormKind].SotrudnCodFrom;
    DM.TableNakl.Post;

    case FormKind of
      FZakupkaOld, FZakupka : begin

      end;
      FProdazhaOld, FProdazha : begin
      end;
      FPrihodOld, FPrihod : begin
        (* case DM.TableNakl.FieldByName('UnitCodTo').AsInteger of
          2,8,3,6,9 : begin
                      end;// Москва или Юж57
        end;  *)
        CheckBoxRozn.Checked        := True;
        RadioButtonRozn.Checked     := True;
        RadioButtonZakupka0.Checked := True;

        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;


      end;
      FOstatokOld, FOstatok : begin
        (* case DM.TableNakl.FieldByName('UnitCodTo').AsInteger of
          2,8,3,6,9 : begin
                      end;// Москва или Юж57
        end;   *)
                        CheckBoxRozn.Checked   :=True;
                        RadioButtonRozn.Checked:= True;
                        RadioButtonZakupka0.Checked    := True;

        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;

      end;
      FPeremOld, FPerem : begin
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;

       end;
      FSchetOld, FSchet : begin
      end;
      FCashToOld, FCashTo : begin
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;

      end;
      FCashFromOld, FCashFrom : begin
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;

      end;
      FPereOzenkaOld, FPereOzenka : begin
        (* case DM.TableNakl.FieldByName('UnitCodTo').AsInteger of
          2,8,3,6,9 : begin
                      end;// Москва или Юж57
        end; *)
                        CheckBoxRozn.Checked:= True;
                        RadioButtonRozn0.Checked:= True;
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;

      end;
    end;

   end;  // Sozdan
  Redakt,Prosmotr :
   begin
    If  Deystv=Prosmotr then begin
      DBGrid1.ReadOnly:=True;
      DbGrid1.Columns[1].ButtonStyle:=cbsNone;
      SpinEditN.ReadOnly:=True;
      ButtonNewN.Enabled:=False;
      DateTimePickerTime.Enabled:=False;
      DateTimePickerDate.Enabled:=False;
      DateTimePickerDateOplata.Enabled:=False;
      CheckBoxOplataSrazu.Visible :=False;

      EditAvtor.Enabled:=False;
      ComboBoxPodbor.Enabled:=False;
      CheckBoxActiv.Enabled:=False;
      DBLookupComboBoxAgentFrom.Enabled:=False;
      DBLookupComboBoxUnitFrom.Enabled:=False;
      DBLookupComboBoxSkladFrom.Enabled:=False;
      DBLookupComboBoxSotrudnFrom.Enabled:=False;
      DBLookupComboBoxAgentTo.Enabled:=False;
      DBLookupComboBoxUnitTo.Enabled:=False;
      DBLookupComboBoxSkladTo.Enabled:=False;
      DBLookupComboBoxSotrudnTo.Enabled:=False;
      EditFrom.Enabled:=False;
      EditTo.Enabled:=False;
      EditCherez.Enabled:=False;
      EditOsnov.Enabled:=False;
      EditPr.Enabled:=False;
      RadioButtonOplach.Enabled:=False;
      RadioButtonZachet.Enabled:=False;
      RadioButtonReal.Enabled:=False;
      RadioButtonKonsig.Enabled:=False;
      SpinEditCredit.Enabled:=False;
      DateTimePickerDateOplataPolnay.Enabled:=False;
      MaskEdit2.Enabled:=False;
      ComboBoxValuta.Enabled:=False;
      ButtonN.Enabled:=False;
      DBNavigator1.VisibleButtons:=[nbFirst,nbPrior,nbNext,nbLast];
      DBNavigator1.Width:=100;
      //закладка установки
      ButtonPereSchetZena.Enabled:=False;
      ButtonSetAllZens.Enabled:=False;
      ButtonParent.Enabled:=False;
      ButtonFromParent.Enabled:=False;
      ButtonFromTovar.Enabled:=False;
      ButtonDelAll.Enabled:=False;
      ButtonSort.Enabled:=False;
      ButtonNo0.Enabled:=False;
      SpinEditN.Enabled:=False;
    end;
    case FormKind of
      FZakupkaOld, FZakupka : begin
        CheckBoxZena0Vis.Checked :=True;
        CheckBoxPerCentVis.Checked :=True;
      end;
      FProdazhaOld, FProdazha : begin
        CheckBoxZena0Vis.Checked :=True;
        CheckBoxPerCentVis.Checked :=True;
        case DM.TableNakl.FieldByName('UnitCodFrom').AsInteger of
          2,8,3,6 : begin RadioButtonRozn.Checked:= True;    end;// Москва or #57
//          3   : begin RadioButtonMelkOpt.Checked:= True; end;// Юж 85
//          6   : begin RadioButtonOpt.Checked:= True;     end;// Юж 21
        end;
      end;
      FPrihodOld, FPrihod : begin
        CheckBoxZena0Vis.Checked :=True;
        CheckBoxPerCentVis.Checked :=True;
        case DM.TableNakl.FieldByName('UnitCodTo').AsInteger of
          2,8,3,6 : begin RadioButtonRozn.Checked:= True;    end;// Москва or #57
//          3   : begin RadioButtonMelkOpt.Checked:= True; end;// Юж 85
//          6   : begin RadioButtonOpt.Checked:= True;     end;// Юж 21
        end;
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;
      end;
      FOstatokOld, FOstatok : begin
        CheckBoxZena0Vis.Checked :=True;
        CheckBoxPerCentVis.Checked :=True;
                        RadioButtonRozn.Checked:= True;
                        RadioButtonZakupka0.Checked    := True;

        case DM.TableNakl.FieldByName('UnitCodTo').AsInteger of
          2,8,3,6 : begin RadioButtonRozn.Checked:= True;    end;// Москва or #57
//          3   : begin RadioButtonMelkOpt.Checked:= True; end;// Юж 85
//         6   : begin RadioButtonOpt.Checked:= True;     end;// Юж 21
        end;
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;

      end;
      FPeremOld, FPerem : begin
        case DM.TableNakl.FieldByName('UnitCodFrom').AsInteger of
          2,8,3,6 : begin RadioButtonRozn.Checked:= True;    end;// Москва  or #57
//          3   : begin RadioButtonMelkOpt.Checked:= True; end;// Юж 85
//          6   : begin RadioButtonOpt.Checked:= True;     end;// Юж 21
        end;
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;
      end;
      FSchetOld, FSchet : begin
      end;
      FCashToOld, FCashTo : begin
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;
      end;
      FCashFromOld, FCashFrom : begin
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;
      end;
      FPereOzenkaOld, FPereOzenka : begin
        CheckBoxZena0Vis.Checked :=True;
        CheckBoxPerCentVis.Checked :=True;
                        RadioButtonRozn0.Checked:= True;
                        RadioButtonRozn.Checked := True;

        case DM.TableNakl.FieldByName('UnitCodFrom').AsInteger of
          2,8,3,6 : begin RadioButtonRozn0.Checked:= True;    end;// Москва or #57
//          3   : begin RadioButtonMelkOpt0.Checked:= True; end;// Юж 85
//          6   : begin RadioButtonOpt0.Checked:= True;     end;// Юж 21
        end;
        CheckBoxOplataSrazu.Visible         :=False;
        DateTimePickerDateOplata.Visible    :=False;
        MaskEditOplataSum.Visible           :=False;

      end;

    end;

    EditNaklKind.Text:=NaklName[NaklKind];

//    SpinEditN.ReadOnly:=True;

    DateTimePickerDate.Date:=DM.TableNakl.FieldByName('DocDate').AsDateTime;
    DateTimePickerTime.Time:=DM.TableNakl.FieldByName('DocTime').AsDateTime;
    DateTimePickerDateOplata.Date:=DM.TableNakl.FieldByName('DateOplata').AsDateTime;
    MaskEditOplataSum.Text :=  FormatCurr('######0.00, , ',DM.TableNakl.FieldByName('OplataSum').AsCurrency);

    DateTimePickerDateOplataPolnay.Date:=DM.TableNakl.FieldByName('DateOplataPolnay').AsDateTime;
    SpinEditCredit.OnChange(Sender);

//    DBEditPr.Text:=DM.TableNakl.FieldByName('Pr').AsString;
    CheckBoxActiv.Checked:=DM.TableNakl.FieldByName('Activ').AsBoolean;

    SpinEditN.Value:= DM.TableNakl.FieldByName('DocN').AsInteger;

    case  DM.TableNakl.FieldByName('Oplata').AsInteger of
      0:  RadioButtonOplach.Checked := True;
      1:  RadioButtonReal.Checked   := True;
      2:  RadioButtonKonsig.Checked := True;
      3:  RadioButtonZachet.Checked := True;
    end;

//    FormParAr[FormKind].ParentCod      := DM.TableNakl.FieldByName('ParentCod').AsInteger;
    FormParAr[FormKind].ParentCod      :=0;
    ComboBoxParentItemsSet;

    FormParAr[FormKind].AgentCodFrom   := DM.TableNakl.FieldByName('AgentCodFrom').AsInteger;
    FormParAr[FormKind].UnitCodFrom    := DM.TableNakl.FieldByName('UnitCodFrom').AsInteger;
    FormParAr[FormKind].SkladCodFrom   := DM.TableNakl.FieldByName('SkladCodFrom').AsInteger;
    FormParAr[FormKind].SotrudnCodFrom := DM.TableNakl.FieldByName('SotrudnCodFrom').AsInteger;

    FormParAr[FormKind].AgentCodTo     := DM.TableNakl.FieldByName('AgentCodTo').AsInteger;
    FormParAr[FormKind].UnitCodTo      := DM.TableNakl.FieldByName('UnitCodTo').AsInteger;
    FormParAr[FormKind].SkladCodTo     := DM.TableNakl.FieldByName('SkladCodTo').AsInteger;
    FormParAr[FormKind].SotrudnCodTo   := DM.TableNakl.FieldByName('SotrudnCodTo').AsInteger;
    //    SpinEditN.ReadOnly:=True;
   end; // Redact
   VosStan :
   begin
      EditNaklKind.Text:=NaklName[NaklKind];
    // восстан из журнала
//     DM.TableNakl.FieldByName('ParentCod').AsInteger     :=0;
     FormParAr[FormKind].ParentCod                       :=0;

     DM.TableNakl.FieldByName('AgentCodFrom').AsInteger  := DM.TableZhurnal.FieldByName('AgentCodFrom').AsInteger;
     DM.TableNakl.FieldByName('UnitCodFrom').AsInteger   := DM.TableZhurnal.FieldByName('UnitCodFrom').AsInteger;
     DM.TableNakl.FieldByName('SkladCodFrom').AsInteger  := DM.TableZhurnal.FieldByName('SkladCodFrom').AsInteger;
     DM.TableNakl.FieldByName('SotrudnCodFrom').AsInteger:= DM.TableZhurnal.FieldByName('SotrudnCodFrom').AsInteger;

     DM.TableNakl.FieldByName('AgentCodTo').AsInteger    := DM.TableZhurnal.FieldByName('AgentCodTo').AsInteger;
     DM.TableNakl.FieldByName('UnitCodTo').AsInteger     := DM.TableZhurnal.FieldByName('UnitCodTo').AsInteger;
     DM.TableNakl.FieldByName('SkladCodTo').AsInteger    := DM.TableZhurnal.FieldByName('SkladCodTo').AsInteger;
     DM.TableNakl.FieldByName('SotrudnCodTo').AsInteger  := DM.TableZhurnal.FieldByName('SotrudnCodTo').AsInteger;

      DateTimePickerDate.Date:=DM.TableZhurnal.FieldByName('DocDate').AsDateTime;
      DateTimePickerTime.Time:=SysUtils.Time;
      DateTimePickerDateOplataPolnay.Date:=DM.TableZhurnal.FieldByName('DocDate').AsDateTime;
      SpinEditCredit.OnChange(Sender);

//      DBEditPr.Text:=DM.TableZhurnal.FieldByName('Pr').AsString;
      CheckBoxActiv.Checked:=True;

      SpinEditN.Value:= DM.TableZhurnal.FieldByName('DocN').AsInteger;
   end; // VosStan
  end; //  case Deystv of
  EditCod.Text:=IntToStr(DM.TableNakl.FieldByName('Cod').AsInteger);

  EditCherez.Text:= DM.TableNakl.FieldByName('PrCherez').AsString;
  EditOsnov.Text := DM.TableNakl.FieldByName('PrOsnov').AsString;
  EditFrom.Text  := DM.TableNakl.FieldByName('PrFrom').AsString;
  EditTo.Text    := DM.TableNakl.FieldByName('PrTo').AsString;
  EditPr.Text    := DM.TableNakl.FieldByName('Pr').AsString;

  If (Deystv= Sozdan) or (Deystv= Redakt) then
     case FormKind of
      FZakupka,FZakupkaOld : begin
        If (Deystv= Sozdan) then begin
          CheckBoxZakupka.Checked:= True;
        end;  
      end;
      FProdazha,FProdazhaOld : begin
      end;
      FPrihod, FPrihodOld : begin
        RadioButtonZachet.Checked:= True;
      end;
      FOstatok, FOstatokOld : begin
        RadioButtonZachet.Checked:= True;
      end;
      FPeremOld, FPerem : begin
        RadioButtonZachet.Checked:= True;
      end;
      FSchetOld, FSchet : begin
        RadioButtonZachet.Checked:= True;
      end;
      FCashToOld, FCashTo : begin
        RadioButtonOplach.Checked:= True;
      end;
      FPereOzenkaOld, FPereOzenka : begin
        RadioButtonOplach.Checked:= True;
      end;
     end;  // case FormKind of

     Caption:= NaklName[NaklKind];
     If Deystv<>Sozdan then Caption:=  Caption+' №'+IntToStr(DM.TableNakl['DocN']);
     Caption:=   Caption+ ' '+DeystvName[Deystv];


 end;  // SetControl

begin   // SetNakl

  FormKind := Kind;
  NaklKind := InstallForm.FormKindToNaklKind(Kind);
  Modified := False;

  Activ:= False;
  Deystv:=DeystvKind;

  try //
  case DeystvKind of

   Sozdan : begin
    //If FormParAr[EditFormKind].Transactioner then

    //If Not DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.StartTransaction; //  StartTransaction
    try
//      DM.TableNakl.Edit;
      DM.TableNakl.Append;
      DM.TableNakl.Post;
      NaklCod  := DM.TableNakl.FieldByName('Cod').AsInteger;

      SetControl;

      Activ:= True;
    except
      on E: Exception do
      case MessageDlg('При создании новой накладной в таблице TableNakl произошла ошибка !'+#10#13+
                  E.Message+#10#13+
                  'Отменить все изменения в базе, сделанные в ходе'+#10#13+
                  'редактирования (создания) накладной во всех таблицах ?',
                  mtWarning, [mbYes, mbNo], 0) of
        mrYes :begin
                 //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Rollback;
                 Result:=False;
                 Exit;
               end;
      end;
    end;

  end;   // case Sozdan
  Redakt, Prosmotr :
   If DM.TableNakl.Locate('Cod',Cod,[]) then
   begin
    If DeystvKind=Redakt  then
      //If FormParAr[EditFormKind].Transactioner then
//      If Not DM.TableNakl.DataBase.InTransaction
//        then DM.TableNakl.DataBase.StartTransaction; //  StartTransaction

    NaklCod  := DM.TableNakl.FieldByName('Cod').AsInteger;
    SetControl;
    Activ:= True;
   end // If DM.TableNakl.Locate
   else
    If MessageDlg('Запись в Журнале ссылается на накладную скодом '+IntToStr(Cod)+#10#13+
                  'Такая накладная не найдена, Будем создавать ее Заново ?',
    mtError	, [mbYes, mbNo], 0) = mrYes then begin
      Deystv:=VosStan;
      //If FormParAr[EditFormKind].Transactioner then
      //If Not DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.StartTransaction; //  StartTransaction
     try

      DM.TableNakl.Append;
      DM.TableNakl.Post;
      NaklCod  := DM.TableNakl.FieldByName('Cod').AsInteger;

      SetControl;

      // все изменения в журнал вносятся в Save
      // DM.TableZhurnal.Edit;
      // DM.TableZhurnal.FieldByName('DocCod').AsInteger:=DM.TableNakl['Cod'];
      // DM.TableZhurnal.Post;

      Activ:= True;
    except
      on E: Exception do
      case MessageDlg('При создании в таблице TableNakl  новой накладной произошла ошибка !'+#10#13+
                  E.Message+#10#13+
                  'Отменить все изменения в базе, сделанные в ходе'+#10#13+
                  'редактирования (создания) накладной во всех таблицах ?',
                  mtWarning, [mbYes, mbNo], 0) of
        mrYes :begin
                 //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Rollback;
                 Result:=False;
                 Exit;
               end;
      end;         
    end;
    end
    else // If MessageDlg
      Activ:=False;
  end; //case

  FormParAr[FormKind].Activ    :=Activ;

  If Activ then begin
   NaklCod  := DM.TableNakl.FieldByName('Cod').AsInteger;

   FormParAr[FormKind].NaklCod  := DM.TableNakl.FieldByName('Cod').AsInteger;
   FormParAr[FormKind].DocN     := DM.TableNakl.FieldByName('DocN').AsInteger;

   FormParAr[FormKind].Deystv   := Deystv;

   If (Deystv=VosStan) or (Deystv=Redakt) or (Deystv=Sozdan) then begin
     ComboBoxPodbor.ItemIndex:=0;
     ComboBoxPodbor.OnChange(Sender);
   end
   else begin  //Просмотр
     ComboBoxPodbor.Items.Add('Выключен');
     ComboBoxPodbor.ItemIndex:=1;
     ComboBoxPodbor.Enabled:=False;
     If (EditFormKind<>FTovar) and  FormParAr[EditFormKind].Activ
     then begin
       NaklFormAr[EditFormKind].ComboBoxPodbor.Items.Add(Caption); //добавить в подбираемую накл
       NaklFormAr[EditFormKind].ComboBoxPodbor.Enabled:= ComboBoxPodbor.Items.Count>1;
     end;

   end;
   If (Deystv=Sozdan) then   SpinEditN.Value:= GetNewN;

   MenuIt:=TMenuItem.Create(MainForm.WindowMenu);
   MenuIt.Caption := Caption;
   MenuIt.Visible := True;
   MenuIt.OnClick := Showing;

   MainForm.WindowMenu.Add(MenuIt);
//   MenuIndex:= MainForm.WindowMenu.IndexOf(MenuIt);

   ZakupkaSumSet;
   CheckBoxNDS.OnClick(Sender);
   CheckBoxColumnClick(Sender);
  end;  // If Activ

  Result:=Activ;
   finally
      //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit; // все таблицы - изменения внесены
   end;

end;   // SetNakl


procedure TNaklForm.ZenaRecNaklSet;
//после изменения значения кода товара подставляет значения: Kolvo, NaklCod,  Zena и Zena0
var LookUpResults : Variant;
begin
 If Not(RezhFromParent and RadioButtonZenaFromParent.Checked) then
 begin
    If (RadioButtonSql.Checked  or RadioButtonSql0.Checked) then begin
      with DM.QueryZenaHistory do
      begin
       Close;
       ParamByName('Kind').Value         := NaklKind;
       ParamByName('AgentCodFrom').Value := DM.TableNakl.FieldByName('AgentCodFrom').AsInteger;
       ParamByName('AgentCodTo').Value   := DM.TableNakl.FieldByName('AgentCodTo').AsInteger;
   //    ParamByName('UnitCodFrom').Value  := DM.TableNakl.FieldByName('UnitCodFrom').AsInteger;
       ParamByName('UnitCodTo').Value    := DM.TableNakl.FieldByName('UnitCodTo').AsInteger;
       ParamByName('TovarCod').Value     := DM.TableRecNakl.FieldByName('TovarCod').AsInteger;
       Open;
      end;
      If RadioButtonSql.Checked then
        If DM.QueryZenaHistory.RecordCount>0 then DM.TableRecNaklZena.AsCurrency:= DM.QueryZenaHistory['Zena']
        else DM.TableRecNaklZena.AsCurrency:=0;
      If RadioButtonSql0.Checked then
        If DM.QueryZenaHistory.RecordCount>0 then DM.TableRecNaklZena0.AsCurrency:= DM.QueryZenaHistory['Zena']
       else DM.TableRecNaklZena0.AsCurrency:=0;
    end; //If (RadioButtonSql.Checked

    If RadioButtonZakupka.Checked  then
      LookUpResults :=DM.TableTovar.LookUp('Cod',DM.TableRecNaklTovarCod.AsInteger,  'ZenaZakupka');
    If RadioButtonRozn.Checked then
        LookUpResults :=DM.TableTovar.LookUp('Cod',DM.TableRecNaklTovarCod.AsInteger, 'ZenaRozn');
    If RadioButtonOpt.Checked  then
        LookUpResults :=DM.TableTovar.LookUp('Cod',DM.TableRecNaklTovarCod.AsInteger, 'ZenaOpt');
    If RadioButtonMelkOpt.Checked  then
        LookUpResults :=DM.TableTovar.LookUp('Cod',DM.TableRecNaklTovarCod.AsInteger, 'ZenaMelkOpt');
    If RadioButtonRoznSr.Checked  then
        LookUpResults :=DM.TableTovar.LookUp('Cod',DM.TableRecNaklTovarCod.AsInteger, 'ZenaRoznSr');

    If RadioButtonValue.Checked  then
      If MaskEdit1.Text='' then LookUpResults :=0
      else  LookUpResults := StrToCurr(MaskEdit1.Text);

    If Not RadioButtonNot.Checked and Not RadioButtonSql.Checked then
      If VarType(LookUpResults)<>varNull then
      begin
        If VarType(LookUpResults)<>varEmpty then DM.TableRecNaklZena.AsCurrency:=LookUpResults
        else DM.TableRecNaklZena.AsCurrency:=0;
      end
      else DM.TableRecNaklZena.AsCurrency:=0;

    If RadioButtonZakupka0.Checked then
      LookUpResults :=DM.TableTovar.LookUp('Cod',DM.TableRecNaklTovarCod.AsInteger,  'ZenaZakupka');
    If RadioButtonRozn0.Checked then
        LookUpResults :=DM.TableTovar.LookUp('Cod',DM.TableRecNaklTovarCod.AsInteger, 'ZenaRozn');
    If RadioButtonOpt0.Checked then
        LookUpResults :=DM.TableTovar.LookUp('Cod',DM.TableRecNaklTovarCod.AsInteger, 'ZenaOpt');
    If RadioButtonMelkOpt0.Checked then
        LookUpResults :=DM.TableTovar.LookUp('Cod',DM.TableRecNaklTovarCod.AsInteger, 'ZenaMelkOpt');
    If RadioButtonValue0.Checked then
      If MaskEdit0.Text='' then LookUpResults :=0
      else  LookUpResults := StrToCurr(MaskEdit0.Text);

    If Not RadioButtonNot0.Checked and Not RadioButtonSql0.Checked  then
      If VarType(LookUpResults)<>varNull then
      begin
        If VarType(LookUpResults)<>varEmpty then DM.TableRecNaklZena0.AsCurrency:=LookUpResults
        else DM.TableRecNaklZena0.AsCurrency:=0;
      end
      else DM.TableRecNaklZena0.AsCurrency:=0;
 end;  //   If Not RadioButtonNot.Checked

  DM.TableRecNaklNaklCod.AsInteger   := NaklCod;

  If CheckBoxKolvo.Checked   //      or  (DM.TableRecNaklKolvo.Value=Null)
  then DM.TableRecNaklKolvo.AsInteger:= SpinEditKolvo.Value;
end;

procedure TNaklForm.ZakupkaSumSet;
var I : Integer;
begin
  If CheckBoxPreSum.Checked then
  begin

    For I:=0 to DBGrid1.SelectedRows.Count-1 do
    begin
      DBGrid1.DataSource.DataSet.GotoBookmark(TBookmark(DBGrid1.SelectedRows[I])); // был TPointer. вызывал ошибку в D10

      Sum :=Sum+DBGrid1.DataSource.DataSet.FieldByName('Kolvo').AsCurrency*
           DBGrid1.DataSource.DataSet.FieldByName('Zena').AsCurrency;
      Sum0:=Sum0+DBGrid1.DataSource.DataSet.FieldByName('Kolvo').AsCurrency*
           DBGrid1.DataSource.DataSet.FieldByName('Zena0').AsCurrency;
    end;
    MaskEditNaklSum.Text    :=FormatCurr('######0.00, , ',Sum);
    MaskEditNaklSum0.Text   :=FormatCurr('######0.00, , ',Sum0);
    MaskEditPerCent.Text    :=FormatCurr('######0.00, , ',100*(1-Sum0/Sum));
    If CheckBoxNDS.Checked then
     MaskEditZakupkaNDS.Text:=FormatCurr('######0.00, , ',Sum*NDS/(100+NDS));
  end
  else begin
    with DM.QueryNaklSum do begin
      Close;
      If (NaklKind=PereOzenka)  then
        DM.QueryNaklSum.SQL[0]:= 'SELECT SUM(  Kolvo*(Zena-Zena0) ) SumAll,'
      else
        DM.QueryNaklSum.SQL[0]:= 'SELECT SUM(  Kolvo*Zena ) SumAll,';

      ParamByName('NaklCod').Value := NaklCod;
      Open;
    end;
    MaskEditNaklSum.Text :=FormatCurr('######0.00, , ',DM.QueryNaklSum.FieldByName('SumAll').AsCurrency);
    MaskEditNaklSum0.Text:=FormatCurr('######0.00, , ',DM.QueryNaklSum.FieldByName('SumAll0').AsCurrency);
    MaskEditPerCent.Text :=FormatCurr('##0.00, , ',DM.QueryNaklSum.FieldByName('PerCent').AsCurrency);

    If CheckBoxNDS.Checked then
      MaskEditZakupkaNDS.Text:=FormatCurr('######0.00, , ',DM.QueryNaklSum.FieldByName('SumAll').AsFloat*NDS/(100+NDS));
  end;
end;

procedure TNaklForm.CheckBoxNDSClick(Sender: TObject);
begin
//  DbGrid1.Columns[8].Visible :=CheckBoxNDS.Checked;
//  StaticTextNDS.Visible :=CheckBoxNDS.Checked;
  If CheckBoxNDS.Checked then
    MaskEditZakupkaNDS.Text:=FormatCurr('######0.00, , ',DM.QueryNaklSum.FieldByName('SumAll').AsCurrency*NDS/(100+NDS));
  MaskEditZakupkaNDS.Visible :=CheckBoxNDS.Checked;
end;

procedure TNaklForm.ComboBoxPodborChange(Sender: TObject);
var I : TFormKind;
begin
 If Deystv<>Prosmotr then begin
  case ComboBoxPodbor.ItemIndex of
    0: InstallForm.PodborerChange(FTovar,FormKind);
    1: begin
         For I:=Succ(Low(FormParAr)) to High(FormParAr) do
           If FormParAr[I].Activ then
             If ComboBoxPodbor.Text= NaklFormAr[I].Caption then
               InstallForm.PodborerChange(I,FormKind);    //другая накл
       end;
  end;
  ComboBoxPodbor.Enabled:= ComboBoxPodbor.Items.Count>1;
  DbGrid1.Repaint;
 end;
end;

procedure TNaklForm.DBGrid1EditButtonClick(Sender: TObject);
begin
  If InstallForm.PodborerFrom=FTovar then  TovarForm.Show
  else
     // подбор идет сюда
    If (InstallForm.PodborerTo=FormKind) then NaklFormAr[InstallForm.PodborerFrom].Show;
end;

procedure TNaklForm.FormActivate(Sender: TObject);
var LookupResults,LookupResults1 : Variant;
//    Buf: Boolean;
begin
  // контроль прав доступа
  DBGrid1.ReadOnly := InstallForm.Dostup <= 2;
  If InstallForm.Dostup <= 2 then DBNavigator1.VisibleButtons :=[nbFirst,nbPrior,nbNext,nbLast]
  else DBNavigator1.VisibleButtons :=[nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
  Label13             .Visible := InstallForm.Dostup >= 3;
  MaskEditNaklSum0    .Visible := InstallForm.Dostup >= 3;
  MaskEditPerCent     .Visible := InstallForm.Dostup >= 3;

  CheckBoxZena0Pr     .Enabled := InstallForm.Dostup >= 3;
  CheckBoxZena0Vis    .Enabled := InstallForm.Dostup >= 3;
  CheckBoxPerCentPr   .Enabled := InstallForm.Dostup >= 3;
  CheckBoxPerCentVis  .Enabled := InstallForm.Dostup >= 3;
  If InstallForm.Dostup <= 2 then CheckBoxPerCentPr .Checked := False;
  If InstallForm.Dostup <= 2 then CheckBoxPerCentVis.Checked := False;
  If InstallForm.Dostup <= 2 then CheckBoxZena0Pr   .Checked := False;
  If InstallForm.Dostup <= 2 then CheckBoxZena0Vis  .Checked := False;

  If FormParAr[FormKind].Activ then FilterChange(NaklCod);

  If Not DM.TableRecNakl.Locate('Cod',FormParAr[FormKind].RecActivCod,[])
     and Debuger and (FormParAr[FormKind].RecActivCod<>0)
  then
       MessageDlg('Строка Накладной с Кодом '+IntToStr(FormParAr[FormKind].RecActivCod)+' не найдена !',
      mtWarning, [mbYes], 0);
//  CheckBoxColumnClick(Sender);
//  DM.TableRecNakl.GotoBookMark(BookMark);
  DBLookupComboBoxAgentTo.KeyValue    := DM.TableNakl.FieldByName('AgentCodTo').AsInteger;
  DBLookupComboBoxUnitTo.KeyValue     := DM.TableNakl.FieldByName('UnitCodTo').AsInteger;
  DBLookupComboBoxSkladTo.KeyValue    := DM.TableNakl.FieldByName('SkladCodTo').AsInteger;
  DBLookupComboBoxSotrudnTo.KeyValue  := DM.TableNakl.FieldByName('SotrudnCodTo').AsInteger;

  DBLookupComboBoxAgentFrom.KeyValue  := DM.TableNakl.FieldByName('AgentCodFrom').AsInteger;
  DBLookupComboBoxUnitFrom.KeyValue   := DM.TableNakl.FieldByName('UnitCodFrom').AsInteger;
  DBLookupComboBoxSkladFrom.KeyValue  := DM.TableNakl.FieldByName('SkladCodFrom').AsInteger;
  DBLookupComboBoxSotrudnFrom.KeyValue:= DM.TableNakl.FieldByName('SotrudnCodFrom').AsInteger;
//  ZakupkaSumSet;
//  CheckBoxNDS.OnClick(Sender);

  DM.TableRecNakl.Refresh;
  ButtonDopOstatok.Enabled:= (DM.TableNakl.FieldByName('Kind').AsInteger=4) or
                             (DM.TableNakl.FieldByName('Kind').AsInteger=5);  //only fo Ostatok or Perem

end;

procedure TNaklForm.ComboBoxParentItemsSet;
var     ParentFilteredBuf   : Boolean;
        ParentFilterBuf : String;
begin
  ParentFilteredBuf := DM.TableParent.Filtered;
  ParentFilterBuf   := DM.TableParent.Filter;
  DM.TableParent.Filter  :='SonCod = '+IntToStr(NaklCod);
  DM.TableParent.Filtered:=True;

  ComboBoxParent.Clear;
  while Not DM.TableParent.Eof do
  begin
    ComboBoxParentAdd(DM.TableParent.FieldByName('ParentCod').AsInteger);
    DM.TableParent.Next;
  end;

  DM.TableParent.Filter  := ParentFilterBuf;
  DM.TableParent.Filtered:= ParentFilteredBuf;

  // восстановление текущей строки DM.TableNakl
  If DM.TableNakl.Locate('Cod',NaklCod,[]) then
  else;
end;

procedure TNaklForm.ComboBoxParentAdd(ParentCod: Integer);
var LookupResults,LookupResults1 : Variant;
    Buf : String;
    NaklFilteredBuf : Boolean;
    AgentCodFrom : Integer;
begin
//    MaskUtils. MaskNoSave
  NaklFilteredBuf       := DM.TableNakl.Filtered;
  DM.TableNakl.Filtered :=False;
         //поиск родительской накл
    LookupResults :=DM.TableNakl.Lookup('Cod',ParentCod,'DocN;Kind;AgentCodFrom;AgentCodTo');
    If VarIsArray(LookupResults) then
    begin
       Buf:='Код '+ FormatMaskText('00000;1;0',IntToStr(ParentCod))  ;  // Trim()
       Buf:=Buf+' ';

       Buf:=Buf+ FormatMaskText('!CCCCCCC;0; ',NaklName[TNaklKind(LookupResults[1])]) ;

       Buf:=Buf+' № '+FormatMaskText('00000;1;0',IntToStr(LookupResults[0])) ;

       Buf:=Buf+' Отпр: ';
       AgentCodFrom:= LookupResults[2];
       LookupResults1 :=DM.TableAgent.Lookup('Cod',AgentCodFrom,'AgentRedName;AgentName');
       If (VarType(LookupResults1)=varNull) or (VarType(LookupResults1)=varEmpty) then
             Buf:=Buf+ FormatMaskText('CCCCCC;0; ','')
       else
         If LookupResults1[0] <>''
         then Buf:=Buf+ FormatMaskText( 'CCCCCC;0; ',LookupResults1[0] )
         else  If LookupResults1[1] <>''
               then Buf:=Buf+ FormatMaskText('CCCCCC;0; ',LookupResults1[1]);

       Buf:=Buf+' ';

       Buf:=Buf+' Получ: ';
       LookupResults1 :=DM.TableAgent.Lookup('Cod',LookupResults[3],'AgentRedName');
       If (VarType(LookupResults1)=varNull) or (VarType(LookupResults1)=varEmpty) then
             Buf:=Buf+ FormatMaskText('CCCCCC;0; ','')
       else  Buf:=Buf+ FormatMaskText('CCCCCC;0; ',LookupResults1);

//       Buf:=Trim(Buf)+' ';

//       ComboBoxParent.Items.AddObject(Buf,TObject(ParentCod));
       ComboBoxParent.Items.Add(Buf);
    end;
  DM.TableNakl.Filtered:= NaklFilteredBuf;

  BitBtnParentDel.Enabled:= (ComboBoxParent.Items.Count>0) and (ComboBoxParent.Text<>'');
  Label10.Caption:=IntToStr(ComboBoxParent.Items.Count);
end;


procedure TNaklForm.DBGrid1ColExit(Sender: TObject);
begin
  If DM.TableRecNakl.Modified then DM.TableRecNakl.Post;
end;

procedure TNaklForm.SpinEditPercentChange(Sender: TObject);
begin
  If TSpinEdit(Sender).Value>0 then TSpinEdit(Sender).Font.Color:= clRed
  else If TSpinEdit(Sender).Value=0 then TSpinEdit(Sender).Font.Color:= clBlack
       else If TSpinEdit(Sender).Value<0 then TSpinEdit(Sender).Font.Color:= clGreen;
end;

procedure TNaklForm.ButtonNClick(Sender: TObject); // Пронумеровать
var I : Integer;
    SaveCursor : TCursor;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }

  DM.TableRecNakl.DisableControls;

  //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
  FormParAr[EditFormKind].Transactioner:=False;  //

  FormParAr[FormKind].RecActivCod :=DM.TableRecNakl.FieldByName('Cod').AsInteger;
  I:=1;
  DM.TableRecNakl.First;
  While Not(DM.TableRecNakl.Eof) do begin
//    If DM.TableRecNakl.FieldByName('N').Value=Null then
    begin
      DM.TableRecNakl.Edit;
      DM.TableRecNakl.FieldByName('N').AsInteger:=I;
      DM.TableRecNakl.Post;
    end;
    DM.TableRecNakl.Next;
    Inc(I);
  end;
  DM.TableRecNakl.Refresh;

  FormParAr[EditFormKind].Transactioner:=True;

  Screen.Cursor := SaveCursor;  { Always restore to normal }
  DM.TableRecNakl.Locate('Cod',FormParAr[FormKind].RecActivCod,[]);
  DM.TableRecNakl.EnableControls;

end;


procedure TNaklForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  with DBGrid1.Canvas do
  begin
    If ( (Column.Field.FieldName='Zena')  or
         (Column.Field.FieldName='Zena0') or
         (Column.Field.FieldName='Kolvo')
         and  not (gdFocused in State) ) then
      If Column.Field.Value = 0 then
      begin
        Font.Color := clRed;
        Font.Style := [fsBold];
        FillRect(Rect);
        TextOut(Rect.Right-2-TextWidth(Column.Field.Text),Rect.Top,Column.Field.Text);
        Exit;
      end;

    If ( (Column.Field.FieldName='Sum')
         and  not (gdFocused in State) ) then
      If Column.Field.Value >= 3000 then
      begin
        Font.Color := clPurple;
        Font.Style := [fsBold];
        FillRect(Rect);
        TextOut(Rect.Right-2-TextWidth(Column.Field.Text),Rect.Top,Column.Field.Text);
        Exit;
      end;

    If  (Column.Field.FieldName='PerCent')
         and  not (gdFocused in State)  then
      begin
        If (NaklKind=PereOzenka) or (NaklKind=Zakupka)
        then begin
         Font.Style := [fsBold];
//         If (Column.Field.Value >=15) and (Column.Field.Value <=40) then Font.Color := clWindowText;
         If (Column.Field.Value >0)  then Font.Color := clPurple;
         If (Column.Field.Value <=0)  then Font.Color := clGreen;
        end
        else
        begin
         If (Column.Field.Value >=15) and (Column.Field.Value <=40) then
         begin
          Font.Color := clWindowText;
          Font.Style := [];
         end;
         If (Column.Field.Value <=20) then Font.Color := clPurple;
         If (Column.Field.Value >=40) then Font.Color := clBlue;
         If (Column.Field.Value >=50) then Font.Color := clGreen;

        end;
        FillRect(Rect);
        TextOut(Rect.Right-2-TextWidth(Column.Field.Text),Rect.Top,Column.Field.Text);
        Exit;
      end;

    If  (Column.Field.FieldName='RecomPr')
         and  not (gdFocused in State)  then
      begin
        If  (NaklKind=Prihod)  or  (NaklKind=Ostatok)
        then begin
         If (Column.Field.Value >=15) and (Column.Field.Value <=40) then begin
          Font.Color := clWindowText;
          Font.Style := [];
         end;
         If (Column.Field.Value <=20) then Font.Color := clPurple;
         If (Column.Field.Value >=40) then Font.Color := clBlue;
         If (Column.Field.Value >=50) then Font.Color := clGreen;

        end;
        FillRect(Rect);
        TextOut(Rect.Right-2-TextWidth(Column.Field.Text),Rect.Top,Column.Field.Text);
        Exit;
      end;

    DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end; {with}

end;

procedure TNaklForm.FormDeactivate(Sender: TObject);
begin
//  DM.TableRecNakl.CheckBrowseMode;
  If FormParAr[FormKind].Activ then
  begin
    If (InstallForm.PodborerTo=FormKind) and (InstallForm.PodborerFrom<>FTovar) then
    begin
      If DM.TableRecNakl.State=dsInsert	then DM.TableRecNakl.Post;
      If DM.TableRecNakl.FieldByName('Cod').AsInteger=0 then // накладная пустая
      begin
        DM.TableRecNakl.Append;
        DM.TableRecNakl.Post;
      end;
    end;
    If (InstallForm.PodborerFrom<>FormKind) then //накл не источник подбора
    begin
      FormParAr[FormKind].RecActivCod      :=DM.TableRecNakl.FieldByName('Cod').AsInteger;
      FormParAr[FormKind].RecActivTovarCod :=DM.TableRecNakl.FieldByName('TovarCod').AsInteger;
    end;
  end
  else
  begin // форма закрывается
    FormParAr[FormKind].RecActivCod      := 0;
    FormParAr[FormKind].RecActivTovarCod := 0;
  end;
//  BookMark :=DM.TableRecNakl.GetBookMark;

  DM.TableUnit.Filtered  :=False;
  DM.TableSklad.Filtered  :=False;
  DM.TableSotrudn.Filtered:=False;
  DM.TableAgent.Filtered  :=False;
//если DM.TableRecNakl.Filtered:=False; то при подборе из спр товаров подставляется непонятное кол-во
//  DM.TableRecNakl.Filtered:=False;
end;

procedure TNaklForm.DBLookupComboBoxUnitDropDown(Sender: TObject);
var LookUpResults : Variant;
begin
  DM.TableUnit.Filtered  :=False;
  if (Sender = DBLookupComboBoxUnitTo) then
   LookUpResults :=DM.TableAgent.LookUp('AgentName',DBLookupComboBoxAgentTo.Text,'Cod');

  if (Sender = DBLookupComboBoxUnitFrom) then
   LookUpResults :=DM.TableAgent.LookUp('AgentName',DBLookupComboBoxAgentFrom.Text,'Cod');

  If VarType(LookUpResults)<>varNull then
  begin
    If LookUpResults<>varEmpty then begin
      If UnitActivOnly then DM.TableUnit.Filter    :='(Activ = True and AgentCod = '+ IntToStr(LookUpResults)+') or Cod=1'
      else  DM.TableUnit.Filter    :='(AgentCod = '+ IntToStr(LookUpResults)+') or Cod=1';
      DM.TableUnit.Filtered  :=True;
    end
    else  begin
      DM.TableUnit.Filtered  :=False;
    end
  end
  else begin
    DM.TableUnit.Filtered  :=False;
  end;
  
//  DM.TableUnit.Filtered  :=False;
end;

procedure TNaklForm.DBLookupComboBoxSkladDropDown(Sender: TObject);
var LookUpResults : Variant;
begin
  if (Sender = DBLookupComboBoxSkladTo)  then
   LookUpResults :=DM.TableUnit.LookUp('UnitName',DBLookupComboBoxUnitTo.Text,'Cod');

  if  (Sender = DBLookupComboBoxSkladFrom) then
   LookUpResults :=DM.TableUnit.LookUp('UnitName',DBLookupComboBoxUnitFrom.Text,'Cod');

  if (Sender = DBLookupComboBoxSkladTo) or (Sender = DBLookupComboBoxSkladFrom) then
   If VarType(LookUpResults)<>varNull then
   begin
    If LookUpResults<>varEmpty then begin
      If SkladActivOnly then DM.TableSklad.Filter    :='(Activ = True and UnitCod = '+ IntToStr(LookUpResults)+') or Cod=1'
      else DM.TableSklad.Filter    :='(UnitCod = '+ IntToStr(LookUpResults)+') or Cod=1';
      DM.TableSklad.Filtered  :=True;
    end
    else  begin
      DM.TableSklad.Filtered  :=False;
    end
   end
   else begin
     DM.TableSklad.Filtered  :=False;
   end;

//   DM.TableSklad.Filtered  :=False;
//   DM.TableSotrudn.Filtered  :=False;
end;

procedure TNaklForm.DBLookupComboBoxSotrudnDropDown(Sender: TObject);
var LookUpResults : Variant;
begin
  if  (Sender = DBLookupComboBoxSotrudnTo) then
   LookUpResults :=DM.TableUnit.LookUp('UnitName',DBLookupComboBoxUnitTo.Text,'Cod');

  if  (Sender = DBLookupComboBoxSotrudnFrom) then
   LookUpResults :=DM.TableUnit.LookUp('UnitName',DBLookupComboBoxUnitFrom.Text,'Cod');

  if (Sender = DBLookupComboBoxSotrudnTo) or (Sender = DBLookupComboBoxSotrudnFrom) then
   If VarType(LookUpResults)<>varNull then
   begin
    If LookUpResults<>varEmpty then begin
      If SotrudnActivOnly then DM.TableSotrudn.Filter :='(Activ = True and UnitCod = '+ IntToStr(LookUpResults)+') or Cod=1'
      else DM.TableSotrudn.Filter :='(UnitCod = '+ IntToStr(LookUpResults)+') or Cod=1';
      DM.TableSotrudn.Filtered  :=True;
    end
    else  begin
      DM.TableSotrudn.Filtered  :=False;
    end
   end
   else begin
     DM.TableSotrudn.Filtered  :=False;
   end;

//   DM.TableSklad.Filtered  :=False;
//   DM.TableSotrudn.Filtered  :=False;
end;

procedure TNaklForm.ButtonPrepPrintClick(Sender: TObject);
const Interval=1.3;
      StrToPage=70;
      TabGoriz1=5;
      TabGoriz2=8;
      TabGoriz3=42;
      TabVert=10;
var   PosVert : Integer;
      St,FileName : String;
      SaveCursor : TCursor;

 procedure  PrToFile;
 var I : Integer;
     Buf, SubBuf : String;
    begin
     SaveCursor := Screen.Cursor;
     Screen.Cursor := crHourglass;    { Show hourglass cursor }

     try
     AssignFile(Fil,FileName);
     if CheckBoxOneFile.Checked and FileExists(FileName) then
     begin
       Append(Fil);
       WriteLn(Fil,'');
     end
     else ReWrite(Fil);
     Write(Fil,'Накладная № '+IntToStr(SpinEditN.Value)+
                 ' Код('+IntToStr(NaklCod)+') от '+
                 DateToStr(DateTimePickerDate.Date)+'г.');
     If NaklKind<>Prihod then
        WriteLn(Fil,'Отправ.: '+
                                 DBLookupComboBoxAgentFrom.Text+' '+
                                 DBLookupComboBoxUnitFrom.Text+' '+
                                 DBLookupComboBoxSkladFrom.Text+' '+
                                 DBLookupComboBoxSotrudnFrom.Text+' '+
                                 EditFrom.Text);

     Write(Fil,'Получ.: ');
     If NaklKind<>Prihod then
          Write(Fil,DBLookupComboBoxAgentTo.Text+' ')
     else begin
            If DBLookupComboBoxUnitTo.Text<>'' then Write(Fil,DBLookupComboBoxUnitTo.Text+' ');
            If DBLookupComboBoxSkladTo.Text<>'' then Write(Fil,DBLookupComboBoxSkladTo.Text+' ');
//            If DBLookupComboBoxSotrudnTo.Text<>'' then Write(Fil,DBLookupComboBoxSotrudnTo.Text+' ');
            If EditTo.Text<>'' then Write(Fil,EditTo.Text);
     end;

     If (NaklKind=Prihod) and (ComboBoxParent.Items.Count>0)
     then begin
            Buf:= '(';
            for I:=0 to ComboBoxParent.Items.Count-1 do begin
              SubBuf:= Copy(ComboBoxParent.Items[I],34,6);
              //while SubBuf[length(SubBuf)]=' ' do SubBuf := copy (SubBuf,1,length(SubBuf)-1);
              Trim(SubBuf);
              Buf:=Buf+SubBuf +',';
            end;
            buf := copy (buf,1,length(buf)-1); // del концевого ','
            Buf:= Buf+')';
            Write(Fil,Buf );
         end;


     If EditCherez.Text<>'' then WriteLn(Fil,'Через кого  '+EditCherez.Text);
     If EditOsnov.Text<>''  then WriteLn(Fil,'Основание   '+EditOsnov.Text);
     If EditPr.Text<>''     then WriteLn(Fil,'Примечание  '+EditPr.Text);

     WriteLn(Fil);
      NStr:=1;
      NPage:=1;
      NSpace:=0;

      DM.TableRecNakl.First;
      While Not  DM.TableRecNakl.Eof do begin
//       If DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency=0 then
       begin
{
        Write(Fil,FormatMaskText('99999;0;0',IntToStr(DM.TableRecNakl.FieldByName('N').AsInteger) ));
        Write(Fil,FormatMaskText('CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC;0; ',DM.TableRecNakl.FieldByName('TovarName').AsString));
        Write(Fil,FormatMaskText('CCCCCCCCCC;0; ',DM.TableRecNakl.FieldByName('Fasovka').AsString));
        Write(Fil,FormatMaskText('CCCCCCCCCCCCCCCCC;0; ',DM.TableRecNakl.FieldByName('ProizvName').AsString));
        Write(Fil,FormatMaskText('CCCCC;0; ',DM.TableRecNakl.FieldByName('EdIzmerName').AsString));

        Write(Fil,FormatMaskText('99999;0;0',IntToStr(DM.TableRecNakl.FieldByName('Kolvo').AsCurrency)));
        Write(Fil,Format('%7s',[FormatCurr('0.00;; ',DM.TableRecNakl.FieldByName('Zena').AsCurrency)])+' ');
        Write(Fil,Format('%7s',[FormatCurr('0.00;; ',DM.TableRecNakl.FieldByName('Sum').AsCurrency)])+' ');
        If CheckBoxNDS.Checked then Write(Fil,Format('%7s',[FormatCurr('0.00;; ',DM.TableRecNakl.FieldByName('NDS').AsCurrency)]));
}
        If CheckBoxNPr.Checked         then St:=IntToStr(DM.TableRecNakl.FieldByName('N').AsInteger )+#09;
        If CheckBoxTovarNamePr.Checked then St:=St+DM.TableRecNakl.FieldByName('TovarName').AsString+#09;
        If CheckBoxFasovkaPr.Checked   then St:=St+DM.TableRecNakl.FieldByName('Fasovka').AsString+#09;
        If CheckBoxProizvPr.Checked    then St:=St+DM.TableRecNakl.FieldByName('ProizvName').AsString+#09;

        If CheckBoxAgentPr.Checked     then St:=St+Format('%5s',[DM.TableRecNakl.FieldByName('AgentName').AsString])+#09;


        If CheckBoxEdIzmerPr.Checked   then St:=St+DM.TableRecNakl.FieldByName('EdIzmerName').AsString+#09;
        If CheckBoxZena0Pr.Checked     then St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('Zena0').AsCurrency])+#09;

        If CheckBoxKolvoPr.Checked then
          If CheckBoxDelNol.Checked then
            St:=St+FormatCurr('##0;; ',DM.TableRecNakl.FieldByName('Kolvo').AsCurrency)+#09   //##0.00;; 
          else
            St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('Kolvo').AsCurrency])+#09;
        {
          If CheckBoxDelNol.Checked  and (DM.TableRecNakl.FieldByName('Kolvo').AsCurrency = 0) then St:=St+''+#09
          else
            if   Frac(DM.TableRecNakl.FieldByName('Kolvo').AsCurrency) <0.01
            then St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('Kolvo').AsCurrency])+#09
            else St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('Kolvo').AsCurrency])+#09;
         }
        If CheckBoxZenaPr.Checked then
          If CheckBoxDelNol.Checked then
            St:=St+FormatCurr('##0.00;; ',DM.TableRecNakl.FieldByName('Zena').AsCurrency)+#09
          else
            St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('Zena').AsCurrency])+#09;

        If CheckBoxSumPr.Checked then
          If CheckBoxDelNol.Checked then
            St:=St+FormatCurr('##0.00;; ',DM.TableRecNakl.FieldByName('Sum').AsCurrency)+#09
          else
            St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('Sum').AsCurrency])+#09;
            
//        If CheckBoxSumPr.Checked          then St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('Sum').AsCurrency])+#09;
        If CheckBoxZenaMinusNdsPr.Checked then St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('ZenaMinusNds').AsCurrency])+#09;
        If CheckBoxNDS.Checked            then St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('Nds').AsCurrency]);
        If CheckBoxPerCentPr.Checked      then St:=St+Format('%6.2f',[DM.TableRecNakl.FieldByName('PerCent').AsCurrency]);

        If St[Length(St)]=#09 then Delete(St,Length(St),1);
        WriteLn(Fil,St);

        If ((NStr+NSpace) mod StrToPage)=0 then begin
          Inc(NPage);
        end;
        Inc(NStr);
       end; {If}
       DM.TableRecNakl.Next;
      end; {While}
     ZakupkaSumSet;
     Write(Fil,'Итого на сумму:  '+MaskEditNaklSum.Text+'  ');
     If CheckBoxNDS.Checked then WriteLn(Fil,'В том числе НДС: '+MaskEditZakupkaNDS.EditText);
     Write(Fil,'Получил(а) ___________');
     Write(Fil,DBLookupComboBoxSotrudnTo.Text);
     WriteLn(Fil);

     finally
       CloseFile(Fil);
       Screen.Cursor := SaveCursor;  { Always restore to normal }
     end;
    end;  {  PrToFile}

begin  // ButtonPrepPrintClick
  If NaklPrintPath='' then FileName:=ExtractFilePath(Application.EXEName) else
    If NaklPrintPath[1]='\' then
      FileName:=ExtractFilePath(Application.EXEName)+NaklPrintPath
    else   FileName:= NaklPrintPath;

 FileName:=FileName+NaklName[NaklKind];

 // если не в общий файл то добавить № файла
 if Not CheckBoxOneFile.Checked then FileName:=FileName+ ' № '+IntToStr(SpinEditN.Value);

 If (NaklKind=Zakupka) or (NaklKind=Prodazha) or (NaklKind=Perem) or (NaklKind=Schet) or (NaklKind=CashTo)
 then FileName:=FileName+' Отправ '+  DBLookupComboBoxAgentFrom.Text+' '+DBLookupComboBoxUnitFrom.Text;

 If (NaklKind=Prihod) or (NaklKind=Ostatok) or (NaklKind=Perem) or (NaklKind=PereOzenka) or
    (NaklKind=CashFrom) or (NaklKind=Schet)
 then FileName:=FileName+' Получ '+  DBLookupComboBoxAgentTo.Text+' '+DBLookupComboBoxUnitTo.Text;            ;
 FileName:=FileName+'.txt';

  
  If MainForm.PrintToFile.Checked then
  begin {печать в файл}
    if Not CheckBoxOneFile.Checked and  //каждую накладную в свой файл
     (MessageDlg('Распечатать накладную № '+IntToStr(SpinEditN.Value)+#10#13+
                    'в файл '+FileName+'?',
                     mtConfirmation		, [mbYes, mbNo], 0) = mrYes) then
      If Not FileExists(FileName) then PrToFile
      else If  (MessageDlg('Файл '+FileName+' уже существует!'+#10#13+
                    'Заменить его новым ?',
                     mtConfirmation		, [mbYes, mbNo], 0) = mrYes) then PrToFile;

    if CheckBoxOneFile.Checked and  // добавлять накладную в  файл
     (MessageDlg('Распечатать накладную № '+IntToStr(SpinEditN.Value)+#10#13+
                    'в файл '+FileName+'?',
                     mtConfirmation		, [mbYes, mbNo], 0) = mrYes) then
      If Not FileExists(FileName) then PrToFile
      else If  (MessageDlg('Файл '+FileName+' уже существует!'+#10#13+
                    'Накладная будет добавлена в файл ?',
                     mtConfirmation		, [mbYes, mbNo], 0) = mrYes) then PrToFile;


  end;  {печать в файл}

  If Not MainForm.PrintToFile.Checked  then
   If (Not Printer.Printing) and PrintDialog1.Execute then begin
{
      AssignPrn(FPrn);
      ReWrite(FPrn);
      WriteLn(FPrn,'Проба!');
      CloseFile(FPrn);
}
      Printer.BeginDoc;
      Printer.Title:='Накладная №';
      with Printer.Canvas do begin
        Pen.Color:=  clBlack;
        Font.Name:= 'FixedSys';
        Font.Size:= 10;
      end;
      NStr:=1;
      NPage:=1;
      NSpace:=0;
    try
      DM.TableRecNakl.First;
      While Not  DM.TableRecNakl.Eof do begin
        PosVert:= TabVert+(NStr+NSpace-(NPage-1)*StrToPage)*Round(Interval*Printer.Canvas.TextHeight('H'));
        Printer.Canvas.TextOut(TabGoriz1*Printer.Canvas.TextWidth('W'),PosVert,IntToStr(NStr));
        Printer.Canvas.TextOut(TabGoriz2*Printer.Canvas.TextWidth('W'),PosVert,DM.TableRecNakl.FieldByName('TovarName').AsString);
        Printer.Canvas.TextOut(TabGoriz3*Printer.Canvas.TextWidth('W'),PosVert,FormatCurr('###0.00',DM.TableRecNakl.FieldByName('Zena').AsCurrency));

        If ((NStr+NSpace) mod StrToPage)=0 then begin
          Printer.NewPage; Inc(NPage);
        end;
        DM.TableRecNakl.Next;
        Inc(NStr);
      end;
    finally
//     Printer.EndDoc;
    end;
  end  {If (Not Printer.Printing) and PrintDialog1.Execute}
  else
    try
      {Inc(NSpace);}
      DM.TableRecNakl.First;
      While Not  DM.TableRecNakl.Eof do begin
        PosVert:= TabVert+(NStr+NSpace-(NPage-1)*StrToPage)*Round(Interval*Printer.Canvas.TextHeight('H'));
        Printer.Canvas.TextOut(TabGoriz1*Printer.Canvas.TextWidth('W'),PosVert,IntToStr(NStr));
        Printer.Canvas.TextOut(TabGoriz2*Printer.Canvas.TextWidth('W'),PosVert,DM.TableRecNakl.FieldByName('TovarName').AsString);
        Printer.Canvas.TextOut(TabGoriz3*Printer.Canvas.TextWidth('W'),PosVert,FormatCurr('###0.00',DM.TableRecNakl.FieldByName('Zena').AsCurrency));
//        FormatMaskText

        If ((NStr+NSpace) mod StrToPage)=0 then begin
          Printer.NewPage; Inc(NPage);
        end;
        DM.TableRecNakl.Next;
        Inc(NStr);
      end;
    finally
//    Printer.EndDoc;
    end;
  If Printer.Printing then Printer.EndDoc;
end;

procedure TNaklForm.FormCreate(Sender: TObject);
begin
  FormParAr[FormKind].RecActivCod :=0;
  Sum:=0; Sum0:=0;
//  CheckBoxZakupka.Checked:=FormParAr[FormKind].SaveZakupka;
//  CheckBoxRozn.Checked   :=FormParAr[FormKind].SaveRozn;
//  CheckBoxMelkOpt.Checked:=FormParAr[FormKind].SaveMelkOpt;
//  CheckBoxOpt.Checked    :=FormParAr[FormKind].SaveOpt;
  ScWindowScale;
end;

procedure TNaklForm.ButtonPereSchetZenaClick(Sender: TObject);
var    SaveCursor : TCursor;
begin
 If CheckBoxPercent.Checked or CheckBoxPercent0.Checked or
    CheckBoxUmnozh.Checked  or CheckBoxUmnozh0.Checked   or
    CheckBoxRazdel.Checked  or CheckBoxRazdel0.Checked
 then
 begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }
  DM.TableRecNakl.First;
  while not DM.TableRecNakl.Eof do begin
    DM.TableRecNakl.Edit;
    If CheckBoxPercent0.Checked then
      DM.TableRecNaklZena0.Value:=DM.TableRecNaklZena0.Value *(1+SpinEditPercent0.Value/100);
    If CheckBoxUmnozh0.Checked then
      DM.TableRecNaklZena0.Value:=DM.TableRecNaklZena0.Value *StrToCurr(MaskEditUmnozh0.EditText);
    If CheckBoxRazdel0.Checked then
      DM.TableRecNaklZena0.Value:=DM.TableRecNaklZena0.Value /StrToCurr(MaskEditRazdel0.EditText);

    If CheckBoxPercent.Checked then
      DM.TableRecNaklZena.Value:=DM.TableRecNaklZena.Value *(1+SpinEditPercent.Value/100);
    If CheckBoxUmnozh.Checked then
      DM.TableRecNaklZena.Value:=DM.TableRecNaklZena.Value *StrToCurr(MaskEditUmnozh.EditText);
    If CheckBoxRazdel.Checked then
      DM.TableRecNaklZena.Value:=DM.TableRecNaklZena.Value /StrToCurr(MaskEditRazdel.EditText);

    DM.TableRecNakl.Post;
    DM.TableRecNakl.Next;
  end;
  Screen.Cursor := SaveCursor;  { Always restore to normal }
  RezhFromParent          :=False;
  CheckBoxPercent.Checked := False;
  CheckBoxUmnozh.Checked  := False;
  CheckBoxRazdel.Checked  := False;

 end;
end;

procedure TNaklForm.SpinEditNDbClick(Sender: TObject);
begin
  FormParAr[FormKind].DocN     := SpinEditN.Value;
  DateTimePickerDate.SetFocus;
end;

procedure TNaklForm.DBLookupComboBoxAgentFromClick(Sender: TObject);
begin
  if FormParAr[FormKind].AgentCodFrom=5 then RadioButtonZachet.Checked:= True  // Баксан
    else RadioButtonOplach.Checked:= True;
  DBLookupComboBoxUnitDropDown(Sender);
//  If DBLookupComboBoxUnitFrom.Items.Count=1 then;
  ButtonNewN.OnClick(Sender);
  DBLookupComboBoxUnitFrom.SetFocus;
end;

procedure TNaklForm.DBLookupComboBoxUnitFromClick(Sender: TObject);
begin
    case FormKind of
      FZakupkaOld, FZakupka : begin
      end;
      FProdazhaOld, FProdazha : begin
        case DM.TableNakl.FieldByName('UnitCodFrom').AsInteger of
          2,8,3,6 : begin RadioButtonRozn.Checked:= True;    end;// Москва or #57
//          3   : begin RadioButtonMelkOpt.Checked:= True; end;// Юж 85
//          6   : begin RadioButtonOpt.Checked:= True;     end;// Юж 21
        end;
      end;
      FPrihodOld, FPrihod : begin
      end;
      FOstatokOld, FOstatok : begin
      end;
      FPeremOld, FPerem : begin
        case DM.TableNakl.FieldByName('UnitCodFrom').AsInteger of
          2,8,3,6 : begin RadioButtonRozn.Checked:= True;    end;// Москва  or #57
//          3  : begin RadioButtonMelkOpt.Checked:= True; end;// Юж 85
//          6  : begin RadioButtonOpt.Checked:= True;     end;// Юж 21
        end;
       end;
      FSchetOld, FSchet : begin
      end;
      FCashToOld, FCashTo : begin
      end;
      FCashFromOld, FCashFrom : begin
      end;
      FPereOzenkaOld, FPereOzenka : begin
        case DM.TableNakl.FieldByName('UnitCodFrom').AsInteger of
          2,8,3,6 : begin RadioButtonRozn0.Checked:= True;    end;// Москва  or #57
//          3   : begin RadioButtonMelkOpt0.Checked:= True; end;// Юж 85
//          6   : begin RadioButtonOpt0.Checked:= True;     end;// Юж 21
        end;
      end;
    end;
//  DBLookupComboBoxSkladFrom.DropDown;
  DBLookupComboBoxSkladDropDown(DBLookupComboBoxSkladFrom);
  If DM.TableSklad.RecordCount=1 then begin //изменения поля SkladCodFrom In Nakl не происходит
//    DBLookupComboBoxSkladFrom.KeyValue:= DM.TableSklad.FieldByName('Cod').AsInteger;
  end;

  DBLookupComboBoxSotrudnDropDown(DBLookupComboBoxSotrudnFrom);
  If DM.TableSotrudn.RecordCount=1 then begin
//    DBLookupComboBoxSotrudnFrom.KeyValue:= DM.TableSotrudn.FieldByName('Cod').AsInteger;
  end;
  DBLookupComboBoxSkladFrom.SetFocus;
end;

procedure TNaklForm.DBLookupComboBoxSkladFromClick(Sender: TObject);
begin
  DBLookupComboBoxSotrudnFrom.SetFocus;
end;

procedure TNaklForm.DBLookupComboBoxSotrudnFromClick(Sender: TObject);
begin
  DBLookupComboBoxAgentTo.SetFocus;
end;

procedure TNaklForm.DBLookupComboBoxAgentToClick(Sender: TObject);
begin
  DBLookupComboBoxUnitTo.SetFocus;
end;

procedure TNaklForm.DBLookupComboBoxUnitToClick(Sender: TObject);
begin

    case FormKind of
      FZakupkaOld, FZakupka : begin
      end;
      FProdazhaOld, FProdazha : begin
      end;
      FPrihodOld, FPrihod, FOstatokOld, FOstatok : begin
        CheckBoxRozn.Checked:=False;
        CheckBoxMelkOpt.Checked:= False;
        CheckBoxOpt.Checked:= False;
        case DM.TableNakl.FieldByName('UnitCodTo').AsInteger of
          2,8,3,6,9 : begin RadioButtonRozn.Checked:= True;    CheckBoxRozn.Checked:=True;     end;// Москва or #57
//          3   : begin RadioButtonMelkOpt.Checked:= True; CheckBoxMelkOpt.Checked:= True; end;// Юж 85
//          6,9 : begin RadioButtonOpt.Checked:= True;     CheckBoxOpt.Checked:= True;     end;// Юж 21 или Юж 86-88
        end;
      end;
      FPeremOld, FPerem : begin
       end;
      FSchetOld, FSchet : begin
      end;
      FCashToOld, FCashTo : begin
      end;
      FCashFromOld, FCashFrom : begin
      end;
      FPereOzenkaOld, FPereOzenka : begin
        case DM.TableNakl.FieldByName('UnitCodTo').AsInteger of
          2,8,3,6,9 : begin RadioButtonRozn0.Checked:= True;    CheckBoxRozn.Checked:=True;     end;// Москва or #57
//          3   : begin RadioButtonMelkOpt0.Checked:= True; CheckBoxMelkOpt.Checked:= True; end;// Юж 85
//          6,9 : begin RadioButtonOpt0.Checked:= True;     CheckBoxOpt.Checked:= True;     end;// Юж 21 или Юж 86-88
       end;
      end;
    end;
  DBLookupComboBoxSkladDropDown(DBLookupComboBoxSkladTo);
  If DM.TableSklad.RecordCount=1 then
  { DBLookupComboBoxSkladTo.KeyValue:= DM.TableSklad.FieldByName('Cod').AsInteger};

  DBLookupComboBoxSotrudnDropDown(DBLookupComboBoxSotrudnTo);
  If DM.TableSotrudn.RecordCount=1 then
  { DBLookupComboBoxSotrudnTo.KeyValue:= DM.TableSotrudn.FieldByName('Cod').AsInteger};

  DBLookupComboBoxSkladTo.SetFocus;
end;

procedure TNaklForm.DBLookupComboBoxSkladToClick(Sender: TObject);
begin
  DBLookupComboBoxSotrudnTo.SetFocus;
end;

procedure TNaklForm.CheckBoxColumnClick(Sender: TObject);
var Ind : Integer;
begin
  If DBGrid1.Columns.Count>0 then
  For Ind:=0 to DBGrid1.Columns.Count-1 do begin
   If DBGrid1.Columns[Ind].FieldName='N'            then DBGrid1.Columns[Ind].Visible:=CheckBoxNVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='TovarName'    then DBGrid1.Columns[Ind].Visible:=CheckBoxTovarNameVis.Checked;

   If DBGrid1.Columns[Ind].FieldName='TovarCod'     then DBGrid1.Columns[Ind].Visible:=CheckBoxTovarCodVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='ProizvName'   then DBGrid1.Columns[Ind].Visible:=CheckBoxProizvVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Fasovka'      then DBGrid1.Columns[Ind].Visible:=CheckBoxFasovkaVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='EdIzmerName'  then DBGrid1.Columns[Ind].Visible:=CheckBoxEdIzmerVis.Checked;

   If DBGrid1.Columns[Ind].FieldName='Kolvo'        then DBGrid1.Columns[Ind].Visible:=CheckBoxKolvoVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Zena'         then DBGrid1.Columns[Ind].Visible:=CheckBoxZenaVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Zena0'        then DBGrid1.Columns[Ind].Visible:=CheckBoxZena0Vis.Checked;
   If DBGrid1.Columns[Ind].FieldName='ZenaMinusNds' then DBGrid1.Columns[Ind].Visible:=CheckBoxZenaMinusNdsVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Sum'          then DBGrid1.Columns[Ind].Visible:=CheckBoxSumVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='NDS'          then DBGrid1.Columns[Ind].Visible:=CheckBoxNdsVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='PerCent'      then DBGrid1.Columns[Ind].Visible:=CheckBoxPerCentVis.Checked;

   If DBGrid1.Columns[Ind].FieldName='AgentName'    then DBGrid1.Columns[Ind].Visible:=CheckBoxAgentVis.Checked;

   If (DBGrid1.Columns[Ind].FieldName='RecomPr') 
   then DBGrid1.Columns[Ind].Visible:= CheckBoxRecomPrVis.Checked AND ((NaklKind=Prihod)  or  (NaklKind=Ostatok));
  end;

end;

procedure TNaklForm.CheckBoxRecFromParentClick(Sender: TObject);
begin
//  RadioButtonZenaFromPanel.Enabled := CheckBoxRecFromParent.Checked;
//  RadioButtonZenaFromParent.Enabled:= CheckBoxRecFromParent.Checked;
end;

procedure TNaklForm.ButtonParentClick(Sender: TObject);
var    SaveCursor : TCursor;
begin
  ZhurnalForm.ChoiceParent:=True;
  ZhurnalForm.SonFormKind:= FormKind;
  ZhurnalForm.ParentShow:=CheckBoxParentShow.Checked;
  ZhurnalForm.Show;
end;

function TNaklForm.GetNewN:Integer;
var NewN : Integer;
    FilterSt : String;
    Filtered : Boolean;
begin
      NewN:=0;
{
      FilterSt := DM.TableNakl.Filter;
      Filtered := DM.TableNakl.Filtered;

      DM.TableNakl.Filter:='([Kind] = '''+IntToStr(ord(NaklKind))+''')'+
         ' and ([AgentCodTo] = '''+IntToStr(DM.TableNakl.FieldByName('AgentCodTo').AsInteger)+''')'+
         ' and ([AgentCodFrom] = '''+IntToStr(DM.TableNakl.FieldByName('AgentCodFrom').AsInteger)+''')';
      If DM.TableNakl.FieldByName('UnitCodTo').AsInteger>0 then
        DM.TableNakl.Filter:= DM.TableNakl.Filter+
         ' and ([UnitCodTo] = '''+IntToStr(DM.TableNakl.FieldByName('UnitCodTo').AsInteger)+''')';
      If DM.TableNakl.FieldByName('UnitCodFrom').AsInteger>0 then
        DM.TableNakl.Filter:= DM.TableNakl.Filter+
         ' and ([UnitCodFrom] = '''+IntToStr(DM.TableNakl.FieldByName('UnitCodFrom').AsInteger)+''')';
      DM.TableNakl.Filtered := True;

      DM.TableNakl.First;
      while Not DM.TableNakl.Eof do begin
        If NewN <  DM.TableNakl.FieldByName('DocN').AsInteger
          then NewN:=DM.TableNakl.FieldByName('DocN').AsInteger;
        DM.TableNakl.Next;
      end;

// восстановление текущей строки DM.TableNakl
      DM.TableNakl.Filter   := FilterSt;
      DM.TableNakl.Filtered := Filtered;
}
   with QueryMaxNaklN do begin
    Close;

    ParamByName('NaklKind').Value:=NaklKind;

    ParamByName('AgentCodTo').Value:=DBLookupComboBoxAgentTo.KeyValue;  //DM.TableNakl.FieldByName('AgentCodTo').AsInteger;
    ParamByName('UnitCodTo').Value :=DBLookupComboBoxUnitTo.KeyValue; //DM.TableNakl.FieldByName('UnitCodTo').AsInteger;

    ParamByName('AgentCodFrom').Value:=DBLookupComboBoxAgentFrom.KeyValue; //DM.TableNakl.FieldByName('AgentCodFrom').AsInteger;
    ParamByName('UnitCodFrom').Value :=DBLookupComboBoxUnitFrom.KeyValue; //DM.TableNakl.FieldByName('UnitCodFrom').AsInteger;
    Open;
  end;
  NewN:=QueryMaxNaklN.FieldByName('DocN').AsInteger;
  // восстановление текущей строки DM.TableNakl
  If DM.TableNakl.Locate('Cod', NaklCod,[]) then ;

      Result:= NewN+1;
end;  //GetNewN

procedure TNaklForm.ButtonNewNClick(Sender: TObject);
begin
      SpinEditN.Value:= GetNewN;
end;

procedure TNaklForm.ButtonFromTovarClick(Sender: TObject);
var    SaveCursor : TCursor;
       FilterBuf : String;

begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }

  DM.TableRecNakl.DisableControls;
  FilterBuf:= DM.TableTovar.Filter;
  DM.TableTovar.Filter := TovarForm.StFilter;
  DM.TableTovar.Filtered:=True;  // DM.TableTovar.Filter
  DM.TableTovar.First;

  //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
  FormParAr[EditFormKind].Transactioner:=False;  //

  while Not DM.TableTovar.Eof do
  begin
    DM.TableRecNakl.Last;
    DM.TableRecNakl.Append;
    DM.TableRecNakl.FieldByName('TovarCod').AsInteger:=DM.TableTovar.FieldByName('Cod').AsInteger;

    DM.TableRecNakl.Post;

    DM.TableTovar.Next;
  end;

  DM.TableTovar.Filtered:=False;
  DM.TableTovar.Filter := FilterBuf;
  DM.TableRecNakl.Refresh;

  FormParAr[EditFormKind].Transactioner:=True;
  DM.TableRecNakl.EnableControls;

  Screen.Cursor := SaveCursor;  { Always restore to normal }
end;

procedure TNaklForm.ButtonDelAllClick(Sender: TObject);
var    SaveCursor : TCursor;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }

  DM.TableRecNakl.DisableControls;

  //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
  FormParAr[EditFormKind].Transactioner:=False;  //
  FormParAr[EditFormKind].NControl:=False;  // чтобы не пересчитывать номера

  DM.TableRecNakl.First;
  while Not DM.TableRecNakl.Eof do
  begin
    DM.TableRecNakl.Delete;
  end;
  FormParAr[EditFormKind].NControl:=True;
  FormParAr[EditFormKind].Transactioner:=True;
  DM.TableRecNakl.EnableControls;
  Screen.Cursor := SaveCursor;  { Always restore to normal }
end;

procedure TNaklForm.ButtonSetAllZensClick(Sender: TObject);
var    SaveCursor : TCursor;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }

  DM.TableRecNakl.DisableControls;

  //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
  FormParAr[EditFormKind].Transactioner:=False;  //

  DM.TableRecNakl.First;
  while Not DM.TableRecNakl.Eof do
  begin
    DM.TableRecNakl.Edit;
    ZenaRecNaklSet;  // подставляет значения: Kolvo, NaklCod и Zena
    DM.TableRecNakl.Post;
    DM.TableRecNakl.Next;
  end;

  FormParAr[EditFormKind].Transactioner:=True;
  DM.TableRecNakl.EnableControls;

  Screen.Cursor := SaveCursor;  { Always restore to normal }
end;

procedure TNaklForm.ButtonFromParentClick(Sender: TObject);
var //TovarCod, NaclCod,
    N : Integer;
    SaveCursor : TCursor;
//    Kolvo, Zena : Currency;
begin
  RezhFromParent := True;

  SaveCursor     := Screen.Cursor;
  Screen.Cursor  := crHourglass;    { Show hourglass cursor }

  DM.TableRecNakl.DisableControls;
  DM.TableTovar.DisableControls;

  DM.TableRecNakl.DisableConstraints;
  DM.TableTovar.DisableConstraints;

  If CheckBoxShapkaFromParent.Checked then begin
        If DM.TableNakl.Locate('Cod',FormParAr[FormKind].ParentCod,[]) then ;
       //текущая строка TableNakl указывает на Parent
        DateTimePickerDate.Date:=DM.TableNakl.FieldByName('DocDate').AsDateTime;
        DateTimePickerTime.Time:=DM.TableNakl.FieldByName('DocTime').AsDateTime;
        DateTimePickerDateOplataPolnay.Date:=DM.TableNakl.FieldByName('DateOplataPolnay').AsDateTime;
        // SpinEditCredit.OnChange(Sender);

        EditCherez.Text:= DM.TableNakl.FieldByName('PrCherez').AsString;
        EditOsnov.Text := DM.TableNakl.FieldByName('PrOsnov').AsString;
        EditFrom.Text  := DM.TableNakl.FieldByName('PrFrom').AsString;
        EditTo.Text    := DM.TableNakl.FieldByName('PrTo').AsString;
        EditPr.Text    := DM.TableNakl.FieldByName('Pr').AsString;

        CheckBoxActiv.Checked:=DM.TableNakl.FieldByName('Activ').AsBoolean;

        case  DM.TableNakl.FieldByName('Oplata').AsInteger of
          0:  RadioButtonOplach.Checked := True;
          1:  RadioButtonReal.Checked   := True;
          2:  RadioButtonKonsig.Checked := True;
          3:  RadioButtonZachet.Checked := True;
        end;

        FormParAr[FormKind].AgentCodFrom   := DM.TableNakl.FieldByName('AgentCodFrom').AsInteger;
        FormParAr[FormKind].UnitCodFrom    := DM.TableNakl.FieldByName('UnitCodFrom').AsInteger;
        FormParAr[FormKind].SkladCodFrom   := DM.TableNakl.FieldByName('SkladCodFrom').AsInteger;
        FormParAr[FormKind].SotrudnCodFrom := DM.TableNakl.FieldByName('SotrudnCodFrom').AsInteger;

        FormParAr[FormKind].AgentCodTo     := DM.TableNakl.FieldByName('AgentCodTo').AsInteger;
        FormParAr[FormKind].UnitCodTo      := DM.TableNakl.FieldByName('UnitCodTo').AsInteger;
        FormParAr[FormKind].SkladCodTo     := DM.TableNakl.FieldByName('SkladCodTo').AsInteger;
        FormParAr[FormKind].SotrudnCodTo   := DM.TableNakl.FieldByName('SotrudnCodTo').AsInteger;

      FilterChange(NaklCod); //
             //текущая строка TableNakl указывает на редактируемую Накл

      DM.TableNakl.Edit;
//      DM.TableNakl.FieldByName('ParentCod').AsInteger     :=FormParAr[FormKind].ParentCod;
      DM.TableNakl.FieldByName('AgentCodTo').AsInteger    :=FormParAr[FormKind].AgentCodTo;
      DM.TableNakl.FieldByName('UnitCodTo').AsInteger     :=FormParAr[FormKind].UnitCodTo;
      DM.TableNakl.FieldByName('SkladCodTo').AsInteger    :=FormParAr[FormKind].SkladCodTo;
      DM.TableNakl.FieldByName('SotrudnCodTo').AsInteger  :=FormParAr[FormKind].SotrudnCodTo;
      DM.TableNakl.FieldByName('AgentCodFrom').AsInteger  :=FormParAr[FormKind].AgentCodFrom;
      DM.TableNakl.FieldByName('UnitCodFrom').AsInteger   :=FormParAr[FormKind].UnitCodFrom;
      DM.TableNakl.FieldByName('SkladCodFrom').AsInteger  :=FormParAr[FormKind].SkladCodFrom;
      DM.TableNakl.FieldByName('SotrudnCodFrom').AsInteger:=FormParAr[FormKind].SotrudnCodFrom;
      DM.TableNakl.Post;
  end;  // If CheckBoxShapkaFromParent.Checked

  If True or (Not Debuger) or (CheckBoxRecFromParent.Checked or CheckBoxZenaFromParent.Checked) and
     (MessageDlg('Все ранее внесенные изменения в накладную будут сохранены !'+#10#13+
                 'Произвести откат добавления строк из родительского документа будет нельзя!'+#10#13+
                  'Продолжаем ?',
    mtWarning	, [mbYes, mbNo], 0) = mrYes) then
  begin

    //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
    FormParAr[EditFormKind].Transactioner:=False;  //

    DM.QueryParentN.Close;
    DM.QueryParentN.ParamByName('NaklCod').Value := NaklCod;
    DM.QueryParentN.Open;
    N:=DM.QueryParentN.FieldByName('MaxN').AsInteger+1;
    DM.QueryParentN.Close;
    // № первой строки в накл куда добавляется
//    FormParAr[EditFormKind].RecActivN:=N;

    DM.QueryParentRecs.Close;
    DM.QueryParentRecs.ParamByName('NaklCod').Value := FormParAr[FormKind].ParentCod;
    DM.QueryParentRecs.Open;


    DM.QueryParentRecs.First;
    while Not DM.QueryParentRecs.Eof do begin

     If CheckBoxRecFromParent.Checked then //заносить содержимое
     begin

//      DM.TableRecNakl.Last;   // чтоб не корректировать № в TableRecNaklBeforeInsert
      DM.TableRecNakl.Append;

      If CheckBoxZenaFromParent.Checked then  // присвоить цену  добавляемому содержимому
      begin
       If RadioButtonZenaFromParent.Checked then
       begin
        If CheckBox1.Checked and RadioButton1.Checked then
          DM.TableRecNakl.FieldByName('Zena').AsCurrency   := DM.QueryParentRecs.FieldByName('Zena').AsCurrency;
        If CheckBox1.Checked and RadioButton2.Checked then
          DM.TableRecNakl.FieldByName('Zena').AsCurrency   := DM.QueryParentRecs.FieldByName('Zena0').AsCurrency;
        If CheckBox2.Checked and RadioButton5.Checked then
          DM.TableRecNakl.FieldByName('Zena0').AsCurrency   := DM.QueryParentRecs.FieldByName('Zena').AsCurrency;
        If CheckBox2.Checked and RadioButton6.Checked then
          DM.TableRecNakl.FieldByName('Zena0').AsCurrency   := DM.QueryParentRecs.FieldByName('Zena0').AsCurrency;
       end;
       If RadioButtonZenaFromPanel.Checked then ZenaRecNaklSet;
      end;  // If CheckBoxZenaFromParent.Checke

      DM.TableRecNakl.FieldByName('NaklCod').AsInteger   := NaklCod;
      DM.TableRecNakl.FieldByName('TovarCod').AsInteger  := DM.QueryParentRecs.FieldByName('TovarCod').AsInteger;
      DM.TableRecNakl.FieldByName('ParentCod').AsInteger := DM.QueryParentRecs.FieldByName('Cod').AsInteger;
      DM.TableRecNakl.FieldByName('Kolvo').AsCurrency    := DM.QueryParentRecs.FieldByName('Kolvo').AsCurrency;

      DM.TableRecNakl.FieldByName('N').AsInteger         :=  N;

      Inc(N);

     end; // If (CheckBoxRecFromParent.Checked or CheckBoxZenaFromParent.Checked)

// присвоить цену  существующему содержимому, без добавления
     If (CheckBoxZenaFromParent.Checked and Not CheckBoxRecFromParent.Checked) and
        DM.TableRecNakl.Locate('TovarCod',DM.QueryParentRecs.FieldByName('TovarCod').AsInteger,[]) then
     begin
      DM.TableRecNakl.Edit;
      If RadioButtonZenaFromParent.Checked then
      begin
        If CheckBox1.Checked and RadioButton1.Checked then
          DM.TableRecNakl.FieldByName('Zena').AsCurrency   := DM.QueryParentRecs.FieldByName('Zena').AsCurrency;
        If CheckBox1.Checked and RadioButton2.Checked then
          DM.TableRecNakl.FieldByName('Zena').AsCurrency   := DM.QueryParentRecs.FieldByName('Zena0').AsCurrency;
        If CheckBox2.Checked and RadioButton5.Checked then
          DM.TableRecNakl.FieldByName('Zena0').AsCurrency   := DM.QueryParentRecs.FieldByName('Zena').AsCurrency;
        If CheckBox2.Checked and RadioButton6.Checked then
          DM.TableRecNakl.FieldByName('Zena0').AsCurrency   := DM.QueryParentRecs.FieldByName('Zena0').AsCurrency;
      end;
      If RadioButtonZenaFromPanel.Checked then ZenaRecNaklSet;
      DM.TableRecNakl.Post;
     end;

     DM.QueryParentRecs.Next;
    end; // while Not DM.QueryParentRecs.Eof
{
    FilterChange(FormParAr[FormKind].ParentCod);
    DM.TableRecNakl.First;
    while Not DM.TableRecNakl.Eof do begin
      TovarCod := DM.TableRecNakl.FieldByName('TovarCod').AsInteger;
      DM.TableRecNakl.Append;
      DM.TableRecNakl.FieldByName('NaklCod').AsInteger:= NaklCod;
      DM.TableRecNakl.FieldByName('TovarCod').AsInteger:=TovarCod;
      DM.TableRecNakl.Post;
      DM.TableRecNakl.Next;
    end;
}
    FormParAr[EditFormKind].Transactioner:=True;
  end;
  DM.TableRecNakl.Refresh;

  DM.TableRecNakl.EnableControls;
  DM.TableTovar.EnableControls;

  DM.TableRecNakl.EnableConstraints;
  DM.TableTovar.EnableConstraints;

  Screen.Cursor := SaveCursor;  { Always restore to normal }
  RezhFromParent := False;
  // PageControl1.ActivePageIndex:=0;  // вернутся на вкладку Накладная
end;

procedure TNaklForm.Showing(Sender: TObject);
begin
  Show;
end;

procedure TNaklForm.DBLookupComboBoxAgentFromDropDown(Sender: TObject);
begin
  If PostavActivOnly or PokupActivOnly then DM.TableAgent.Filter:= '([Activ]=True)';

  if (NaklKind = Zakupka)    then
  begin
    DM.TableAgent.Filter:='([AgentKind] = 2 or [AgentKind] = 0)'; //Поставщик
    If PostavActivOnly then DM.TableAgent.Filter:= DM.TableAgent.Filter +' and [Activ] = True';
  end;
  DM.TableAgent.Filtered  := DM.TableAgent.Filter<>'';
end;

procedure TNaklForm.DBLookupComboBoxAgentToDropDown(Sender: TObject);
begin
  if (NaklKind = Prodazha)  then begin
    DM.TableAgent.Filter:='([AgentKind] = 1 or [AgentKind] = 0)';    //Покупатель
  end;
  If PokupActivOnly then
    If DM.TableAgent.Filter<>'' then  DM.TableAgent.Filter:=DM.TableAgent.Filter +' and [Activ] = True'
    else DM.TableAgent.Filter:= '[Activ] = True';
  DM.TableAgent.Filtered  := DM.TableAgent.Filter<>'';
end;



procedure TNaklForm.CheckBoxZakupkaClick(Sender: TObject);
begin
  FormParAr[EditFormKind].SaveZakupka:=CheckBoxZakupka.Checked;
  FormParAr[EditFormKind].SaveRozn   :=CheckBoxRozn.Checked;
  FormParAr[EditFormKind].SaveMelkOpt:=CheckBoxMelkOpt.Checked;
  FormParAr[EditFormKind].SaveOpt    :=CheckBoxOpt.Checked;
end;

procedure TNaklForm.BitBtnParentDelClick(Sender: TObject);
var ParentCod : Integer;
    Buf : String;
begin
  If (ComboBoxParent.Text<>'') and
     (MessageDlg('Удалить выбранный документ из списка родительских документов,'+#10#13+
                 'на которые ссылается эта накладная ?',
    mtWarning	, [mbYes, mbNo], 0) = mrYes) then begin
    Buf:= Copy(ComboBoxParent.Text,5,5);
    while Pos(' ',Buf)<>0 do Delete(Buf,Pos(' ',Buf),1);
    ParentCod:=StrToInt(Buf);
    If DM.TableParent.Locate('ParentCod;SonCod',VarArrayOf([ParentCod,NaklCod]),[]) then
    begin
      DM.TableParent.Delete;
      ComboBoxParentItemsSet;
    end;
  end;
  BitBtnParentDel.Enabled:= (ComboBoxParent.Items.Count>0) and (ComboBoxParent.Text<>'');
  Label10.Caption:=IntToStr(ComboBoxParent.Items.Count);
end;         

procedure TNaklForm.ComboBoxParentChange(Sender: TObject);
var ParentCod : Integer;
    Buf : String;
begin
  If ComboBoxParent.Text<>'' then begin
    Buf:= Copy(ComboBoxParent.Text,5,5);
    while Pos(' ',Buf)<>0 do Delete(Buf,Pos(' ',Buf),1);
//    ParentCod:= Integer(ComboBoxParent.Items.Objects[ComboBoxParent.ItemIndex]);
    ParentCod:=StrToInt(Buf);
    If DM.TableParent.Locate('ParentCod;SonCod',VarArrayOf([ParentCod,NaklCod]),[])
    then     FormParAr[FormKind].ParentCod:= ParentCod;
  end;
  BitBtnParentDel.Enabled:= (ComboBoxParent.Items.Count>0) and (ComboBoxParent.Text<>'');
end;

procedure TNaklForm.ButtonSaveSqlClick(Sender: TObject);
begin
  SaveDialog1.FileName:= 'Запрос '+
     '.txt';
  If SaveDialog1.Execute then begin
     DM.DataSetToText(DBGridCheck.DataSource.DataSet,SaveDialog1.FileName);
  end;

end;

procedure TNaklForm.RadioButtonCheckClick(Sender: TObject);
begin
  If RadioButton11.Checked then
  begin
    DataSourceCheck.DataSet:=Query1;
    Query1.ParamByName('ParentCod').AsInteger:=NaklCod;
  end;
  If RadioButton12.Checked then
  begin
    DataSourceCheck.DataSet:=Query2;
    Query2.ParamByName('ParentCod1').AsInteger:=NaklCod;
    Query2.ParamByName('ParentCod2').AsInteger:=NaklCod;
    Query2.SQL[29]:=IntToStr(NaklCod);    // Parent.ParentCod
    Query2.ParamByName('ParentCod3').AsInteger:=NaklCod;
    Query2.SQL[60]:=IntToStr(NaklCod);    // Parent.ParentCod

//    Query2.ParamByName('ParentCod3').AsInteger:=NaklCod;
  end;
end;

procedure TNaklForm.TabSheet3Show(Sender: TObject);
begin
  RadioButtonCheckClick(Sender);
end;

procedure TNaklForm.Button1Click(Sender: TObject);
var    SaveCursor : TCursor;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }
  try
    DataSourceCheck.DataSet.Close;
    DataSourceCheck.DataSet.Open;
  finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;
end;

procedure TNaklForm.CheckBoxPreSumClick(Sender: TObject);
begin
  If CheckBoxPreSum.Checked then begin
   with QueryNaklPreSum do begin
     ParamByName('NaklCod').Value := NaklCod;
     ParamByName('N1').AsInteger:= SpinEditPreSum1.Value;
     ParamByName('N2').AsInteger:= SpinEditPreSum2.Value;
     Close;
     Open;
     MaskEditNaklPreSum.Text :=FormatCurr('######0.00, , ',FieldByName('SumAll').AsCurrency);
   end;
//    MaskEditNaklSum0.Text:=FormatCurr('######0.00, , ',DM.QueryNaklSum.FieldByName('SumAll0').AsCurrency);
//    MaskEditPerCent.Text :=FormatCurr('######0.00, , ',DM.QueryNaklSum.FieldByName('PerCent').AsCurrency);

//    If CheckBoxNDS.Checked then
//      MaskEditZakupkaNDS.Text:=FormatCurr('######0.00, , ',DM.QueryNaklSum.FieldByName('SumAll').AsFloat*NDS/(100+NDS));

   DBGrid1.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit,dgMultiSelect];
   DBNavigator1.Enabled:=False;
  end
  else begin
   DBNavigator1.Enabled:=True;
   DBGrid1.Options:=[dgEditing,dgAlwaysShowEditor,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
  end;
end;

procedure TNaklForm.DBGrid1CellClick(Column: TColumn);
 var Buf:String;
    CodTovar, Kolvo: Integer;
begin
  If CheckBoxPreSum.Checked then  ZakupkaSumSet;
// накладная - источник подбора
  If (InstallForm.PodborerFrom=FormKind) and FormParAr[EditFormKind].Activ then
  begin
    CodTovar:= DM.TableRecNakl.FieldByName('TovarCod').AsInteger;
    Kolvo   := DM.TableRecNakl.FieldByName('Kolvo').AsInteger;

    FormParAr[FormKind].RecActivCod      :=DM.TableRecNakl.FieldByName('Cod').AsInteger;
    FormParAr[FormKind].RecActivTovarCod :=DM.TableRecNakl.FieldByName('TovarCod').AsInteger;

    DM.TableRecNakl.Filtered := False;
    If DM.TableRecNakl.Locate('Cod', FormParAr[InstallForm.PodborerTo].RecActivCod,[]) then
    begin
      DM.TableRecNakl.Edit;
      DM.TableRecNakl.FieldByName('TovarCod').AsInteger:=CodTovar;
      DM.TableRecNakl.FieldByName('Kolvo').AsInteger   :=Kolvo;

      DM.TableRecNakl.Post;
//      FormParAr[EditFormKind].RecActivCod :=DM.TableRecNakl.FieldByName('Cod').AsInteger;
    end
    else If Debuger then
            MessageDlg('Строка подбираемой Накладной с Кодом '+IntToStr(FormParAr[InstallForm.PodborerTo].RecActivCod)+
                         ' не найдена !',
                         mtWarning, [mbYes], 0);
    NaklFormAr[EditFormKind].SetFocus;
  end;

end;

procedure TNaklForm.DBGrid1ColEnter(Sender: TObject);
var LookUpResults : Variant;
    I : Integer;
begin
  If DBGrid1.SelectedField.FieldName='Zena' then
    begin
      DBGrid1.Columns.Items[DBGrid1.SelectedIndex].PickList.Clear;
      LookUpResults :=DM.TableTovar.Lookup('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,
                       'ZenaRozn;ZenaMelkOpt;ZenaOpt');
      case VarType(LookUpResults) of
        varEmpty : ;
        varNull  : ;
      else
        begin;
          for I:=0 to 2 do
            If LookUpResults[I]<> Null
            then DBGrid1.Columns.Items[DBGrid1.SelectedIndex].PickList.Add(LookUpResults[I])
            else DBGrid1.Columns.Items[DBGrid1.SelectedIndex].PickList.Add('0,00');
        end; // case else
      end;   // case
    end;
    
end;

procedure TNaklForm.RadioButtonSortNClick(Sender: TObject);
begin
  If RadioButtonSortN.Checked    then DM.TableRecNakl.IndexName:='Sort_NaklCodN'
  else DM.TableRecNakl.IndexName:='';
//  If RadioButtonSortName.Checked then DM.TableRecNakl.IndexName:=;
end;

procedure TNaklForm.PopUpClick(Sender: TObject);
begin
  if Sender=N1 then
    If DM.TableTovar.Locate('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,[]) and
       (DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency  <> DM.TableRecNakl.FieldByName('Zena').AsCurrency) and
       (DM.TableRecNakl.FieldByName('Zena').AsCurrency<>0)
    then begin
      DM.TableTovar.Edit;
      DM.TableTovar.FieldByName('ZenaZakupka').AsCurrency:=DM.TableRecNakl.FieldByName('Zena').AsCurrency;
      DM.TableTovar.Post;
    end;
  if Sender=N2 then
    If DM.TableTovar.Locate('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,[]) and
       (DM.TableTovar.FieldByName('ZenaRozn').AsCurrency  <> DM.TableRecNakl.FieldByName('Zena').AsCurrency) and
       (DM.TableRecNakl.FieldByName('Zena').AsCurrency<>0)
    then begin
      DM.TableTovar.Edit;
      DM.TableTovar.FieldByName('ZenaRozn').AsCurrency:=DM.TableRecNakl.FieldByName('Zena').AsCurrency;
      DM.TableTovar.Post;
    end;
  if Sender=N3 then
    If DM.TableTovar.Locate('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,[]) and
       (DM.TableTovar.FieldByName('ZenaMelkOpt').AsCurrency  <> DM.TableRecNakl.FieldByName('Zena').AsCurrency) and
       (DM.TableRecNakl.FieldByName('Zena').AsCurrency<>0)
    then begin
      DM.TableTovar.Edit;
      DM.TableTovar.FieldByName('ZenaMelkOpt').AsCurrency:=DM.TableRecNakl.FieldByName('Zena').AsCurrency;
      DM.TableTovar.Post;
    end;
  if Sender=N4 then
    If DM.TableTovar.Locate('Cod',DM.TableRecNakl.FieldByName('TovarCod').AsInteger,[]) and
       (DM.TableTovar.FieldByName('ZenaOpt').AsCurrency  <> DM.TableRecNakl.FieldByName('Zena').AsCurrency) and
       (DM.TableRecNakl.FieldByName('Zena').AsCurrency<>0)
    then begin
      DM.TableTovar.Edit;
      DM.TableTovar.FieldByName('ZenaOpt').AsCurrency:=DM.TableRecNakl.FieldByName('Zena').AsCurrency;
      DM.TableTovar.Post;
    end;

end;

procedure TNaklForm.ButtonDopOstatokClick(Sender: TObject);
var    SaveCursor : TCursor;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }

  DM.TableRecNakl.DisableControls;

  //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
  FormParAr[EditFormKind].Transactioner:=False;  //

  QueryDopOstatok.ParamByName('NOstCod').AsInteger:=NaklCod;

  If NaklKind=Prihod then
    QueryDopOstatok.ParamByName('UnitCod').AsInteger:=DM.TableNakl.FieldByname('UnitCodTo').AsInteger
  else
    QueryDopOstatok.ParamByName('UnitCod').AsInteger:=DM.TableNakl.FieldByname('UnitCodFrom').AsInteger;

  QueryDopOstatok.Close;
  QueryDopOstatok.Open;
  QueryDopOstatok.First;

  while Not QueryDopOstatok.Eof do
  begin
    DM.TableRecNakl.Last;
    DM.TableRecNakl.Append;
    DM.TableRecNakl.FieldByName('TovarCod').AsInteger:=QueryDopOstatok.FieldByName('Cod').AsInteger;
    DM.TableRecNakl.FieldByName('Kolvo').AsInteger:=0;

    DM.TableRecNakl.Post;

    QueryDopOstatok.Next;
  end;
  QueryDopOstatok.Close;

  DM.TableRecNakl.Refresh;

  FormParAr[EditFormKind].Transactioner:=True;
  DM.TableRecNakl.EnableControls;

  Screen.Cursor := SaveCursor;  { Always restore to normal }

end;

procedure TNaklForm.ButtonNo0Click(Sender: TObject);
var    SaveCursor : TCursor;
       LookupResults : Variant;
       UnitCodTo:Integer;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }

  DM.TableRecNakl.DisableControls;

  //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
  FormParAr[EditFormKind].Transactioner:=False;  //

       //6-21  3- 85
  If (VarType(DBLookupComboBoxUnitTo.KeyValue)<>varNull) and (VarType(DBLookupComboBoxUnitTo.KeyValue)<>varEmpty)
    then  UnitCodTo := Integer(DBLookupComboBoxUnitTo.KeyValue);
  QueryZapOstatok.ParamByName('UnitCod').AsInteger := UnitCodTo;

  // find previus Nakl Ostatok
  LookupResults :=DM.TableNakl.Lookup('DocN;Kind;UnitCodTo',VarArrayOf([SpinEditN.Value-1,4,UnitCodTo]),'Cod;DocDate;DocTime');
  If VarIsArray(LookupResults) then
  begin
    QueryZapOstatok.ParamByName('NOstCod').AsInteger :=LookupResults[0];   //1249
    QueryZapOstatok.ParamByName('DocDate1').Value    :=LookupResults[1];  // StrToDate('15.08.2005')
    QueryZapOstatok.ParamByName('DocDate2').Value    :=LookupResults[1];
    QueryZapOstatok.ParamByName('DocTime').Value     :=LookupResults[2];  // StrToTime('00:00:00')
  end;

  QueryZapOstatok.Close;
  QueryZapOstatok.Open;
  QueryZapOstatok.First;

  while Not QueryZapOstatok.Eof do
  begin
    DM.TableRecNakl.Last;
    DM.TableRecNakl.Append;
    DM.TableRecNakl.FieldByName('TovarCod').AsInteger:=QueryZapOstatok.FieldByName('Cod').AsInteger;
    DM.TableRecNakl.FieldByName('Kolvo').AsInteger:=0;

    DM.TableRecNakl.Post;

    QueryZapOstatok.Next;
  end;
  QueryZapOstatok.Close;

  DM.TableRecNakl.Refresh;

  FormParAr[EditFormKind].Transactioner:=True;
  DM.TableRecNakl.EnableControls;

  Screen.Cursor := SaveCursor;  { Always restore to normal }

end;

procedure TNaklForm.ButtonSortClick(Sender: TObject);
var    SaveCursor : TCursor;
       I : Integer;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }

  DM.TableRecNakl.DisableControls;

  //If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
  FormParAr[EditFormKind].Transactioner:=False;  //

  QuerySort.ParamByName('NaklCod').AsInteger:=NaklCod;

  QuerySort.Close;
  QuerySort.Open;
  QuerySort.First;

  I:=1;
  while Not QuerySort.Eof do
  begin
    If DM.TableRecNakl.Locate('Cod',QuerySort.FieldByName('Cod').AsInteger,[]) then
    begin
      DM.TableRecNakl.Edit;
      DM.TableRecNakl.FieldByName('N').AsInteger:=I;
      DM.TableRecNakl.Post;
    end;
    Inc(I);
    QuerySort.Next;
  end;
  QuerySort.Close;

  DM.TableRecNakl.Refresh;

  FormParAr[EditFormKind].Transactioner:=True;
  DM.TableRecNakl.EnableControls;

  Screen.Cursor := SaveCursor;  { Always restore to normal }

end;

procedure TNaklForm.EditPrihodTovarLocateChange(Sender: TObject);
var LookUpResults : Variant;
begin
{
  LookUpResults :=DM.TableUnit.LookUp('UnitName',DBLookupComboBoxUnitTo.Text,
  'Cod');
  If VarType(LookUpResults)<>varNull then
  begin
    If LookUpResults<>varEmpty then begin
      DM.TableSklad.Filter    :='UnitCod = '+ IntToStr(LookUpResults);
      DM.TableSklad.Filtered  :=True;
      DM.TableSotrudn.Filter  :='UnitCod = '+ IntToStr(LookUpResults);
      DM.TableSotrudn.Filtered:=True;
    end   }

  If ((EditPrihodTovarLocate.SelStart=1) {or (EditPrihodTovarLocate.SelStart=0)} ) and CheckBoxPrihodTovarUpper.Checked
  then begin
    EditPrihodTovarLocate.Text:=AnsiUpperCase(EditPrihodTovarLocate.Text[1]);
    EditPrihodTovarLocate.SelStart:=1;
  end;
  If DM.TableRecNakl.Active then begin
    QueryLocate.ParamByName('NaklCod').AsInteger:=NaklCod;

    QueryLocate.Open;

    if QueryLocate.Locate('TovarName',EditPrihodTovarLocate.Text,[loCaseInsensitive,loPartialKey])
     then begin
        DM.TableRecNakl.Locate('Cod',QueryLocate.FieldByName('Cod').AsInteger,[]);
     end;
  end;
end;

procedure TNaklForm.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var St: String;
begin
 If Key=vk_Return then
  begin
// источник подбора
    If (InstallForm.PodborerFrom=FormKind) and FormParAr[EditFormKind].Activ
    then DBGrid1.OnCellClick(DBGrid1.Columns[DBGrid1.SelectedIndex]);
// подбор идет сюда
    If (InstallForm.PodborerTo=FormKind) then DBGrid1EditButtonClick(Sender);
  end;
 If (Key=vk_Back) and (Not( dgEditing in DBGrid1.Options) or
                       (DBGrid1.Columns.Items[DBGrid1.SelectedIndex].FieldName='TovarName'))  then
     If Length(EditPrihodTovarLocate.Text)>0 then begin
       St:=EditPrihodTovarLocate.Text;
       Delete(St,Length(EditPrihodTovarLocate.Text),1);
       EditPrihodTovarLocate.Text:=St;
 end;
end;

procedure TNaklForm.DBGrid1KeyPress(Sender: TObject; var Key: Char);
var buf : String;
begin
 If Not( dgEditing in DBGrid1.Options)  or
    (DBGrid1.Columns.Items[DBGrid1.SelectedIndex].FieldName='TovarName') then
   if ((Key in ['A'..'z']) or
       (Key in ['А'..'я']) or
       (Key in ['0'..'9']))
     then
       If (EditPrihodTovarLocate.Text='') and CheckBoxPrihodTovarUpper.Checked
       then EditPrihodTovarLocate.Text:=AnsiUpperCase(Key)
       else EditPrihodTovarLocate.Text:=EditPrihodTovarLocate.Text+Key;
 If (DBGrid1.Columns.Items[DBGrid1.SelectedIndex].FieldName='Kolvo') or
    (DBGrid1.Columns.Items[DBGrid1.SelectedIndex].FieldName='Zena') or
    (DBGrid1.Columns.Items[DBGrid1.SelectedIndex].FieldName='Zena0')
 then
 begin
   if ((Key in ['A'..'z']) or
       (Key in ['А'..'я']) )
     then
       If (EditPrihodTovarLocate.Text='') and CheckBoxPrihodTovarUpper.Checked
       then EditPrihodTovarLocate.Text:=AnsiUpperCase(Key)
       else EditPrihodTovarLocate.Text:=EditPrihodTovarLocate.Text+Key;

   if (Key in ['+','-','/','*']) then
   begin
     //DBGrid1.Options:= DBGrid1.Options - [dgEditing];
     //DBGrid1.DataSource.DataSet.FieldByName(DBGrid1.Columns.Items[DBGrid1.SelectedIndex].FieldName).Text:=
     // DBGrid1.DataSource.DataSet.FieldByName(DBGrid1.Columns.Items[DBGrid1.SelectedIndex].FieldName).AsString;
     CalcFieldName:=  DBGrid1.Columns.Items[DBGrid1.SelectedIndex].FieldName;
     //Calc1:=DBGrid1.DataSource.DataSet.FieldByName(CalcFieldName).AsCurrency;
//     buf:= DBGrid1.DataSource.DataSet.FieldByName(CalcFieldName).DisplayText;
//     buf:= DBGrid1.Columns[DBGrid1.SelectedIndex].Text;
     buf:= DBGrid1.DataSource.DataSet.FieldByName(CalcFieldName).Text;

     Calc1:=StrToCurr(Buf);
     EditCalc.Text := FormatCurr('######0.00, , ',Calc1)+Key+' ';
     EditCalc.SetFocus;
     EditCalc.SelStart:=Length(EditCalc.Text); //
   end; //  if (Key in ['+','-','/','*'])

   if (Key in ['.',',']) then
   begin
     {$IFDEF VER150}  // Delphi 7
        Key:= DecimalSeparator;
     {$ELSE}     // 10.2 Tokyo	VER320
        Key:= FormatSettings.DecimalSeparator;   // в Delphi 10.2 DecimalSeparator перенесен в FormatSettings.
     {$ENDIF}
   end;
 end;
end;

procedure TNaklForm.CalcRasbor;
var buf1, Buf2 : string;
    I : Byte;
    Funer : Boolean;
begin
  for I:=1 to Length(EditCalc.Text) do
     Case EditCalc.Text[I] of
        '0'..'9','.',',' : If Funer then Buf2:=Buf2+EditCalc.Text[I]
                       else Buf1:=Buf1+EditCalc.Text[I];
        '+': begin CalcFun:=Plus; Funer:=True; end;
        '-': begin CalcFun:=Min;  Funer:=True; end;
        '*': begin CalcFun:=Mul;  Funer:=True; end;
        '/': begin CalcFun:=Dv;   Funer:=True; end;
     end;
  try
   Calc1:= StrToCurr(Buf1);
   Calc2:= StrToCurr(Buf2);
  except
     CalcFun:=Nul;
  end;
end;

procedure TNaklForm.CalcSetRes;
begin
  case CalcFun of
    Plus: CalcRes:=Calc1+Calc2;
    Min:  CalcRes:=Calc1-Calc2;
    Mul:  CalcRes:=Calc1*Calc2;
    Dv :  If Calc2<>0 then CalcRes:=Calc1/Calc2;
  end;
end;


procedure TNaklForm.EditCalcExit(Sender: TObject);
begin
  CalcRasbor;
  if not(CalcFun=Nul) then
  begin
     CalcSetRes;
     EditCalc.Text:='';
     DBGrid1.DataSource.DataSet.Edit;
     DBGrid1.DataSource.DataSet.FieldByName(CalcFieldName).AsCurrency := CalcRes;
     DBGrid1.DataSource.DataSet.Post;
  end;
end;

procedure TNaklForm.EditCalcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 If (Key=vk_Return) or (Key=VK_SPACE) or
    (Key=VK_UP) or (Key=VK_DOWN)
   then  DBGrid1.SetFocus;

end;

procedure TNaklForm.ScWindowScale;
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


procedure TNaklForm.CheckBoxOplataSrazuClick(Sender: TObject);
begin
 If CheckBoxOplataSrazu.Checked then begin
   MaskEditOplataSum.Text := MaskEditNaklSum.Text;
   DateTimePickerDateOplata.Date := DateTimePickerDate.Date;
 end

end;

procedure TNaklForm.MaskEditOplataSumExit(Sender: TObject);
begin
  If MaskEditOplataSum.Text=''  then MaskEditOplataSum.Text:='0,00';
end;

end.
