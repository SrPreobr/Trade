program Trade;

uses
  Forms,
  Messages,
  Dialogs,
  SysUtils,
  MainUnit in 'MainUnit.pas' {MainForm},
  NaklUnit in 'NaklUnit.pas' {NaklForm},
  InstallUnit in 'InstallUnit.pas' {InstallForm},
  ZhurnalUnit in 'ZhurnalUnit.pas' {ZhurnalForm},
  TovarUnit in 'TovarUnit.pas' {TovarForm},
  DMUnit in 'DMUnit.pas' {DM: TDataModule},
  SqlUnit in 'SqlUnit.pas' {SqlForm},
  BalansUnit in 'BalansUnit.pas' {BalansForm},
  SpravUnit in 'SpravUnit.pas' {SpravForm},
  SaldoUnit in 'SaldoUnit.pas' {SaldoForm}
       {$IFDEF VER150}  // Delphi 7
     {$ELSE}     //
        , System.UITypes   //
     {$ENDIF}
;



{$R *.RES}

begin
  Application.Initialize;
  try
    Application.HelpFile := 'C:\Program Files (x86)\Borland\Delphi7\Help\d7.hlp';
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TInstallForm, InstallForm);
  Application.CreateForm(TDM, DM);

  If DM <> Nil then begin  // если применить Free к DM , DM не станет равным Nil
    Application.CreateForm(TTovarForm, TovarForm);
    Application.CreateForm(TSpravForm, SpravForm);

    Application.CreateForm(TZhurnalForm, ZhurnalForm);
    //  Application.CreateForm(TSaldoForm, SaldoForm);
    
    Application.Run;
  end
  else    Application.Free;

  except
    on E : Exception do
          MessageDlg('Выполнение программы прервано произошла ошибка: '+#10#13+
                  E.Message,
      mtWarning, [mbYes], 0);

  end;
end.
