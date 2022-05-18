unit SaldoUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Mask, Buttons, Grids, DBGrids, ExtCtrls,
  Menus, DB, DBTables, DBCtrls, Spin, ExtDlgs;

type
  TSaldoForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter1: TSplitter;
    ComboBoxUnit: TComboBox;
    TabSheet2: TTabSheet;
    Panel4: TPanel;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label4: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    MaskEditOstatok2: TMaskEdit;
    MaskEditOstatok1: TMaskEdit;
    MaskEditZakupka: TMaskEdit;
    ButtonSaldo: TButton;
    MaskEditBalans: TMaskEdit;
    MaskEditCashTo: TMaskEdit;
    MaskEditPlus: TMaskEdit;
    MaskEditMinus: TMaskEdit;
    Button1: TButton;
    SpinEditProsr: TSpinEdit;
    MaskEditBalansProsr: TMaskEdit;
    MaskEditZakupkaProsr: TMaskEdit;
    MaskEditMinusProsr: TMaskEdit;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    DBGridSaldoCashToStr: TDBGrid;
    DBGridSaldoZakupkaStr: TDBGrid;
    Splitter2: TSplitter;
    SaveDialog1: TSaveDialog;
    Panel1: TPanel;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    EditDocN1: TEdit;
    EditDocDate1: TEdit;
    EditDocTime1: TEdit;
    DBGridNakl: TDBGrid;
    Panel7: TPanel;
    Label7: TLabel;
    Label1: TLabel;
    ComboBoxAgent: TComboBox;
    DBGridNaklOstatok2: TDBGrid;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    SpeedButtonNow: TSpeedButton;
    EditDocN2: TEdit;
    EditDocDate2: TEdit;
    EditDocTime2: TEdit;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;

    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDeactivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButtonClick(Sender: TObject);
    procedure DBGridNaklOstatok2CellClick(Column: TColumn);
    procedure ComboBoxAgentClick(Sender: TObject);
    procedure ComboBoxUnitClick(Sender: TObject);
    procedure ComboBoxUnitDropDown(Sender: TObject);

    procedure SetFilter;
    procedure Showing(Sender: TObject);
    procedure DBGridNaklCellClick(Column: TColumn);
    procedure RadioButton3Click(Sender: TObject);
    procedure SpeedButtonNowClick(Sender: TObject);
    procedure ButtonSaldoClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ComboBoxAgentChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ScWindowScale;

  private
    { Private declarations }
    AgentCod, UnitCod : Integer;
    Ostatok1, Zakupka1, ZakupkaProsr,
    Ostatok2,
    Balans, BalansProsr,
    CashTo  : Currency;
    AgentFilter,   UnitFilter,   NaklFilter : String;
    AgentFiltered, UnitFiltered, NaklFiltered : Boolean;
    Firster : Boolean;
  public
    { Public declarations }
  end;

var
  SaldoForm: TSaldoForm;

implementation

uses
   DMUnit, MainUnit, InstallUnit
  ;

{$R *.dfm}

procedure TSaldoForm.FormCreate(Sender: TObject);
var    MenuIt :  TMenuItem;
       LookUpResults : Variant;
       I : Integer;
       IKind : TNaklKind;
begin
   MenuIt:=TMenuItem.Create(MainForm.WindowMenu);
   MenuIt.Caption := 'Взаиморасчеты';
   MenuIt.Visible := True;
   MenuIt.OnClick := Showing;

   InstallForm.SaldoActiv:=True;
   MainForm.WindowMenu.Add(MenuIt);

  // заполняем поставщиков
  ComboBoxAgent.Clear;
  DM.TableAgent.Filter:='(([AgentKind] = 2) OR ([AgentKind] = 0)) and ([Activ]=True)';  //Postav or Univer
  DM.TableAgent.Filtered:=True;
  DM.TableAgent.First;
  repeat
    ComboBoxAgent.Items.Add(DM.TableAgent.FieldByName('AgentName').AsString);
    DM.TableAgent.Next;
  until DM.TableAgent.Eof;

  AgentCod :=0;   // первоначально не сущ код чтоб грид накладных был пустой
  ComboBoxAgent.Text:='';
  DM.TableAgent.Filter:='';
  DM.TableAgent.Filtered:=False;
  // конец заполняем поставщиков

  // ставим от начала и до сегодня
    RadioButtonClick(Sender);
    SpeedButtonNowClick(Sender);

  Firster :=True;        //вызываем форму первоначально
  // AgentCod := AgentSelf;
  UnitCod  := 0;

  ScWindowScale;
