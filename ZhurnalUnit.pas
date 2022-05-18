unit ZhurnalUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, Db, ComCtrls, Spin, DBCtrls, Variants,
  Menus,
  DMUnit, InstallUnit, Mask
       {$IFDEF VER150}  // Delphi 7
     {$ELSE}     //
        , System.UITypes   //
     {$ENDIF}
;

type
  TZhurnalForm = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    CheckBoxAgentFromVis: TCheckBox;
    CheckBoxUnitFromVis: TCheckBox;
    CheckBoxUnitToVis: TCheckBox;
    CheckBoxSkladFromVis: TCheckBox;
    CheckBoxSkladToVis: TCheckBox;
    CheckBoxSumVis: TCheckBox;
    CheckBoxTimeVis: TCheckBox;
    CheckBoxTipDocVis: TCheckBox;
    CheckBoxDocNVis: TCheckBox;
    CheckBoxAgentToVis: TCheckBox;
    CheckBoxDocDateVis: TCheckBox;
    CheckBoxDocCodVis: TCheckBox;
    CheckBoxDeystvVis: TCheckBox;
    CheckBoxSotrudnFromVis: TCheckBox;
    CheckBoxDateVis: TCheckBox;
    CheckBoxSotrudnToVis: TCheckBox;
    CheckBoxPrVis: TCheckBox;
    CheckBoxOplataVis: TCheckBox;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel2: TPanel;
    StaticText2: TStaticText;
    ComboBoxTipDoc: TComboBox;
    ComboBoxSotrudnTo: TComboBox;
    ComboBoxDeystv: TComboBox;
    CheckBoxSotrudnTo: TCheckBox;
    CheckBoxTipDoc: TCheckBox;
    CheckBoxDeystv: TCheckBox;
    CheckBoxDate: TCheckBox;
    DateTimePicker1: TDateTimePicker;
    CheckBoxDocDate: TCheckBox;
    DateTimePickerDocDate: TDateTimePicker;
    CheckBoxUnitTo: TCheckBox;
    ComboBoxUnitTo: TComboBox;
    CheckBoxAgentTo: TCheckBox;
    ComboBoxAgentTo: TComboBox;
    CheckBoxSkladTo: TCheckBox;
    ComboBoxSkladTo: TComboBox;
    CheckBoxAgentFrom: TCheckBox;
    CheckBoxUnitFrom: TCheckBox;
    CheckBoxSkladFrom: TCheckBox;
    CheckBoxSotrudnFrom: TCheckBox;
    ComboBoxAgentFrom: TComboBox;
    ComboBoxUnitFrom: TComboBox;
    ComboBoxSkladFrom: TComboBox;
    ComboBoxSotrudnFrom: TComboBox;
    Panel3: TPanel;
    StaticText1: TStaticText;
    SpinEditN: TSpinEdit;
    CheckBoxFindDate: TCheckBox;
    DateTimePicker2: TDateTimePicker;
    CheckBoxN: TCheckBox;
    Panel6: TPanel;
    DBNavigator1: TDBNavigator;
    ButtonClose: TButton;
    CheckBoxChoiceParent: TCheckBox;
    RadioGroup1: TRadioGroup;
    RadioButtonZhurnal: TRadioButton;
    RadioButtonNakl: TRadioButton;
    CheckBoxDocCod: TCheckBox;
    SpinEditDocCod: TSpinEdit;
    MaskEditNaklsSum: TMaskEdit;
    StaticText9: TStaticText;
    Label13: TLabel;
    MaskEditNaklsSum0: TMaskEdit;
    MaskEditPerCents: TMaskEdit;
    CheckBoxDocNs: TCheckBox;
    CheckBoxDocNpo: TCheckBox;
    SpinEditDocNs: TSpinEdit;
    SpinEditDocNpo: TSpinEdit;
    RadioGroup2: TRadioGroup;
    RadioButton1: TRadioButton;
    RadioButtonN: TRadioButton;
    Label2: TLabel;
    MaskEditSumOplata: TMaskEdit;
    Label3: TLabel;
    MaskEditRaznica: TMaskEdit;
    procedure ButtonCloseClick(Sender: TObject);
    procedure FilterChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpinEditNChange(Sender: TObject);
    procedure DateTimePicker2Change(Sender: TObject);
    procedure CheckBoxColumnVisClick(Sender: TObject);
//    procedure SpinEditPercentZenaChange(Sender: TObject);
    procedure ComboBoxUnitDropDown(Sender: TObject);
    procedure ComboBoxSkladDropDown(Sender: TObject);
    procedure CheckBoxChoiceParentClick(Sender: TObject);
    procedure Showing(Sender: TObject);
    procedure ShowFromClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDeactivate(Sender: TObject);
    procedure RadioButtonNClick(Sender: TObject);
    procedure SpinEditDocCodChange(Sender: TObject);
    procedure ScWindowScale;
  private
    { Private declarations }
    ZhurnalActivCod     : Integer;{код строки журнала на которой стоит курсор }
    NaklKind : TNaklKind;
    NaklFilter : String;
    NaklFiltered : Boolean;
  public
    { Public declarations }
    ChoiceParent, ParentShow : Boolean;
    SonFormKind  : TFormKind;
    procedure SetProsmotr(NKind : TNaklKind);
    procedure SetComboBoxTipDoc;

  end;

