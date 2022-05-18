object BalansForm: TBalansForm
  Left = 51
  Top = 23
  Width = 1160
  Height = 630
  Caption = #1055#1077#1088#1077#1091#1095#1077#1090
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Reference Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 96
  TextHeight = 15
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1144
    Height = 591
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1077#1088#1077#1091#1095#1077#1090
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 534
        Align = alTop
        Caption = 'Panel4'
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 1134
          Height = 42
          Align = alTop
          TabOrder = 1
          DesignSize = (
            1134
            42)
          object Label3: TLabel
            Left = 37
            Top = 13
            Width = 32
            Height = 15
            Anchors = [akLeft, akTop, akRight]
            Caption = #1040#1075#1077#1085#1090
          end
          object Label1: TLabel
            Left = 542
            Top = 13
            Width = 93
            Height = 15
            Anchors = [akLeft, akTop, akRight]
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
          end
          object ComboBoxAgent: TComboBox
            Left = 158
            Top = 13
            Width = 292
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 0
            OnClick = ComboBoxAgentClick
          end
          object ComboBoxUnit: TComboBox
            Left = 657
            Top = 13
            Width = 291
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 1
            OnClick = ComboBoxUnitClick
            OnDropDown = ComboBoxUnitDropDown
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 43
          Width = 1134
          Height = 348
          Align = alClient
          TabOrder = 0
          object Splitter1: TSplitter
            Left = 481
            Top = 1
            Height = 346
          end
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 480
            Height = 346
            Align = alLeft
            Caption = #1053#1072#1095#1072#1083#1086' '#1054#1090#1089#1095#1077#1090#1072
            TabOrder = 0
            DesignSize = (
              480
              346)
            object Label11: TLabel
              Left = 242
              Top = 33
              Width = 17
              Height = 15
              Anchors = [akLeft, akTop, akRight]
              Caption = #1086#1090':'
            end
            object RadioButton1: TRadioButton
              Left = 8
              Top = 17
              Width = 116
              Height = 17
              Caption = #1054#1090' '#1053#1072#1095#1072#1083#1072
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RadioButtonClick
            end
            object RadioButton2: TRadioButton
              Left = 8
              Top = 33
              Width = 165
              Height = 17
              Caption = #1054#1090' '#1053#1072#1082#1083#1072#1076#1085#1086#1081' '#1054#1089#1090#1072#1090#1082#1086#1074' '#8470
              TabOrder = 1
              OnClick = RadioButtonClick
            end
            object DBGridNakl1: TDBGrid
              Left = 2
              Top = 53
              Width = 476
              Height = 291
              Align = alBottom
              DataSource = DM.DataSourceNakl
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -12
              Font.Name = 'MS Reference Sans Serif'
              Font.Style = []
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ParentFont = False
              ReadOnly = True
              TabOrder = 2
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -15
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBGridNakl1CellClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DocN'
                  Width = 39
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DocDate'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DocTime'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Sum'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Pr'
                  Width = 74
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cod'
                  Width = 64
                  Visible = True
                end>
            end
            object EditDocN1: TEdit
              Left = 193
              Top = 25
              Width = 41
              Height = 23
              TabOrder = 3
            end
            object EditDocDate1: TEdit
              Left = 258
              Top = 25
              Width = 67
              Height = 23
              TabOrder = 4
            end
            object EditDocTime1: TEdit
              Left = 332
              Top = 25
              Width = 66
              Height = 23
              TabOrder = 5
            end
          end
          object GroupBox1: TGroupBox
            Left = 484
            Top = 1
            Width = 649
            Height = 346
            Align = alClient
            Caption = #1050#1086#1085#1077#1094' '#1055#1077#1088#1077#1091#1095#1077#1090#1072' '#1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1054#1089#1090#1072#1090#1082#1086#1074
            TabOrder = 1
            DesignSize = (
              649
              346)
            object Label2: TLabel
              Left = 17
              Top = 33
              Width = 158
              Height = 15
              Caption = #1044#1086' '#1053#1072#1082#1083#1072#1076#1085#1086#1081' '#1054#1089#1090#1072#1090#1082#1086#1074' '#8470
            end
            object Label12: TLabel
              Left = 235
              Top = 33
              Width = 17
              Height = 15
              Anchors = [akLeft, akTop, akRight]
              Caption = #1086#1090':'
            end
            object SpeedButtonNow: TSpeedButton
              Left = 399
              Top = 25
              Width = 24
              Height = 20
              Hint = #1058#1077#1082#1091#1097#1080#1077' '#1044#1072#1090#1072' '#1042#1088#1077#1084#1103
              Glyph.Data = {
                76010000424D7601000000000000760000002800000020000000100000000100
                04000000000000010000120B0000120B00001000000000000000000000000000
                800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
                3333333333FFFFF3333333333000003333333333F77777FFF333333009999900
                3333333777777777FF33330998FFF899033333777333F3777FF33099FFFCFFF9
                903337773337333777F3309FFFFFFFCF9033377333F3337377FF098FF0FFFFFF
                890377F3373F3333377F09FFFF0FFFFFF90377F3F373FFFFF77F09FCFFF90000
                F90377F733377777377F09FFFFFFFFFFF90377F333333333377F098FFFFFFFFF
                890377FF3F33333F3773309FCFFFFFCF9033377F7333F37377F33099FFFCFFF9
                90333777FF37F3377733330998FCF899033333777FF7FF777333333009999900
                3333333777777777333333333000003333333333377777333333}
              NumGlyphs = 2
              ParentShowHint = False
              ShowHint = True
              OnClick = SpeedButtonNowClick
            end
            object EditDocN2: TEdit
              Left = 178
              Top = 25
              Width = 41
              Height = 23
              TabOrder = 0
            end
            object EditDocDate2: TEdit
              Left = 252
              Top = 25
              Width = 66
              Height = 23
              TabOrder = 1
            end
            object EditDocTime2: TEdit
              Left = 325
              Top = 25
              Width = 67
              Height = 23
              TabOrder = 2
            end
            object DBGridNakl2: TDBGrid
              Left = 2
              Top = 50
              Width = 645
              Height = 294
              Align = alBottom
              DataSource = DM.DataSourceNaklOstatok2
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
              ReadOnly = True
              TabOrder = 3
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Reference Sans Serif'
              TitleFont.Style = []
              OnCellClick = DBGridNakl2CellClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'DocN'
                  Width = 39
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DocDate'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'DocTime'
                  Width = 64
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Sum'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Pr'
                  Width = 72
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cod'
                  Width = 64
                  Visible = True
                end>
            end
          end
        end
        object Panel5: TPanel
          Left = 1
          Top = 391
          Width = 1134
          Height = 142
          Align = alBottom
          TabOrder = 2
          object Label5: TLabel
            Left = 8
            Top = 17
            Width = 165
            Height = 15
            Caption = #1057#1091#1084#1084#1072' '#1054#1089#1090#1072#1090#1086#1082#1086#1074' '#1085#1072' '#1085#1072#1095#1072#1083#1086
          end
          object Label6: TLabel
            Left = 8
            Top = 41
            Width = 92
            Height = 15
            Caption = #1057#1091#1084#1084#1072' '#1055#1088#1080#1093#1086#1076#1072
          end
          object Label7: TLabel
            Left = 8
            Top = 66
            Width = 113
            Height = 15
            Caption = #1057#1091#1084#1084#1072' '#1055#1077#1088#1077#1086#1094#1077#1085#1082#1080
          end
          object Label8: TLabel
            Left = 493
            Top = 41
            Width = 84
            Height = 15
            Caption = #1057#1091#1084#1084#1072' '#1042#1099#1087#1083#1072#1090
          end
          object Label9: TLabel
            Left = 493
            Top = 17
            Width = 159
            Height = 15
            Caption = #1057#1091#1084#1084#1072' '#1054#1089#1090#1072#1090#1086#1082#1086#1074' '#1085#1072' '#1082#1086#1085#1077#1094
          end
          object Label10: TLabel
            Left = 493
            Top = 66
            Width = 122
            Height = 15
            Caption = #1057#1091#1084#1084#1072' '#1055#1077#1088#1077#1084#1077#1097#1077#1085#1080#1081
          end
          object Label4: TLabel
            Left = 435
            Top = 115
            Width = 42
            Height = 15
            Caption = #1041#1072#1083#1072#1085#1089
          end
          object Label13: TLabel
            Left = 763
            Top = 17
            Width = 21
            Height = 15
            Caption = #1047#1072#1082
          end
          object Label14: TLabel
            Left = 288
            Top = 17
            Width = 21
            Height = 15
            Caption = #1047#1072#1082
          end
          object Label15: TLabel
            Left = 288
            Top = 41
            Width = 21
            Height = 15
            Caption = #1047#1072#1082
          end
          object Label16: TLabel
            Left = 763
            Top = 66
            Width = 21
            Height = 15
            Caption = #1047#1072#1082
          end
          object Label19: TLabel
            Left = 763
            Top = 41
            Width = 22
            Height = 15
            Caption = #1044#1086#1093
          end
          object Label20: TLabel
            Left = 493
            Top = 90
            Width = 38
            Height = 15
            Caption = #1048#1090#1086#1075' +'
            Color = clBtnFace
            ParentColor = False
          end
          object Label21: TLabel
            Left = 8
            Top = 90
            Width = 34
            Height = 15
            Caption = #1048#1090#1086#1075' -'
            Color = clBtnFace
            ParentColor = False
          end
          object MaskEditOstatok2: TMaskEdit
            Left = 665
            Top = 12
            Width = 98
            Height = 23
            EditMask = '!#########0,00\ ;1; '
            MaxLength = 14
            TabOrder = 0
            Text = '          ,   '
          end
          object MaskEditOstatok1: TMaskEdit
            Left = 188
            Top = 12
            Width = 100
            Height = 23
            EditMask = '!#########0,00\ ;1; '
            MaxLength = 14
            TabOrder = 1
            Text = '          ,   '
          end
          object MaskEditPrihod: TMaskEdit
            Left = 188
            Top = 36
            Width = 100
            Height = 23
            EditMask = '!#########0,00\ ;1; '
            MaxLength = 14
            TabOrder = 2
            Text = '          ,   '
          end
          object ButtonBalans: TButton
            Left = 353
            Top = 107
            Width = 77
            Height = 26
            Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
            TabOrder = 3
            OnClick = ButtonBalansClick
          end
          object MaskEditBalans: TMaskEdit
            Left = 484
            Top = 110
            Width = 101
            Height = 23
            EditMask = '!#########0,00\ ;1; '
            MaxLength = 14
            TabOrder = 4
            Text = '          ,   '
          end
          object MaskEditPereOzenka: TMaskEdit
            Left = 188
            Top = 61
            Width = 100
            Height = 23
            EditMask = '!#########0,00\ ;1; '
            MaxLength = 14
            TabOrder = 5
            Text = '          ,   '
          end
          object MaskEditCashTo: TMaskEdit
            Left = 665
            Top = 36
            Width = 98
            Height = 23
            EditMask = '!#########0,00\ ;1; '
            MaxLength = 14
            TabOrder = 6
            Text = '          ,   '
          end
          object MaskEditPerem: TMaskEdit
            Left = 665
            Top = 61
            Width = 98
            Height = 23
            EditMask = '!#########0,00\ ;1; '
            MaxLength = 14
            TabOrder = 7
            Text = '          ,   '
          end
          object MaskEditOstatokZakupka2: TMaskEdit
            Left = 788
            Top = 12
            Width = 87
            Height = 23
            EditMask = '!##########0,00\ ;1; '
            MaxLength = 15
            TabOrder = 8
            Text = '           ,   '
          end
          object MaskEditOstatokZakupka1: TMaskEdit
            Left = 312
            Top = 12
            Width = 87
            Height = 23
            EditMask = '!##########0,00\ ;1; '
            MaxLength = 15
            TabOrder = 9
            Text = '           ,   '
          end
          object MaskEditPrihodZakupka: TMaskEdit
            Left = 312
            Top = 36
            Width = 87
            Height = 23
            EditMask = '!##########0,00\ ;1; '
            MaxLength = 15
            TabOrder = 10
            Text = '           ,   '
          end
          object MaskEditPeremZakupka: TMaskEdit
            Left = 788
            Top = 61
            Width = 87
            Height = 23
            EditMask = '!##########0,00\ ;1; '
            MaxLength = 15
            TabOrder = 11
            Text = '           ,   '
          end
          object MaskEditPrihodPerCent: TMaskEdit
            Left = 402
            Top = 36
            Width = 61
            Height = 23
            EditMask = '!##0,00\ %;1; '
            MaxLength = 8
            TabOrder = 12
            Text = '   ,   %'
          end
          object MaskEditOstatokPerCent1: TMaskEdit
            Left = 402
            Top = 12
            Width = 61
            Height = 23
            EditMask = '!##0,00\ %;1; '
            MaxLength = 8
            TabOrder = 13
            Text = '   ,   %'
          end
          object MaskEditOstatokPerCent2: TMaskEdit
            Left = 878
            Top = 10
            Width = 61
            Height = 23
            EditMask = '!##0,00\ %;1; '
            MaxLength = 8
            TabOrder = 14
            Text = '   ,   %'
          end
          object MaskEditPeremPerCent: TMaskEdit
            Left = 878
            Top = 59
            Width = 61
            Height = 23
            EditMask = '!##0,00\ %;1; '
            MaxLength = 8
            TabOrder = 15
            Text = '   ,   %'
          end
          object MaskEditPereOzenkaPerCent: TMaskEdit
            Left = 402
            Top = 61
            Width = 61
            Height = 23
            EditMask = '!##0,00\ %;1; '
            MaxLength = 8
            TabOrder = 16
            Text = '   ,   %'
          end
          object MaskEditDohodPerCent: TMaskEdit
            Left = 878
            Top = 35
            Width = 61
            Height = 23
            EditMask = '!##0,00\ %;1; '
            MaxLength = 8
            TabOrder = 17
            Text = '   ,   %'
          end
          object MaskEditDohod: TMaskEdit
            Left = 788
            Top = 36
            Width = 87
            Height = 23
            Hint = #1044#1086#1093#1086#1076' '#1089' '#1091#1095#1077#1090#1086#1084' '#1053#1077#1076#1086#1089#1090#1072#1095#1080
            EditMask = '!##########0,00\ ;1; '
            MaxLength = 15
            ParentShowHint = False
            ShowHint = True
            TabOrder = 18
            Text = '           ,   '
          end
          object MaskEditPlus: TMaskEdit
            Left = 665
            Top = 85
            Width = 98
            Height = 23
            EditMask = '!#########0,00\ ;1; '
            MaxLength = 14
            TabOrder = 19
            Text = '          ,   '
          end
          object MaskEditMinus: TMaskEdit
            Left = 188
            Top = 85
            Width = 100
            Height = 23
            EditMask = '!#########0,00\ ;1; '
            MaxLength = 14
            TabOrder = 20
            Text = '          ,   '
          end
          object Button1: TButton
            Left = 821
            Top = 107
            Width = 93
            Height = 26
            Caption = #1055#1077#1095#1072#1090#1100' '#1074' '#1092#1072#1081#1083
            TabOrder = 21
            OnClick = Button1Click
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 519
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter4: TSplitter
          Left = 1
          Top = 58
          Width = 1134
          Height = 4
          Cursor = crVSplit
          Align = alTop
        end
        object DBGridPrihodNakl: TDBGrid
          Left = 1
          Top = 62
          Width = 1134
          Height = 456
          Align = alClient
          DataSource = DM.DataSourcePrihodNakl
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Reference Sans Serif'
          TitleFont.Style = []
        end
        object Panel9: TPanel
          Left = 1
          Top = 1
          Width = 1134
          Height = 57
          Align = alTop
          TabOrder = 1
          object Label22: TLabel
            Left = 345
            Top = 17
            Width = 52
            Height = 15
            Caption = #1054#1073#1098#1077#1082#1090': '
          end
          object ComboBoxNaklKind1: TComboBox
            Left = 17
            Top = 8
            Width = 189
            Height = 23
            DropDownCount = 12
            ItemHeight = 15
            TabOrder = 0
          end
          object ButtonPrihodNakl: TButton
            Left = 623
            Top = 8
            Width = 78
            Height = 26
            Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
            TabOrder = 1
            OnClick = ButtonPrihodNaklClick
          end
          object StaticText2: TStaticText
            Left = 213
            Top = 8
            Width = 4
            Height = 4
            TabOrder = 2
          end
          object RadioGroup1: TRadioGroup
            Left = 213
            Top = 0
            Width = 125
            Height = 50
            TabOrder = 3
          end
          object RadioButton3: TRadioButton
            Left = 222
            Top = 8
            Width = 91
            Height = 18
            Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
            Checked = True
            TabOrder = 4
            TabStop = True
          end
          object RadioButton4: TRadioButton
            Left = 222
            Top = 25
            Width = 91
            Height = 17
            Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
            TabOrder = 5
          end
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 519
        Width = 1136
        Height = 42
        Align = alBottom
        TabOrder = 1
        DesignSize = (
          1136
          42)
        object ButtonSavePrihodNakl: TButton
          Left = 288
          Top = 8
          Width = 271
          Height = 26
          Anchors = [akLeft, akBottom]
          Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1047#1072#1087#1088#1086#1089#1072' '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083
          TabOrder = 0
          OnClick = ButtonSavePrihodNaklClick
        end
        object DBNavigator1: TDBNavigator
          Left = 33
          Top = 8
          Width = 104
          Height = 26
          DataSource = DM.DataSourcePrihodNakl
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akLeft, akBottom]
          TabOrder = 1
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1057#1086#1076#1077#1088#1078#1080#1084#1086#1077#1053#1072#1082#1083#1072#1076#1085#1099#1093
      ImageIndex = 2
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 519
        Align = alClient
        Caption = 'Panel1'
        TabOrder = 0
        object Splitter5: TSplitter
          Left = 1
          Top = 58
          Width = 1134
          Height = 4
          Cursor = crVSplit
          Align = alTop
        end
        object DBGridPrihodTovar: TDBGrid
          Left = 1
          Top = 62
          Width = 1134
          Height = 456
          Align = alClient
          DataSource = DM.DataSourcePrihodTovar
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Reference Sans Serif'
          TitleFont.Style = []
          OnKeyDown = DBGridPrihodTovarKeyDown
          OnKeyPress = DBGridPrihodTovarKeyPress
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 1134
          Height = 57
          Align = alTop
          TabOrder = 1
          object Splitter13: TSplitter
            Left = 658
            Top = 1
            Height = 55
          end
          object Panel31: TPanel
            Left = 1
            Top = 1
            Width = 657
            Height = 55
            Align = alLeft
            TabOrder = 0
            object Label23: TLabel
              Left = 345
              Top = 8
              Width = 52
              Height = 15
              Caption = #1054#1073#1098#1077#1082#1090': '
            end
            object Label26: TLabel
              Left = 394
              Top = 8
              Width = 124
              Height = 15
              Caption = '                               '
            end
            object ButtonPrihodTovar: TButton
              Left = 343
              Top = 33
              Width = 76
              Height = 20
              Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
              TabOrder = 0
              OnClick = ButtonPrihodTovarClick
            end
            object ComboBoxNaklKind2: TComboBox
              Left = 17
              Top = 8
              Width = 189
              Height = 23
              DropDownCount = 12
              ItemHeight = 15
              TabOrder = 1
            end
            object RadioGroup2: TRadioGroup
              Left = 213
              Top = 0
              Width = 125
              Height = 50
              TabOrder = 2
            end
            object RadioButton5: TRadioButton
              Left = 222
              Top = 8
              Width = 91
              Height = 18
              Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
              Checked = True
              Enabled = False
              TabOrder = 3
              TabStop = True
            end
            object RadioButton6: TRadioButton
              Left = 222
              Top = 25
              Width = 91
              Height = 17
              Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
              Enabled = False
              TabOrder = 4
            end
          end
          object Panel32: TPanel
            Left = 661
            Top = 1
            Width = 472
            Height = 55
            Align = alClient
            TabOrder = 1
            object StaticText1: TStaticText
              Left = 8
              Top = 8
              Width = 39
              Height = 19
              Caption = #1055#1086#1080#1089#1082
              TabOrder = 0
            end
            object EditPrihodTovarLocate: TEdit
              Left = 49
              Top = 4
              Width = 149
              Height = 23
              Hint = 
                #1053#1072#1093#1086#1076#1080#1090' '#1087#1077#1088#1074#1091#1102' '#1089#1090#1088#1086#1082#1091', '#1075#1076#1077' '#1085#1072#1079#1074#1072#1085#1080#1077' '#1090#1086#1074#1072#1088#1072' '#1085#1072#1095#1080#1085#1072#1077#1090#1089#1103' '#1089'  '#1074#1074#1077#1076#1077#1085#1085 +
                #1086#1075#1086' '#1090#1077#1082#1089#1090#1072
              ParentShowHint = False
              ShowHint = True
              TabOrder = 1
              OnChange = EditPrihodTovarLocateChange
            end
            object CheckBoxPrihodTovarUpper: TCheckBox
              Left = 6
              Top = 33
              Width = 207
              Height = 17
              Caption = #1044#1077#1083#1072#1090#1100' 1-'#1102' '#1073#1091#1082#1074#1091' '#1087#1088#1086#1087#1080#1089#1085#1086#1081
              Checked = True
              State = cbChecked
              TabOrder = 2
            end
            object EditLike: TEdit
              Left = 246
              Top = 4
              Width = 149
              Height = 23
              Hint = 
                #1042#1099#1074#1086#1076#1080#1090' '#1090#1086#1083#1100#1082#1086' '#1090#1077' '#1090#1086#1074#1072#1088#1099' '#1074' '#1085#1072#1079#1074#1072#1085#1080#1080' '#1082#1086#1090#1086#1088#1099#1093' '#1077#1089#1090#1100' '#1074#1074#1077#1076#1077#1085#1085#1099#1081' '#1090#1077#1082#1089#1090 +
                ' '#1074' '#1083#1102#1073#1086#1084' '#1084#1077#1089#1090#1077'. '#1056#1077#1075#1080#1089#1090#1088' '#1080#1084#1077#1077#1090' '#1079#1085#1072#1095#1077#1085#1080#1077'.'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnChange = LikeEditChange
            end
            object CheckBoxLike: TCheckBox
              Left = 244
              Top = 30
              Width = 206
              Height = 18
              Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1087#1086#1076#1089#1090#1088#1086#1081#1082#1077
              TabOrder = 4
              OnClick = LikeCheckChange
            end
          end
        end
      end
      object Panel14: TPanel
        Left = 0
        Top = 519
        Width = 1136
        Height = 42
        Align = alBottom
        TabOrder = 1
        object ButtonSavePrihodTovar: TButton
          Left = 295
          Top = 8
          Width = 306
          Height = 26
          Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1047#1072#1087#1088#1086#1089#1072' '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083
          TabOrder = 0
          OnClick = ButtonSavePrihodNaklClick
        end
        object DBNavigator2: TDBNavigator
          Left = 17
          Top = 8
          Width = 108
          Height = 26
          DataSource = DM.DataSourcePrihodTovar
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1059#1089#1088#1077#1076#1085#1077#1085#1086#1077#1057#1086#1076#1077#1088#1078#1080#1084#1086#1077
      ImageIndex = 5
      object Splitter6: TSplitter
        Left = 0
        Top = 58
        Width = 1136
        Height = 5
        Cursor = crVSplit
        Align = alTop
      end
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 58
        Align = alTop
        TabOrder = 0
        object Label24: TLabel
          Left = 345
          Top = 17
          Width = 52
          Height = 15
          Caption = #1054#1073#1098#1077#1082#1090': '
        end
        object RadioGroup3: TRadioGroup
          Left = 213
          Top = 0
          Width = 125
          Height = 50
          TabOrder = 4
        end
        object ComboBoxNaklKind3: TComboBox
          Left = 17
          Top = 8
          Width = 189
          Height = 23
          DropDownCount = 12
          ItemHeight = 15
          TabOrder = 0
        end
        object ButtonPrihodTovarGroup: TButton
          Left = 648
          Top = 8
          Width = 77
          Height = 26
          Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
          TabOrder = 1
          OnClick = ButtonPrihodTovarGroupClick
        end
        object RadioButton9: TRadioButton
          Left = 222
          Top = 8
          Width = 91
          Height = 18
          Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
          Checked = True
          Enabled = False
          TabOrder = 2
          TabStop = True
        end
        object RadioButton10: TRadioButton
          Left = 222
          Top = 25
          Width = 91
          Height = 17
          Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
          Enabled = False
          TabOrder = 3
        end
      end
      object DBGridPrihodTovarGroup: TDBGrid
        Left = 0
        Top = 63
        Width = 1136
        Height = 456
        Align = alClient
        DataSource = DM.DataSourcePrihodTovarGroup
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Reference Sans Serif'
        TitleFont.Style = []
      end
      object Panel15: TPanel
        Left = 0
        Top = 519
        Width = 1136
        Height = 42
        Align = alBottom
        TabOrder = 2
        object ButtonSavePrihodTovarGroup: TButton
          Left = 303
          Top = 8
          Width = 272
          Height = 26
          Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1047#1072#1087#1088#1086#1089#1072' '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083
          TabOrder = 0
          OnClick = ButtonSavePrihodNaklClick
        end
        object DBNavigator3: TDBNavigator
          Left = 17
          Top = 8
          Width = 108
          Height = 26
          DataSource = DM.DataSourcePrihodTovarGroup
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1072
      ImageIndex = 3
      object Splitter7: TSplitter
        Left = 0
        Top = 75
        Width = 1136
        Height = 4
        Cursor = crVSplit
        Align = alTop
      end
      object Panel12: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 75
        Align = alTop
        TabOrder = 0
        object ButtonProdazha: TButton
          Left = 542
          Top = 17
          Width = 76
          Height = 25
          Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
          TabOrder = 0
          OnClick = ButtonProdazhaClick
        end
        object GroupBox3: TGroupBox
          Left = 0
          Top = 0
          Width = 141
          Height = 58
          Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
          TabOrder = 1
          object RadioButtonSortName: TRadioButton
            Left = 8
            Top = 17
            Width = 116
            Height = 17
            Caption = #1087#1086' '#1080#1084#1077#1085#1080
            TabOrder = 0
            OnClick = RadioButtonSortClick
          end
          object RadioButtonSortPrib: TRadioButton
            Left = 8
            Top = 33
            Width = 116
            Height = 17
            Caption = #1087#1086' '#1087#1088#1080#1073#1099#1083#1100#1085#1086#1089#1090#1080
            Checked = True
            TabOrder = 1
            TabStop = True
            OnClick = RadioButtonSortClick
          end
        end
        object Panel24: TPanel
          Left = 148
          Top = 8
          Width = 378
          Height = 42
          TabOrder = 2
          object CheckBoxFilter: TCheckBox
            Left = 8
            Top = 8
            Width = 346
            Height = 18
            Caption = #1042' '#1089#1086#1090#1074#1077#1090#1089#1090#1074#1080#1080' '#1089' '#1090#1077#1082#1091#1097#1077#1081' '#1092#1080#1083#1100#1090#1088#1072#1094#1080#1077#1081' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1058#1086#1074#1072#1088#1086#1074
            TabOrder = 0
          end
        end
      end
      object DBGridProdazha: TDBGrid
        Left = 0
        Top = 79
        Width = 1136
        Height = 440
        Align = alClient
        DataSource = DM.DataSourceProdazha
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Reference Sans Serif'
        TitleFont.Style = []
      end
      object Panel16: TPanel
        Left = 0
        Top = 519
        Width = 1136
        Height = 42
        Align = alBottom
        TabOrder = 2
        DesignSize = (
          1136
          42)
        object ButtonSaveProdazha: TButton
          Left = 301
          Top = 8
          Width = 272
          Height = 26
          Anchors = [akLeft, akBottom]
          Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1047#1072#1087#1088#1086#1089#1072' '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083
          TabOrder = 0
          OnClick = ButtonSavePrihodNaklClick
        end
        object DBNavigatorProdazha: TDBNavigator
          Left = 17
          Top = 9
          Width = 108
          Height = 25
          DataSource = DM.DataSourceProdazha
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1053#1072#1082#1083#1072#1076#1085#1099#1077' '#1042#1099#1087#1083#1072#1090
      ImageIndex = 3
      object Splitter2: TSplitter
        Left = 0
        Top = 42
        Width = 1136
        Height = 3
        Cursor = crVSplit
        Align = alTop
      end
      object Splitter3: TSplitter
        Left = 0
        Top = 516
        Width = 1136
        Height = 3
        Cursor = crVSplit
        Align = alBottom
      end
      object Splitter10: TSplitter
        Left = 575
        Top = 45
        Height = 471
      end
      object Panel7: TPanel
        Left = 0
        Top = 519
        Width = 1136
        Height = 42
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          1136
          42)
        object Button2: TButton
          Left = 722
          Top = 8
          Width = 206
          Height = 26
          Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1080#1077' '#1090#1072#1073#1083#1080#1094#1099' Parent'
          Enabled = False
          TabOrder = 0
          Visible = False
          OnClick = Button2Click
        end
        object ButtonSaveCashNakl: TButton
          Left = 288
          Top = 8
          Width = 313
          Height = 26
          Anchors = [akLeft, akBottom]
          Caption = #1047#1072#1087#1080#1089#1072#1090#1100' '#1088#1077#1079#1091#1083#1100#1090#1072#1090' '#1047#1072#1087#1088#1086#1089#1072' '#1074' '#1090#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083
          TabOrder = 1
          OnClick = ButtonSaveCashNaklClick
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 42
        Align = alTop
        TabOrder = 1
        object Label25: TLabel
          Left = 213
          Top = 8
          Width = 84
          Height = 15
          Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100': '
        end
        object ComboBoxNaklKind4: TComboBox
          Left = 17
          Top = 8
          Width = 189
          Height = 23
          DropDownCount = 12
          ItemHeight = 15
          TabOrder = 0
        end
        object ButtonCashToNakl: TButton
          Left = 722
          Top = 8
          Width = 77
          Height = 26
          Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
          TabOrder = 1
          OnClick = ButtonCashToNaklClick
        end
      end
      object Panel22: TPanel
        Left = 0
        Top = 45
        Width = 575
        Height = 471
        Align = alLeft
        TabOrder = 2
        object Splitter9: TSplitter
          Left = 1
          Top = 280
          Width = 573
          Height = 4
          Cursor = crVSplit
          Align = alTop
        end
        object DBGridCashTo: TDBGrid
          Left = 1
          Top = 1
          Width = 573
          Height = 279
          Align = alTop
          DataSource = DM.DataSourceCashTo
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Reference Sans Serif'
          TitleFont.Style = []
        end
        object DBGridCashToTovar: TDBGrid
          Left = 1
          Top = 284
          Width = 573
          Height = 186
          Align = alClient
          DataSource = DM.DataSourceCashToTovar
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Reference Sans Serif'
          TitleFont.Style = []
        end
      end
      object Panel23: TPanel
        Left = 578
        Top = 45
        Width = 558
        Height = 471
        Align = alClient
        TabOrder = 3
        object DBGridCashToTovarGroup: TDBGrid
          Left = 1
          Top = 1
          Width = 556
          Height = 469
          Align = alClient
          DataSource = DM.DataSourceCashToTovarGoup
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Reference Sans Serif'
          TitleFont.Style = []
        end
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1047#1072#1082#1091#1087#1082#1072
      ImageIndex = 6
      object Splitter8: TSplitter
        Left = 0
        Top = 50
        Width = 1136
        Height = 4
        Cursor = crVSplit
        Align = alTop
      end
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 1136
        Height = 50
        Align = alTop
        TabOrder = 0
        object Splitter12: TSplitter
          Left = 419
          Top = 1
          Width = 4
          Height = 48
        end
        object Panel29: TPanel
          Left = 1
          Top = 1
          Width = 418
          Height = 48
          Align = alLeft
          TabOrder = 0
          DesignSize = (
            418
            48)
          object CheckBoxAgentFrom: TCheckBox
            Left = 8
            Top = 17
            Width = 125
            Height = 17
            Caption = #1047#1072#1082#1091#1087#1082#1072' '#1086#1090' '#1040#1075#1077#1085#1090#1072' '
            TabOrder = 0
          end
          object ComboBoxAgentFrom: TComboBox
            Left = 132
            Top = 13
            Width = 140
            Height = 23
            Style = csDropDownList
            Anchors = [akLeft, akTop, akRight]
            DropDownCount = 14
            ItemHeight = 15
            TabOrder = 1
            OnClick = ComboBoxAgentFromClick
          end
          object ButtonZakupka: TButton
            Left = 328
            Top = 8
            Width = 77
            Height = 26
            Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
            TabOrder = 2
            OnClick = ButtonZakupkaClick
          end
        end
        object Panel30: TPanel
          Left = 423
          Top = 1
          Width = 712
          Height = 48
          Align = alClient
          TabOrder = 1
          object StaticText4: TStaticText
            Left = 8
            Top = 8
            Width = 39
            Height = 19
            Caption = #1055#1086#1080#1089#1082
            TabOrder = 0
          end
          object EditLocate: TEdit
            Left = 49
            Top = 4
            Width = 149
            Height = 26
            TabOrder = 1
            OnChange = EditLocateChange
          end
          object CheckBoxUpper: TCheckBox
            Left = 205
            Top = 8
            Width = 207
            Height = 18
            Caption = #1044#1077#1083#1072#1090#1100' 1-'#1102' '#1073#1091#1082#1074#1091' '#1087#1088#1086#1087#1080#1089#1085#1086#1081
            Checked = True
            State = cbChecked
            TabOrder = 2
          end
        end
      end
      object Panel18: TPanel
        Left = 0
        Top = 519
        Width = 1136
        Height = 42
        Align = alBottom
        TabOrder = 1
      end
      object DBGridZakupka: TDBGrid
        Left = 0
        Top = 54
        Width = 1136
        Height = 465
        Align = alClient
        DataSource = DM.DataSourceZakupka
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Reference Sans Serif'
        TitleFont.Style = []
        OnKeyDown = DBGridZakupkaKeyDown
        OnKeyPress = DBGridZakupkaKeyPress
      end
    end
    object TabSheet8: TTabSheet
      Caption = #1056#1072#1089#1093#1086#1076#1099
      ImageIndex = 7
      object Panel19: TPanel
        Left = 0
        Top = 0
        Width = 973
        Height = 42
        Align = alTop
        TabOrder = 0
        object Button3: TButton
          Left = 369
          Top = 8
          Width = 77
          Height = 26
          Caption = #1055#1086#1076#1089#1095#1080#1090#1072#1090#1100
          TabOrder = 0
          OnClick = Button3Click
        end
      end
      object Panel20: TPanel
        Left = 0
        Top = 484
        Width = 973
        Height = 42
        Align = alBottom
        TabOrder = 1
      end
      object Panel21: TPanel
        Left = 0
        Top = 42
        Width = 973
        Height = 442
        Align = alClient
        TabOrder = 2
        object Splitter11: TSplitter
          Left = 468
          Top = 1
          Width = 4
          Height = 441
        end
        object Panel25: TPanel
          Left = 1
          Top = 1
          Width = 467
          Height = 441
          Align = alLeft
          Caption = 'Panel25'
          TabOrder = 0
          object Panel27: TPanel
            Left = 1
            Top = 1
            Width = 466
            Height = 33
            Align = alTop
            TabOrder = 0
            object Label17: TLabel
              Left = 156
              Top = 8
              Width = 123
              Height = 15
              Caption = #1056#1072#1089#1093#1086#1076#1099' '#1080#1079' '#1074#1099#1088#1091#1095#1082#1080
            end
          end
          object DBGridRas: TDBGrid
            Left = 1
            Top = 34
            Width = 466
            Height = 406
            Align = alClient
            DataSource = DM.DataSourceRas
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Reference Sans Serif'
            TitleFont.Style = []
          end
        end
        object Panel26: TPanel
          Left = 472
          Top = 1
          Width = 500
          Height = 441
          Align = alClient
          Caption = 'Panel26'
          TabOrder = 1
          object Panel28: TPanel
            Left = 1
            Top = 1
            Width = 498
            Height = 33
            Align = alTop
            TabOrder = 0
            object Label18: TLabel
              Left = 181
              Top = 8
              Width = 93
              Height = 15
              Caption = #1056#1072#1089#1093#1086#1076#1099' '#1054#1092#1080#1089#1072
            end
          end
          object DBGridRasOf: TDBGrid
            Left = 1
            Top = 34
            Width = 498
            Height = 406
            Align = alClient
            DataSource = DM.DataSourceRasOf
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Reference Sans Serif'
            TitleFont.Style = []
          end
        end
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 12
    Top = 112
  end
end
