unit DMUnit;
//{$DEFINE XE}
{$UNDEF XE}
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Variants,
  InstallUnit, SpravUnit, DateUtils,
  DbiProcs,DbiErrs, DbiTypes, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, IdUDPClient,  IdUDPBase
   
     {$IFDEF VER150}  // Delphi 7
     {$ELSE}     //
        , System.UITypes   //
     {$ENDIF}
  ;

type
  TDM = class(TDataModule)
    TableTovar: TTable;
    DataSourceTovar: TDataSource;
    TableGrup: TTable;
    DataSourceGrup: TDataSource;
    TableTovarCod: TAutoIncField;
    TableTovarTovarName: TStringField;
    TableTovarGrupCod: TIntegerField;
    TableTovarFasovka: TStringField;
    TableTovarEdIzmerCod: TIntegerField;
    TableTovarZenaZakupka: TCurrencyField;
    TableTovarZenaRozn: TCurrencyField;
    TableTovarZenaMelkOpt: TCurrencyField;
    TableTovarZenaOpt: TCurrencyField;
    TableTovarActiv: TBooleanField;
    TableTovarGrupName: TStringField;
    TableEdIzmer: TTable;
    DataSourceEdIzmer: TDataSource;
    TableTovarEdIzmerName: TStringField;
    TableProizv: TTable;
    DataSourceProizv: TDataSource;
    TableTovarProizvName: TStringField;
    TableTovarProizvCod: TIntegerField;
    TableUnit: TTable;
    DataSourceUnit: TDataSource;
    TableSklad: TTable;
    DataSourceSklad: TDataSource;
    TableNakl: TTable;
    DataSourceNakl: TDataSource;
    TableRecNakl: TTable;
    DataSourceRecNakl: TDataSource;
    TableRecNaklTovarCod: TIntegerField;
    TableRecNaklZena: TCurrencyField;
    TableRecNaklNaklCod: TIntegerField;
    TableRecNaklCod: TAutoIncField;
    TableRecNaklTovarName: TStringField;
    TableRecNaklEdIzmerName: TStringField;
    TableRecNaklFasovka: TStringField;
    TableRecNaklProizvName: TStringField;
    TableRecNaklSum: TCurrencyField;
    TableRecNaklNDS: TCurrencyField;
    TableSotrudn: TTable;
    DataSourceSotrudn: TDataSource;
    TableSotrudnCod: TAutoIncField;
    TableSotrudnF: TStringField;
    TableSotrudnI: TStringField;
    TableSotrudnO: TStringField;
    TableSotrudnFIO: TStringField;
    TableSotrudnUnitCod: TIntegerField;
    TableTovarAgentCod: TIntegerField;
    TableTovarAgentName: TStringField;
    TableZhurnal: TTable;
    DataSourceZhurnal: TDataSource;
    TableZhurnalCod: TAutoIncField;
    TableZhurnalDate: TDateField;
    TableZhurnalTime: TTimeField;
    TableZhurnalDocCod: TIntegerField;
    TableZhurnalUnitCod: TIntegerField;
    TableZhurnalSotrudnCod: TIntegerField;
    TableZhurnalDeystvie: TStringField;
    TableZhurnalPr: TStringField;
    TableZhurnalUnitName: TStringField;
    TableZhurnalSotrudnName: TStringField;
    DataSourceNaklSum: TDataSource;
    TableZhurnalDocDate: TDateField;
    TableZhurnalDocN: TIntegerField;
    TableAgent: TTable;
    DataSourceAgent: TDataSource;
    TableZhurnalAgentCod: TIntegerField;
    TableZhurnalAgentName: TStringField;
    TableTovarN: TIntegerField;
    TableRecNaklKolvo: TFloatField;
    TableRecNaklN: TIntegerField;
    TableZhurnalSum: TCurrencyField;
    TableZhurnalSkladCod: TIntegerField;
    TableZhurnalSkladName: TStringField;
    TableZhurnalFull: TBooleanField;
    TableZhurnalUnitCodFrom: TIntegerField;
    TableZhurnalSkladCodFrom: TIntegerField;
    TableZhurnalSotrudnCodFrom: TIntegerField;
    TableZhurnalAgentCodTo: TIntegerField;
    TableZhurnalAgentNameTo: TStringField;
    TableZhurnalUnitNameFrom: TStringField;
    TableZhurnalSkladNameFrom: TStringField;
    TableZhurnalSotrudnNameFrom: TStringField;
    TableTovarSubGrupCod: TIntegerField;
    TableTovarActivForUnit0: TBooleanField;
    TableTovarActivForUnit1: TBooleanField;
    TableTovarActivForUnit2: TBooleanField;
    TablePereOzenka: TTable;
    DataSourcePereOzenka: TDataSource;
    QueryZenaHistory: TQuery;
    QueryTovarFasovka: TQuery;
    DataSourceTovarFasovka: TDataSource;
    Table1: TTable;
    TableZhurnalOplata: TIntegerField;
    TableRecNaklZenaMinusNds: TCurrencyField;
    TableZhurnalKindName: TStringField;
    TableZhurnalKind: TIntegerField;
    QueryParentRecs: TQuery;
    QueryParentN: TQuery;
    TableNaklCod: TAutoIncField;
    TableNaklDocN: TIntegerField;
    TableNaklKind: TIntegerField;
    TableNaklDocDate: TDateField;
    TableNaklDocTime: TTimeField;
    TableNaklAgentCodFrom: TIntegerField;
    TableNaklUnitCodFrom: TIntegerField;
    TableNaklSkladCodFrom: TIntegerField;
    TableNaklAgentCodTo: TIntegerField;
    TableNaklUnitCodTo: TIntegerField;
    TableNaklSkladCodTo: TIntegerField;
    TableNaklDateOplataPolnay: TDateField;
    TableNaklSotrudnCodFrom: TIntegerField;
    TableNaklSotrudnCodTo: TIntegerField;
    TableNaklSum: TCurrencyField;
    TableNaklValutaCod: TIntegerField;
    TableNaklPr: TStringField;
    TableNaklSumValuta: TCurrencyField;
    TableNaklActiv: TBooleanField;
    TableNaklRealZakupka: TBooleanField;
    TableNaklFull: TBooleanField;
    TableNaklAvtorCod: TIntegerField;
    TableNaklParentCod: TIntegerField;
    TableNaklPrOsnov: TStringField;
    TableNaklPrCherez: TStringField;
    TableNaklPrFrom: TStringField;
    TableNaklAgentNameFrom: TStringField;
    TableNaklUnitNameFrom: TStringField;
    TableNaklSkladNameFrom: TStringField;
    TableNaklSotrudnNameFrom: TStringField;
    TableNaklAgentNameTo: TStringField;
    TableNaklUnitNameTo: TStringField;
    TableNaklSkladNameTo: TStringField;
    TableNaklSotrudnNameTo: TStringField;
    TableNaklKindName: TStringField;
    TableNaklPrTo: TStringField;
    DataSourceNaklOstatok2: TDataSource;
    TableTovarPak: TIntegerField;
    TableTovarZenaZakupkaSr: TCurrencyField;
    TableTovarZenaRoznSr: TCurrencyField;
    TableTovarZenaMelkOptSr: TCurrencyField;
    TableTovarZenaOptSr: TCurrencyField;
    TableRecNaklZena0: TCurrencyField;
    TableRecNaklPerCent: TCurrencyField;
    TableParent: TTable;
    TableParentParentCod: TIntegerField;
    TableParentSonCod: TIntegerField;
    TableRecNaklParentCod: TIntegerField;
    TableTovarPerCentRozn: TCurrencyField;
    TableTovarPerCentMelkOpt: TCurrencyField;
    TableTovarPerCentOpt: TCurrencyField;
    QueryNaklSum: TQuery;
    CurrencyField4: TCurrencyField;
    CurrencyField5: TCurrencyField;
    CurrencyField6: TCurrencyField;
    QueryNaklsSum: TQuery;
    CurrencyField1: TCurrencyField;
    CurrencyField2: TCurrencyField;
    CurrencyField3: TCurrencyField;
    TableUnitCod: TAutoIncField;
    TableUnitAgentCod: TIntegerField;
    TableUnitUnitName: TStringField;
    TableUnitGorod: TStringField;
    TableUnitAdres: TStringField;
    TableUnitTel: TStringField;
    TableUnitActiv: TBooleanField;
    TableUnitPr: TStringField;
    TableGrupCod: TAutoIncField;
    TableGrupGrupName: TStringField;
    TableGrupActiv: TBooleanField;
    TableGrupParent: TIntegerField;
    TableEdIzmerCod: TAutoIncField;
    TableEdIzmerEdIzmerName: TStringField;
    TableEdIzmerActiv: TBooleanField;
    TableAgentCod: TAutoIncField;
    TableAgentAgentKind: TIntegerField;
    TableAgentAgentName: TStringField;
    TableAgentAgentFullName: TStringField;
    TableAgentShef: TStringField;
    TableAgentGorod: TStringField;
    TableAgentAdres: TStringField;
    TableAgentTel: TStringField;
    TableAgentSchet: TStringField;
    TableAgentBank: TStringField;
    TableAgentMFO: TStringField;
    TableAgentKod: TStringField;
    TableAgentActiv: TBooleanField;
    TableAgentPr: TStringField;
    TableProizvCod: TAutoIncField;
    TableProizvProizvName: TStringField;
    TableProizvActiv: TBooleanField;
    TableSotrudnDolzhn: TStringField;
    TableSotrudnGorod: TStringField;
    TableSotrudnAdres: TStringField;
    TableSotrudnTel: TStringField;
    TableSotrudnActiv: TBooleanField;
    TableSotrudnSer: TStringField;
    TableSotrudnNom: TStringField;
    TableSotrudnDataVyd: TDateField;
    TableSotrudnWhoVyd: TStringField;
    TableSotrudnPr: TStringField;
    TableSotrudnID: TStringField;
    TableValuta: TTable;
    TableValutaCod: TAutoIncField;
    TableValutaValutaName: TStringField;
    TableValutaValutaFullName: TStringField;
    DataSourceValuta: TDataSource;
    TableKurs: TTable;
    TableKursValutaCod: TIntegerField;
    TableKursDate: TDateField;
    TableKursTime: TTimeField;
    TableKursKurs: TCurrencyField;
    DataSourceKurs: TDataSource;
    TableValutaActiv: TBooleanField;
    TableKursActiv: TBooleanField;
    TableTovarActivZakaz: TBooleanField;
    TableTovarBruto: TCurrencyField;
    TableTovarNeto: TCurrencyField;
    TablePrice: TTable;
    TablePriceCod: TIntegerField;
    TablePriceTovarCod: TIntegerField;
    TablePriceAgentCod: TIntegerField;
    TablePriceUnitCod: TIntegerField;
    TablePricePrice: TCurrencyField;
    TablePriceDate: TDateField;
    TablePriceTovarName: TStringField;
    TablePriceFasovka: TStringField;
    TablePriceGrupCod: TIntegerField;
    TablePriceGrupName: TStringField;
    TablePriceEdIzmerCod: TIntegerField;
    TablePriceEdIzmerName: TStringField;
    TablePriceProizvCod: TIntegerField;
    TablePriceProizvName: TStringField;
    TablePriceAgentName: TStringField;
    TablePriceActiv: TBooleanField;
    TablePriceActivForUnit0: TBooleanField;
    TablePriceActivForUnit1: TBooleanField;
    TablePriceActivForUnit2: TBooleanField;
    TablePriceZenaZakupka: TCurrencyField;
    TablePriceZenaRozn: TCurrencyField;
    TablePriceZenaMelkOpt: TCurrencyField;
    TablePriceZenaOpt: TCurrencyField;
    TablePricePak: TIntegerField;
    TablePriceBruto: TCurrencyField;
    TablePriceNeto: TCurrencyField;
    TableSotrudnDostup: TIntegerField;
    TableZhurnalSotrudnCod2: TIntegerField;
    TableAgentAgentRedName: TStringField;
    TableAgentEMaile: TStringField;
    TableAgentURL: TStringField;
    TableTovarAgentRedName: TStringField;
    Database1: TDatabase;
    SessionMy: TSession;
    QueryPrihod: TQuery;
    QueryPrihodSumAll: TCurrencyField;
    QueryPrihodSumAll0: TCurrencyField;
    QueryPrihodPerCent: TCurrencyField;
    QueryPereOzenka: TQuery;
    CurrencyField7: TCurrencyField;
    QueryPereOzenkaPerCent: TCurrencyField;
    QueryParentSon: TQuery;
    QueryZakupka: TQuery;
    DataSourceZakupka: TDataSource;
    QueryPrihodNakl: TQuery;
    DataSourcePrihodNakl: TDataSource;
    QueryPrihodTovar: TQuery;
    DataSourcePrihodTovar: TDataSource;
    QueryPrihodTovarGroup: TQuery;
    DataSourcePrihodTovarGroup: TDataSource;
    QueryProdazha: TQuery;
    QueryProdazha0: TQuery;
    DataSourceProdazha: TDataSource;
    QueryCashTo: TQuery;
    DataSourceCashTo: TDataSource;
    QueryCashToTovar: TQuery;
    DataSourceCashToTovar: TDataSource;
    QueryCashToTovarGroup: TQuery;
    DataSourceCashToTovarGoup: TDataSource;
    QueryRas: TQuery;
    DataSourceRas: TDataSource;
    QueryRasOf: TQuery;
    DataSourceRasOf: TDataSource;
    QueryPerem: TQuery;
    CurrencyField8: TCurrencyField;
    CurrencyField9: TCurrencyField;
    CurrencyField10: TCurrencyField;
    QuerySaldoZakupka: TQuery;
    QuerySaldoZakupkaSumAll: TCurrencyField;
    QuerySaldoZakupkaSumAll0: TCurrencyField;
    QuerySaldoZakupkaPerCent: TCurrencyField;
    QuerySaldoZakupkaStr: TQuery;
    DataSourceSaldoZakupkaStr: TDataSource;
    QuerySaldoCashToStr: TQuery;
    DataSourceSaldoCashToStr: TDataSource;
    QuerySaldoCashTo: TQuery;
    CurrencyField11: TCurrencyField;
    CurrencyField12: TCurrencyField;
    CurrencyField13: TCurrencyField;
    QuerySql: TQuery;
    TableZhurnalSonCod: TIntegerField;
    TableNaklSonCod: TIntegerField;
    TableTovarEditDate: TDateField;
    TableRecNaklAgentName: TStringField;
    TableNaklOplata: TIntegerField;
    TableNaklOplataSum: TCurrencyField;
    TableNaklDateOplata: TDateField;
    TableZhurnalOplataSum: TCurrencyField;
    TableZhurnalDateOplata: TDateField;
    QueryNaklsSumOplata: TCurrencyField;
    QueryOplata: TQuery;
    CurrencyField17: TCurrencyField;
    IdFTP: TIdFTP;
    IdUDPClient1: TIdUDPClient;
    TableNaklName: TTable;
    TableNaklNameCod: TAutoIncField;
    TableNaklNameNaklName: TStringField;
    TableTovarRecomPr: TCurrencyField;
    TableRecNaklRecomPr: TCurrencyField;
    procedure TableActivGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CopyToFtp; // копирует файлы базы если они изменены на Ftp
    procedure CopyFromFtp;
    procedure TableRecNaklCalcFields(DataSet: TDataSet);
    procedure TableSotrudnCalcFields(DataSet: TDataSet);
    procedure TableRecNaklTovarCodValidate(Sender: TField);
    procedure TableRecNaklAfterPost(DataSet: TDataSet);
    procedure TableTovarAfterOpen(DataSet: TDataSet);
    procedure TableRecNaklZenaSetText(Sender: TField;  const Text: String);
    procedure TableTovarBeforeInsert(DataSet: TDataSet);
    procedure TableTovarNewRecord(DataSet: TDataSet);
    procedure TableRecNaklNewRecord(DataSet: TDataSet);
    procedure TableRecNaklBeforeInsert(DataSet: TDataSet);
    procedure TableRecNaklAfterDelete(DataSet: TDataSet);
    procedure TableRecNaklBeforeDelete(DataSet: TDataSet);
    procedure TableTovarZenaZakupkaSetText(Sender: TField; const Text: String);
    procedure TableTovarZenaZakupkaChange(Sender: TField);
    procedure TableTovarZenaRoznChange(Sender: TField);
    procedure DataModuleCreate(Sender: TObject);
    procedure TableZhurnalCalcFields(DataSet: TDataSet);
    procedure DataSetToText(DataSet: TDataSet; TxtName: String);

    procedure FormSqlCreateTable(DataSet: TDataSet; Name : string; var SqlStr: String);
    procedure TextToDataSet(TxtName: String; DataSet: TDataSet);
    procedure TableNaklCalcFields(DataSet: TDataSet);
    procedure TableTovarCalcFields(DataSet: TDataSet);
    procedure TableRecNaklBeforePost(DataSet: TDataSet);
    procedure TableTovarFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure TableAgentNewRecord(DataSet: TDataSet);

    procedure CopyTable(FromDir, SrcTblName, ToDir: String; BdeCopy: Boolean);
