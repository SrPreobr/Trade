object NaklForm: TNaklForm
  Left = 59
  Top = 67
  Width = 1097
  Height = 590
  Caption = #1047#1072#1082#1091#1087#1082#1072
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1081
    Height = 551
    ActivePage = TabSheet1
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1053#1072#1082#1083#1072#1076#1085#1072#1103
      object Splitter1: TSplitter
        Left = 0
        Top = 124
        Width = 1073
        Height = 4
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter5: TSplitter
        Left = 0
        Top = 509
        Width = 1073
        Height = 4
        Cursor = crVSplit
        Align = alBottom
      end
      object Splitter2: TSplitter
        Left = 0
        Top = 468
        Width = 1073
        Height = 2
        Cursor = crVSplit
        Align = alBottom
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1073
        Height = 124
        Align = alTop
        TabOrder = 1
        DesignSize = (
          1073
          124)
        object Label3: TLabel
          Left = 65
          Top = 6
          Width = 13
          Height = 13
          Caption = #8470
        end
        object Label4: TLabel
          Left = 230
          Top = 6
          Width = 14
          Height = 13
          Caption = #1086#1090
        end
        object Label10: TLabel
          Left = 574
          Top = 74
          Width = 8
          Height = 13
          Caption = '0'
          WordWrap = True
        end
        object EditNaklKind: TEdit
          Left = 0
          Top = 2
          Width = 58
          Height = 21
          ReadOnly = True
          TabOrder = 0
          Text = #1047#1072#1082#1091#1087#1053#1082
        end
        object SpinEditN: TSpinEdit
          Left = 90
          Top = 2
          Width = 58
          Height = 22
          MaxValue = 100000000
          MinValue = 0
          TabOrder = 1
          Value = 0
          OnDblClick = SpinEditNDbClick
        end
        object StaticText2: TStaticText
          Left = 8
          Top = 33
          Width = 85
          Height = 17
          Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100':'
          TabOrder = 2
        end
        object StaticText3: TStaticText
          Left = 8
          Top = 58
          Width = 77
          Height = 17
          Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100':'
          TabOrder = 3
        end
        object StaticText7: TStaticText
          Left = 6
          Top = 164
          Width = 77
          Height = 17
          Caption = #1063#1077#1088#1077#1079' '#1050#1086#1075#1086':'
          TabOrder = 4
        end
        object StaticText16: TStaticText
          Left = 6
          Top = 213
          Width = 73
          Height = 17
          Caption = #1054#1089#1085#1086#1074#1072#1085#1080#1077':'
          TabOrder = 5
        end
        object StaticText4: TStaticText
          Left = 646
          Top = 82
          Width = 81
          Height = 17
          Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
          TabOrder = 6
        end
        object DBLookupComboBoxAgentFrom: TDBLookupComboBox
          Left = 90
          Top = 25
          Width = 149
          Height = 21
          DataField = 'AgentCodFrom'
          DataSource = DM.DataSourceNakl
          DropDownRows = 17
          KeyField = 'Cod'
          ListField = 'AgentName'
          ListSource = DM.DataSourceAgent
          TabOrder = 7
          OnClick = DBLookupComboBoxAgentFromClick
          OnDropDown = DBLookupComboBoxAgentFromDropDown
        end
        object DBLookupComboBoxAgentTo: TDBLookupComboBox
          Left = 90
          Top = 49
          Width = 149
          Height = 21
          DataField = 'AgentCodTo'
          DataSource = DM.DataSourceNakl
          DropDownRows = 15
          KeyField = 'Cod'
          ListField = 'AgentName'
          ListSource = DM.DataSourceAgent
          TabOrder = 8
          OnClick = DBLookupComboBoxAgentToClick
          OnDropDown = DBLookupComboBoxAgentToDropDown
        end
        object DateTimePickerTime: TDateTimePicker
          Left = 246
          Top = 2
          Width = 67
          Height = 21
          Date = 37278.012242476900000000
          Time = 37278.012242476900000000
          Kind = dtkTime
          TabOrder = 9
        end
        object DateTimePickerDate: TDateTimePicker
          Left = 312
          Top = 2
          Width = 83
          Height = 21
          Date = 37278.012242476900000000
          Time = 37278.012242476900000000
          TabOrder = 10
          OnChange = SpinEditCreditChange
        end
        object DBLookupComboBoxUnitFrom: TDBLookupComboBox
          Left = 246
          Top = 25
          Width = 149
          Height = 21
          DataField = 'UnitCodFrom'
          DataSource = DM.DataSourceNakl
          DropDownRows = 12
          KeyField = 'Cod'
          ListField = 'UnitName'
          ListSource = DM.DataSourceUnit
          TabOrder = 11
          OnClick = DBLookupComboBoxUnitFromClick
          OnDropDown = DBLookupComboBoxUnitDropDown
        end
        object DBLookupComboBoxUnitTo: TDBLookupComboBox
          Left = 246
          Top = 49
          Width = 149
          Height = 21
          DataField = 'UnitCodTo'
          DataSource = DM.DataSourceNakl
          KeyField = 'Cod'
          ListField = 'UnitName'
          ListSource = DM.DataSourceUnit
          TabOrder = 12
          OnClick = DBLookupComboBoxUnitToClick
          OnDropDown = DBLookupComboBoxUnitDropDown
        end
        object CheckBoxActiv: TCheckBox
          Left = 924
          Top = 2
          Width = 76
          Height = 23
          Caption = #1040#1082#1090#1080#1074#1085#1072
          TabOrder = 13
        end
        object StaticText14: TStaticText
          Left = 402
          Top = 33
          Width = 44
          Height = 17
          Caption = #1057#1082#1083#1072#1076':'
          TabOrder = 14
        end
        object StaticText1: TStaticText
          Left = 402
          Top = 58
          Width = 44
          Height = 17
          Caption = #1057#1082#1083#1072#1076':'
          TabOrder = 15
        end
        object DBLookupComboBoxSkladFrom: TDBLookupComboBox
          Left = 443
          Top = 25
          Width = 149
          Height = 21
          DataField = 'SkladCodFrom'
          DataSource = DM.DataSourceNakl
          KeyField = 'Cod'
          ListField = 'SkladName'
          ListSource = DM.DataSourceSklad
          TabOrder = 16
          OnClick = DBLookupComboBoxSkladFromClick
          OnDropDown = DBLookupComboBoxSkladDropDown
        end
        object DBLookupComboBoxSkladTo: TDBLookupComboBox
          Left = 443
          Top = 49
          Width = 149
          Height = 21
          DataField = 'SkladCodTo'
          DataSource = DM.DataSourceNakl
          KeyField = 'Cod'
          ListField = 'SkladName'
          ListSource = DM.DataSourceSklad
          TabOrder = 17
          OnClick = DBLookupComboBoxSkladToClick
          OnDropDown = DBLookupComboBoxSkladDropDown
        end
        object StaticText10: TStaticText
          Left = 596
          Top = 6
          Width = 52
          Height = 17
          Caption = #1055#1086#1076#1073#1086#1088':'
          TabOrder = 18
        end
        object StaticText15: TStaticText
          Left = 591
          Top = 33
          Width = 63
          Height = 17
          Caption = #1054#1090#1087#1091#1089#1090#1080#1083':'
          TabOrder = 19
        end
        object StaticText8: TStaticText
          Left = 598
          Top = 58
          Width = 57
          Height = 17
          Caption = #1055#1086#1083#1091#1095#1080#1083':'
          TabOrder = 20
        end
        object ComboBoxPodbor: TComboBox
          Left = 657
          Top = 2
          Width = 148
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 21
          OnChange = ComboBoxPodborChange
          Items.Strings = (
            #1057#1088#1072#1074#1086#1095#1085#1080#1082#1091' '#1058#1086#1074#1072#1088#1086#1074)
        end
        object DBLookupComboBoxSotrudnFrom: TDBLookupComboBox
          Left = 657
          Top = 25
          Width = 148
          Height = 21
          DataField = 'SotrudnCodFrom'
          DataSource = DM.DataSourceNakl
          KeyField = 'Cod'
          ListField = 'FIO'
          ListSource = DM.DataSourceSotrudn
          TabOrder = 22
          OnClick = DBLookupComboBoxSotrudnFromClick
          OnDropDown = DBLookupComboBoxSotrudnDropDown
        end
        object DBLookupComboBoxSotrudnTo: TDBLookupComboBox
          Left = 657
          Top = 49
          Width = 148
          Height = 21
          DataField = 'SotrudnCodTo'
          DataSource = DM.DataSourceNakl
          KeyField = 'Cod'
          ListField = 'FIO'
          ListSource = DM.DataSourceSotrudn
          TabOrder = 23
          OnDropDown = DBLookupComboBoxSotrudnDropDown
        end
        object StaticText12: TStaticText
          Left = 813
          Top = 33
          Width = 43
          Height = 17
          Caption = #1040#1074#1090#1086#1088':'
          TabOrder = 24
        end
        object EditAvtor: TEdit
          Left = 853
          Top = 25
          Width = 149
          Height = 21
          TabOrder = 25
        end
        object ButtonNewN: TButton
          Left = 148
          Top = 2
          Width = 27
          Height = 23
          Caption = 'New'
          TabOrder = 26
          OnClick = ButtonNewNClick
        end
        object StaticText18: TStaticText
          Left = 6
          Top = 82
          Width = 64
          Height = 17
          Caption = #1056#1086#1076#1080#1090#1077#1083#1080':'
          TabOrder = 27
        end
        object StaticText17: TStaticText
          Left = 6
          Top = 139
          Width = 85
          Height = 17
          Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100':'
          TabOrder = 28
        end
        object StaticText21: TStaticText
          Left = 813
          Top = 6
          Width = 30
          Height = 17
          Caption = #1050#1086#1076':'
          TabOrder = 29
        end
        object EditCod: TEdit
          Left = 181
          Top = 2
          Width = 50
          Height = 21
          ReadOnly = True
          TabOrder = 30
        end
        object EditCherez: TEdit
          Left = 82
          Top = 156
          Width = 277
          Height = 21
          TabOrder = 31
          Text = 'EditCherez'
        end
        object EditFrom: TEdit
          Left = 82
          Top = 132
          Width = 277
          Height = 21
          TabOrder = 32
          Text = 'EditCherez'
        end
        object EditOsnov: TEdit
          Left = 82
          Top = 205
          Width = 277
          Height = 21
          TabOrder = 33
          Text = 'EditCherez'
        end
        object EditPr: TEdit
          Left = 722
          Top = 74
          Width = 277
          Height = 21
          MaxLength = 40
          TabOrder = 34
          Text = '1234567890123456789012345678901234567890'
        end
        object StaticText22: TStaticText
          Left = 6
          Top = 188
          Width = 77
          Height = 17
          Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100':'
          TabOrder = 35
        end
        object EditTo: TEdit
          Left = 82
          Top = 181
          Width = 277
          Height = 21
          TabOrder = 36
          Text = 'EditCherez'
        end
        object ComboBoxParent: TComboBox
          Left = 90
          Top = 74
          Width = 478
          Height = 21
          ItemHeight = 13
          TabOrder = 37
          OnChange = ComboBoxParentChange
        end
        object BitBtnParentDel: TBitBtn
          Left = 591
          Top = 74
          Width = 42
          Height = 16
          Hint = #1059#1076#1072#1083#1080#1090#1100' '#1074#1099#1073#1088#1072#1085#1085#1086#1075#1086' '#1088#1086#1076#1080#1090#1077#1083#1103' '#1080#1079' '#1089#1087#1080#1089#1082#1072
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 38
          OnClick = BitBtnParentDelClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333333333000033338833333333333333333F333333333333
            0000333911833333983333333388F333333F3333000033391118333911833333
            38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
            911118111118333338F3338F833338F3000033333911111111833333338F3338
            3333F8330000333333911111183333333338F333333F83330000333333311111
            8333333333338F3333383333000033333339111183333333333338F333833333
            00003333339111118333333333333833338F3333000033333911181118333333
            33338333338F333300003333911183911183333333383338F338F33300003333
            9118333911183333338F33838F338F33000033333913333391113333338FF833
            38F338F300003333333333333919333333388333338FFF830000333333333333
            3333333333333333333888330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object Panel26: TPanel
          Left = 452
          Top = 132
          Width = 353
          Height = 116
          TabOrder = 39
        end
        object StaticText13: TStaticText
          Left = 394
          Top = 6
          Width = 41
          Height = 17
          Caption = #1055#1086#1080#1089#1082
          TabOrder = 40
        end
        object EditPrihodTovarLocate: TEdit
          Left = 443
          Top = 2
          Width = 149
          Height = 21
          TabOrder = 41
          OnChange = EditPrihodTovarLocateChange
        end
        object CheckBoxPrihodTovarUpper: TCheckBox
          Left = 810
          Top = 132
          Width = 151
          Height = 16
          Caption = '1-'#1102' '#1073#1091#1082#1074#1091' '#1087#1088#1086#1087#1080#1089#1085#1086#1081
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 42
        end
        object StaticText19: TStaticText
          Left = 813
          Top = 49
          Width = 29
          Height = 17
          Caption = 'Calc'
          TabOrder = 43
        end
        object EditCalc: TEdit
          Left = 853
          Top = 49
          Width = 148
          Height = 21
          AutoSelect = False
          TabOrder = 44
          OnChange = EditPrihodTovarLocateChange
          OnExit = EditCalcExit
          OnKeyDown = EditCalcKeyDown
        end
        object ButtonParent: TButton
          Left = 90
          Top = 98
          Width = 318
          Height = 17
          Caption = #1057#1074#1103#1079#1072#1090#1100' '#1076#1072#1085#1085#1099#1081' '#1076#1086#1082#1091#1084#1077#1085#1090' '#1089' '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1080#1084
          TabOrder = 45
          OnClick = ButtonParentClick
        end
        object ButtonFromParent: TButton
          Left = 440
          Top = 98
          Width = 229
          Height = 17
          Caption = #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1080#1079' '#1056#1086#1076#1080#1090#1077#1083#1103
          TabOrder = 46
          OnClick = ButtonFromParentClick
        end
        object CheckBoxOplataSrazu: TCheckBox
          Left = 685
          Top = 95
          Width = 123
          Height = 23
          Caption = #1054#1087#1083#1072#1095#1077#1085#1072' '#1089#1088#1072#1079#1091
          TabOrder = 47
          OnClick = CheckBoxOplataSrazuClick
        end
        object DateTimePickerDateOplata: TDateTimePicker
          Left = 818
          Top = 97
          Width = 84
          Height = 21
          Date = 37278.012242476900000000
          Time = 37278.012242476900000000
          TabOrder = 48
          OnChange = SpinEditCreditChange
        end
        object MaskEditOplataSum: TMaskEdit
          Left = 913
          Top = 97
          Width = 71
          Height = 21
          Anchors = [akLeft, akBottom]
          TabOrder = 49
          OnExit = MaskEditOplataSumExit
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 470
        Width = 1073
        Height = 39
        Align = alBottom
        TabOrder = 2
        DesignSize = (
          1073
          39)
        object Label13: TLabel
          Left = 477
          Top = 8
          Width = 23
          Height = 13
          Anchors = [akLeft, akBottom]
          Caption = #1047#1072#1082
        end
        object ButtonN: TButton
          Left = 8
          Top = 12
          Width = 104
          Height = 20
          Anchors = [akLeft, akBottom]
          Cancel = True
          Caption = #1055#1088#1086#1085#1091#1084#1077#1088#1086#1074#1072#1090#1100
          TabOrder = 0
          OnClick = ButtonNClick
        end
        object DBNavigator1: TDBNavigator
          Left = 123
          Top = 12
          Width = 200
          Height = 20
          DataSource = DM.DataSourceRecNakl
          Anchors = [akLeft, akBottom]
          Hints.Strings = (
            #1055#1077#1088#1074#1072#1103' '#1057#1090#1088#1086#1082#1072
            #1055#1088#1077#1076#1099#1076#1091#1097#1072#1103
            #1057#1083#1077#1076#1091#1102#1097#1072#1103
            #1055#1086#1089#1083#1077#1076#1085#1103#1103
            #1042#1089#1090#1072#1074#1080#1090#1100' '#1057#1090#1088#1086#1082#1091
            #1059#1076#1072#1083#1080#1090#1100' '#1057#1090#1088#1086#1082#1091
            #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
            #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
            #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
            #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077)
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object StaticText9: TStaticText
          Left = 337
          Top = 8
          Width = 47
          Height = 17
          Anchors = [akLeft, akBottom]
          Caption = #1057#1091#1084#1084#1072':'
          TabOrder = 2
        end
        object CheckBoxNDS: TCheckBox
          Left = 665
          Top = 12
          Width = 91
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = #1042' '#1090'.'#1095'. '#1053#1044#1057':'
          TabOrder = 3
          OnClick = CheckBoxNDSClick
        end
        object MaskEditZakupkaNDS: TMaskEdit
          Left = 755
          Top = 12
          Width = 70
          Height = 21
          Anchors = [akLeft, akBottom]
          EditMask = '!#########0,00\ ;1; '
          MaxLength = 14
          TabOrder = 4
          Text = '          ,   '
        end
        object ButtonClose: TButton
          Left = 903
          Top = 12
          Width = 60
          Height = 20
          Anchors = [akLeft, akBottom]
          Cancel = True
          Caption = #1047#1072#1082#1088#1099#1090#1100
          TabOrder = 5
          OnClick = ButtonCloseClick
        end
        object MaskEditPerCent: TMaskEdit
          Left = 600
          Top = 10
          Width = 49
          Height = 21
          Anchors = [akLeft, akBottom]
          EditMask = '!##0,00\ %;1; '
          MaxLength = 8
          TabOrder = 6
          Text = '   ,   %'
        end
        object MaskEditNaklSum0: TMaskEdit
          Left = 508
          Top = 10
          Width = 86
          Height = 21
          Anchors = [akLeft, akBottom]
          EditMask = '!#########0,00\ ;1; '
          MaxLength = 14
          TabOrder = 7
          Text = '          ,   '
        end
        object MaskEditNaklSum: TMaskEdit
          Left = 386
          Top = 10
          Width = 85
          Height = 21
          Anchors = [akLeft, akBottom]
          EditMask = '!#########0,00\ ;1; '
          MaxLength = 14
          TabOrder = 8
          Text = '          ,   '
        end
        object ButtonPr: TButton
          Left = 828
          Top = 12
          Width = 67
          Height = 20
          Anchors = [akLeft, akBottom]
          Caption = #1053#1072' '#1055#1077#1095#1072#1090#1100
          TabOrder = 9
          OnClick = ButtonPrepPrintClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 128
        Width = 1073
        Height = 340
        Align = alClient
        DataSource = DM.DataSourceRecNakl
        DefaultDrawing = False
        Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
        OnColEnter = DBGrid1ColEnter
        OnColExit = DBGrid1ColExit
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnEditButtonClick = DBGrid1EditButtonClick
        OnKeyDown = DBGrid1KeyDown
        OnKeyPress = DBGrid1KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'N'
            Visible = True
          end
          item
            ButtonStyle = cbsEllipsis
            Expanded = False
            FieldName = 'TovarName'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 341
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TovarCod'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ProizvName'
            ReadOnly = True
            Title.Caption = #1055#1088#1086#1080#1079'-'#1090#1077#1083#1100
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AgentName'
            ReadOnly = True
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Fasovka'
            ReadOnly = True
            Title.Caption = #1060#1072#1089#1086#1074#1082#1072
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EdIzmerName'
            ReadOnly = True
            Title.Caption = #1045#1076'.'
            Width = 45
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Zena0'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Kolvo'
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Zena'
            PopupMenu = PopupMenu1
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ZenaMinusNds'
            Title.Caption = #1062#1077#1085#1072' '#1073#1077#1079' '#1053#1044#1057
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sum'
            ReadOnly = True
            Title.Caption = #1057#1091#1084#1084#1072
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NDS'
            ReadOnly = True
            Title.Caption = #1074' '#1090'.'#1095'.'#1053#1044#1057
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PerCent'
            ReadOnly = True
            Title.Caption = '%'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RecomPr'
            ReadOnly = True
            Title.Caption = #1056#1077#1082#1086#1084'%'
            Width = 50
            Visible = True
          end>
      end
      object StatusBar1: TStatusBar
        Left = 0
        Top = 513
        Width = 1073
        Height = 10
        Panels = <>
        SimplePanel = True
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1080
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 518
        Height = 301
        TabOrder = 0
        object SpinEditPercent: TSpinEdit
          Left = 418
          Top = 5
          Width = 43
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 0
          Value = 0
          OnChange = SpinEditPercentChange
        end
        object ButtonPereSchetZena: TButton
          Left = 98
          Top = 72
          Width = 240
          Height = 22
          Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1062#1077#1085#1099' '#1089' '#1101#1090#1086#1081' '#1055#1086#1087#1088#1072#1074#1082#1086#1081
          TabOrder = 1
          OnClick = ButtonPereSchetZenaClick
        end
        object CheckBoxPercent: TCheckBox
          Left = 279
          Top = 8
          Width = 133
          Height = 17
          Caption = #1055#1086#1087#1088#1072#1074#1082#1072' '#1082' '#1094#1077#1085#1077' %'
          TabOrder = 2
        end
        object Panel15: TPanel
          Left = 15
          Top = 88
          Width = 502
          Height = 206
          TabOrder = 3
          object Label1: TLabel
            Left = 8
            Top = 4
            Width = 114
            Height = 13
            Caption = #1040#1074#1090#1086#1055#1086#1076#1089#1090#1072#1074#1083#1077#1085#1080#1077
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Panel16: TPanel
            Left = 9
            Top = 175
            Width = 239
            Height = 26
            TabOrder = 0
            object CheckBoxKolvo: TCheckBox
              Left = 8
              Top = 8
              Width = 108
              Height = 18
              Caption = #1050#1086#1083'-'#1074#1086' '#1058#1086#1074#1072#1088#1072' ='
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnClick = CheckBoxColumnClick
            end
            object SpinEditKolvo: TSpinEdit
              Left = 123
              Top = 3
              Width = 50
              Height = 22
              MaxValue = 1000000000
              MinValue = 0
              TabOrder = 1
              Value = 1
            end
          end
          object ButtonSetAllZens: TButton
            Left = 255
            Top = 175
            Width = 238
            Height = 26
            Caption = #1055#1086#1076#1089#1090#1072#1074#1080#1090#1100' '#1042#1089#1077' '#1047#1072#1085#1086#1074#1086
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            OnClick = ButtonSetAllZensClick
          end
          object Panel5: TPanel
            Left = 255
            Top = 18
            Width = 238
            Height = 156
            TabOrder = 2
            object Label5: TLabel
              Left = 8
              Top = 4
              Width = 31
              Height = 13
              Caption = #1062#1077#1085#1072
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              WordWrap = True
            end
            object RadioButtonSql: TRadioButton
              Left = 8
              Top = 115
              Width = 215
              Height = 18
              Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1062#1077#1085#1072
              Checked = True
              TabOrder = 0
              TabStop = True
            end
            object RadioButtonOpt: TRadioButton
              Left = 8
              Top = 82
              Width = 215
              Height = 17
              Caption = #1054#1087#1090#1086#1074#1072#1103'            '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074
              TabOrder = 1
            end
            object RadioButtonMelkOpt: TRadioButton
              Left = 8
              Top = 65
              Width = 215
              Height = 18
              Caption = #1052#1077#1083#1082#1086#1054#1087#1090#1086#1074#1072#1103' '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074
              TabOrder = 2
            end
            object RadioButtonRozn: TRadioButton
              Left = 8
              Top = 49
              Width = 215
              Height = 18
              Caption = #1056#1086#1079#1085#1080#1095#1085#1072#1103'        '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074
              TabOrder = 3
            end
            object RadioButtonZakupka: TRadioButton
              Left = 8
              Top = 33
              Width = 215
              Height = 17
              Caption = #1047#1072#1082#1091#1087#1082#1072'            '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074
              TabOrder = 4
            end
            object RadioButtonValue: TRadioButton
              Left = 8
              Top = 132
              Width = 59
              Height = 16
              Caption = #1062#1077#1085#1072' ='
              TabOrder = 5
            end
            object MaskEdit1: TMaskEdit
              Left = 123
              Top = 124
              Width = 79
              Height = 21
              EditMask = '!999999\/99\ '#1075#1088'.;0;0'
              MaxLength = 13
              TabOrder = 6
            end
            object RadioButtonNot: TRadioButton
              Left = 8
              Top = 17
              Width = 215
              Height = 17
              Caption = #1053#1077' '#1048#1079#1084#1077#1085#1103#1090#1100' '#1062#1077#1085#1091
              TabOrder = 7
            end
            object RadioButtonRoznSr: TRadioButton
              Left = 8
              Top = 98
              Width = 215
              Height = 18
              Caption = #1056#1086#1079#1085#1080#1095#1085#1072#1103' '#1056#1091#1073' '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074
              TabOrder = 8
            end
          end
          object Panel17: TPanel
            Left = 8
            Top = 18
            Width = 240
            Height = 156
            TabOrder = 3
            object Label6: TLabel
              Left = 8
              Top = 4
              Width = 111
              Height = 26
              Caption = #1042#1089#1087#1086#1084#1086#1075#1072#1090#1077#1083#1100#1085#1072#1103' '#1062#1077#1085#1072
              Color = clBtnFace
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
              WordWrap = True
            end
            object RadioButtonSql0: TRadioButton
              Left = 8
              Top = 115
              Width = 215
              Height = 18
              Caption = #1055#1086#1089#1083#1077#1076#1085#1103#1103' '#1062#1077#1085#1072
              TabOrder = 0
            end
            object RadioButtonOpt0: TRadioButton
              Left = 8
              Top = 82
              Width = 215
              Height = 17
              Caption = #1054#1087#1090#1086#1074#1072#1103'            '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074
              TabOrder = 1
            end
            object RadioButtonMelkOpt0: TRadioButton
              Left = 8
              Top = 65
              Width = 215
              Height = 18
              Caption = #1052#1077#1083#1082#1086#1054#1087#1090#1086#1074#1072#1103' '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074
              TabOrder = 2
            end
            object RadioButtonRozn0: TRadioButton
              Left = 8
              Top = 49
              Width = 215
              Height = 18
              Caption = #1056#1086#1079#1085#1080#1095#1085#1072#1103'        '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074
              TabOrder = 3
            end
            object RadioButtonZakupka0: TRadioButton
              Left = 8
              Top = 33
              Width = 215
              Height = 17
              Caption = #1047#1072#1082#1091#1087#1082#1072'            '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074
              Checked = True
              TabOrder = 4
              TabStop = True
            end
            object RadioButtonValue0: TRadioButton
              Left = 8
              Top = 132
              Width = 59
              Height = 16
              Caption = #1062#1077#1085#1072' ='
              TabOrder = 5
            end
            object MaskEdit0: TMaskEdit
              Left = 123
              Top = 133
              Width = 83
              Height = 21
              EditMask = '!999999\/99\ '#1075#1088'.;0;0'
              MaxLength = 13
              TabOrder = 6
            end
            object RadioButtonNot0: TRadioButton
              Left = 8
              Top = 17
              Width = 215
              Height = 17
              Caption = #1053#1077' '#1048#1079#1084#1077#1085#1103#1090#1100' '#1062#1077#1085#1091
              TabOrder = 7
            end
          end
        end
        object CheckBoxPercent0: TCheckBox
          Left = 13
          Top = 8
          Width = 165
          Height = 17
          Caption = #1055#1086#1087#1088#1072#1074#1082#1072' '#1082' '#1042#1089#1087#1086#1084'.'#1094#1077#1085#1077' %'
          TabOrder = 4
        end
        object CheckBoxUmnozh: TCheckBox
          Left = 279
          Top = 34
          Width = 133
          Height = 16
          Caption = #1059#1084#1085#1086#1078#1080#1090#1100' '#1062#1077#1085#1099' '#1085#1072
          TabOrder = 5
        end
        object MaskEditUmnozh: TMaskEdit
          Left = 418
          Top = 26
          Width = 37
          Height = 21
          EditMask = '!99,99;1;0'
          MaxLength = 5
          TabOrder = 6
          Text = ' 1,2 '
        end
        object CheckBoxRazdel: TCheckBox
          Left = 279
          Top = 50
          Width = 130
          Height = 16
          Caption = #1056#1072#1079#1076#1077#1083#1080#1090#1100' '#1062#1077#1085#1099' '#1085#1072
          TabOrder = 7
        end
        object MaskEditRazdel: TMaskEdit
          Left = 418
          Top = 52
          Width = 36
          Height = 21
          EditMask = '!99,99;1;0'
          MaxLength = 5
          TabOrder = 8
          Text = ' 3,  '
        end
        object SpinEditPercent0: TSpinEdit
          Left = 205
          Top = 5
          Width = 43
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 9
          Value = 0
          OnChange = SpinEditPercentChange
        end
        object CheckBoxUmnozh0: TCheckBox
          Left = 13
          Top = 34
          Width = 160
          Height = 16
          Caption = #1059#1084#1085#1086#1078#1080#1090#1100' '#1042#1089#1087#1086#1084'. '#1062#1077#1085#1099' '#1085#1072
          TabOrder = 10
        end
        object MaskEditUmnozh0: TMaskEdit
          Left = 205
          Top = 26
          Width = 35
          Height = 21
          EditMask = '!99,99;1;0'
          MaxLength = 5
          TabOrder = 11
          Text = ' 1,2 '
        end
        object CheckBoxRazdel0: TCheckBox
          Left = 13
          Top = 50
          Width = 125
          Height = 16
          Caption = #1056#1072#1079#1076#1077#1083#1080#1090#1100' '#1062#1077#1085#1099' '#1085#1072
          TabOrder = 12
        end
        object MaskEditRazdel0: TMaskEdit
          Left = 205
          Top = 52
          Width = 36
          Height = 21
          EditMask = '!99,99;1;0'
          MaxLength = 5
          TabOrder = 13
          Text = ' 3,  '
        end
      end
      object Panel1: TPanel
        Left = 523
        Top = -9
        Width = 205
        Height = 306
        TabOrder = 1
        object Label7: TLabel
          Left = 90
          Top = 8
          Width = 109
          Height = 13
          Caption = #1042#1080#1076#1080#1084#1099#1077' '#1050#1086#1083#1086#1085#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label15: TLabel
          Left = 8
          Top = 8
          Width = 63
          Height = 13
          Caption = #1053#1072' '#1055#1077#1095#1072#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CheckBoxKolvoVis: TCheckBox
          Left = 74
          Top = 158
          Width = 77
          Height = 17
          Caption = #1050#1086#1083'-'#1074#1086
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxZenaVis: TCheckBox
          Left = 74
          Top = 174
          Width = 77
          Height = 18
          Caption = #1062#1077#1085#1072
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxFasovkaVis: TCheckBox
          Left = 74
          Top = 108
          Width = 91
          Height = 18
          Caption = #1060#1072#1089#1086#1074#1082#1072
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 2
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxProizvVis: TCheckBox
          Left = 74
          Top = 74
          Width = 91
          Height = 18
          Caption = #1055#1086#1080#1079#1074
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 3
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxEdIzmerVis: TCheckBox
          Left = 74
          Top = 124
          Width = 83
          Height = 18
          Caption = #1045#1076'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxTovarNameVis: TCheckBox
          Left = 74
          Top = 58
          Width = 116
          Height = 17
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 5
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxZenaMinusNdsVis: TCheckBox
          Left = 74
          Top = 191
          Width = 116
          Height = 18
          Caption = #1062#1077#1085#1072' '#1073#1077#1079' '#1053#1044#1057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 6
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxSumVis: TCheckBox
          Left = 74
          Top = 208
          Width = 116
          Height = 17
          Caption = #1057#1091#1084#1084#1072
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 7
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxNdsVis: TCheckBox
          Left = 74
          Top = 224
          Width = 116
          Height = 18
          Caption = #1053#1044#1057
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 8
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxTovarCodVis: TCheckBox
          Left = 74
          Top = 42
          Width = 108
          Height = 16
          Caption = #1050#1086#1076' '#1058#1086#1074#1072#1088#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxNVis: TCheckBox
          Left = 74
          Top = 25
          Width = 108
          Height = 17
          Caption = #8470
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 10
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxZena0Vis: TCheckBox
          Left = 74
          Top = 141
          Width = 116
          Height = 17
          Caption = #1062#1077#1085#1072#1042#1089#1087#1086#1084#1086#1075#1072#1090
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 11
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxPerCentVis: TCheckBox
          Left = 74
          Top = 241
          Width = 116
          Height = 17
          Caption = '%'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 12
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxNPr: TCheckBox
          Left = 8
          Top = 25
          Width = 20
          Height = 17
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 13
        end
        object CheckBoxTovarCodPr: TCheckBox
          Left = 8
          Top = 41
          Width = 20
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 14
        end
        object CheckBoxTovarNamePr: TCheckBox
          Left = 8
          Top = 58
          Width = 20
          Height = 17
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 15
        end
        object CheckBoxProizvPr: TCheckBox
          Left = 8
          Top = 74
          Width = 20
          Height = 18
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 16
        end
        object CheckBoxFasovkaPr: TCheckBox
          Left = 8
          Top = 108
          Width = 20
          Height = 17
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 17
        end
        object CheckBoxEdIzmerPr: TCheckBox
          Left = 8
          Top = 124
          Width = 20
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 18
        end
        object CheckBoxZena0Pr: TCheckBox
          Left = 8
          Top = 141
          Width = 20
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 19
        end
        object CheckBoxKolvoPr: TCheckBox
          Left = 8
          Top = 158
          Width = 20
          Height = 17
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 20
        end
        object CheckBoxZenaPr: TCheckBox
          Left = 8
          Top = 174
          Width = 20
          Height = 18
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 21
        end
        object CheckBoxZenaMinusNdsPr: TCheckBox
          Left = 8
          Top = 191
          Width = 20
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 22
        end
        object CheckBoxSumPr: TCheckBox
          Left = 8
          Top = 208
          Width = 20
          Height = 18
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 23
        end
        object CheckBoxNdsPr: TCheckBox
          Left = 8
          Top = 224
          Width = 20
          Height = 18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        end
        object CheckBoxPerCentPr: TCheckBox
          Left = 8
          Top = 241
          Width = 20
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
        end
        object CheckBoxAgentPr: TCheckBox
          Left = 8
          Top = 91
          Width = 20
          Height = 17
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
        end
        object CheckBoxAgentVis: TCheckBox
          Left = 73
          Top = 91
          Width = 108
          Height = 17
          Caption = #1055#1086#1089#1090#1072#1074#1097
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxRecomPrVis: TCheckBox
          Left = 74
          Top = 257
          Width = 116
          Height = 17
          Caption = #1056#1077#1082#1086#1084#1077#1085#1076'%'
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 28
          OnClick = CheckBoxColumnClick
        end
      end
      object Panel8: TPanel
        Left = 333
        Top = 323
        Width = 436
        Height = 198
        TabOrder = 2
        object Panel10: TPanel
          Left = 1
          Top = 41
          Width = 434
          Height = 156
          Align = alBottom
          TabOrder = 0
          object Panel9: TPanel
            Left = 123
            Top = 9
            Width = 305
            Height = 139
            TabOrder = 0
            object RadioButtonZenaFromParent: TRadioButton
              Left = 8
              Top = 25
              Width = 185
              Height = 17
              Caption = #1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1084#1091' '#1076#1086#1082#1091#1084#1077#1085#1090#1091
              TabOrder = 0
            end
            object RadioButtonZenaFromPanel: TRadioButton
              Left = 8
              Top = 8
              Width = 193
              Height = 17
              Caption = #1055#1072#1085#1077#1083#1080' "'#1055#1086#1076#1089#1090#1072#1074#1083#1103#1090#1100' '#1062#1077#1085#1091'"'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object CheckBox1: TCheckBox
              Left = 25
              Top = 42
              Width = 58
              Height = 16
              Caption = #1062#1077#1085#1072':='
              TabOrder = 2
            end
            object CheckBox2: TCheckBox
              Left = 25
              Top = 90
              Width = 116
              Height = 18
              Caption = #1042#1089#1087#1086#1084#1086#1075#1072#1090'.'#1062#1077#1085#1072':='
              Checked = True
              State = cbChecked
              TabOrder = 3
            end
            object Panel18: TPanel
              Left = 173
              Top = 34
              Width = 124
              Height = 49
              TabOrder = 4
              object RadioButton1: TRadioButton
                Left = 8
                Top = 8
                Width = 59
                Height = 17
                Caption = #1062#1077#1085#1077
                TabOrder = 0
              end
              object RadioButton2: TRadioButton
                Left = 8
                Top = 25
                Width = 108
                Height = 17
                Caption = #1042#1089#1087#1086#1084#1086#1075#1072#1090'.'#1062#1077#1085#1077
                TabOrder = 1
              end
            end
            object Panel19: TPanel
              Left = 173
              Top = 82
              Width = 124
              Height = 51
              TabOrder = 5
              object RadioButton5: TRadioButton
                Left = 8
                Top = 8
                Width = 59
                Height = 17
                Caption = #1062#1077#1085#1077
                Checked = True
                TabOrder = 0
                TabStop = True
              end
              object RadioButton6: TRadioButton
                Left = 8
                Top = 25
                Width = 108
                Height = 17
                Caption = #1042#1089#1087#1086#1084#1086#1075#1072#1090'.'#1062#1077#1085#1077
                TabOrder = 1
              end
            end
          end
          object CheckBoxShapkaFromParent: TCheckBox
            Left = 8
            Top = 33
            Width = 100
            Height = 17
            Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
            TabOrder = 1
          end
          object CheckBoxRecFromParent: TCheckBox
            Left = 8
            Top = 49
            Width = 100
            Height = 18
            Caption = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077
            Checked = True
            State = cbChecked
            TabOrder = 2
            OnClick = CheckBoxRecFromParentClick
          end
          object CheckBoxZenaFromParent: TCheckBox
            Left = 8
            Top = 65
            Width = 108
            Height = 18
            Caption = #1062#1077#1085#1099' '#1057#1086#1075#1083#1072#1089#1085#1086':'
            Checked = True
            State = cbChecked
            TabOrder = 3
            OnClick = CheckBoxRecFromParentClick
          end
        end
        object CheckBoxParentShow: TCheckBox
          Left = 8
          Top = 9
          Width = 233
          Height = 17
          Alignment = taLeftJustify
          Caption = #1042#1099#1074#1086#1076#1080#1090#1100' '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1080#1081' '#1076#1086#1082#1091#1084#1077#1085#1090
          TabOrder = 1
        end
      end
      object Panel13: TPanel
        Left = 734
        Top = 74
        Width = 247
        Height = 83
        TabOrder = 3
        DesignSize = (
          247
          83)
        object ButtonPrepPrint: TButton
          Left = 33
          Top = 49
          Width = 182
          Height = 26
          Anchors = [akLeft, akBottom]
          Caption = #1056#1072#1089#1087#1077#1095#1072#1090#1072#1090#1100' '#1053#1072#1082#1083#1072#1076#1085#1091#1102
          TabOrder = 0
          OnClick = ButtonPrepPrintClick
        end
        object CheckBoxDelNol: TCheckBox
          Left = 33
          Top = 8
          Width = 165
          Height = 17
          Caption = #1055#1088#1086#1073#1077#1083' '#1074#1084#1077#1089#1090#1086' '#1053#1091#1083#1103
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 1
          OnClick = CheckBoxColumnClick
        end
        object CheckBoxOneFile: TCheckBox
          Left = 33
          Top = 25
          Width = 165
          Height = 16
          Caption = #1042' '#1086#1073#1097#1080#1081' '#1092#1072#1081#1083
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          State = cbChecked
          TabOrder = 2
          OnClick = CheckBoxColumnClick
        end
      end
      object Panel14: TPanel
        Left = 2
        Top = 323
        Width = 330
        Height = 53
        TabOrder = 4
        object Label14: TLabel
          Left = 8
          Top = 2
          Width = 77
          Height = 13
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object RadioButtonSortN: TRadioButton
          Left = 8
          Top = 18
          Width = 116
          Height = 17
          Caption = #1055#1086' '#8470
          Checked = True
          TabOrder = 0
          TabStop = True
          OnClick = RadioButtonSortNClick
        end
        object RadioButtonSortName: TRadioButton
          Left = 8
          Top = 35
          Width = 198
          Height = 17
          Caption = #1055#1086' '#1053#1072#1079#1074#1072#1085#1080#1102' '#1058#1086#1074#1072#1088#1072' '#1080' '#1060#1072#1089#1086#1074#1082#1077
          TabOrder = 1
        end
      end
      object Panel4: TPanel
        Left = 730
        Top = 0
        Width = 311
        Height = 61
        TabOrder = 5
        object Label2: TLabel
          Left = 8
          Top = 4
          Width = 297
          Height = 13
          Caption = #1047#1072#1085#1086#1089#1080#1090#1100' '#1062#1077#1085#1091' '#1074' '#1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1058#1086#1074#1072#1088#1086#1074' '#1074' '#1050#1086#1083#1086#1085#1082#1091':'
          WordWrap = True
        end
        object CheckBoxZakupka: TCheckBox
          Left = 8
          Top = 18
          Width = 100
          Height = 17
          Caption = #1047#1072#1082#1091#1087#1082#1072
          TabOrder = 0
          OnClick = CheckBoxZakupkaClick
        end
        object CheckBoxRozn: TCheckBox
          Left = 8
          Top = 34
          Width = 100
          Height = 18
          Caption = #1056#1086#1079#1085#1080#1094#1072
          TabOrder = 1
          OnClick = CheckBoxZakupkaClick
        end
        object CheckBoxMelkOpt: TCheckBox
          Left = 148
          Top = 17
          Width = 100
          Height = 18
          Caption = #1052#1077#1083#1082#1054#1087#1090
          TabOrder = 2
          OnClick = CheckBoxZakupkaClick
        end
        object CheckBoxOpt: TCheckBox
          Left = 148
          Top = 34
          Width = 100
          Height = 18
          Caption = #1054#1087#1090
          TabOrder = 3
          OnClick = CheckBoxZakupkaClick
        end
      end
      object Panel22: TPanel
        Left = 2
        Top = 451
        Width = 330
        Height = 70
        TabOrder = 6
        DesignSize = (
          330
          70)
        object Label11: TLabel
          Left = 8
          Top = 26
          Width = 130
          Height = 13
          Caption = #1053#1072#1095#1080#1085#1072#1103' '#1089#1086' '#1089#1090#1088#1086#1082#1080' '#8470
        end
        object Label12: TLabel
          Left = 8
          Top = 52
          Width = 165
          Height = 13
          Caption = #1055#1086' '#1089#1090#1088#1086#1082#1091' '#8470' '#1074#1082#1083#1102#1095#1080#1090#1077#1083#1100#1085#1086
        end
        object CheckBoxPreSum: TCheckBox
          Left = 8
          Top = 8
          Width = 215
          Height = 17
          Caption = #1042#1099#1095#1080#1089#1083#1077#1085#1080#1077' '#1087#1088#1086#1084#1077#1078#1091#1090#1086#1095#1085#1086#1081' '#1089#1091#1084#1084#1099
          TabOrder = 0
          OnClick = CheckBoxPreSumClick
        end
        object SpinEditPreSum1: TSpinEdit
          Left = 172
          Top = 22
          Width = 51
          Height = 22
          MaxValue = 1000000000
          MinValue = 0
          TabOrder = 1
          Value = 1
        end
        object SpinEditPreSum2: TSpinEdit
          Left = 172
          Top = 45
          Width = 51
          Height = 22
          MaxValue = 1000000000
          MinValue = 0
          TabOrder = 2
          Value = 1
        end
        object MaskEditNaklPreSum: TMaskEdit
          Left = 232
          Top = 14
          Width = 81
          Height = 21
          Anchors = [akLeft, akBottom]
          EditMask = '!99999990,09\ '#1075#1088'.;1; '
          MaxLength = 15
          TabOrder = 3
          Text = '        ,   '#1075#1088'.'
        end
      end
      object Panel2: TPanel
        Left = 2
        Top = 374
        Width = 330
        Height = 74
        TabOrder = 7
        object SpinEditCredit: TSpinEdit
          Left = 139
          Top = 52
          Width = 34
          Height = 22
          MaxValue = 0
          MinValue = 0
          TabOrder = 0
          Value = 0
          OnChange = SpinEditCreditChange
        end
        object StaticText11: TStaticText
          Left = 122
          Top = 37
          Width = 87
          Height = 17
          Caption = #1044#1072#1090#1072' '#1054#1087#1083#1072#1090#1099':'
          TabOrder = 1
        end
        object DateTimePickerDateOplataPolnay: TDateTimePicker
          Left = 197
          Top = 28
          Width = 83
          Height = 21
          Date = 37278.012242476900000000
          Time = 37278.012242476900000000
          TabOrder = 2
          OnChange = DateTimePickerDateOplataPolnayChange
        end
        object RadioButtonKonsig: TRadioButton
          Left = 8
          Top = 58
          Width = 124
          Height = 17
          Caption = #1050#1086#1085#1089#1080#1075#1085#1072#1094#1080#1103' '#1076#1085#1077#1081':'
          TabOrder = 3
        end
        object RadioButtonReal: TRadioButton
          Left = 8
          Top = 42
          Width = 100
          Height = 16
          Caption = #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103
          TabOrder = 4
        end
        object RadioButtonOplach: TRadioButton
          Left = 8
          Top = 8
          Width = 100
          Height = 17
          Caption = #1054#1087#1083#1072#1095#1077#1085#1086
          Checked = True
          TabOrder = 5
          TabStop = True
        end
        object RadioButtonZachet: TRadioButton
          Left = 8
          Top = 25
          Width = 100
          Height = 17
          Caption = #1042#1079#1072#1080#1084#1086#1079#1072#1095#1077#1090
          TabOrder = 6
        end
        object StaticText6: TStaticText
          Left = 123
          Top = 8
          Width = 36
          Height = 17
          Caption = #1050#1091#1088#1089':'
          TabOrder = 7
        end
        object MaskEdit2: TMaskEdit
          Left = 148
          Top = 4
          Width = 50
          Height = 21
          TabOrder = 8
          Text = 'MaskEdit2'
        end
        object StaticText5: TStaticText
          Left = 205
          Top = 8
          Width = 52
          Height = 17
          Caption = #1042#1072#1083#1102#1090#1072':'
          TabOrder = 9
        end
        object ComboBoxValuta: TComboBox
          Left = 255
          Top = 4
          Width = 50
          Height = 21
          ItemHeight = 13
          TabOrder = 10
          Text = #1043#1088'.'
          Items.Strings = (
            #1043#1088'.'
            'USD')
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1055#1088#1086#1074#1077#1088#1082#1080
      ImageIndex = 2
      OnShow = TabSheet3Show
      object Splitter3: TSplitter
        Left = 0
        Top = 83
        Width = 1073
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter4: TSplitter
        Left = 0
        Top = 478
        Width = 1073
        Height = 2
        Cursor = crVSplit
        Align = alBottom
      end
      object Panel20: TPanel
        Left = 0
        Top = 480
        Width = 1073
        Height = 43
        Align = alBottom
        TabOrder = 0
        object DBNavigator2: TDBNavigator
          Left = 17
          Top = 8
          Width = 108
          Height = 26
          DataSource = DataSourceCheck
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 0
        end
        object ButtonSaveSql: TButton
          Left = 288
          Top = 8
          Width = 270
          Height = 26
          Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1047#1072#1087#1088#1086#1089#1072' '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083
          TabOrder = 1
          OnClick = ButtonSaveSqlClick
        end
      end
      object Panel21: TPanel
        Left = 0
        Top = 0
        Width = 1073
        Height = 83
        Align = alTop
        TabOrder = 1
        object Button1: TButton
          Left = 345
          Top = 17
          Width = 108
          Height = 25
          Caption = #1055#1086#1076#1089#1095#1080#1090#1072#1090#1100
          TabOrder = 0
          OnClick = Button1Click
        end
        object RadioGroup1: TRadioGroup
          Left = 8
          Top = 8
          Width = 321
          Height = 67
          TabOrder = 1
        end
        object RadioButton11: TRadioButton
          Left = 17
          Top = 25
          Width = 115
          Height = 17
          Caption = #1057#1087#1080#1089#1086#1082' '#1057#1099#1085#1086#1074#1077#1081
          Checked = True
          TabOrder = 2
          TabStop = True
          OnClick = RadioButtonCheckClick
        end
        object RadioButton12: TRadioButton
          Left = 17
          Top = 42
          Width = 305
          Height = 16
          Caption = #1053#1077#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1080#1077' '#1054#1090#1077#1094'-'#1057#1091#1084#1072#1088#1085#1086#1077' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1091' '#1089#1099#1085#1086#1074
          TabOrder = 3
          OnClick = RadioButtonCheckClick
        end
      end
      object DBGridCheck: TDBGrid
        Left = 0
        Top = 86
        Width = 1073
        Height = 392
        Align = alClient
        DataSource = DataSourceCheck
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1040#1074#1090#1086#1047#1072#1087#1086#1083#1085#1077#1085#1080#1077
      ImageIndex = 3
      object Panel11: TPanel
        Left = 8
        Top = 17
        Width = 246
        Height = 91
        TabOrder = 0
        DesignSize = (
          246
          91)
        object Label8: TLabel
          Left = 17
          Top = 8
          Width = 193
          Height = 52
          Caption = 
            #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1053#1072#1082#1083#1072#1076#1085#1091#1102' '#1089#1087#1080#1089#1082#1086#1084' '#1090#1086#1074#1072#1088#1086#1074' '#1074' '#1089#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1090#1077#1082#1091#1097#1077#1081' '#1092#1080#1083#1100 +
            #1090#1088#1072#1094#1080#1077#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1058#1086#1074#1072#1088#1086#1074
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object ButtonFromTovar: TButton
          Left = 90
          Top = 58
          Width = 67
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1044#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = ButtonFromTovarClick
        end
      end
      object Panel12: TPanel
        Left = 271
        Top = 17
        Width = 246
        Height = 91
        TabOrder = 1
        DesignSize = (
          246
          91)
        object Label9: TLabel
          Left = 17
          Top = 8
          Width = 142
          Height = 26
          Caption = #1059#1076#1072#1083#1080#1090#1100' '#1042#1089#1077' '#1047#1072#1087#1080#1089#1080' '#1080#1079' '#1053#1072#1082#1083#1072#1076#1085#1086#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clMaroon
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object ButtonDelAll: TButton
          Left = 90
          Top = 58
          Width = 67
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1044#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = ButtonDelAllClick
        end
      end
      object Panel23: TPanel
        Left = 8
        Top = 115
        Width = 247
        Height = 91
        TabOrder = 2
        object Label16: TLabel
          Left = 17
          Top = 8
          Width = 178
          Height = 26
          Caption = #1044#1086#1087#1086#1083#1085#1080#1090#1100' '#1086#1089#1090#1072#1090#1082#1080' '#1089#1090#1088#1086#1082#1072#1084#1080' '#1087#1088#1080#1093#1086#1076#1072' '#1080' '#1087#1077#1088#1077#1084#1077#1097#1077#1085#1080#1103
          WordWrap = True
        end
        object ButtonDopOstatok: TButton
          Left = 74
          Top = 58
          Width = 74
          Height = 25
          Caption = #1044#1072
          Enabled = False
          TabOrder = 0
          OnClick = ButtonDopOstatokClick
        end
      end
      object Panel24: TPanel
        Left = 8
        Top = 213
        Width = 247
        Height = 100
        TabOrder = 3
        object Label17: TLabel
          Left = 17
          Top = 8
          Width = 211
          Height = 39
          Caption = 
            #1047#1072#1087#1086#1083#1085#1080#1090#1100' '#1085#1072#1082#1083#1072#1076#1085#1091#1102' '#1089#1090#1088#1086#1082#1072#1084#1080' '#1087#1086#1089#1083#1077#1076#1085#1077#1075#1086' ('#1085#1077' '#1085#1091#1083#1077#1074#1086#1075#1086') '#1054#1089#1090#1072#1090#1082#1072' + ' +
            #1055#1088#1080#1093#1086#1076
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object ButtonNo0: TButton
          Left = 74
          Top = 58
          Width = 74
          Height = 25
          Caption = #1044#1072
          TabOrder = 0
          OnClick = ButtonNo0Click
        end
      end
      object Panel25: TPanel
        Left = 533
        Top = 17
        Width = 246
        Height = 91
        TabOrder = 4
        DesignSize = (
          246
          91)
        object Label18: TLabel
          Left = 17
          Top = 8
          Width = 142
          Height = 26
          Caption = #1054#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1089#1086#1076#1077#1088#1078#1080#1084#1086#1077' '#1085#1072#1082#1083#1072#1076#1085#1086#1081
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          WordWrap = True
        end
        object ButtonSort: TButton
          Left = 90
          Top = 58
          Width = 67
          Height = 25
          Anchors = [akLeft, akBottom]
          Caption = #1044#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = ButtonSortClick
        end
      end
    end
  end
  object PrintDialog1: TPrintDialog
    Left = 888
    Top = 344
  end
  object SaveDialog1: TSaveDialog
    Left = 924
    Top = 344
  end
  object Query1: TQuery
    DatabaseName = 'MyDataBase'
    SQL.Strings = (
      'Select NName.NaklName as '#1053#1072#1082#1083#1072#1076#1085#1072#1103', '
      '                    NSon.DocN as '#1053#1086#1084#1077#1088','
      '                    NSon."DocDate"  as '#1044#1072#1090#1072','
      '                    NSon.Cod as '#1050#1086#1076','
      '                    AFrom.AgentName as '#1054#1090#1087#1088','
      '                    UFrom.UnitName as '#1054#1090#1087#1088#1055#1086#1076#1088#1072#1079#1076#1077#1083','
      '                    ATo.AgentName as '#1055#1086#1083#1091#1090#1077#1083#1100','
      '                    UTo.UnitName as '#1055#1086#1083#1091#1055#1086#1076#1088#1072#1079#1076#1077#1083','
      '                    NSon."Sum" as '#1057#1091#1084#1084#1072
      ''
      'From Nakl NSon,'
      '     Agent  AFrom, Agent  ATo,'
      '     Unit  UFrom, Unit  UTo,'
      '     NaklName NName'
      ''
      ''
      'Where  '
      '           NSon.Cod in (Select P.SonCod'
      '                                       From  Parent P'
      
        '                                       Where P.ParentCod=:Parent' +
        'Cod ) and'
      '         NSon.AgentCodFrom= AFrom.Cod      and'
      '         NSon.AgentCodTo    = ATo.Cod      and'
      '         NSon.UnitCodFrom    = UFrom.Cod   and'
      '         NSon.UnitCodTo          = UTo.Cod and'
      '         NSon.Kind=NName.Cod')
    Left = 988
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ParentCod'
        ParamType = ptUnknown
      end>
  end
  object DataSourceCheck: TDataSource
    Left = 1092
    Top = 248
  end
  object Query2: TQuery
    DatabaseName = 'MyDataBase'
    SQL.Strings = (
      'SELECT         NNameParent.NaklName, NParent.DocN as '#1054#1090#1077#1094'N,'
      '                          RParent.N,'
      '                          T.TovarName, T.Fasovka,'
      '                            RParent.Kolvo as '#1054#1090#1077#1094#1050#1086#1083#1074#1086','
      '                           NNameSon.NaklName,'
      '                          sum(RSon.Kolvo) as '#1050#1086#1083#1074#1086#1059#1057#1099#1085#1086#1074' ,'
      
        '                          RParent.Kolvo- sum(RSon.Kolvo) as '#1056#1072#1079#1085 +
        #1080#1094#1072
      ''
      ''
      'From Nakl NSon, RecNakl RSon,'
      '           Nakl NParent, RecNakl RParent,'
      '           Tovar T, NaklName NNameParent, NaklName NNameSon'
      ''
      'where  RSon.NaklCod=NSon.Cod and'
      ''
      '       NSon.Cod in (Select P.SonCod'
      '                    From   Parent P'
      '                    Where  P.ParentCod=:ParentCod1 ) and'
      ''
      '       RParent.NaklCod=NParent.Cod and'
      '       RSon.TovarCod=RParent.TovarCod and'
      
        '       RSon.TovarCod=T.Cod and NNameParent.Cod=NParent.Kind and ' +
        'NNameSon.Cod=NSon.Kind'
      '       and NParent.Cod=:ParentCod2 and'
      '          RParent.Kolvo<>(Select sum(RSubSon.Kolvo)'
      '                          From   RecNakl RSubSon'
      '                          Where  RSubSon.NaklCod'
      '                           in (Select P.SonCod'
      '                                                 From   Parent P'
      
        '                                                 Where  P.Parent' +
        'Cod='
      ''
      '                                                 ) and'
      
        '                                                        RSubSon.' +
        'TovarCod=RParent.TovarCod'
      '                                                 )'
      '                                            '
      'Group by NNameParent.NaklName, NParent.DocN, '
      '                          RParent.N,  '
      '                          T.TovarName, T.Fasovka, '
      '                            RParent.Kolvo ,'
      '                           NNameSon.NaklName'
      'union'
      ''
      ''
      'SELECT         NNameParent.NaklName, NParent.DocN as '#1054#1090#1077#1094'N,'
      '                          RParent.N,'
      '                          T.TovarName, T.Fasovka,'
      '                          RParent.Kolvo as '#1054#1090#1077#1094#1050#1086#1083#1074#1086','
      '                          '#39'               '#39',0,0'
      ''
      '                              '
      #9#9' '
      'From '
      '           Nakl NParent, RecNakl RParent,'
      '           Tovar T, NaklName NNameParent'
      ''
      'where '
      '          RParent.TovarCod Not In (Select RSubSon.TovarCod'
      '                          From   RecNakl RSubSon'
      
        '                          Where  RSubSon.NaklCod in (Select P.So' +
        'nCod'
      '                                                 From   Parent P'
      
        '                                                 Where  P.Parent' +
        'Cod='
      ''
      '                                                 )) and'
      '  RParent.NaklCod=NParent.Cod and'
      '  NParent.Kind=NNameParent.Cod and'
      ''
      
        '       RParent.TovarCod=T.Cod and  NNameParent.Cod=NParent.Kind ' +
        'and'
      ''
      '  NParent.Cod=:ParentCod3 ;')
    Left = 1052
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ParentCod1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ParentCod2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ParentCod3'
        ParamType = ptUnknown
      end>
  end
  object QueryNaklPreSum: TQuery
    DatabaseName = 'MyDataBase'
    SessionName = 'Default'
    SQL.Strings = (
      'Select   sum(Rec.Kolvo*Rec.Zena) SumAll,'
      '         sum(Rec.Kolvo*Rec.Zena0) SumAll0,'
      
        #9#9'     100*(1-Sum(Rec.Kolvo*Rec.Zena0)/Sum(Rec.Kolvo*Rec.Zena)) ' +
        'PerCent'
      'From     RecNakl Rec'#9#9' '
      ''
      'where   Rec.NaklCod =:NaklCod and'
      '             Rec.N>=:N1 and  Rec.N<=:N2'
      '')
    Left = 936
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NaklCod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'N1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'N2'
        ParamType = ptUnknown
      end>
    object CurrencyField4: TCurrencyField
      FieldName = 'SumAll'
      DisplayFormat = '0.00'#39#1075#1088'.'#39
    end
    object CurrencyField5: TCurrencyField
      FieldName = 'SumAll0'
      DisplayFormat = '0.00'#39#1075#1088'.'#39
    end
    object CurrencyField6: TCurrencyField
      FieldName = 'PerCent'
      DisplayFormat = '0.00'
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 988
    Top = 248
    object N1: TMenuItem
      Caption = #1047#1072#1085#1077#1089#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1086#1074#1072#1088#1086#1074' '#1042' '#1082#1086#1083#1086#1085#1082#1091' '#1047#1072#1082#1091#1087#1086#1095#1085#1072#1103' '#1062#1077#1085#1072
      OnClick = PopUpClick
    end
    object N2: TMenuItem
      Caption = #1047#1072#1085#1077#1089#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1086#1074#1072#1088#1086#1074' '#1042' '#1082#1086#1083#1086#1085#1082#1091' '#1056#1086#1079#1085#1080#1095#1085#1072#1103' '#1062#1077#1085#1072
      OnClick = PopUpClick
    end
    object N3: TMenuItem
      Caption = 
        #1047#1072#1085#1077#1089#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1086#1074#1072#1088#1086#1074' '#1042' '#1082#1086#1083#1086#1085#1082#1091' '#1052#1077#1083#1082#1086#1054#1087#1090#1086#1074#1072#1103' '#1062#1077#1085 +
        #1072
      OnClick = PopUpClick
    end
    object N4: TMenuItem
      Caption = #1047#1072#1085#1077#1089#1090#1080' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1074' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#1090#1086#1074#1072#1088#1086#1074' '#1042' '#1082#1086#1083#1086#1085#1082#1091' '#1054#1087#1090#1086#1074#1072#1103' '#1062#1077#1085#1072
      OnClick = PopUpClick
    end
  end
  object QueryDopOstatok: TQuery
    DatabaseName = 'MyDataBase'
    SQL.Strings = (
      
        ' select distinct T.Cod,T.TovarName,T.Fasovka, P.ProizvName, A.Ag' +
        'entName'
      ' from  Nakl NPr, RecNakl RPr,Tovar T, Proizv P,Agent A'
      ''
      ' where RPr.NaklCod=NPr.Cod and'
      '  NPr.UnitCodTo =:UnitCod  and /* 3-85, 6-21*/'
      
        '              (NPr.Kind=3 or NPr.Kind=5) and   /* 3-Prihod, 5-Pe' +
        'rem*/'
      '              RPr.TovarCod=T.Cod and'
      '              T.ProizvCod=P.Cod and'
      '             T.AgentCod=A.Cod and'
      ''
      '             RPr.TovarCod Not in'
      ''
      '            (select ROst.TovarCod'
      '             from      Nakl NOst,  RecNakl ROst'
      '              where ROst.NaklCod=NOst.Cod and '
      '             NOst.Cod=:NOstCod'
      '                         )'
      ''
      'Order by T.TovarName, T.Fasovka, P.ProizvName, A.AgentName')
    Left = 1092
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UnitCod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOstCod'
        ParamType = ptUnknown
      end>
  end
  object QueryZapOstatok: TQuery
    DatabaseName = 'MyDataBase'
    SQL.Strings = (
      'SELECT  T.TovarName, T.Fasovka, P.ProizvName, T.ZenaOpt, T.Cod'
      'From      RecNakl Rec ,'#9#9#9#9#9'  '
      #9#9#9'Nakl N,  '
      #9#9#9'Tovar T, Proizv P'
      ''
      'where'
      #9#9#9#9#9#9#9'  N.Cod=Rec.NaklCod and'
      #9#9#9#9#9#9#9'  N.Kind=3 and    /*Prihod  */'
      #9#9#9#9#9#9#9'  N.UnitCodTo=:UnitCod   and'
      
        #9#9#9#9#9#9#9'  ((N.DocDate>:DocDate1) or ((N.DocDate=:DocDate2) and (N' +
        '.DocTime>:DocTime))) and'
      ' Rec.TovarCod=T.Cod and T.ProizvCod=P.Cod '
      ' '
      'union'
      ''
      'SELECT  T.TovarName, T.Fasovka, P.ProizvName, T.ZenaOpt, T.Cod'
      'From      RecNakl Ost , Nakl O,'#9#9#9#9#9'  '
      #9#9#9
      #9#9#9'Tovar T, Proizv P'
      'where'
      #9#9#9#9#9#9#9'  O.Cod=Ost.NaklCod and'
      #9#9#9#9#9#9#9'  O.Cod=:NOstCod and'
      #9#9#9'          Ost.Kolvo>0 and'
      ''
      #9#9#9#9'  Ost.TovarCod=T.Cod and T.ProizvCod=P.Cod '
      ''
      ''
      'Order BY  T.TovarName, T.Fasovka, P.ProizvName'
      '')
    Left = 1044
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'UnitCod'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DocDate1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DocDate2'
        ParamType = ptUnknown
      end
      item
        DataType = ftTime
        Name = 'DocTime'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOstCod'
        ParamType = ptUnknown
      end>
  end
  object QueryMaxNaklN: TQuery
    DatabaseName = 'MyDataBase'
    SQL.Strings = (
      'Select   Max(Nakl.DocN) DocN'
      ''
      'From     Nakl N'
      ''
      'where   N.AgentCodFrom = :AgentCodFrom and'
      '        N.UnitCodFrom  = :UnitCodFrom  and'
      '        N.Kind         = :NaklKind  and'
      '        N.AgentCodTo   = :AgentCodTo and'
      '        N.UnitCodTo    = :UnitCodTo')
    Left = 940
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'AgentCodFrom'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UnitCodFrom'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NaklKind'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'AgentCodTo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'UnitCodTo'
        ParamType = ptUnknown
      end>
  end
  object QuerySort: TQuery
    DatabaseName = 'MyDataBase'
    SQL.Strings = (
      'SELECT T.TovarName, T.Fasovka, P.ProizvName, Rec.N, Rec.Cod'
      'From      RecNakl Rec, Tovar T, Proizv P'
      ''
      'where   Rec.NaklCod =:NaklCod and'
      '        Rec.TovarCod=T.Cod and T.ProizvCod=P.Cod'
      ''
      'Order BY  T.TovarName, T.Fasovka, P.ProizvName')
    Left = 884
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NaklCod'
        ParamType = ptUnknown
      end>
  end
  object QueryLocate: TQuery
    DatabaseName = 'MyDataBase'
    SQL.Strings = (
      'SELECT T.TovarName, T.Fasovka, P.ProizvName, Rec.N, Rec.Cod'
      'From      RecNakl Rec, Tovar T, Proizv P'
      ''
      'where   Rec.NaklCod =:NaklCod and'
      '        Rec.TovarCod=T.Cod and T.ProizvCod=P.Cod'
      '')
    Left = 884
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NaklCod'
        ParamType = ptUnknown
      end>
  end
end
