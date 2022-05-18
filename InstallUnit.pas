unit InstallUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics,
  Controls, Forms, Dialogs, IniFiles,
  DB, DBGrids
     {$IFDEF VER150}  // Delphi 7
     {$ELSE}     //
        , System.UITypes   //
     {$ENDIF}

  ;
const
      MetkaIni       ='Trade.Ini';
      PrintTovarFileName   : String ='Товар.Txt';
      PrintNaklFileName    : String ='Накл №';
      PrintPath            : String ='';
      ExcelPath            : String ='';
      NaklPrintPath        : String ='';


     {$IFDEF VER150}  // Delphi 7
        MyAliasName          : String ='Trade';
     {$ELSE}     //
        MyAliasName          : String ='TradeXE';   //
     {$ENDIF}

      BaseDir              : String ='\Base\';
      BaseRezDir           : String ='\Base\Buf\';
      BaseRezDir1          : String ='\Base\Buf\';

      FtpUsername          : String= 'u0662823';
      FtpPassword          : String= 'IT!0ugGo';  //
      FtpHost              : String= '31.31.196.247';    //   ip_ftp_servera
      BackToFtp            : Boolean= True;


      NDS                  : Integer=18;
      AgentSelf            : Integer= 2; // Москвичи
      UnitSelf             : Integer= 7; // Офис
      UnitPavSelf          : Integer= 9; // Эскаро 86-88 павильон по умолчанию
      GrupActivOnly    : Boolean = True;
      PokupActivOnly   : Boolean = True;
      PostavActivOnly  : Boolean = True;
      ProizvActivOnly  : Boolean = True;
      EdIzmerActivOnly : Boolean = True;
      SotrudnActivOnly : Boolean = True;
      UnitActivOnly    : Boolean = True;
      SkladActivOnly   : Boolean = True;

      ValutaActivOnly : Boolean = True;
      KursActivOnly   : Boolean = True;
      PrScreenWidth=1360; //  Win10 Big Display LG 1920*1080
      // Win10 Big Display Toshiba (с кухни телек) 1360*768
      // разрешение по ширине при проектировании     WinXP=1200 Win7=1920

      Debuger=True;
type
  TPodborKind  = (Non, FromTovar, FromNakl);

  TNaklKind      = (All,Zakupka,Prodazha,Prihod,Ostatok,Perem,Schet,CashTo,CashFrom,PereOzenka);
  TOplataKind    = (Oplach,Realiz,Konsig,Zachet);
  TDeystvKind    = (Sozdan,Redakt,Prosmotr,VosStan);
  TAgentKind     = (Univer,Pokup,Postav);
  TFormKind      = (FTovar,FZakupka,FZakupkaOld,FProdazha,FProdazhaOld,FPrihod,FPrihodOld,
                    FOstatok,FOstatokOld, FPerem,FPeremOld,FSchet,FSchetOld,
                    FCashTo,FCashToOld,FCashFrom,FCashFromOld,
                    FPereOzenka,FPereOzenkaOld);

  TFormPar = Record
    Activ        : Boolean;         {after SetNakl}
    Deystv       : TDeystvKind;
    NaklCod      : Integer;   //  код текущей накладной
    ParentCod    : Integer;   //  код текущей родительской накладной
    DocN         : Integer;   //  № текущей накладной
    RecActivN    : Integer;   // № строки текущей строки в накладной
    RecLastN     : Boolean;   // текущая запись последняя в накладной
    NControl     : Boolean;   // необходим контроль № строки в накладной
    Transactioner: Boolean;   // использовать Transaction при редактировании
    RecActivCod  : Integer;   // код строки текущей строки в накладной
    RecActivTovarCod  : Integer;   // код Товара текущей строки в накладной
    AgentCodFrom   : Integer;   //
    UnitCodFrom    : Integer;   //
    SkladCodFrom   : Integer;   //
    SotrudnCodFrom : Integer;   //
    AgentCodTo     : Integer;   //
    UnitCodTo      : Integer;   //
    SkladCodTo     : Integer;   //
    SotrudnCodTo   : Integer;   //
    Oplata         : Integer;   //
    SaveZakupka, SaveRozn, SaveMelkOpt, SaveOpt : Boolean;   // Запись в справочник товара в Закупку,Розница,Мелкопт,Опт
  end;