//    procedure PackTable(Table: TTable);
    procedure Bde_PackTable(DataSet: TDataSet);
    procedure TableNaklAfterPost(DataSet: TDataSet);
    procedure TableTovarAfterPost(DataSet: TDataSet);
    procedure TableGrupAfterPost(DataSet: TDataSet);
    procedure TableEdIzmerAfterPost(DataSet: TDataSet);
    procedure TableProizvAfterPost(DataSet: TDataSet);
    procedure TableZhurnalAfterPost(DataSet: TDataSet);
    procedure Table1AfterPost(DataSet: TDataSet);
    procedure TableSkladAfterPost(DataSet: TDataSet);
    procedure TableSotrudnAfterPost(DataSet: TDataSet);
    procedure TableUnitAfterPost(DataSet: TDataSet);
    procedure TableValutaAfterPost(DataSet: TDataSet);
    procedure TablePereOzenkaAfterPost(DataSet: TDataSet);
    procedure TableParentAfterPost(DataSet: TDataSet);
    procedure TableKursAfterPost(DataSet: TDataSet);
    procedure TablePriceAfterPost(DataSet: TDataSet);
    procedure TableTovarUpdateRecord(DataSet: TDataSet;
      UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);

  private
    { Private declarations }
  public
    { Public declarations }
    TableTovarActivCod     : Integer;{код товара, на котором стоит курсор в таблице товаров}
    TablePriceActivCod     : Integer;{код товара, на котором стоит курсор в таблице price}
    TableTovarActivGrupCod : Integer;
    TableTovarActivEdIzmerCod : Integer;
    TableTovarActivAgentCod : Integer;
    TableTovarActivProizvCod : Integer;
    TableTovarActivFasovka : String;
    BaseOpenSuc : Boolean;
  end;