var
  ZhurnalForm: TZhurnalForm;

implementation

uses NaklUnit, MainUnit, SpravUnit;

{$R *.DFM}

procedure TZhurnalForm.ButtonCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TZhurnalForm.SetProsmotr(NKind : TNaklKind);
begin
  RadioButtonNakl.OnClick(RadioButtonNakl);
  If NKind =All then
  else begin
    ComboBoxTipDoc.ItemIndex:= ord(NKind) -1;
    CheckBoxTipDoc.Checked:= True;
  end;
  NaklKind:= NKind;
end;

procedure TZhurnalForm.SetComboBoxTipDoc;
var K : TNaklKind;
begin
  ComboBoxTipDoc.Clear;
  For K:=Succ(Low(NaklName)) to High(NaklName) do
    If Not( ((NaklName[K]='¬ыплаты') OR (NaklName[K]='—чет') OR (NaklName[K]='ѕолучение ƒенег') OR
             (NaklName[K]='ѕеремещЌк') OR (NaklName[K]='ѕродажЌк')
            )
             AND (InstallForm.Dostup <= 3) )

    then  
    ComboBoxTipDoc.Items.Add(NaklName[K]);
  ComboBoxTipDoc.Text:='';
end;

procedure TZhurnalForm.FilterChange(Sender: TObject);
var LookUpResults : Variant;
    AgentCodFrom, UnitCodFrom, SkladCodFrom, SotrudnCodFrom,
    AgentCodTo, UnitCodTo, SkladCodTo, SotrudnCodTo, NaklNameCod  : Integer;
    AgenterFrom, UniterFrom, SkladerFrom, SotrudnerFrom,
    AgenterTo, UniterTo, SkladerTo, SotrudnerTo : Boolean;
    Buf : String;
    PosProb, Kind : Integer;
    K : TNaklKind;