const
  NaklName   : array [TNaklKind]   of String=
    ('Все','ЗакупкНк','ПродажНк','ПриходНк','ОстаткиНк','ПеремещНк','Счет',
     'Выплаты','Получение Денег','ПереОценка Товара');
  OplataName   : array [TOplataKind]   of String=
    ('Оплачено','Реализация','Консигнация','ВзаимоЗачет');
  DeystvName : array [TDeystvKind] of String= ('Создание','Редак-ние','Просмотр','Восстановление');

  AgentKindPokup  : TAgentKind = Pokup;
  AgentKindPostav : TAgentKind = Postav;

type
  TInstallForm = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PodborerFrom, PodborerTo : TFormKind;
    SqlActiv    : Boolean;            //SqlForm was Create
    BalansActiv : Boolean;
    SaldoActiv  : Boolean;

    SpravActiv  : Boolean;
    IniFile : TIniFile;
    IniName     : String;
    Dostup,                 // текущий доступ для работы
    DostupInBase,          // доступ указанный в таблице сотрудников
    SotrudnCod : Integer;
    
    procedure  LoadIni;
    procedure  PodborerChange(PodborerFrom1, PodborerTo1: TFormKind);
    function   NaklKindToFormKind(NaklKind : TNaklKind): TFormKind;
    function   FormKindToNaklKind(FormKind : TFormKind): TNaklKind;
  end;

const
  SotrudnPassWord: string= 'MasterTrade';
//  NaklPassWord   : string= 'MasterNakl';
//  RecNaklPassWord: string= 'MasterRecNakl';
//  ZhurnalPassWord: string= 'MasterZhurnal';
var
  InstallForm: TInstallForm;
  FormParAr : array [TFormKind] of TFormPar;
  EditFormKind,                   //Редактируемая форма, Только Одна
  ParentFormKind : TFormKind;     //Родительская форма
implementation

uses NaklUnit,  TovarUnit, DMUnit;

{$R *.DFM}

Function TInstallForm.NaklKindToFormKind(NaklKind : TNaklKind): TFormKind;
begin
  Result:= TFormKind (Integer(NaklKind));
end;

Function TInstallForm.FormKindToNaklKind(FormKind : TFormKind): TNaklKind;
begin
  Result:= TNaklKind ((Integer(FormKind)+1) div 2)
end;

procedure TInstallForm.PodborerChange(PodborerFrom1, PodborerTo1:TFormKind);
var I : TFormKind;
    EdForm : Boolean; // в данный момент редактируется форма кроме Tovar
begin
   PodborerFrom := PodborerFrom1;
   PodborerTo   := PodborerTo1;

   EditFormKind := PodborerTo1;    //Редактируемая форма, Только Одна

   case PodborerTo1 of
     FTovar : begin      //Подбора нет, Редактирование Спр Товаров
       TovarForm.DbGrid1.ReadOnly:=False;
       TovarForm.DBGrid1.Options:=[dgEditing,dgAlwaysShowEditor,dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
       EdForm:= False;
       For I:=Succ(Low(FormParAr)) to High(FormParAr) do  //
       begin
         EdForm:= EdForm  or (FormParAr[I].Activ and (FormParAr[I].Deystv<>Prosmotr));
         If FormParAr[I].Activ and (FormParAr[I].Deystv=Prosmotr) then NaklFormAr[I].ComboBoxPodbor.ItemIndex:=1; // выключен
       end;

       If (TovarForm.ComboBoxPodbor.Items.Count=2) and (Not EdForm) then
         TovarForm.ComboBoxPodbor.Items.Delete(1);
       TovarForm.ComboBoxPodbor.ItemIndex          :=0;  //Редакт-е
     end;

     else  // case ->  Подбор есть
      If PodborerFrom1= FTovar then  //Подбор из Спр Товаров
      begin
       For I:=Succ(Low(FormParAr)) to High(FormParAr) do  //
         If FormParAr[I].Activ then
           If I<>PodborerTo1 then
           begin
             NaklFormAr[I].DbGrid1.Columns[1].ButtonStyle:=cbsNone;
             NaklFormAr[I].DbGrid1.ReadOnly:=True;
             NaklFormAr[I].ComboBoxPodbor.Items.Add('Выключен');
             NaklFormAr[I].ComboBoxPodbor.ItemIndex:=1;
             NaklFormAr[I].ComboBoxPodbor.Enabled:=False;
           end
           else
           begin  // накладная в кот идет подбор из Спр Товаров
             NaklFormAr[I].DbGrid1.Columns[1].ButtonStyle:=cbsEllipsis;
             NaklFormAr[I].DbGrid1.ReadOnly:=False;
             NaklFormAr[I].ComboBoxPodbor.ItemIndex    :=0;  //Подбор по справочнику Товаров
           end;

       If TovarForm.ComboBoxPodbor.Items.Count=2 then
         TovarForm.ComboBoxPodbor.Items[1]:= NaklFormAr[EditFormKind].Caption//
       else TovarForm.ComboBoxPodbor.Items.Add(NaklFormAr[EditFormKind].Caption);
       TovarForm.ComboBoxPodbor.ItemIndex          :=1;  //Редакт-е Nakl

       TovarForm.DbGrid1.ReadOnly:=True;
       TovarForm.DBGrid1.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
      end
      else   //If PodborerFrom1<> FTovar
      begin  //Подбор из другой накладной
       For I:=Succ(Low(FormParAr)) to High(FormParAr) do  //
         If FormParAr[I].Activ then
           If I<>PodborerTo1 then
           begin // для всех накл кроме подборираемой
             NaklFormAr[I].DbGrid1.Columns[1].ButtonStyle:=cbsNone;
             NaklFormAr[I].DbGrid1.ReadOnly:=True;

             If I<>PodborerFrom1 then  //если накл не источник подбора
             begin
               NaklFormAr[I].ComboBoxPodbor.Items.Add('Выключен');
               NaklFormAr[I].ComboBoxPodbor.ItemIndex:=1;
               NaklFormAr[I].ComboBoxPodbor.Enabled:=False;
             end
             else
             begin                    //если накл источник подбора
               NaklFormAr[I].ComboBoxPodbor.Items.Add('Источник Подбора');
               NaklFormAr[I].ComboBoxPodbor.ItemIndex:=2;
               NaklFormAr[I].ComboBoxPodbor.Enabled:=False;
               NaklFormAr[I].DBGrid1.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];
             end;
           end
           else
           begin // для  накл подборираемой
             NaklFormAr[I].DbGrid1.Columns[1].ButtonStyle:=cbsEllipsis;
             NaklFormAr[I].DbGrid1.ReadOnly:=False;