end;

procedure TSaldoForm.Showing(Sender: TObject);
begin
  Show;
end;

procedure TSaldoForm.FormActivate(Sender: TObject);
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
(*
  Firster :=True;        //вызываем форму первоначально
  AgentCod := AgentSelf;
  UnitCod  := 0;
*)

  // заполняем поставщиков  перенесено в создание


(*
  ComboBoxUnitDropDown(Sender);
  If ComboBoxUnit.Items.Count>0 then
  begin
    ComboBoxUnit.ItemIndex:=1;
    ComboBoxUnitClick(Sender);
  end;
*)

   //RadioButton1.Checked:=True;
(*
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
*)
  if Firster then begin
//    DBGridNakl2.OnCellClick(DBGridNakl2.Columns[DBGridNakl2.SelectedIndex]);
    Firster:=False;
  end  // if Firster
  else begin   // если не в первый раз заполняем накладные остатков
  end;
  
   DM.TableNakl.Filtered:= True;
   SetFilter;
end;

procedure TSaldoForm.SetFilter;
begin
   DM.TableNakl.Filter  := '([Kind] = 4)';        // остаток
   If AgentCod<>0 then
        DM.TableNakl.Filter  := '([Kind] = 4)'+ ' and ([AgentCodFrom] = '''+IntToStr(AgentCod)+''')'
   else DM.TableNakl.Filter  := '([Kind] = 0)';   // не существующее условие

//   If UnitCod<>0 then DM.TableNakl.Filter  :=DM.TableNakl.Filter+
//      ' and ([UnitCodFrom] = '''+IntToStr(UnitCod)+''')';

//   маркер на последнюю строку
    if Not DBGridNakl.DataSource.DataSet.Eof         then  DBGridNakl.DataSource.DataSet.Last;
    if Not DBGridNaklOstatok2.DataSource.DataSet.Eof then  DBGridNaklOstatok2.DataSource.DataSet.Last;

end;


procedure TSaldoForm.FormClose(Sender: TObject; var Action: TCloseAction);
var    MenuIt :  TMenuItem;
begin
//возвращаем параметры фильтрации
(*
  begin
    DM.TableAgent.Filter  := AgentFilter;
    DM.TableAgent.Filtered:= AgentFiltered;

    DM.TableUnit.Filter  := UnitFilter;
    DM.TableUnit.Filtered:= UnitFiltered;

    DM.TableNakl.Filter  := NaklFilter;
    DM.TableNakl.Filtered:= NaklFiltered;
    DM.TableNakl.Last;
  end;
  *)
  //конец =возвращаем параметры фильтрации

  MenuIt:=MainForm.WindowMenu.Find('Взаиморасчеты');
  MainForm.WindowMenu.Delete(MainForm.WindowMenu.IndexOf(MenuIt));
  InstallForm.SaldoActiv:=False;
  Action:= caFree;

//  DM.QueryPrihod.Close;
  DM.QuerySaldoZakupka   .Close;
  DM.QuerySaldoZakupkaStr.Close;
  DM.QuerySaldoCashToStr .Close;
  DM.QuerySaldoCashTo    .Close;

end;

procedure TSaldoForm.FormDeactivate(Sender: TObject);
begin
//возвращаем параметры фильтрации
  begin
    DM.TableAgent.Filter  := AgentFilter;
    DM.TableAgent.Filtered:= AgentFiltered;

    DM.TableUnit.Filter  := UnitFilter;
    DM.TableUnit.Filtered:= UnitFiltered;

    DM.TableNakl.Filter  := NaklFilter;
    DM.TableNakl.Filtered:= NaklFiltered;
    DM.TableNakl.Last;
  end;
end;

procedure TSaldoForm.RadioButtonClick(Sender: TObject);
begin    // от начала или от накладной

  If Sender=DBGridNakl then
  begin
    RadioButton1.Checked:=False;
    RadioButton2.Checked:=True;
  end;
  If RadioButton1.Checked then   // from 0
  begin
    Ostatok1                     := 0;
    MaskEditOstatok1.Text        :='0';
    Zakupka1                     := 0;
    ZakupkaProsr                 := 0;


    EditDocN1.Text        :='Нет';
    EditDocDate1.Text     :='01.01.2000';
    EditDocTime1.Text     :='00:00:00';
  end
  else begin   // от накладной
    with DM.QueryNaklSum do begin
      Close;
      ParamByName('NaklCod').Value:=DBGridNakl.DataSource.DataSet.FieldByName('Cod').AsInteger;
      Open;
    end;
//    Ostatok1              := DBGridNakl1.DataSource.DataSet.FieldByName('Sum').AsCurrency;
    Ostatok1        := DM.QueryNaklSum.FieldByName('SumAll').AsCurrency;

    MaskEditOstatok1.Text        := FormatCurr('######0.00, , ',Ostatok1);

    EditDocN1.Text        := InttoStr(DBGridNakl.DataSource.DataSet.FieldByName('DocN').AsInteger);
    EditDocDate1.Text     := DateToStr(DBGridNakl.DataSource.DataSet.FieldByName('DocDate').AsDateTime);
    EditDocTime1.Text     := TimeToStr(DBGridNakl.DataSource.DataSet.FieldByName('DocTime').AsDateTime);
  end;

end;

procedure TSaldoForm.ComboBoxAgentClick(Sender: TObject);
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

procedure TSaldoForm.ComboBoxUnitClick(Sender: TObject);
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

procedure TSaldoForm.ComboBoxUnitDropDown(Sender: TObject);
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

procedure TSaldoForm.DBGridNaklCellClick(Column: TColumn);
begin
  RadioButtonClick(DBGridNakl);
end;

procedure TSaldoForm.DBGridNaklOstatok2CellClick(Column: TColumn);
begin
  RadioButton3Click(DBGridNaklOstatok2);
end;

procedure TSaldoForm.RadioButton3Click(Sender: TObject);
begin
  If Sender=DBGridNaklOstatok2 then
  begin
    RadioButton3.Checked:=False;
    RadioButton4.Checked:=True;
  end;
  If RadioButton3.Checked then   // до конца
  begin
    Ostatok2                     := 0;
    MaskEditOstatok2.Text        :='0';
    CashTo                       := 0;

    EditDocN2.Text        :='Нет';
    EditDocDate2.Text     :='01.01.2100';
    EditDocTime2.Text     :='00:00:00';
  end
  else begin   // от наклодной
    with DM.QueryNaklSum do begin
      Close;
      ParamByName('NaklCod').Value:=DBGridNaklOstatok2.DataSource.DataSet.FieldByName('Cod').AsInteger;
      Open;
    end;
//    Ostatok1              := DBGridNakl1.DataSource.DataSet.FieldByName('Sum').AsCurrency;
    Ostatok2        := DM.QueryNaklSum.FieldByName('SumAll').AsCurrency;

    MaskEditOstatok2.Text        := FormatCurr('######0.00, , ',Ostatok2);

    EditDocN2.Text        := InttoStr(DBGridNaklOstatok2.DataSource.DataSet.FieldByName('DocN').AsInteger);
    EditDocDate2.Text     := DateToStr(DBGridNaklOstatok2.DataSource.DataSet.FieldByName('DocDate').AsDateTime);
    EditDocTime2.Text     := TimeToStr(DBGridNaklOstatok2.DataSource.DataSet.FieldByName('DocTime').AsDateTime);
  end;
end;

procedure TSaldoForm.SpeedButtonNowClick(Sender: TObject);
begin
    RadioButton3.Checked:=True;
    RadioButton4.Checked:=False;

  EditDocDate2.Text:=DateToStr(Now);
  EditDocTime2.Text:=TimeToStr(Now);
  Ostatok2         := 0;
  MaskEditOstatok2.Text        := FormatCurr('######0.00, , ',Ostatok2);
end;

procedure TSaldoForm.ButtonSaldoClick(Sender: TObject);
var     SaveCursor : TCursor;
begin
 try
    SaveCursor := Screen.Cursor;
    Screen.Cursor := crHourglass;    { Show hourglass cursor }

  with DM.QuerySaldoZakupka do begin
    Close;
    ParamByName('AgentCod').Value:=AgentCod;
    ParamByName('DocDate1').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate2').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime1').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime2').Value  :=StrToTime(EditDocTime2.Text);

    Open;

  end;
    Zakupka1       := DM.QuerySaldoZakupka.FieldByName('SumAll').AsCurrency;
    MaskEditZakupka.Text       :=FormatCurr('######0.00, , ',Zakupka1);

// если текущ дата - дата2 < отсрочки -> посчитать просроченный баланс
   If Now - StrToDate(EditDocDate2.Text) < SpinEditProsr.Value then
    begin
      with DM.QuerySaldoZakupka do begin
        Close;
        ParamByName('AgentCod').Value:=AgentCod;
        ParamByName('DocDate1').Value  :=StrToDate(EditDocDate1.Text);
        ParamByName('DocDate2').Value  :=StrToDate(EditDocDate2.Text)-SpinEditProsr.Value;
        ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
        ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text)-SpinEditProsr.Value;

        ParamByName('DocTime1').Value  :=StrToTime(EditDocTime1.Text);
        ParamByName('DocTime2').Value  :=StrToTime(EditDocTime2.Text);

      Open;

     end;
     ZakupkaProsr       := DM.QuerySaldoZakupka.FieldByName('SumAll').AsCurrency;

    end
    else 
      ZakupkaProsr:= Zakupka1;
      
    MaskEditZakupkaProsr.Text       :=FormatCurr('######0.00, , ',ZakupkaProsr);

   with DM.QuerySaldoCashTo do begin
    Close;
    ParamByName('AgentCodTo').Value:=AgentCod;
    ParamByName('NaklKind').Value    :=7;         //CashTo  agent

    ParamByName('DocDate1').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate2').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime1').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime2').Value  :=StrToTime(EditDocTime2.Text);

    Open;
  end;
    CashTo:= DM.QuerySaldoCashTo.FieldByName('SumAll').AsCurrency;
    MaskEditCashTo.Text:=FormatCurr('######0.00, , ',DM.QuerySaldoCashTo.FieldByName('SumAll').AsCurrency);


   MaskEditPlus.Text       := FormatCurr('######0.00, , ', Ostatok2+ CashTo );
   MaskEditMinus.Text      := FormatCurr('######0.00, , ', Ostatok1+ Zakupka1 );
   MaskEditMinusProsr.Text := FormatCurr('######0.00, , ', Ostatok1+ ZakupkaProsr );

   Balans:= (Ostatok2+ CashTo) - (Ostatok1+ Zakupka1);
   MaskEditBalans.Text := FormatCurr('######0.00, , ', Balans );

   If Balans>=0 then MaskEditBalans.Font.Color := clGreen
     else MaskEditBalans.Font.Color := clRed;

   BalansProsr:= (Ostatok2+ CashTo) - (Ostatok1+ ZakupkaProsr);
   MaskEditBalansProsr.Text := FormatCurr('######0.00, , ', BalansProsr );

   If BalansProsr>=0 then MaskEditBalansProsr.Font.Color := clGreen
     else MaskEditBalansProsr.Font.Color := clRed;

   // ButtonPrihodNakl.Click;       //Накладные
   // ButtonPrihodTovar.Click;      //Содержимое Накладных
   // ButtonPrihodTovarGroup.Click; //Содержимое Накладных сгруппированное по товарам

   Button2Click(Sender);

  finally
    Screen.Cursor := SaveCursor;  { Always restore to normal }
  end;


end;

procedure TSaldoForm.Button2Click(Sender: TObject);
begin
  with DM.QuerySaldoZakupkaStr do begin
    Close;
    ParamByName('AgentCod').Value:=AgentCod;
    ParamByName('DocDate1').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate2').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime1').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime2').Value  :=StrToTime(EditDocTime2.Text);

    Open;
    //   маркер на последнюю строку
    //  if Not DM.QuerySaldoZakupkaStr.Eof  then  Last;
  end;
  with DM.QuerySaldoCashToStr do begin
    Close;
    ParamByName('AgentCod').Value:=AgentCod;
    ParamByName('DocDate1').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate2').Value  :=StrToDate(EditDocDate2.Text);
    ParamByName('DocDate11').Value  :=StrToDate(EditDocDate1.Text);
    ParamByName('DocDate22').Value  :=StrToDate(EditDocDate2.Text);

    ParamByName('DocTime1').Value  :=StrToTime(EditDocTime1.Text);
    ParamByName('DocTime2').Value  :=StrToTime(EditDocTime2.Text);

    Open;
    // if Not DM.QuerySaldoCashToStr.Eof  then  Last;
  end;

end;

procedure TSaldoForm.ComboBoxAgentChange(Sender: TObject);
begin
    RadioButton1.Checked:=True;
    RadioButton3.Checked:=True;

  RadioButtonClick(Sender);
  Button2Click(Sender);
  MaskEditZakupka.Text  :='0.00';
  MaskEditMinus.Text    :='0.00';
  MaskEditCashTo.Text   :='0.00';
  MaskEditPlus.Text     :='0.00';
  MaskEditBalans.Text   :='0.00';
  MaskEditBalansProsr.Text   :='0.00';

end;

procedure TSaldoForm.Button1Click(Sender: TObject);
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
        WriteLn(Fil,'Взаиморасчеты с поставщиком '+#09+ComboBoxAgent.Text+#09+ComboBoxUnit.Text+#09+'');

        If RadioButton1.Checked then
          WriteLn(Fil,'От самого начала учета ')
        else
          WriteLn(Fil,RadioButton2.Caption+#09+EditDocN1.Text+#09+'от: '+EditDocDate1.Text+#09+'');

        If RadioButton3.Checked then
          WriteLn(Fil,'До текущей даты ')
        else
          WriteLn(Fil,RadioButton4.Caption+#09+EditDocN2.Text+#09+'от: '+EditDocDate2.Text+#09+'');

        WriteLn(Fil);

      finally
       CloseFile(Fil);
       Screen.Cursor := SaveCursor;  { Always restore to normal }
      end;

        If RadioButton2.Checked or RadioButton4.Checked then
        begin
          AssignFile(Fil,SaveDialog1.FileName);
          Append(Fil);
          WriteLn(Fil,'Накладные остатков долга:');
          CloseFile(Fil);
          DM.DataSetToText(DM.DataSourceNakl.DataSet,            SaveDialog1.FileName);
        end;

        begin
          AssignFile(Fil,SaveDialog1.FileName);
          Append(Fil);
          WriteLn(Fil,'Накладные закупки:');
          CloseFile(Fil);
        end;
        DM.DataSetToText(DM.DataSourceSaldoZakupkaStr.DataSet, SaveDialog1.FileName);

        begin
          AssignFile(Fil,SaveDialog1.FileName);
          Append(Fil);
          WriteLn(Fil,Label5.Caption+' '+MaskEditOstatok1.Text);
          WriteLn(Fil,Label6.Caption+' '+MaskEditZakupka.Text);
          WriteLn(Fil);

          WriteLn(Fil,'Накладные выплат:');
          CloseFile(Fil);
        end;

        DM.DataSetToText(DM.DataSourceSaldoCashToStr.DataSet,  SaveDialog1.FileName);
        begin
          AssignFile(Fil,SaveDialog1.FileName);
          Append(Fil);
          WriteLn(Fil,Label9.Caption+' '+MaskEditOstatok2.Text);
          WriteLn(Fil,Label8.Caption+' '+MaskEditCashTo.Text);
          WriteLn(Fil);
          
          WriteLn(Fil,Label4.Caption+' '+MaskEditBalans.Text);
          CloseFile(Fil);
        end;

 end;

begin
  SaveDialog1.FileName:= 'Взаиморасчет '+
     ComboBoxAgent.Text+'.txt';    //' '+ComboBoxUnit.Text+

  SaveDialog1.InitialDir:=NaklPrintPath;
  If SaveDialog1.Execute then
   If Not FileExists(SaveDialog1.FileName) then PrToFile
   else If  (MessageDlg('Файл '+SaveDialog1.FileName+' уже существует!'+#10#13+
                    'Заменить его новым ?',
                     mtConfirmation		, [mbYes, mbNo], 0) = mrYes) then PrToFile;

end;

procedure TSaldoForm.ScWindowScale;
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