begin
  AgenterFrom  := False;
  UniterFrom   := False;
  SkladerFrom  := False;
  SotrudnerFrom:= False;
  AgenterTo    := False;
  UniterTo     := False;
  SkladerTo    := False;
  SotrudnerTo  := False;

  DBGrid1.DataSource.DataSet.Filter:='';
  DBGrid1.DataSource.DataSet.Filtered:= False;
  buf:='';

  If (Sender = ComboBoxTipDoc) and Not CheckBoxTipDoc.Checked then CheckBoxTipDoc.Checked := True;

  If CheckBoxTipDoc.Checked then
  begin
    (* // вычисление типа документа по Cod NaklName
    LookUpResults :=DM.TableNaklName.LookUp('NaklName',ComboBoxTipDoc.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        NaklNameCod := LookUpResults;
      end;
    DBGrid1.DataSource.DataSet.Filter:='([Kind] = '''+IntToStr(NaklNameCod)+''')';
    buf:='N.Kind='+ IntToStr(NaklNameCod)+' and ';
    *)

    (*  // вычисление типа документа по индексу  ComboBoxTipDoc.ItemIndex
    DBGrid1.DataSource.DataSet.Filter:='([Kind] = '''+IntToStr(ComboBoxTipDoc.ItemIndex+1)+''')';
    buf:='N.Kind='+ IntToStr(ComboBoxTipDoc.ItemIndex+1)+' and ';
     *)

    // вычисление типа документа по выборке из NaklName
    For K:=Succ(Low(NaklName)) to High(NaklName) do If NaklName[K] = ComboBoxTipDoc.Text then Kind:=Integer(K);
    DBGrid1.DataSource.DataSet.Filter:='([Kind] = '''+IntToStr(Kind)+''')';
    buf:='N.Kind='+ IntToStr(Kind)+' and ';

  end;
  If ComboBoxTipDoc.ItemIndex>=0 then NaklKind:= TNaklKind(ComboBoxTipDoc.ItemIndex+1);

  If CheckBoxDeystv.Checked then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([Deystv] = '''+ComboBoxDeystv.Text+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([Deystv] = '''+ComboBoxDeystv.Text+''')';
    buf:=buf+ 'N.Deystv='+ComboBoxDeystv.Text+' and ';
  end;

  If CheckBoxDate.Checked then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([Date] = '''+DateToStr(DateTimePicker1.Date)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([Date] = '''+DateToStr(DateTimePicker1.Date)+''')';
    buf:=buf+ 'N.Date='''+ DateToStr(DateTimePicker1.Date)+''' and ';
  end;

  If CheckBoxDocDate.Checked then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([DocDate] = '''+DateToStr(DateTimePickerDocDate.Date)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([DocDate] = '''+DateToStr(DateTimePickerDocDate.Date)+''')';
    buf:=buf+ 'N.DocDate='''+DateToStr(DateTimePickerDocDate.Date)+''' and ';
  end;

  If CheckBoxAgentFrom.Checked then begin
    LookUpResults :=DM.TableAgent.LookUp('AgentName',ComboBoxAgentFrom.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        AgenterFrom  := True;
        AgentCodFrom := LookUpResults;
      end;
  end;
  If AgenterFrom then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([AgentCodFrom] = '''+IntToStr(AgentCodFrom)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([AgentCodFrom] = '''+IntToStr(AgentCodFrom)+''')';
    buf:=buf+ 'N.AgentCodFrom='+ IntToStr(AgentCodFrom)+' and ';
  end;

  If CheckBoxUnitFrom.Checked then begin
    LookUpResults :=DM.TableUnit.LookUp('UnitName',ComboBoxUnitFrom.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        UniterFrom  := True;
        UnitCodFrom := LookUpResults;
      end;
  end;
  If UniterFrom then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([UnitCodFrom] = '''+IntToStr(UnitCodFrom)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([UnitCodFrom] = '''+IntToStr(UnitCodFrom)+''')';
    buf:=buf+ 'N.UnitCodFrom='+ IntToStr(UnitCodFrom)+' and ';
  end;

  If CheckBoxSotrudnFrom.Checked then begin
    PosProb:= Pos(' ',ComboBoxSotrudnFrom.Text);
    If PosProb >0 then begin
      LookUpResults :=DM.TableSotrudn.LookUp('F',Copy(ComboBoxSotrudnFrom.Text,1,PosProb-1), 'Cod');
      If VarType(LookUpResults)<>varNull then
        If LookUpResults<>varEmpty then begin
          SotrudnerFrom  := True;
          SotrudnCodFrom := LookUpResults;
        end;
    end;
  end;

  If SotrudnerFrom then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([SotrudnCodFrom] = '''+IntToStr(SotrudnCodFrom)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([SotrudnCodFrom] = '''+IntToStr(SotrudnCodFrom)+''')';
    buf:=buf+ 'N.SotrudnCodFrom='+ IntToStr(SotrudnCodFrom)+' and ';
  end;

  If CheckBoxAgentTo.Checked then begin
    LookUpResults :=DM.TableAgent.LookUp('AgentName',ComboBoxAgentTo.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        AgenterTo  := True;
        AgentCodTo := LookUpResults;
      end;
  end;
  If AgenterTo then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([AgentCodTo] = '''+IntToStr(AgentCodTo)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([AgentCodTo] = '''+IntToStr(AgentCodTo)+''')';
    buf:=buf+ 'N.AgentCodTo='+ IntToStr(AgentCodTo)+' and ';
  end;

  If CheckBoxUnitTo.Checked then begin
    LookUpResults :=DM.TableUnit.LookUp('UnitName',ComboBoxUnitTo.Text, 'Cod');
    If VarType(LookUpResults)<>varNull then
      If LookUpResults<>varEmpty then begin
        UniterTo  := True;
        UnitCodTo := LookUpResults;
      end;
  end;
  If UniterTo then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([UnitCodTo] = '''+IntToStr(UnitCodTo)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([UnitCodTo] = '''+IntToStr(UnitCodTo)+''')';
    buf:=buf+ 'N.UnitCodTo='+ IntToStr(UnitCodTo)+' and ';
  end;

  If CheckBoxSotrudnTo.Checked then begin
    PosProb:= Pos(' ',ComboBoxSotrudnTo.Text);
    If PosProb >0 then begin
      LookUpResults :=DM.TableSotrudn.LookUp('F',  Copy(ComboBoxSotrudnTo.Text,1,PosProb-1), 'Cod');
      If VarType(LookUpResults)<>varNull then
        If LookUpResults<>varEmpty then begin
          SotrudnerTo  := True;
          SotrudnCodTo := LookUpResults;
        end;
    end;
  end;

  If SotrudnerTo then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([SotrudnCodTo] = '''+IntToStr(SotrudnCodTo)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([SotrudnCodTo] = '''+IntToStr(SotrudnCodTo)+''')';
    buf:=buf+ 'N.SotrudnCodTo='+ IntToStr(SotrudnCodTo)+' and ';
  end;
{
  If CheckBoxSotrudnTo.Checked then begin
    Buf:=Copy(ComboBoxSotrudnTo.Text,Pos('Cod=',ComboBoxSotrudnTo.Text)+4,100);
    DBGrid1.DataSource.DataSet.Filter:='SotrudnCodTo ='+Buf;
  end;
}
  If CheckBoxDocCod.Checked and RadioButtonNakl.Checked then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([Cod] = '''+IntToStr(SpinEditDocCod.Value)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([Cod] = '''+IntToStr(SpinEditDocCod.Value)+''')';
    buf:=buf+ 'N.Cod='+ IntToStr(SpinEditDocCod.Value)+' and ';
  end;

  If CheckBoxDocCod.Checked and RadioButtonZhurnal.Checked then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([DocCod] = '''+IntToStr(SpinEditDocCod.Value)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([DocCod] = '''+IntToStr(SpinEditDocCod.Value)+''')';
    buf:=buf+ 'N.Cod='+ IntToStr(SpinEditDocCod.Value)+' and ';
  end;

  If CheckBoxDocNs.Checked  then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([DocN] >= '''+IntToStr(SpinEditDocNs.Value)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([DocN] >= '''+IntToStr(SpinEditDocNs.Value)+''')';
    buf:=buf+ 'N.DocN>='+ IntToStr(SpinEditDocNs.Value)+' and ';
  end;

  If CheckBoxDocNpo.Checked  then begin
    If DBGrid1.DataSource.DataSet.Filter='' then DBGrid1.DataSource.DataSet.Filter:='([DocN] <= '''+IntToStr(SpinEditDocNpo.Value)+''')'
    else DBGrid1.DataSource.DataSet.Filter:=DBGrid1.DataSource.DataSet.Filter+ ' and ([DocN] <= '''+IntToStr(SpinEditDocNpo.Value)+''')';
    buf:=buf+ 'N.DocN<='+ IntToStr(SpinEditDocNpo.Value)+' and ';
  end;

  buf := copy (buf,1,length(buf)-5); // del концевого ' and '

  If  DBGrid1.DataSource.DataSet.Filter<>'' then DBGrid1.DataSource.DataSet.Filtered:=True
  else   DBGrid1.DataSource.DataSet.Filtered:= False;

  with DM.QueryNaklsSum do begin
      Close;
      If (NaklKind=PereOzenka)  then
        DM.QueryNaklsSum.SQL[0]:= 'SELECT SUM(  Kolvo*(Zena-Zena0) ) SumAll,'
      else
        DM.QueryNaklsSum.SQL[0]:= 'SELECT SUM(  Kolvo*Zena ) SumAll,';

      If DBGrid1.DataSource.DataSet.Filtered then
           DM.QueryNaklsSum.SQL[4]:= 'where N.Cod=Rec.NaklCod and '+buf
      else DM.QueryNaklsSum.SQL[4]:= 'where N.Cod=Rec.NaklCod';
      Open;
    end;

  with DM.QueryOplata do begin
      Close;

      If DBGrid1.DataSource.DataSet.Filtered
      then           DM.QueryOplata.SQL[2]:= 'where '+buf;
      Open;
    end;

    MaskEditNaklsSum.Text  :=FormatCurr('#########0.00, , ',DM.QueryNaklsSum.FieldByName('SumAll').AsCurrency);
    MaskEditNaklsSum0.Text :=FormatCurr('#########0.00, , ',DM.QueryNaklsSum.FieldByName('SumAll0').AsCurrency);
    MaskEditPerCents.Text  :=FormatCurr('#0.00, , ',DM.QueryNaklsSum.FieldByName('PerCent').AsCurrency);

    MaskEditSumOplata.Text :=FormatCurr('#########0.00, , ',DM.QueryOplata.FieldByName('Oplata').AsCurrency);

    MaskEditRaznica.Text :=FormatCurr('#########0.00, , ',
      DM.QueryNaklsSum.FieldByName('SumAll').AsCurrency-DM.QueryOplata.FieldByName('Oplata').AsCurrency);


    if Not DBGrid1.DataSource.DataSet.Eof then  DBGrid1.DataSource.DataSet.Last;
end;

procedure TZhurnalForm.FormCreate(Sender: TObject);
var I : TDeystvKind;
    K : TNaklKind;
    MenuIt :  TMenuItem;
begin
  ChoiceParent := False;
  DateTimePicker2.Date:=Date;

(*  перенес в процедуру TMainForm.SetDostup;
  SetComboBoxTipDoc;
*)

  ComboBoxDeystv.Clear;
  For I:=Low(DeystvName) to High(DeystvName) do  ComboBoxDeystv.Items.Add(DeystvName[I]);
  ComboBoxDeystv.Text:='';

  DateTimePicker1.Date:=Date;
  DateTimePickerDocDate.Date:=Date;

  DM.TableAgent.Filter:='(([AgentKind] = 2) OR ([AgentKind] = 0)) and ([Activ]=True)';  // Univer
  DM.TableAgent.Filtered:=True;
  DM.TableAgent.First;
  repeat
    ComboBoxAgentFrom.Items.Add(DM.TableAgent.FieldByName('AgentName').AsString);
    DM.TableAgent.Next;
  until DM.TableAgent.Eof;
  ComboBoxAgentFrom.Text:='';
  DM.TableAgent.Filtered:=False;

  DM.TableAgent.Filter:='(([AgentKind] = 1) OR ([AgentKind] = 0) OR ([AgentKind] = 2)) and ([Activ]=True)';  //Postav orPokup or Univer
  DM.TableAgent.Filtered:=True;
  DM.TableAgent.First;
  repeat
    ComboBoxAgentTo.Items.Add(DM.TableAgent.FieldByName('AgentName').AsString);
    DM.TableAgent.Next;
  until DM.TableAgent.Eof;

  ComboBoxAgentTo.Text:='';
  DM.TableAgent.Filter:='';
  DM.TableAgent.Filtered:=False;

   MenuIt:=TMenuItem.Create(MainForm.WindowMenu);
   MenuIt.Caption := Caption;
   MenuIt.Visible := True;
   MenuIt.OnClick := Showing;

   MainForm.WindowMenu.Add(MenuIt);
   
   NaklKind:=All;

   ScWindowScale;
end;

procedure TZhurnalForm.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caHide;
end;

procedure TZhurnalForm.DBGrid1CellClick(Column: TColumn);
var K,Opened : TFormKind;
    OpenedCod: Integer;
    FormEdit : Boolean;
begin
 If Not(DBGrid1.DataSource.DataSet.State=dsEdit) then
 begin
  If RadioButtonZhurnal.Checked then
       OpenedCod:= DBGrid1.DataSource.DataSet['DocCod']
  else OpenedCod:= DBGrid1.DataSource.DataSet['Cod'];

  If ChoiceParent then
  begin
    If Integer(SonFormKind) div 2 = DBGrid1.DataSource.DataSet.FieldByName('Kind').AsInteger
    then begin  //если совпадают типы накладных
      // размещать на форме New
      ParentFormKind:=  TFormKind(DBGrid1.DataSource.DataSet.FieldByName('Kind').AsInteger*2-1);
      If SonFormKind = ParentFormKind then Inc(ParentFormKind);  //размещать на форме Old
    end
    else //если не совпадают- размещать на форме Old
      ParentFormKind:=  TFormKind(DBGrid1.DataSource.DataSet.FieldByName('Kind').AsInteger*2);

    If ParentShow then begin
      If FormParAr[ParentFormKind].Activ then NaklFormAr[ParentFormKind].Close;
      Application.CreateForm(TNaklForm, NaklFormAr[ParentFormKind]);
      If NaklFormAr[ParentFormKind].SetNakl(DBGrid1, OpenedCod,ParentFormKind,Prosmotr)
      then begin
        FormParAr[SonFormKind].ParentCod:= OpenedCod;

        DM.TableParent.Append;  // создать строку в parent.db
        DM.TableParent.FieldByName('ParentCod').AsInteger:= OpenedCod;
        DM.TableParent.FieldByName('SonCod').AsInteger   := FormParAr[SonFormKind].NaklCod;
        DM.TableParent.Post;
        NaklFormAr[SonFormKind].ComboBoxParentAdd(OpenedCod); //добавить строку в список родителей накладной
        DM.TableNakl.Locate('Cod', OpenedCod, []); // восстановление текущей строки журнала
        NaklFormAr[SonFormKind].ComboBoxParent.ItemIndex:= NaklFormAr[SonFormKind].ComboBoxParent.Items.Count-1;

        NaklFormAr[ParentFormKind].Show;
        NaklFormAr[SonFormKind].Show;
      end
     else MessageDlg('Ќакладна€ с кодом '+IntToStr(OpenedCod)+' отсутствует !',  mtError , [mbOk], 0);
    end

    else begin  //   not ParentShow
     If DM.TableNakl.Locate('Cod', OpenedCod, []) then
     begin
        FormParAr[SonFormKind].ParentCod:= OpenedCod;

        DM.TableParent.Append;  // создать строку в parent.db
        DM.TableParent.FieldByName('ParentCod').AsInteger:= OpenedCod;
        DM.TableParent.FieldByName('SonCod').AsInteger   := FormParAr[SonFormKind].NaklCod;
        DM.TableParent.Post;
        NaklFormAr[SonFormKind].ComboBoxParentAdd(OpenedCod);   //добавить строку в список родителей накладной
        DM.TableNakl.Locate('Cod', OpenedCod, []); // восстановление текущей строки журнала
        NaklFormAr[SonFormKind].ComboBoxParent.ItemIndex:= NaklFormAr[SonFormKind].ComboBoxParent.Items.Count-1;

        NaklFormAr[SonFormKind].Show;
     end
     else MessageDlg('Ќакладна€ с кодом '+IntToStr(OpenedCod)+' отсутствует !',  mtError , [mbOk], 0);
    end;

    ChoiceParent := False;
  end // ChoiceParent

  else begin   //
    Opened:= TFormKind(DBGrid1.DataSource.DataSet['Kind']*2); //размещать на форме Old
    If FormParAr[Opened].Activ and FormParAr[Pred(Opened)].Activ then begin // Old and New Activ
//      If FormParAr[Opened].Deystv=Prosmotr       then ;
        If FormParAr[Pred(Opened)].Deystv=Prosmotr then Opened:=Pred(Opened);
    end
    else If FormParAr[Opened].Activ then Opened:=Pred(Opened); //New not Activ - размещать на форме New

    If FormParAr[Opened].Activ   then NaklFormAr[Opened].Close;
    Application.CreateForm(TNaklForm, NaklFormAr[Opened]);

    FormEdit := False; // одна из уже открытых форм в реж редактировани€
    For K:=Succ(Low(FormParAr)) to High(FormParAr) do
      If FormParAr[K].Activ and ((FormParAr[K].Deystv=Sozdan) or
         (FormParAr[K].Deystv=Redakt) or (FormParAr[K].Deystv=VosStan))
      then FormEdit := True;

    If not FormEdit then // если ни одна из форм не в режиме редактировани€
      FormEdit := InstallForm.Dostup <= 2; // If Dostup <= 1 открывать только в реж просмотра
    case FormEdit of
     true:
      If NaklFormAr[Opened].SetNakl(DBGrid1, OpenedCod,Opened,Prosmotr)
      then   NaklFormAr[Opened].Show;
     false:
      If NaklFormAr[Opened].SetNakl(DBGrid1, OpenedCod,Opened,Redakt)
      then   NaklFormAr[Opened].Show;
    end;
  end; // else ChoiceParent
 end;
end;

procedure TZhurnalForm.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
// If DBGrid1.DataSource.DataSet = DM.TableZhurnal then
 with DBGrid1.Canvas do
  begin
    If ((Column.Field.FieldName='Sum') and
         not (gdFocused in State)) and
         Not(DBGrid1.DataSource.DataSet.FieldByName('Full').AsBoolean) then
      begin
        Font.Color := clRed;
        Font.Style := [fsBold];
        FillRect(Rect);
        TextOut(Rect.Right-2-TextWidth(Column.Field.Text),Rect.Top,Column.Field.Text);
      end
      else  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
  end //with
//  else  DBGrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TZhurnalForm.SpinEditNChange(Sender: TObject);
begin
  If CheckBoxN.Checked then DBGrid1.DataSource.DataSet.Locate('DocN',SpinEditN.Value,[]);
end;

procedure TZhurnalForm.DateTimePicker2Change(Sender: TObject);
begin
  If CheckBoxFindDate.Checked then DBGrid1.DataSource.DataSet.Locate('DocDate',DateTimePicker2.Date,[]);
end;

procedure TZhurnalForm.CheckBoxColumnVisClick(Sender: TObject);
var Ind : Integer;
begin
 CheckBoxChoiceParent.Checked :=  ChoiceParent ;
 CheckBoxChoiceParent.OnClick(Sender);

 If DBGrid1.Columns.Count>0 then
  For Ind:=0 to DBGrid1.Columns.Count-1 do begin

   If RadioButtonZhurnal.Checked then begin
     If DBGrid1.Columns[Ind].FieldName='Date'    then DBGrid1.Columns[Ind].Visible:=CheckBoxDateVis.Checked;
     If DBGrid1.Columns[Ind].FieldName='Deystv'  then DBGrid1.Columns[Ind].Visible:=CheckBoxDeystvVis.Checked;
     If DBGrid1.Columns[Ind].FieldName='DocCod'  then DBGrid1.Columns[Ind].Visible:=CheckBoxDocCodVis.Checked;
   end
   else begin
     If DBGrid1.Columns[Ind].FieldName='Date'    then DBGrid1.Columns[Ind].Visible:=False;
     If DBGrid1.Columns[Ind].FieldName='Deystv'  then DBGrid1.Columns[Ind].Visible:=false;
     If DBGrid1.Columns[Ind].FieldName='Cod'     then DBGrid1.Columns[Ind].Visible:=CheckBoxDocCodVis.Checked;
   end;
   If DBGrid1.Columns[Ind].FieldName='Time'    then DBGrid1.Columns[Ind].Visible:=CheckBoxTimeVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='TipDoc'  then DBGrid1.Columns[Ind].Visible:=CheckBoxTipDocVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='DocN'    then DBGrid1.Columns[Ind].Visible:=CheckBoxDocNVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='DocDate' then DBGrid1.Columns[Ind].Visible:=CheckBoxDocDateVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Sum'     then DBGrid1.Columns[Ind].Visible:=CheckBoxSumVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Pr'      then DBGrid1.Columns[Ind].Visible:=CheckBoxPrVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='Oplata'  then DBGrid1.Columns[Ind].Visible:=CheckBoxOplataVis.Checked;

   If DBGrid1.Columns[Ind].FieldName='AgentNameFrom'   then DBGrid1.Columns[Ind].Visible:=CheckBoxAgentFromVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='UnitNameFrom'    then DBGrid1.Columns[Ind].Visible:=CheckBoxUnitFromVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='SkladNameFrom'   then DBGrid1.Columns[Ind].Visible:=CheckBoxSkladFromVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='SotrudnNameFrom' then DBGrid1.Columns[Ind].Visible:=CheckBoxSotrudnFromVis.Checked;

   If DBGrid1.Columns[Ind].FieldName='AgentNameTo'     then DBGrid1.Columns[Ind].Visible:=CheckBoxAgentToVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='UnitNameTo'      then DBGrid1.Columns[Ind].Visible:=CheckBoxUnitToVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='SkladNameTo'     then DBGrid1.Columns[Ind].Visible:=CheckBoxSkladToVis.Checked;
   If DBGrid1.Columns[Ind].FieldName='SotrudnNameTo'   then DBGrid1.Columns[Ind].Visible:=CheckBoxSotrudnToVis.Checked;
  end;

end;
{
procedure TZhurnalForm.SpinEditPercentZenaChange(Sender: TObject);
begin
  If TSpinEdit(Sender).Value>0 then TSpinEdit(Sender).Font.Color:= clRed
  else If TSpinEdit(Sender).Value=0 then TSpinEdit(Sender).Font.Color:= clBlack
       else If TSpinEdit(Sender).Value<0 then TSpinEdit(Sender).Font.Color:= clGreen;
end;
}
procedure TZhurnalForm.ComboBoxUnitDropDown(Sender: TObject);
var LookUpResults : Variant;
begin
  TComboBox(Sender).Clear;

  if (Sender = ComboBoxUnitTo) then
   LookUpResults :=DM.TableAgent.LookUp('AgentName',ComboBoxAgentTo.Text,'Cod');

  if (Sender = ComboBoxUnitFrom) then
   LookUpResults :=DM.TableAgent.LookUp('AgentName',ComboBoxAgentFrom.Text,'Cod');

  If VarType(LookUpResults)<>varNull then
  begin
    If LookUpResults<>varEmpty then begin
    If UnitActivOnly then
      DM.TableUnit.Filter    := '([Activ]=True) and '+'([AgentCod] = '+ IntToStr(LookUpResults)+')'
    else
      DM.TableUnit.Filter    := '([AgentCod] = '+ IntToStr(LookUpResults)+')';

      DM.TableUnit.Filtered  :=True;
      DM.TableUnit.First;
      while not DM.TableUnit.Eof do  begin
        TComboBox(Sender).Items.Add(DM.TableUnit.FieldByName('UnitName').AsString);
        DM.TableUnit.Next;
        end;
      DM.TableUnit.Filtered  :=False;
      DM.TableUnit.Filter    :='';
    end
    else  begin
      DM.TableUnit.Filtered  :=False;
      DM.TableUnit.Filter    :='';
    end
  end
  else begin
    DM.TableUnit.Filtered  :=False;
    DM.TableUnit.Filter    :='';
  end;
end;

procedure TZhurnalForm.ComboBoxSkladDropDown(Sender: TObject);
var LookUpResults : Variant;
begin
  TComboBox(Sender).Clear;

  if (Sender = ComboBoxSkladTo) or (Sender = ComboBoxSotrudnTo) then
   LookUpResults :=DM.TableUnit.LookUp('UnitName',ComboBoxUnitTo.Text,'Cod');

  if (Sender = ComboBoxSkladFrom) or (Sender = ComboBoxSotrudnFrom) then
   LookUpResults :=DM.TableUnit.LookUp('UnitName',ComboBoxUnitFrom.Text,'Cod');

  if (Sender = ComboBoxSkladTo) or (Sender = ComboBoxSkladFrom) then
   If VarType(LookUpResults)<>varNull then
   begin
    If LookUpResults<>varEmpty then begin
      DM.TableSklad.Filter    :='UnitCod = '+ IntToStr(LookUpResults);
      DM.TableSklad.Filtered  :=True;
      DM.TableSklad.First;
      while not DM.TableSklad.Eof do  begin
        TComboBox(Sender).Items.Add(DM.TableSklad.FieldByName('SkladName').AsString);
        DM.TableSklad.Next;
        end;
    end
    else  DM.TableSklad.Filtered  :=False;
   end
   else   DM.TableSklad.Filtered  :=False;

  if (Sender = ComboBoxSotrudnTo) or (Sender = ComboBoxSotrudnFrom) then
   If VarType(LookUpResults)<>varNull then
   begin
    If LookUpResults<>varEmpty then begin
      DM.TableSotrudn.Filter    :='UnitCod = '+ IntToStr(LookUpResults);
      DM.TableSotrudn.Filtered  :=True;
      DM.TableSotrudn.First;
      while not DM.TableSotrudn.Eof do  begin
        TComboBox(Sender).Items.Add(DM.TableSotrudn.FieldByName('Fio').AsString);
        DM.TableSotrudn.Next;
        end;
    end
    else DM.TableSotrudn.Filtered  :=False;
   end
   else  DM.TableSotrudn.Filtered  :=False;

     DM.TableSklad.Filtered   :=False;
     DM.TableSotrudn.Filtered :=False;
     DM.TableSklad.Filter     :='';
     DM.TableSotrudn.Filter   :='';
end;

procedure TZhurnalForm.CheckBoxChoiceParentClick(Sender: TObject);
begin
   ChoiceParent := CheckBoxChoiceParent.Checked;
   CheckBoxChoiceParent.Enabled := ChoiceParent;
   If ChoiceParent then TabSheet1.Caption:= '¬ыбор –одительского ƒокумента' else TabSheet1.Caption:= '¬ыбор ƒокумента дл€ ѕросмотра';
end;

procedure TZhurnalForm.Showing(Sender: TObject);
begin
  Show;
end;

procedure TZhurnalForm.ShowFromClick(Sender: TObject);
var Ind : Integer;
begin
  If RadioButtonZhurnal.Checked and (DbGrid1.DataSource.DataSet=DM.TableNakl) then
  begin
    CheckBoxDate.Enabled      :=True;
    CheckBoxDeystv.Enabled    :=True;

    CheckBoxDateVis.Enabled   :=True;
    CheckBoxTimeVis.Enabled   :=True;
    CheckBoxDeystvVis.Enabled :=True;

    DBNavigator1.DataSource.DataSet:=DM.TableZhurnal;
    DbGrid1.DataSource.DataSet:=DM.TableZhurnal;
    For Ind:=0 to DBGrid1.Columns.Count-1 do
     If DBGrid1.Columns[Ind].FieldName='Cod'  then DbGrid1.Columns[Ind].FieldName:='DocCod';
    CheckBoxColumnVisClick(Sender);
    FilterChange(Sender);
    DM.TableZhurnal.EnableControls;
  end;
  If RadioButtonNakl.Checked and (DbGrid1.DataSource.DataSet=DM.TableZhurnal) then
  begin
    CheckBoxDate.Enabled  :=False;
    CheckBoxDeystv.Enabled:=False;

    CheckBoxDateVis.Enabled   :=False;
    CheckBoxTimeVis.Enabled   :=False;
    CheckBoxDeystvVis.Enabled :=False;

    DBNavigator1.DataSource.DataSet:=DM.TableNakl;
    DbGrid1.DataSource.DataSet:=DM.TableNakl;
    // DM.TableNakl.EnableControls;
    For Ind:=0 to DBGrid1.Columns.Count-1 do
     If DBGrid1.Columns[Ind].FieldName='DocCod'  then DbGrid1.Columns[Ind].FieldName:='Cod';
    CheckBoxColumnVisClick(Sender);
    FilterChange(Sender);
  end;
end;

procedure TZhurnalForm.FormActivate(Sender: TObject);
var K : Integer;
begin
  // контроль прав доступа
  DBGrid1.ReadOnly := InstallForm.Dostup <= 2;
  If InstallForm.Dostup <= 2 then DBNavigator1.VisibleButtons :=[nbFirst,nbPrior,nbNext,nbLast]
  else DBNavigator1.VisibleButtons :=[nbFirst,nbPrior,nbNext,nbLast,nbInsert,nbDelete,nbEdit,nbPost,nbCancel,nbRefresh];
  StaticText9      .Visible := InstallForm.Dostup >= 3;
  MaskEditNaklsSum .Visible := InstallForm.Dostup >= 3;
  Label13          .Visible := InstallForm.Dostup >= 3;
  MaskEditNaklsSum0.Visible := InstallForm.Dostup >= 3;
  MaskEditPerCents .Visible := InstallForm.Dostup >= 3;


//  For K:=0 to ComboBoxTipDoc.Items.Count-1 do
//    If (ComboBoxTipDoc.Items.Strings[K]='¬ыплаты') AND (InstallForm.Dostup <= 3) then ComboBoxTipDoc.Items.Objects[K].=False;


  NaklFilter  := DbGrid1.DataSource.DataSet.Filter;
  NaklFiltered:= DbGrid1.DataSource.DataSet.Filtered;

   ShowFromClick(Sender);
   SetProsmotr(NaklKind);
   CheckBoxColumnVisClick(Sender);
   FilterChange(Sender);

    If Not DbGrid1.DataSource.DataSet.Locate('Cod',ZhurnalActivCod,[])
       and Debuger and (ZhurnalActivCod<>0)
    then
       MessageDlg('«апись в ∆урнале с  одом '+IntToStr(ZhurnalActivCod)+' не найдена !',
                     mtWarning, [mbYes], 0);
end;

procedure TZhurnalForm.FormDeactivate(Sender: TObject);
begin
  If Not(CheckBoxTipDoc.Checked) then NaklKind:= All
  else
    If ComboBoxTipDoc.ItemIndex>=0 then NaklKind:= TNaklKind(ComboBoxTipDoc.ItemIndex+1);

  ZhurnalActivCod := DBGrid1.DataSource.DataSet.FieldByName('Cod').AsInteger;
//  DBGrid1.DataSource.DataSet.Filtered:= False;
  DbGrid1.DataSource.DataSet.Filter   := ''; // NaklFilter
  DbGrid1.DataSource.DataSet.Filtered := False; // NaklFiltered
end;


procedure TZhurnalForm.RadioButtonNClick(Sender: TObject);
begin
{*
  If RadioButtonZhurnal.Checked then
  begin
    If RadioButtonN.Checked then DM.TableZhurnal.IndexName := 'Sort_DocN'
    else DM.TableZhurnal.IndexName := 'Sort_DocDateDocTime';

  end;
 *}

  If RadioButtonNakl.Checked  then
  begin
    If RadioButtonN.Checked then DM.TableNakl.IndexName := 'Sort_DocN'
    else DM.TableNakl.IndexName := 'Sort_DocDateDocTime';
  end;

end;



procedure TZhurnalForm.SpinEditDocCodChange(Sender: TObject);
begin
  If ((Sender = SpinEditDocCod) and CheckBoxDocCod.Checked ) or
     ((Sender = SpinEditDocNs) and CheckBoxDocNs.Checked ) or
     ((Sender = SpinEditDocNpo) and CheckBoxDocNpo.Checked )
  then  FilterChange(Sender);
end;

procedure TZhurnalForm.ScWindowScale;
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