var
  DM : TDM;

implementation

uses NaklUnit, TovarUnit, MainUnit;

{$R *.DFM}

procedure TDM.DataSetToText(DataSet: TDataSet; TxtName: String);
var Fil : TextFile;
    St  : String;
    I   : Integer;
    SaveCursor : TCursor;
    Closed : Boolean;
begin
//  IF DataSet.RecordCount>0 then  //
      try
        SaveCursor := Screen.Cursor;
        Screen.Cursor := crHourglass;    { Show hourglass cursor }

        AssignFile(Fil,TxtName);
        If FileExists(TxtName)
          then Append(Fil)
          else ReWrite(Fil);
        Closed:=False;
        If Not DataSet.Active then begin
          DataSet.Open;   //DataSet
          Closed := True; // Nead Close DataSet in Finish
        end;
        DataSet.First;
        St:='';     // заголовки полей
        If DataSet.FieldCount>0 then
         for I:=0 to DataSet.FieldCount-1 do
           If DataSet.Fields[I].DisplayLabel<>'' then
                St:=St+DataSet.Fields[I].DisplayLabel+#09
           else St:=St+DataSet.Fields[I].FieldName   +#09;
        If (St<>'') and (St[Length(St)]=#09) then Delete(St,Length(St),1);
        WriteLn(Fil,St);

        while Not DataSet.Eof do begin
          St:='';
          for I:=0 to DataSet.FieldCount-1 do
            St:=St+DataSet.Fields[I].DisplayText+#09;
          If (St<>'') and (St[Length(St)]=#09) then Delete(St,Length(St),1);
          WriteLn(Fil,St);
          DataSet.Next;
        end;
      finally
       CloseFile(Fil);
       If DataSet.Active and Closed then DataSet.Close;
       Screen.Cursor := SaveCursor;  { Always restore to normal }
      end;
end;

procedure TDM.FormSqlCreateTable(DataSet: TDataSet; Name : string; var SqlStr: String);
var
    St  : String;
    I   : Integer;
    SaveCursor : TCursor;
    Closed : Boolean;
begin
//  IF DataSet.RecordCount>0 then  //
      try
        SaveCursor := Screen.Cursor;
        Screen.Cursor := crHourglass;    { Show hourglass cursor }

        If Not DataSet.Active then begin
          DataSet.Open;   //DataSet
          Closed := True; // Nead Close DataSet in Finish
        end;

        St:='CREATE TABLE ';     //
        St:=St+Name+' ( ';
        // St:=St+DataSet.Name+' ( ';
        // DataSet.Name for Query = Name of Query but no Table
        If DataSet.FieldCount>0 then
         for I:=0 to DataSet.FieldCount-1 do begin
           St:=St+DataSet.FieldDefs[I].Name+' ';
           case DataSet.FieldDefs[I].DataType of
             ftString : St:=St+'Char ('+IntToStr(DataSet.FieldDefs[I].Size)+'), ';
             ftAutoInc, ftSmallInt, ftInteger, ftWord : St:=St+' integer, ';
             ftBoolean : St:=St+' boolean, ';
             ftCurrency : St:=St+' real, ';
             ftDate : St:=St+' date, ';
             ftTime : St:=St+' time, ';
             ftBlob : St:=St+' blob, ';
             ftFloat: St:=St+' float, ';
              else St:=St+' Char(20), ';
           end; //case
         end;  //for
       // ???????? ???????? ???????+,
        If (St<>'') and (St[Length(St)]=' ') then Delete(St,Length(St),1);
        If (St<>'') and (St[Length(St)]=',') then Delete(St,Length(St),1);
        St:=St+' );';
        SqlStr := St;
      finally

       If DataSet.Active and Closed then DataSet.Close;
       Screen.Cursor := SaveCursor;  { Always restore to normal }
      end;
end;


procedure TDM.TextToDataSet(TxtName: String; DataSet: TDataSet);
var Fil : TextFile;
    St, StBuf : String;
    I, J, K : Integer;
    SaveCursor : TCursor;
    Closed, EofBuf : Boolean;
begin
//  IF DataSet.RecordCount>0 then  //
      try
        SaveCursor := Screen.Cursor;
        Screen.Cursor := crHourglass;    { Show hourglass cursor }

        AssignFile(Fil,TxtName);
        Reset(Fil);
        Closed:=False;
        If Not DataSet.Active then begin
          DataSet.Open;   //DataSet
          Closed := True; // Nead Close DataSet in Finish
        end;

        while Not Eof(Fil) do begin
          ReadLn(Fil,St);
          DataSet.Append;

          If (DataSet.FieldCount>0)   then
            For  I:=0 to DataSet.FieldCount-1  do
             If (St<>'') then
             begin
               //K:=1; // индекс начала поля
               //StBuf:='';
               //For J:=K to Length(St) do if st[J]<>#09 then StBuf:= StBuf + St[J];
               StBuf := Copy(St,1, Pos(#09,St)-1);
               //If (StBuf<>'') and (StBuf[Length(StBuf)]=' ') then Delete(StBuf,Length(StBuf),1); //удаление концевого пробела
               StBuf := Trim(StBuf);
               case DataSet.Fields[I].DataType of
                 ftString : DataSet.Fields[I].AsString:=StBuf;
                 ftBoolean: DataSet.Fields[I].AsBoolean:= (StBuf='True');
               end;

               Delete(St,1, Pos(#09,St));
             end;
          DataSet.Post;

        end;  // while Not Eof(Fil)
      finally
       CloseFile(Fil);
       If DataSet.Active and Closed then DataSet.Close;
       Screen.Cursor := SaveCursor;  { Always restore to normal }
      end;
end;

procedure TDM.TableActivGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  If Sender.Value then Text:='Да' else Text:='Нет';
end;

(*
function StrToOem(const AnsiStr: string): string;
//  преобразование строки в OEM кодировку CP866 (DOS)
//  не используется. error in Delhpi XE
begin
  SetLength(Result, Length(AnsiStr));
  if Length(Result) > 0 then
{$IFDEF WIN32}
    CharToOemBuff(PChar(AnsiStr), PChar(Result), Length(Result));
{$ELSE}
    AnsiToOemBuff(@AnsiStr[1], @Result[1], Length(Result));
{$ENDIF}
end;
*)

procedure TDM.CopyTable(FromDir, SrcTblName, ToDir : String; BdeCopy: Boolean);
var DBHandle: HDBIDB;
    ResultCode: DBIResult;
    Src, Dest, Err: Array[0..255] of Char;

    {$IFDEF VER150}  // Delphi 7
    {$ELSE}
      ErrAnsi : PAnsiChar;
      SrcAnsi, DestAnsi  : PAnsiChar;
    {$ENDIF}


    SrcTbl, DestTbl: TTable;
    sr: TSearchRec;
    DestTblName: String;
    SaveNid : Boolean;   // надо записывать
    Time : Integer;
begin
    DestTblName := SrcTblName;

    FromDir:=ExcludeTrailingPathDelimiter(FromDir);
    ToDir  :=ExcludeTrailingPathDelimiter(ToDir);

   try
    If Not DirectoryExists(ToDir) then  CreateDir(ToDir);

    if FindFirst(ToDir+ '\'+DestTblName, faAnyFile , sr) = 0 then
    begin
      SaveNid := False;
      Time :=  sr.Time;
    end
    else SaveNid := True; // резервный файл отсутствует
    FindClose(sr);

    If Not SaveNid then   // резервный файл присутствует
      if FindFirst(FromDir+ '\'+DestTblName, faAnyFile , sr) = 0 then
      begin
        SaveNid := Time <  sr.Time;  // время резервного ф. меньше времени текущего ф
      end;

  If SaveNid and BdeCopy then  // надо резервировать и используем BDe средство копирования
  begin

    // если присутствуют резервные файлы => удаляем их
    if FindFirst(ToDir+ '\'+ChangeFileExt(DestTblName,'.*'), faAnyFile , sr) = 0 then
    begin
      repeat
        CopyFile('','',True);
        DeleteFile(ToDir + '\' + sr.Name);
      until FindNext(sr) <> 0;
    end;
    FindClose(sr);

    // создаем резервную таблицу
    SrcTbl := TTable.Create(Application);
    DestTbl := TTable.Create(Application);
    try
      SrcTbl.DatabaseName := FromDir;
      SrcTbl.TableName := SrcTblName;
      SrcTbl.Open;
      DBHandle := SrcTbl.DBHandle;
      SrcTbl.Close;


    {$IFDEF VER150}  // Delphi 7
      ResultCode := DbiCopyTable(DBHandle,false,
      StrPCopy(Src,FromDir + '\' + SrcTblName),nil,
      StrPCopy(Dest,ToDir + '\' + DestTblName));
    {$ELSE}
          ResultCode := DbiCopyTable(DBHandle,false,
          PAnsiChar(StrPCopy(Src,FromDir + '\' + SrcTblName)),nil,
          PAnsiChar(StrPCopy(Dest,ToDir + '\' + DestTblName)) );

    {$ENDIF}


      if (ResultCode <> DBIERR_NONE) then
      begin
        {$IFDEF VER150}  // Delphi 7
          DbiGetErrorString(ResultCode,Err);
        {$ELSE}
          DbiGetErrorString(ResultCode,ErrAnsi);
        {$ENDIF}


        raise EDatabaseError.Create('При копировании ' +
          FromDir + '\' + SrcTblName + ' в ' +
          ToDir + '\' + DestTblName + ' ,'
          + 'BDE сгенерировал ошибку '''
          + StrPas(Err) + '''');
      end;
    finally
      SrcTbl.Free;
      DestTbl.Free;
    end;
  end; // надо резервировать

    If SaveNid and Not BdeCopy then  // надо резервировать not use BDE
  begin
    try
     // ищем файлы с именем копируемой таблицы
     if FindFirst(FromDir+ '\'+ChangeFileExt(DestTblName,'.*'), faAnyFile , sr) = 0 then
     begin
      repeat
//        SrcAnsi:=   StrPCopy(SrcAnsi, FromDir + '\' + Sr.Name);
//        DestAnsi:=  StrPCopy(DestAnsi,ToDir   + '\' + Sr.Name);
        CopyFile(StrPCopy(Src, FromDir + '\' + Sr.Name),StrPCopy(Dest,ToDir   + '\' + Sr.Name), False);
      until FindNext(sr) <> 0;
     end;
     FindClose(sr);

    except
        // DbiGetErrorString(ResultCode,Err);
        MessageDlg('При копировании ' +
          FromDir + '\' + Sr.Name + ' в ' +
          ToDir + '\ ' +
          'произошла ошибка с кодом: '+IntToStr(GetLastError),
      mtWarning, [mbYes], 0);

        { ShowMessage('При копировании ' +
          FromDir + '\' + Sr.Name + ' в ' +
          ToDir + '\ ' +
          'произошла ошибка с кодом: '+IntToStr(GetLastError));
         }
    end; // try
  end; // надо резервировать

  except  //

        MessageDlg('При создании папки для копирования резерва базы ' +
          ToDir +
          'произошла ошибка с кодом: '+IntToStr(GetLastError) ,
           mtWarning, [mbYes], 0);
  end;

end;


procedure TDM.DataModuleDestroy(Sender: TObject);
var BufDir : String;
begin
  If DM.TableTovar.State = dsEdit then DM.TableTovar.Post;
  TableTovar.Close;

  If (DM.TableGrup.State = dsEdit) or (DM.TableGrup.State = dsInsert) then DM.TableGrup.Post;
  TableGrup.Close;

  If (DM.TableEdIzmer.State = dsEdit) or (DM.TableEdIzmer.State = dsInsert) then DM.TableEdIzmer.Post;
  TableEdIzmer.Close;

  If (DM.TableProizv.State = dsEdit) or (DM.TableProizv.State = dsInsert) then DM.TableProizv.Post;
  TableProizv.Close;

  If (DM.TableAgent.State = dsEdit) or (DM.TableAgent.State = dsInsert) then DM.TableAgent.Post;
  TableAgent.Close;

  If (DM.TableUnit.State = dsEdit) or (DM.TableUnit.State = dsInsert) then DM.TableUnit.Post;
  TableUnit.Close;

  If (DM.TableSklad.State = dsEdit) or (DM.TableSklad.State = dsInsert) then DM.TableSklad.Post;
  TableSklad.Close;

  If (DM.TableNakl.State = dsEdit) or (DM.TableNakl.State = dsInsert) then DM.TableNakl.Post;
  TableNakl.Close;

  If (DM.TableRecNakl.State = dsEdit) or (DM.TableRecNakl.State = dsInsert) then DM.TableRecNakl.Post;
  TableRecNakl.Close;

  If (DM.TableZhurnal.State = dsEdit) or (DM.TableZhurnal.State = dsInsert) then DM.TableZhurnal.Post;
  TableZhurnal.Close;

  If (DM.TableParent.State = dsEdit) or (DM.TableParent.State = dsInsert) then DM.TableParent.Post;
  TableParent.Close;

  If BaseOpenSuc AND DM.TableSotrudn.Active AND DM.TableSotrudn.DataBase.InTransaction
  then DM.TableSotrudn.DataBase.Rollback;
  If (DM.TableSotrudn.State = dsEdit) or (DM.TableSotrudn.State = dsInsert) then DM.TableSotrudn.Post;
  TableSotrudn.Close;

 If BaseOpenSuc then begin
   // в именах должны быть только английские буквы
   // или надо преобразовавать путь в Dos OEM кодировку

   If BaseRezDir[1]='\' then begin
       BufDir:= ExtractFilePath(BaseRezDir);
       Delete(BufDir ,1,1 );
       BufDir:= ExtractFilePath(Application.EXEName)+ BufDir;
   end
   else BufDir:=BaseRezDir;

   If Not DirectoryExists(BufDir) then begin // если первая резервная папка не существует

       If Not CreateDir(BufDir)then begin  // если первая резервная папка не создана, обрабатвываем вторую рез.папку
         If BaseRezDir1[1]='\' then begin
           BufDir:= ExtractFilePath(BaseRezDir1);
           Delete(BufDir ,1,1 );
           BufDir:= ExtractFilePath(Application.EXEName)+ BufDir;
         end
         else BufDir:=BaseRezDir1;
         If Not DirectoryExists(BufDir) then  // если 2 резервная папка не существует
            If Not CreateDir(BufDir) then ;

       end;

   end;

   If DirectoryExists(BufDir) then begin //
     // копирование не используя средства BDE  4й пар=FALSE
     CopyTable(Database1.Directory, TableTovar.TableName   , BufDir, False);
     CopyTable(Database1.Directory, TableGrup.TableName    , BufDir, False);
     CopyTable(Database1.Directory, TableEdIzmer.TableName , BufDir, False);
     CopyTable(Database1.Directory, TableProizv.TableName  , BufDir, False);
     CopyTable(Database1.Directory, TableAgent.TableName   , BufDir, False);
     CopyTable(Database1.Directory, TableUnit.TableName    , BufDir, False);
     CopyTable(Database1.Directory, TableSklad.TableName   , BufDir, False);
     CopyTable(Database1.Directory, TableNakl.TableName    , BufDir, False);
     CopyTable(Database1.Directory, TableRecNakl.TableName , BufDir, False);
     CopyTable(Database1.Directory, TableZhurnal.TableName , BufDir, False);
     CopyTable(Database1.Directory, TableSotrudn.TableName , BufDir, False);
     CopyTable(Database1.Directory, TableParent.TableName  , BufDir, False);

     CopyTable(Database1.Directory, TableValuta.TableName  , BufDir, False);
     CopyTable(Database1.Directory, TableKurs.TableName    , BufDir, False);
     CopyTable(Database1.Directory, TablePrice.TableName   , BufDir, False);
//  CopyTable(Database1.Directory, TablePereOzenka.TableName   , Database1.Directory+'\Buf');
   end
   else MessageDlg('Папка для копирования резерва базы ' +
          BufDir +
          'не существует !' ,
      mtWarning, [mbYes], 0);
 end;
 If BackToFtp then begin
   MainForm.ProgressBar1.Visible := True;
   MainForm.Timer1.Enabled := True;
   CopyToFtp;    // копирует файлы базы если они изменены на Ftp
 end;
end;

procedure TDM.CopyToFtp;  // копирует файлы базы если они изменены на Ftp
var sr: TSearchRec;
    FTPList: TStringList;
    I : Integer;
    FileNeedCopy, FileExist : Boolean;
    FtpFileName, StFtpFileDate, StBaseFileDate : String;
    FtpFileDate, BaseFileDate: TDateTime;
    FtpDate : Integer;
begin
//  idftp:=TIDFtp.create(IDFTP);

  idFTP.Username:= FtpUsername;
  idFTP.Password:= FtpPassword;  //
  idFTP.Host    := FtpHost;    //   ip_ftp_servera
  idFTP.Passive := True;
//  idFTP.TransferType := ftBinary;

  if idFTP.Connected then
  begin
    try
     idFTP.Disconnect;
    except
      on E : Exception do
        ShowMessage('Ошибка закрытия FTP: '+E.Message);
    end;
  end //  if idFTP.Connected
  else
  try
    FTPList := TStringList.Create;
    try
      idFTP.Connect(True);
    except
    on E : Exception do
      ShowMessage('Нет связи с Интернетом. Ошибка открытия FTP: '+E.Message);
    end;

    if idFTP.Connected then
    try

      idFTP.ChangeDir('/www/sentasev.ru/BaseTrade/');
      sleep(77);
      
      idFTP.List(FTPList);  //Теперь в FTPList  список файлов FTP папки

      if FindFirst(ExtractFilePath(Application.EXEName)+ 'Base\'+'*.*', faAnyFile , sr) = 0 then
      begin
        repeat
         If (sr.Name<>'.') AND (sr.Name<>'..') then begin
          FileNeedCopy := True;
          FileExist := False;
          for I:=0 to FTPList.Count-1 do begin
            FtpFileName:= idFTP.DirectoryListing.Items[I].FileName;

            If (FtpFileName = sr.Name) then begin
              FileExist:=True;
              FtpFileDate:= idFTP.DirectoryListing.Items[I].ModifiedDate;  // возвращается мировое время
              FtpFileDate:= IncHour(FtpFileDate, TimeGtm); // увеличиваем время на 3 часа, приводим к времени компа
              StFtpFileDate:=DateTimeToStr(FtpFileDate);
              // FtpDate := DateTimeToFileDate(FtpFileDate);
              BaseFileDate := FileDateToDateTime(sr.Time);
              StBaseFileDate:=DateTimeToStr(BaseFileDate);
              // If (FtpFileDate => BaseFileDate ) then FileNeedCopy := False;
              // https://prog-example.ru/data-i-vremya.html
              If CompareDateTime(FtpFileDate, BaseFileDate)= 1 then FileNeedCopy := False;
              If CompareDateTime(FtpFileDate, BaseFileDate)= 0 then FileNeedCopy := False;
            end;
          end;
          If FileNeedCopy AND FileExist
          then idFTP.Delete(sr.Name); // предварительно удаляем существующий на FTP более старый файл
          If FileNeedCopy
          then idFTP.Put(ExtractFilePath(Application.EXEName)+'Base\'+
                    sr.Name, sr.Name, True); //   d:\Preobr\Delphi\Trade\Base\
         end;
        until FindNext(sr) <> 0;
      end;

      idFTP.Disconnect;   //
    except
      on E : Exception do
        ShowMessage('Ошибка копирования файла: '+sr.Name+' на Ftp '+E.Message);
      end;

  finally
      FTPList.Free;
//      idftp.free;     не удаляем т.к. его не будет при повторном обращении
  end;
end;

procedure TDM.CopyFromFtp;  // копирует файлы из Ftp в локальную базу если они изменены
var sr: TSearchRec;
    FTPList: TStringList;
    I : Integer;
    FileNeedCopy, FileExist : Boolean;
    FtpFileName, StFtpFileDate, StBaseFileDate : String;
    FtpFileDate, BaseFileDate: TDateTime;
    FtpDate : Integer;
begin
  idftp:=TIDFtp.create(IDFTP);

  idFTP.Username:= FtpUsername;
  idFTP.Password:= FtpPassword;  //
  idFTP.Host    := FtpHost;    //   ip_ftp_servera
  idFTP.Passive := True;
//  idFTP.TransferType := ftBinary;

  if idFTP.Connected then
  begin
    try
     idFTP.Disconnect;
    except
      on E : Exception do
        ShowMessage('Ошибка закрытия FTP: '+E.Message);
    end;
  end //  if idFTP.Connected
  else
  try
    FTPList := TStringList.Create;
    try
      idFTP.Connect(True);
    except
    on E : Exception do
      ShowMessage('Нет связи с Интернетом. Ошибка открытия FTP: '+E.Message);
    end;

    if idFTP.Connected then
    try

      idFTP.ChangeDir('/www/sentasev.ru/BaseTrade/');
      sleep(77);
      
      idFTP.List(FTPList);  //Теперь в FTPList  список файлов FTP папки

      if FindFirst(ExtractFilePath(Application.EXEName)+ 'Base\'+'*.*', faAnyFile , sr) = 0 then
      begin
        repeat
         If (sr.Name<>'.') AND (sr.Name<>'..') then begin
          FileNeedCopy := True;
          FileExist := False;
          for I:=0 to FTPList.Count-1 do begin
            FtpFileName:= idFTP.DirectoryListing.Items[I].FileName;

            If (FtpFileName = sr.Name) then begin
              FileExist:=True;
              FtpFileDate:= idFTP.DirectoryListing.Items[I].ModifiedDate;  // возвращается мировое время
              FtpFileDate:= IncHour(FtpFileDate, TimeGtm); // увеличиваем время на 3 часа,
              StFtpFileDate:=DateTimeToStr(FtpFileDate);
              // FtpDate := DateTimeToFileDate(FtpFileDate);
              BaseFileDate := FileDateToDateTime(sr.Time);
              StBaseFileDate:=DateTimeToStr(BaseFileDate);
              // If (FtpFileDate <= BaseFileDate ) then FileNeedCopy := False;
              // https://prog-example.ru/data-i-vremya.html
              If CompareDateTime(FtpFileDate, BaseFileDate)=-1 then FileNeedCopy := False;
              If CompareDateTime(FtpFileDate, BaseFileDate)= 0 then FileNeedCopy := False;
            end;
          end;
          If FileNeedCopy AND FileExist // предварительно удаляем существующий на локалке более старый файл
          then DeleteFile(ExtractFilePath(Application.EXEName)+'Base\'+sr.Name);
          If FileNeedCopy
          then idFTP.Get(sr.Name, ExtractFilePath(Application.EXEName)+'Base\'+
                    sr.Name,  True); //   d:\Preobr\Delphi\Trade\Base\
         end;
        until FindNext(sr) <> 0;
      end;

      idFTP.Disconnect;   //
    except
      on E : Exception do
        ShowMessage('Ошибка копирования файла: '+sr.Name+'из Ftp '+E.Message);
      end;

  finally
      FTPList.Free;
     // idftp.free;
  end;
end;

procedure TDM.TableRecNaklCalcFields(DataSet: TDataSet);
var LookUpResults, LookUpResultsAgent : Variant;
begin
    //     
 if  Assigned(NaklFormAr[EditFormKind]) and NaklFormAr[EditFormKind].Visible then

  If TableTovar.Active then
  begin
   LookUpResults :=TableTovar.LookUp('Cod',TableRecNaklTovarCod.AsInteger,
   'EdIzmerName;Fasovka;ProizvName;AgentCod');
   If VarType(LookUpResults)<>varNull then
   begin
     If LookUpResults[0]<>Null then TableRecNaklEdIzmerName.AsString:=LookUpResults[0];
     If LookUpResults[1]<>Null then TableRecNaklFasovka.AsString    :=LookUpResults[1];
     If LookUpResults[2]<>Null then TableRecNaklProizvName.AsString :=LookUpResults[2];

     If LookUpResults[3]<>Null then  begin   // AgentCod
       LookUpResultsAgent :=TableAgent.LookUp('Cod',LookUpResults[3],  'Activ;AgentName');

       If VarType(LookUpResultsAgent)<>varNull then
       begin
         If LookUpResultsAgent[0]=Null then  TableRecNaklAgentName.AsString  :=''
         else  If Not LookUpResultsAgent[0]  // Not Activ
               then  TableRecNaklAgentName.AsString  := ''
               else if LookUpResultsAgent[1] <>Null
                    then TableRecNaklAgentName.AsString  := LookUpResultsAgent[1]
                    else TableRecNaklAgentName.AsString  :='';
       end else TableRecNaklAgentName.AsString  :=''

     end  else TableRecNaklAgentName.AsString  :='';




   end;
     If (EditFormKind=FPereOzenka) or (EditFormKind=FPereOzenkaOld) then
       TableRecNaklSum.AsCurrency := TableRecNaklKolvo.AsFloat*(TableRecNaklZena.AsCurrency-TableRecNaklZena0.AsCurrency)
     else
       TableRecNaklSum.AsCurrency := TableRecNaklKolvo.AsFloat*TableRecNaklZena.AsCurrency;

     TableRecNaklNDS.AsCurrency := TableRecNaklSum.AsFloat * NDS/(100+NDS);
     TableRecNaklZenaMinusNds.AsCurrency := TableRecNaklZena.AsFloat*(1-NDS/(100+NDS));
     If  (TableRecNaklZena.AsFloat<>0)
     then If (TableRecNaklZena0.AsFloat<>0)
          then TableRecNaklPerCent.AsCurrency := 100*(1-TableRecNaklZena0.AsFloat/TableRecNaklZena.AsFloat)
          else TableRecNaklPerCent.AsCurrency := 100;
  end;
end;

procedure TDM.TableSotrudnCalcFields(DataSet: TDataSet);
begin
  TableSotrudnFIO.AsString:=TableSotrudn.FieldByName('F').AsString+' '+
                            TableSotrudn.FieldByName('I').AsString+' '+
                            TableSotrudn.FieldByName('O').AsString;
end;

procedure TDM.TableRecNaklTovarCodValidate(Sender: TField);
begin       // после изменения значения   TableRecNakl.TovarCod.OnValidate
  If FormParAr[EditFormKind].Activ then
    NaklFormAr[EditFormKind].ZenaRecNaklSet;
end;

procedure TDM.TableRecNaklAfterPost(DataSet: TDataSet);
begin
  If FormParAr[EditFormKind].Activ then NaklFormAr[EditFormKind].ZakupkaSumSet;
  If FormParAr[EditFormKind].Activ then NaklFormAr[EditFormKind].EditPrihodTovarLocate.Text:='';
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableTovarAfterOpen(DataSet: TDataSet);
begin
  TableTovarActivCod   :=0;
end;

procedure TDM.TableRecNaklZenaSetText(Sender: TField;
  const Text: String);
begin
  If (EditFormKind<>FTovar) and FormParAr[EditFormKind].Activ then
    If NaklFormAr[EditFormKind].CheckBoxPercent.Checked then
     TableRecNaklZena.Value:= StrToFloat(Text)*(1+NaklFormAr[EditFormKind].SpinEditPercent.Value/100)
    else TableRecNaklZena.Value:= StrToFloat(Text);
  If EditFormKind=FTovar then  TableRecNaklZena.Value:= StrToFloat(Text);
end;

procedure TDM.TableTovarBeforeInsert(DataSet: TDataSet);
begin
  TableTovarActivGrupCod    := DM.TableTovar.FieldByName('GrupCod').AsInteger;
  TableTovarActivEdIzmerCod := DM.TableTovar.FieldByName('EdIzmerCod').AsInteger;
  TableTovarActivAgentCod   := DM.TableTovar.FieldByName('AgentCod').AsInteger;
  TableTovarActivProizvCod  := DM.TableTovar.FieldByName('ProizvCod').AsInteger;
  TableTovarActivFasovka    := DM.TableTovar.FieldByName('Fasovka').AsString;
end;

procedure TDM.TableTovarNewRecord(DataSet: TDataSet);
begin
  If TableTovarActivGrupCod =0    then DM.TableTovar.FieldByName('GrupCod').AsInteger    :=1
  else DM.TableTovar.FieldByName('GrupCod').AsInteger    :=TableTovarActivGrupCod;

  If TableTovarActivEdIzmerCod =0 then DM.TableTovar.FieldByName('EdIzmerCod').AsInteger :=1
  else DM.TableTovar.FieldByName('EdIzmerCod').AsInteger :=TableTovarActivEdIzmerCod;

  If TableTovarActivAgentCod =0 then   DM.TableTovar.FieldByName('AgentCod').AsInteger   :=1
  else DM.TableTovar.FieldByName('AgentCod').AsInteger   :=TableTovarActivAgentCod;

  If TableTovarActivProizvCod =0 then  DM.TableTovar.FieldByName('ProizvCod').AsInteger  :=1
  else DM.TableTovar.FieldByName('ProizvCod').AsInteger  :=TableTovarActivProizvCod;

  DM.TableTovar.FieldByName('Fasovka').AsString     :=TableTovarActivFasovka;
end;

procedure TDM.TableRecNaklBeforeInsert(DataSet: TDataSet);
var FirstRec : Boolean;
    SaveCursor : TCursor;
begin
  SaveCursor := Screen.Cursor;
  Screen.Cursor := crHourglass;    { Show hourglass cursor }
  DM.TableRecNakl.DisableControls;


  If (DM.TableRecNakl.FieldByName('N').Value=Null) or
     (DM.TableRecNakl.FieldByName('N').AsInteger=0)  then  FormParAr[EditFormKind].RecActivN:=1

  else begin
        if NaklFormAr[EditFormKind].RezhFromParent
        then FormParAr[EditFormKind].RecActivN:= DM.TableRecNakl.FieldByName('N').AsInteger+1
        else
         If Not(DM.TableRecNakl.Eof)
         then  FormParAr[EditFormKind].RecActivN:= DM.TableRecNakl.FieldByName('N').AsInteger
         else FormParAr[EditFormKind].RecActivN:= DM.TableRecNakl.FieldByName('N').AsInteger+1;
       end;


  if Not NaklFormAr[EditFormKind].RezhFromParent  then
  begin

    //  If DM.TableNakl.DataBase.InTransaction then DM.TableNakl.DataBase.Commit;
    FormParAr[EditFormKind].Transactioner:=False;  //
    While Not(DM.TableRecNakl.Eof) do begin
      DM.TableRecNakl.Edit;
      DM.TableRecNakl.FieldByName('N').AsInteger:=DM.TableRecNakl.FieldByName('N').AsInteger+1;
      DM.TableRecNakl.Post;
      DM.TableRecNakl.Next;
    end;
    FormParAr[EditFormKind].Transactioner:=True;
  end;

  DM.TableRecNakl.EnableControls;

  Screen.Cursor := SaveCursor;  { Always restore to normal }

end;

procedure TDM.TableRecNaklNewRecord(DataSet: TDataSet);
begin
  DM.TableRecNaklKolvo.AsInteger   := 0;  //
  DM.TableRecNaklNaklCod.AsInteger:=DM.TableNakl.FieldByName('Cod').AsInteger;
  If FormParAr[EditFormKind].Activ then DM.TableRecNakl.FieldByName('N').AsInteger:=FormParAr[EditFormKind].RecActivN;
end;

procedure TDM.TableRecNaklAfterDelete(DataSet: TDataSet);
begin
    If (Not FormParAr[EditFormKind].RecLastN) and FormParAr[EditFormKind].NControl then
    begin
      DM.TableRecNakl.DisableControls;
      While Not(DM.TableRecNakl.Eof) and (DM.TableRecNakl.FieldByName('N').AsInteger<=1) do
      begin
        DM.TableRecNakl.Edit;
        DM.TableRecNakl.FieldByName('N').AsInteger:=DM.TableRecNakl.FieldByName('N').AsInteger-1;
        DM.TableRecNakl.Post;
        DM.TableRecNakl.Next;
      end;
      DM.TableRecNakl.Locate('N',FormParAr[EditFormKind].RecActivN,[]);
      DM.TableRecNakl.EnableControls;;
    end;
    If FormParAr[EditFormKind].Activ then NaklFormAr[EditFormKind].Modified:=True;
    If FormParAr[EditFormKind].Activ then NaklFormAr[EditFormKind].ZakupkaSumSet;

end;

procedure TDM.TableRecNaklBeforeDelete(DataSet: TDataSet);
begin
  If DM.TableRecNakl.State = dsEdit then DM.TableRecNakl.Post;
  If FormParAr[EditFormKind].NControl then
  begin
    FormParAr[EditFormKind].RecActivN:= DM.TableRecNakl.FieldByName('N').AsInteger;
    DM.TableRecNakl.Next;
    FormParAr[EditFormKind].RecLastN:= DM.TableRecNakl.Eof;
    If Not FormParAr[EditFormKind].RecLastN then DM.TableRecNakl.Prior;
  end;
end;

procedure TDM.TableTovarZenaZakupkaSetText(Sender: TField;
  const Text: String);
begin
  TableTovarZenaZakupka.Value:= StrToFloat(Text)*(1+TovarForm.SpinEditPercentZakupka.Value/100);
end;

procedure TDM.TableTovarZenaZakupkaChange(Sender: TField);
begin
  If TovarForm.CheckBoxRozn.Checked then
    TableTovarZenaRozn.Value:= (Round(TableTovarZenaZakupka.Value*(1+TovarForm.SpinEditPercentRozn.Value/100)*20) )/20 ;
  If TovarForm.CheckBoxOpt.Checked then
    TableTovarZenaOpt.Value:= TableTovarZenaZakupka.Value*(1+TovarForm.SpinEditPercentOpt.Value/100);
  If TovarForm.CheckBoxMelkOpt1.Checked then
    TableTovarZenaMelkOpt.Value:= (Round(TableTovarZenaZakupka.Value*(1+TovarForm.SpinEditPercentMelkOpt1.Value/100)*20) )/20;
end;

procedure TDM.TableTovarZenaRoznChange(Sender: TField);
begin
  If TovarForm.CheckBoxMelkOpt2.Checked then
    TableTovarZenaMelkOpt.Value:= (Round(TableTovarZenaRozn.Value*(1+TovarForm.SpinEditPercentMelkOpt2.Value/100)*20) )/20;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
var St : String;
begin
  BaseOpenSuc := True;
  try

    SessionMy.AddPassword(SotrudnPassWord);
    Session.AddPassword(SotrudnPassWord);
  except
    on E : Exception do begin
      MessageDlg('Ошибка взаимодействия с Bde! ' +
                  E.Message
                 //'Код ошибки = '+ IntToStr(GetLastError)
                  ,
                  mtWarning, [mbYes], 0);
      BaseOpenSuc := False;
      DM.Free;
      InstallForm.Free;
      MainForm.Free;
    end;
  end;

 If BaseOpenSuc then
 try
//  Database1.TransIsolation:=tiDirtyRead;
  If Database1.AliasName <> MyAliasName then begin
    If Database1.Connected then Database1.Connected := False;
    Database1.AliasName := MyAliasName;
    Database1.Connected := True;
  end;
  If Not Database1.Connected then Database1.Connected := True;
  MainForm.LabelAlias.Caption := 'Base='+MyAliasName;
 except
   BaseOpenSuc := False;
   try
     // подключение по папке базы, а не по Алиусу
     Database1.DriverName:='STANDARD';

     If BaseDir[1]='\' then begin
       St:= ExtractFilePath(BaseDir);
       Delete(St ,1,1 );
       St:= ExtractFilePath(Application.EXEName)+ St;
     end
     else St:=BaseRezDir;

     Database1.Params.Add('PATH='+St); // PATH=d:\Preobr\Delphi\Trade\Base\
     Database1.Params.Add('DEFAULT DRIVER=PARADOX');
     Database1.Params.Add('ENABLE BCD=FALSE');
     Database1.Params.Add('LANGDRIVER=ancyrr');
     If Not Database1.Connected then Database1.Connected := True;
     BaseOpenSuc := True;
     MainForm.LabelAlias.Caption := 'Base='+St;
   except
      BaseOpenSuc := False;
      MessageDlg('При открытии Базы данных Alias='+MyAliasName+' Path='+St+' произошла ошибка!',
      mtWarning, [mbYes], 0);
      BaseOpenSuc := False;
      DM.Free;
      InstallForm.Free;
      MainForm.Free;
   end;
 end;

 If  BaseOpenSuc then
   try
    TableGrup.Open;
    TableEdIzmer.Open;
    TableProizv.Open;

    TableAgent.Open;
    TableUnit.Open;
    TableSklad.Open;
    TableSotrudn.Open;

    TableTovar.Open;

    TableNakl.Open;
    TableRecNakl.Open;
    TableZhurnal.Open;
    TableParent.Open;

   except
     on E : Exception do
       begin
        MessageDlg('При открытии одной из таблиц Базы данных '+MyAliasName+' произошла ошибка! '+E.Message,
        mtWarning, [mbYes], 0);
        BaseOpenSuc := False;
        DM.Free;
        InstallForm.Free;
        MainForm.Free;
        // Application.Destroy;
        // Application.Free;
        // MainForm.Close;
       end;

   end;
end;


procedure TDM.TableZhurnalCalcFields(DataSet: TDataSet);
begin
  TableZhurnalKindName.Value:=NaklName[ TNaklKind(TableZhurnalKind.Value) ];
end;

procedure TDM.TableNaklCalcFields(DataSet: TDataSet);
begin
  TableNaklKindName.Value:=NaklName[ TNaklKind(TableNaklKind.Value) ];
end;

procedure TDM.TableTovarCalcFields(DataSet: TDataSet);
begin
 if Assigned(TovarForm) and TovarForm.Visible then
  If  (TableTovarZenaZakupka.AsFloat<>0) then
  begin
    If (TableTovarZenaRozn.AsFloat<>0)
     then TableTovarPerCentRozn.AsCurrency := 100*(1-TableTovarZenaZakupka.AsFloat/TableTovarZenaRozn.AsFloat);
    If (TableTovarZenaMelkOpt.AsFloat<>0)
     then TableTovarPerCentMelkOpt.AsCurrency := 100*(1-TableTovarZenaZakupka.AsFloat/TableTovarZenaMelkOpt.AsFloat);
    If (TableTovarZenaOpt.AsFloat<>0)
     then TableTovarPerCentOpt.AsCurrency := 100*(1-TableTovarZenaZakupka.AsFloat/TableTovarZenaOpt.AsFloat);
  end;
end;

procedure TDM.TableRecNaklBeforePost(DataSet: TDataSet);
begin
  If FormParAr[EditFormKind].Activ then NaklFormAr[EditFormKind].Modified:=TableRecNakl.Modified;
end;

procedure TDM.TableTovarFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
//  Accept := DataSet.FieldByName('Fasovka').AsString = '30,0 кг';
end;

procedure TDM.TableAgentNewRecord(DataSet: TDataSet);
begin
 If SpravForm.Obj ='PostavSprav' then  DM.TableAgent.FieldByName('AgentKind').AsInteger:=2;
 If SpravForm.Obj ='PokupSprav'  then  DM.TableAgent.FieldByName('AgentKind').AsInteger:=1;

end;

(*
procedure TDM.PackTable(Table: TTable);
var
  Props: CURProps;
  hDb: hDBIDb;
  TableDesc: CRTblDesc;
begin
  // Make sure the table is open exclusively so we can get the db handle…
  if not Table.Active then
    raise EDatabaseError.Create('Table must be opened to pack');
  if not Table.Exclusive then
    raise EDatabaseError.Create('Table must be opened exclusively to pack');
  // Get the table properties to determine table type…
  Check(DbiGetCursorProps(Table.Handle, Props));
  // If the table is a Paradox table, you must call DbiDoRestructure…
  if (Props.szTableType = szPARADOX) then
  begin
    // Blank out the structure…
    FillChar(TableDesc, sizeof(TableDesc), 0);
    // Get the database handle from the table's cursor handle…
    Check(DbiGetObjFromObj(hDBIObj(Table.Handle), objDATABASE, hDBIObj(hDb)));
    // Put the table name in the table descriptor…
    StrPCopy(TableDesc.szTblName, Table.TableName);
    // Put the table type in the table descriptor…
    StrPCopy(TableDesc.szTblType, Props.szTableType);
    // Set the Pack option in the table descriptor to TRUE…
    TableDesc.bPack := True;
    // Close the table so the restructure can complete…
    Table.Close;
    // Call DbiDoRestructure…
    Check(DbiDoRestructure(hDb, 1, @TableDesc, nil, nil, nil, False));
  end
  else
    {// If the table is a dBASE table, simply call DbiPackTable…} if
      (Props.szTableType = szDBASE) then
      Check(DbiPackTable(Table.DBHandle, Table.Handle, nil, szDBASE, True))
    else
      // Pack only works on PAradox or dBASE; nothing else…
      raise EDatabaseError.Create('Table must be either of Paradox or dBASE ' +
        'type to pack');
  Table.Open;
end;
*)

procedure TDM.Bde_PackTable(DataSet: TDataSet);
var
  hDb: hDBIDb;
  Tbl: TTable;
  Props: CURProps;
  CrDesc: CRTblDesc;
  Save: Boolean;
begin
  if (DataSet is TTable) then
  begin
    Tbl := TTable(DataSet);
    Save := Tbl.Active;
    Tbl.Active := True;
    try
      Check(DbiGetCursorProps(Tbl.Handle, Props));
      if (Props.szTableType = szPARADOX) then
      begin
        FillChar(CrDesc, SizeOf(CRTblDesc), 0);
        StrCopy(CrDesc.szTblName, Props.szName);
        StrCopy(CrDesc.szTblType, Props.szTableType);
        CrDesc.bPack := True;
        Check(DbiGetObjFromObj(hDBIObj(Tbl.Handle), objDATABASE, hDBIObj(hDb)));
        Tbl.DisableControls;
        Tbl.Active := False;
        Check(DbiDoRestructure(hDb, 1, @CrDesc, nil, nil, nil, False));
      end
      else if (Props.szTableType = szDBASE) then
      begin
        Tbl.Active := True;
        Check(DbiPackTable(Tbl.DBHandle, Tbl.Handle, nil, szDBASE, True));
      end;
    finally
      Tbl.Active := Save;
      Tbl.EnableControls;
    end;
  end;
end;


procedure TDM.TableNaklAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableTovarAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableGrupAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableEdIzmerAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableProizvAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableZhurnalAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.Table1AfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableSkladAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableSotrudnAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableUnitAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableValutaAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TablePereOzenkaAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableParentAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableKursAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TablePriceAfterPost(DataSet: TDataSet);
begin
  Check(dbiSaveChanges(TTable(DataSet).Handle));
end;

procedure TDM.TableTovarUpdateRecord(DataSet: TDataSet;
  UpdateKind: TUpdateKind; var UpdateAction: TUpdateAction);
begin
// регистрация даты изменения строки
//  DataSet.FieldByName('EditDate').AsDateTime:=Now;
//  UpdateAction := uaApplied;
end;

initialization
//  DM.SessionMy := TSession.Create;
//    SessionMy.AddPassword(SotrudnPassWord);
//    SessionMy.AddPassword(NaklPassWord);
//    SessionMy.AddPassword(RecNaklPassWord);
//    SessionMy.AddPassword(ZhurnalPassWord);

finalization
{
}
end.