//             NaklFormAr[I].ComboBoxPodbor.ItemIndex    :=0;  //Подбор по
           end;

       If TovarForm.ComboBoxPodbor.Items.Count=2 then
         TovarForm.ComboBoxPodbor.Items[1]:= NaklFormAr[EditFormKind].Caption//
       else TovarForm.ComboBoxPodbor.Items.Add(NaklFormAr[EditFormKind].Caption);
       TovarForm.ComboBoxPodbor.ItemIndex          :=1;  //Редакт-е Nakl

       TovarForm.DbGrid1.ReadOnly:=True;
       TovarForm.DBGrid1.Options:=[dgTitles,dgIndicator,dgColumnResize,dgColLines,dgRowLines,dgTabs,dgConfirmDelete,dgCancelOnExit];


      end;  //Подбор из другой накладной
   end;  // case
end;

procedure TInstallForm.FormCreate(Sender: TObject);
var I : TFormKind;
begin
  LoadIni;
  For I:=Succ(Low(FormParAr)) to High(FormParAr) do
  with FormParAr[I] do
  begin
   Activ:=False;
   RecActivCod:=0;
   RecActivTovarCod:=0;

   UnitCodTo      := 1;
   SkladCodTo     := 1;
   SotrudnCodTo   := 1;
   AgentCodFrom   := 1;
   UnitCodFrom    := 1;
   SotrudnCodFrom := 1;

   if (I=FZakupka) then begin
       AgentCodTo :=AgentSelf;
       UnitCodTo  :=UnitSelf;
   end;

   if (I=FPrihod)  then
   begin
     AgentCodFrom :=AgentSelf;
     UnitCodFrom  :=UnitSelf;
     AgentCodTo   :=AgentSelf;
     UnitCodTo    :=UnitPavSelf;
   end;

   if (I=FCashTo)  then
   begin
     AgentCodFrom :=AgentSelf;
     UnitCodFrom  :=UnitSelf;
   end;

   if  (I=FPereOzenka) or (I=FOstatok) then
   begin
     AgentCodFrom :=AgentSelf;
     UnitCodFrom  :=UnitPavSelf;
     AgentCodTo   :=AgentSelf;
     UnitCodTo    :=UnitPavSelf;
   end;

   if (I=FPerem) then begin
       AgentCodTo   :=AgentSelf;
       AgentCodFrom :=AgentSelf;
   end;

   if (I=FPrihod) or (I=FOstatok) then Oplata := 3 else Oplata :=0;
   ParentCod:=0;
   NControl:=True;
   Transactioner:=True;
   SaveZakupka := False;
   SaveRozn    := False;
   SaveMelkOpt := False;
   SaveOpt     := False;
  end;
  //  MainForm.AdjustResolution(MainForm);
