object SqlForm: TSqlForm
  Left = 94
  Top = 72
  Width = 866
  Height = 586
  Caption = 'Sql'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Reference Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 18
  object Splitter1: TSplitter
    Left = 0
    Top = 174
    Width = 848
    Height = 3
    Cursor = crVSplit
    Align = alTop
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 177
    Width = 848
    Height = 296
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -14
    TitleFont.Name = 'MS Reference Sans Serif'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 473
    Width = 848
    Height = 43
    Align = alBottom
    TabOrder = 1
    object DBNavigator1: TDBNavigator
      Left = 10
      Top = 10
      Width = 280
      Height = 31
      DataSource = DataSource1
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 848
    Height = 174
    Align = alTop
    TabOrder = 2
    object Memo1: TMemo
      Left = 1
      Top = 1
      Width = 846
      Height = 134
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -18
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ScrollBars = ssBoth
      TabOrder = 0
      OnKeyDown = Memo1KeyDown
      OnKeyUp = Memo1KeyDown
      OnMouseDown = Memo1MouseDown
    end
    object Panel2: TPanel
      Left = 1
      Top = 135
      Width = 846
      Height = 38
      Align = alBottom
      TabOrder = 1
      object Label1: TLabel
        Left = 92
        Top = 10
        Width = 5
        Height = 18
      end
      object StaticText1: TStaticText
        Left = 10
        Top = 10
        Width = 98
        Height = 22
        Caption = 'Cursor Pos= '
        TabOrder = 0
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    Top = 24
    object FileMenu: TMenuItem
      Caption = 'File'
      object OpenMenu: TMenuItem
        Caption = 'Open'
        OnClick = OpenMenuClick
      end
      object CloseMenu: TMenuItem
        Caption = 'Close'
        OnClick = CloseMenuClick
      end
      object SaveMenu: TMenuItem
        Caption = 'Save'
        OnClick = SaveMenuClick
      end
      object SaveAsMenu: TMenuItem
        Caption = 'SaveAs'
        OnClick = SaveAsMenuClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object SaveAsTextMenu: TMenuItem
        Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1047#1072#1087#1088#1086#1089#1072' '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083
        OnClick = SaveAsTextMenuClick
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object ExitMenu: TMenuItem
        Caption = 'Exit'
        OnClick = ExitMenuClick
      end
    end
    object RunMenu: TMenuItem
      Caption = 'Run'
      OnClick = RunMenuClick
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = 'Sql Files|*.sql|All Files|*.*'
    Left = 48
    Top = 24
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Sql Files|*.sql|All Files|*.*'
    Left = 80
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = DM.QuerySql
    Left = 48
    Top = 192
  end
end