end;

procedure TInstallForm.LoadIni;
var Ind : Integer;
    Metka, Mes : String;
    SumAllIni, SumAll0Ini, PerCentIni : Currency;

begin
 IniName       := '.\'+ExtractFileName( ChangeFileExt(Application.ExeName,'.ini') );
// IniName:= DM.DataBase1.Directory+ExtractFileName( ChangeFileExt(Application.ExeName,'.ini') );

 If FileExists(IniName) then
   try
    IniFile:= TIniFile.Create(IniName);
    Metka:=IniFile.ReadString('MetkaIni','Metka',Metka);

    if Metka<>MetkaIni then begin
      MessageDlg('Выбранный Вами файл '+#13#10+ExpandFileName(IniName)+#13#10+
                     ' не является файлом инициализации приложения или испорчен!',
                 mtError,[mbOk], 0);
//      IniFile.Free;
      Exit;
    end;
    Mes:=IniFile.ReadString('MetkaIni','Message','');
    If Mes<>'' then MessageDlg(Mes,mtInformation,[mbOk], 0);

    PrintTovarFileName:=IniFile.ReadString('FileNames','PrintTovarFileName',PrintTovarFileName);
    PrintNaklFileName :=IniFile.ReadString('FileNames','PrintNaklFileName',PrintNaklFileName);
    PrintPath         :=IniFile.ReadString('FileNames','PrintPath',PrintPath);
    NaklPrintPath     :=IniFile.ReadString('FileNames','NaklPrintPath',NaklPrintPath);

    BaseDir           :=IniFile.ReadString('FileNames','BaseDir',BaseDir);

    BaseRezDir        :=IniFile.ReadString('FileNames','BaseRezDir', BaseRezDir);
    BaseRezDir1       :=IniFile.ReadString('FileNames','BaseRezDir1',BaseRezDir1);

    ExcelPath         :=IniFile.ReadString('FileNames','ExcelPath',ExcelPath);
    MyAliasName       := IniFile.ReadString('Options','MyAliasName',MyAliasName);


    NDS         := IniFile.ReadInteger('Options','NDS',NDS);
    AgentSelf   := IniFile.ReadInteger('Options','AgentSelf',AgentSelf);
    UnitSelf    := IniFile.ReadInteger('Options','UnitSelf',UnitSelf);
    UnitPavSelf := IniFile.ReadInteger('Options','UnitPavSelf',UnitPavSelf);


(*
    with DM.QueryNaklsSum do begin
      Close;
      DM.QueryNaklsSum.SQL[4]:= 'where N.Cod=Rec.NaklCod';
      Open;
    end;

     SumAllIni := IniFile.ReadFloat('CrSum','SumAll', SumAllIni);
     SumAll0Ini:= IniFile.ReadFloat('CrSum','SumAll0',SumAll0Ini);
     PerCentIni:= IniFile.ReadFloat('CrSum','PerCent',PerCentIni);


     If (SumAllIni<>DM.QueryNaklsSum.FieldByName('SumAll').AsCurrency)  or
        (SumAll0Ini<>DM.QueryNaklsSum.FieldByName('SumAll0').AsCurrency) or
        (PerCentIni<>DM.QueryNaklsSum.FieldByName('PerCent').AsCurrency) then
     MessageDlg('Контрольные суммы накладных, сохраненные в файле инициализации'+#13#10+
               IniName+#13#10+
               'не соответствуют текущим контрольным суммам!'+#13#10+
               'SumAll  контрольная = '+FormatCurr('#########0.00, , ',SumAllIni)+
               '  текущая = '+FormatCurr('#########0.00, , ',DM.QueryNaklsSum.FieldByName('SumAll').AsCurrency)+#13#10+
               'SumAll0 контрольная = '+FormatCurr('#########0.00, , ',SumAll0Ini)+
               '  текущая = '+FormatCurr('#########0.00, , ',DM.QueryNaklsSum.FieldByName('SumAll0').AsCurrency)+#13#10+
               'PerCent контрольная = '+FormatCurr('#########0.00, , ',PerCentIni)+
               '  текущая = '+FormatCurr('#########0.00, , ',DM.QueryNaklsSum.FieldByName('PerCent').AsCurrency)+' !',
               mtWarning,[mbOk], 0)   ;
 *)
    finally
      IniFile.Free;
    end;

end; {LoadIni}

end.
