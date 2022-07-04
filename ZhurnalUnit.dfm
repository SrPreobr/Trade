object ZhurnalForm: TZhurnalForm
  Left = 21
  Top = 28
  Width = 1223
  Height = 612
  ActiveControl = DBGrid1
  Caption = #1046#1091#1088#1085#1072#1083
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Reference Sans Serif'
  Font.Style = [fsBold]
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
    Width = 1207
    Height = 573
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1046#1091#1088#1085#1072#1083
      object DBGrid1: TDBGrid
        Left = 0
        Top = 141
        Width = 1199
        Height = 361
        Align = alClient
        DataSource = DM.DataSourceZhurnal
        DefaultDrawing = False
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Reference Sans Serif'
        TitleFont.Style = [fsBold]
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'Date'
            Title.Caption = #1044#1072#1090#1072' '#1055#1088#1072#1074#1082#1080
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Time'
            Title.Caption = #1042#1088#1077#1084#1103' '#1055#1088#1072#1074#1082#1080
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KindName'
            Title.Caption = #1044#1086#1082#1091#1084#1077#1085#1090
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocN'
            Title.Caption = #8470
            Width = 68
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocDate'
            Title.Caption = #1044#1072#1090#1072' '#1044#1086#1082'-'#1090#1072
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Sum'
            Title.Caption = #1057#1091#1084#1084#1072
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DocCod'
            Title.Caption = #1050#1086#1076' '#1053#1072#1082#1083#1072#1076#1085#1086#1081
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Deystv'
            Title.Caption = #1044#1077#1081#1089#1090#1074#1080#1077
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AgentNameFrom'
            Title.Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UnitNameFrom'
            Title.Caption = #1086#1090' '#1055#1086#1076#1088'-'#1085#1080#1103
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SkladNameFrom'
            Title.Caption = #1089#1086' '#1057#1082#1083#1072#1076#1072
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SotrudnNameFrom'
            Title.Caption = #1054#1090#1087#1091#1089#1090#1080#1083
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AgentNameTo'
            Title.Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UnitNameTo'
            Title.Caption = #1074' '#1055#1086#1076#1088'-'#1085#1080#1077
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SkladNameTo'
            Title.Caption = #1085#1072' '#1057#1082#1083#1072#1076
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SotrudnNameTo'
            Title.Caption = #1055#1086#1083#1091#1095#1080#1083
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Oplata'
            PickList.Strings = (
              #1054#1087#1083#1072#1095#1077#1085#1086
              #1056#1077#1072#1083#1080#1079#1072#1094#1080#1103)
            Title.Caption = #1054#1087#1083#1072#1090#1072
            Width = 30
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OplataSum'
            Title.Caption = #1057#1091#1084#1084#1072#1054#1087#1083
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DateOplata'
            Title.Caption = #1044#1072#1090#1072#1054#1087#1083
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Pr'
            Title.Caption = #1055#1088#1080#1084'.'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SonCod'
            Title.Caption = #1050#1086#1076#1057#1099#1085#1072
            Width = 64
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1199
        Height = 141
        Align = alTop
        Caption = 'Panel5'
        TabOrder = 1
        object Panel2: TPanel
          Left = 1
          Top = 1
          Width = 755
          Height = 139
          Align = alLeft
          TabOrder = 0
          object StaticText2: TStaticText
            Left = 0
            Top = 0
            Width = 112
            Height = 19
            Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086':'
            TabOrder = 0
          end
          object ComboBoxTipDoc: TComboBox
            Left = 115
            Top = 33
            Width = 133
            Height = 23
            Style = csDropDownList
            DropDownCount = 12
            ItemHeight = 15
            TabOrder = 1
            OnChange = FilterChange
          end
          object ComboBoxSotrudnTo: TComboBox
            Left = 615
            Top = 82
            Width = 133
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 2
            OnChange = FilterChange
            OnDropDown = ComboBoxSkladDropDown
          end
          object ComboBoxDeystv: TComboBox
            Left = 115
            Top = 82
            Width = 133
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 3
            OnChange = FilterChange
          end
          object CheckBoxSotrudnTo: TCheckBox
            Left = 517
            Top = 82
            Width = 83
            Height = 17
            Caption = #1055#1086#1083#1091#1095#1080#1083
            TabOrder = 4
            OnClick = FilterChange
          end
          object CheckBoxTipDoc: TCheckBox
            Left = 8
            Top = 41
            Width = 105
            Height = 17
            Caption = #1058#1080#1087' '#1044#1086#1082'-'#1090#1072
            TabOrder = 5
            OnClick = FilterChange
          end
          object CheckBoxDeystv: TCheckBox
            Left = 8
            Top = 86
            Width = 84
            Height = 17
            Caption = #1044#1077#1081#1089#1090#1074#1080#1077
            TabOrder = 6
            OnClick = FilterChange
          end
          object CheckBoxDate: TCheckBox
            Left = 8
            Top = 17
            Width = 108
            Height = 17
            Caption = #1044#1072#1090#1072' '#1055#1088#1072#1074#1082#1080
            TabOrder = 7
            OnClick = FilterChange
          end
          object DateTimePicker1: TDateTimePicker
            Left = 115
            Top = 8
            Width = 133
            Height = 23
            Date = 37487.953758217600000000
            Time = 37487.953758217600000000
            TabOrder = 8
            OnChange = FilterChange
          end
          object CheckBoxDocDate: TCheckBox
            Left = 8
            Top = 62
            Width = 105
            Height = 17
            Caption = #1044#1072#1090#1072' '#1044#1086#1082'-'#1090#1072
            TabOrder = 9
            OnClick = FilterChange
          end
          object DateTimePickerDocDate: TDateTimePicker
            Left = 115
            Top = 58
            Width = 133
            Height = 23
            Date = 37487.953758217600000000
            Time = 37487.953758217600000000
            TabOrder = 10
            OnChange = FilterChange
          end
          object CheckBoxUnitTo: TCheckBox
            Left = 517
            Top = 37
            Width = 83
            Height = 17
            Caption = #1055#1086#1076#1088'-'#1085#1080#1077
            TabOrder = 11
            OnClick = FilterChange
          end
          object ComboBoxUnitTo: TComboBox
            Left = 615
            Top = 33
            Width = 133
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 12
            OnChange = FilterChange
            OnDropDown = ComboBoxUnitDropDown
          end
          object CheckBoxAgentTo: TCheckBox
            Left = 517
            Top = 13
            Width = 91
            Height = 17
            Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
            TabOrder = 13
            OnClick = FilterChange
          end
          object ComboBoxAgentTo: TComboBox
            Left = 617
            Top = 8
            Width = 131
            Height = 23
            Style = csDropDownList
            DropDownCount = 15
            ItemHeight = 15
            TabOrder = 14
            OnChange = FilterChange
          end
          object CheckBoxSkladTo: TCheckBox
            Left = 517
            Top = 58
            Width = 83
            Height = 17
            Caption = #1057#1082#1083#1072#1076
            TabOrder = 15
            OnClick = FilterChange
          end
          object ComboBoxSkladTo: TComboBox
            Left = 615
            Top = 58
            Width = 133
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 16
            OnChange = FilterChange
            OnDropDown = ComboBoxSkladDropDown
          end
          object CheckBoxAgentFrom: TCheckBox
            Left = 263
            Top = 13
            Width = 99
            Height = 17
            Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
            TabOrder = 17
            OnClick = FilterChange
          end
          object CheckBoxUnitFrom: TCheckBox
            Left = 263
            Top = 37
            Width = 83
            Height = 17
            Caption = #1055#1086#1076#1088'-'#1085#1080#1077
            TabOrder = 18
            OnClick = FilterChange
          end
          object CheckBoxSkladFrom: TCheckBox
            Left = 263
            Top = 58
            Width = 83
            Height = 17
            Caption = #1057#1082#1083#1072#1076
            TabOrder = 19
            OnClick = FilterChange
          end
          object CheckBoxSotrudnFrom: TCheckBox
            Left = 263
            Top = 82
            Width = 83
            Height = 17
            Caption = #1054#1090#1087#1091#1089#1090#1080#1083
            TabOrder = 20
            OnClick = FilterChange
          end
          object ComboBoxAgentFrom: TComboBox
            Left = 369
            Top = 8
            Width = 133
            Height = 23
            Style = csDropDownList
            DropDownCount = 15
            ItemHeight = 15
            TabOrder = 21
            OnChange = FilterChange
          end
          object ComboBoxUnitFrom: TComboBox
            Left = 369
            Top = 33
            Width = 133
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 22
            OnChange = FilterChange
            OnDropDown = ComboBoxUnitDropDown
          end
          object ComboBoxSkladFrom: TComboBox
            Left = 369
            Top = 58
            Width = 133
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 23
            OnChange = FilterChange
            OnDropDown = ComboBoxSkladDropDown
          end
          object ComboBoxSotrudnFrom: TComboBox
            Left = 369
            Top = 82
            Width = 133
            Height = 23
            Style = csDropDownList
            ItemHeight = 15
            TabOrder = 24
            OnChange = FilterChange
            OnDropDown = ComboBoxSkladDropDown
          end
          object CheckBoxDocCod: TCheckBox
            Left = 8
            Top = 111
            Width = 84
            Height = 17
            Caption = #1050#1086#1076
            TabOrder = 25
            OnClick = FilterChange
          end
          object SpinEditDocCod: TSpinEdit
            Left = 115
            Top = 107
            Width = 133
            Height = 24
            MaxValue = 1000000000
            MinValue = 0
            TabOrder = 26
            Value = 1
            OnChange = SpinEditDocCodChange
          end
          object CheckBoxDocNs: TCheckBox
            Left = 263
            Top = 111
            Width = 50
            Height = 17
            Caption = #8470' '#1089
            TabOrder = 27
            OnClick = FilterChange
          end
          object CheckBoxDocNpo: TCheckBox
            Left = 517
            Top = 111
            Width = 58
            Height = 17
            Caption = #8470' '#1055#1086
            TabOrder = 28
            OnClick = FilterChange
          end
          object SpinEditDocNs: TSpinEdit
            Left = 369
            Top = 110
            Width = 133
            Height = 24
            MaxValue = 1000000000
            MinValue = 0
            TabOrder = 29
            Value = 1
            OnChange = SpinEditDocCodChange
          end
          object SpinEditDocNpo: TSpinEdit
            Left = 615
            Top = 110
            Width = 133
            Height = 24
            MaxValue = 1000000000
            MinValue = 0
            TabOrder = 30
            Value = 1
            OnChange = SpinEditDocCodChange
          end
        end
        object Panel3: TPanel
          Left = 756
          Top = 1
          Width = 442
          Height = 139
          Align = alClient
          TabOrder = 1
          object StaticText1: TStaticText
            Left = 8
            Top = 0
            Width = 63
            Height = 17
            Caption = #1055#1086#1080#1089#1082' '#1087#1086':'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
          end
          object SpinEditN: TSpinEdit
            Left = 66
            Top = 17
            Width = 82
            Height = 22
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxValue = 1000000000
            MinValue = 0
            ParentFont = False
            TabOrder = 1
            Value = 1
            OnChange = SpinEditNChange
          end
          object CheckBoxFindDate: TCheckBox
            Left = 8
            Top = 49
            Width = 51
            Height = 18
            Caption = #1044#1072#1090#1072
            TabOrder = 2
            OnClick = FilterChange
          end
          object DateTimePicker2: TDateTimePicker
            Left = 65
            Top = 41
            Width = 83
            Height = 23
            Date = 37487.953758217600000000
            Time = 37487.953758217600000000
            TabOrder = 3
            OnChange = DateTimePicker2Change
          end
          object CheckBoxN: TCheckBox
            Left = 8
            Top = 25
            Width = 51
            Height = 17
            Caption = #8470
            TabOrder = 4
            OnClick = SpinEditNChange
          end
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 502
        Width = 1199
        Height = 41
        Align = alBottom
        TabOrder = 2
        DesignSize = (
          1199
          41)
        object Label13: TLabel
          Left = 387
          Top = 8
          Width = 46
          Height = 15
          Anchors = [akLeft, akBottom]
          Caption = #1042#1089#1087#1086#1084':'
        end
        object Label2: TLabel
          Left = 633
          Top = 8
          Width = 54
          Height = 15
          Anchors = [akLeft, akBottom]
          Caption = #1054#1087#1083#1072#1090#1072':'
        end
        object Label3: TLabel
          Left = 801
          Top = 8
          Width = 62
          Height = 15
          Anchors = [akLeft, akBottom]
          Caption = #1047#1072#1082'-'#1054#1087#1083':'
        end
        object DBNavigator1: TDBNavigator
          Left = 1
          Top = 8
          Width = 200
          Height = 26
          DataSource = DM.DataSourceNakl
          Anchors = [akLeft, akBottom]
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object ButtonClose: TButton
          Left = 988
          Top = 8
          Width = 81
          Height = 26
          Anchors = [akLeft, akBottom]
          Caption = #1047#1072#1082#1088#1099#1090#1100
          TabOrder = 1
          OnClick = ButtonCloseClick
        end
        object MaskEditNaklsSum: TMaskEdit
          Left = 268
          Top = 8
          Width = 109
          Height = 23
          Anchors = [akLeft, akBottom]
          EditMask = '!########0,00\ ;1; '
          MaxLength = 13
          TabOrder = 2
          Text = '         ,   '
        end
        object StaticText9: TStaticText
          Left = 208
          Top = 8
          Width = 52
          Height = 19
          Anchors = [akLeft, akBottom]
          Caption = #1057#1091#1084#1084#1072':'
          TabOrder = 3
        end
        object MaskEditNaklsSum0: TMaskEdit
          Left = 438
          Top = 8
          Width = 104
          Height = 23
          Anchors = [akLeft, akBottom]
          EditMask = '!#########0,00\ ;1; '
          MaxLength = 14
          TabOrder = 4
          Text = '          ,   '
        end
        object MaskEditPerCents: TMaskEdit
          Left = 548
          Top = 8
          Width = 57
          Height = 23
          Anchors = [akLeft, akBottom]
          EditMask = '!##0,00\ %;1; '
          MaxLength = 8
          TabOrder = 5
          Text = '   ,   %'
        end
        object MaskEditSumOplata: TMaskEdit
          Left = 683
          Top = 8
          Width = 105
          Height = 23
          Anchors = [akLeft, akBottom]
          EditMask = '!#########0,00\ ;1; '
          MaxLength = 14
          TabOrder = 6
          Text = '          ,   '
        end
        object MaskEditRaznica: TMaskEdit
          Left = 867
          Top = 8
          Width = 105
          Height = 23
          Anchors = [akLeft, akBottom]
          EditMask = '!#########0,00\ ;1; '
          MaxLength = 14
          TabOrder = 7
          Text = '          ,   '
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1059#1089#1090#1072#1085#1086#1074#1082#1080
      ImageIndex = 1
      object Panel1: TPanel
        Left = 8
        Top = 17
        Width = 265
        Height = 206
        TabOrder = 0
        object Label1: TLabel
          Left = 8
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
        object CheckBoxAgentFromVis: TCheckBox
          Left = 132
          Top = 33
          Width = 117
          Height = 17
          Caption = #1054#1090#1087#1088#1072#1074#1080#1090#1077#1083#1100
          Checked = True
          State = cbChecked
          TabOrder = 0
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxUnitFromVis: TCheckBox
          Left = 132
          Top = 49
          Width = 117
          Height = 18
          Caption = #1055#1086#1076#1088'-'#1085#1080#1077
          TabOrder = 1
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxUnitToVis: TCheckBox
          Left = 132
          Top = 132
          Width = 101
          Height = 16
          Caption = #1055#1086#1076#1088'-'#1085#1080#1077
          TabOrder = 2
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxSkladFromVis: TCheckBox
          Left = 132
          Top = 66
          Width = 76
          Height = 17
          Caption = #1057#1082#1083#1072#1076
          TabOrder = 3
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxSkladToVis: TCheckBox
          Left = 132
          Top = 148
          Width = 76
          Height = 17
          Caption = #1057#1082#1083#1072#1076
          TabOrder = 4
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxSumVis: TCheckBox
          Left = 8
          Top = 115
          Width = 77
          Height = 18
          Caption = #1057#1091#1084#1084#1072
          Checked = True
          State = cbChecked
          TabOrder = 5
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxTimeVis: TCheckBox
          Left = 8
          Top = 49
          Width = 121
          Height = 18
          Caption = #1042#1088#1077#1084#1103' '#1055#1088#1072#1074#1082#1080
          TabOrder = 6
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxTipDocVis: TCheckBox
          Left = 8
          Top = 66
          Width = 113
          Height = 17
          Caption = #1058#1080#1087' '#1044#1086#1082'-'#1090#1072
          Checked = True
          State = cbChecked
          TabOrder = 7
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxDocNVis: TCheckBox
          Left = 8
          Top = 82
          Width = 91
          Height = 17
          Caption = #8470
          Checked = True
          State = cbChecked
          TabOrder = 8
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxAgentToVis: TCheckBox
          Left = 132
          Top = 115
          Width = 109
          Height = 18
          Caption = #1055#1086#1083#1091#1095#1072#1090#1077#1083#1100
          Checked = True
          State = cbChecked
          TabOrder = 9
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxDocDateVis: TCheckBox
          Left = 8
          Top = 98
          Width = 113
          Height = 18
          Caption = #1044#1072#1090#1072' '#1044#1086#1082'-'#1090#1072
          Checked = True
          State = cbChecked
          TabOrder = 10
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxDocCodVis: TCheckBox
          Left = 8
          Top = 148
          Width = 100
          Height = 17
          Caption = #1050#1086#1076
          Checked = True
          State = cbChecked
          TabOrder = 11
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxDeystvVis: TCheckBox
          Left = 8
          Top = 164
          Width = 100
          Height = 18
          Caption = #1044#1077#1081#1089#1090#1074#1080#1077
          Checked = True
          State = cbChecked
          TabOrder = 12
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxSotrudnFromVis: TCheckBox
          Left = 132
          Top = 82
          Width = 91
          Height = 17
          Caption = #1054#1090#1087#1091#1089#1090#1080#1083
          TabOrder = 13
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxDateVis: TCheckBox
          Left = 8
          Top = 33
          Width = 121
          Height = 17
          Caption = #1044#1072#1090#1072'   '#1055#1088#1072#1074#1082#1080
          Checked = True
          State = cbChecked
          TabOrder = 14
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxSotrudnToVis: TCheckBox
          Left = 132
          Top = 164
          Width = 76
          Height = 18
          Caption = #1055#1086#1083#1091#1095#1080#1083
          TabOrder = 15
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxPrVis: TCheckBox
          Left = 8
          Top = 181
          Width = 77
          Height = 17
          Caption = #1055#1088#1080#1084'.'
          Checked = True
          State = cbChecked
          TabOrder = 16
          OnClick = CheckBoxColumnVisClick
        end
        object CheckBoxOplataVis: TCheckBox
          Left = 8
          Top = 132
          Width = 100
          Height = 16
          Caption = #1054#1087#1083#1072#1090#1072
          TabOrder = 17
          OnClick = CheckBoxColumnVisClick
        end
      end
      object Panel4: TPanel
        Left = 279
        Top = 17
        Width = 337
        Height = 206
        TabOrder = 1
        object CheckBoxChoiceParent: TCheckBox
          Left = 17
          Top = 8
          Width = 312
          Height = 18
          Caption = #1056#1077#1078#1080#1084' '#1042#1099#1073#1086#1088#1072' '#1056#1086#1076#1080#1090#1077#1083#1100#1089#1082#1086#1075#1086' '#1044#1086#1082#1091#1084#1077#1085#1090#1072' '#1080#1079' '#1046#1091#1088#1085#1072#1083#1072
          TabOrder = 0
          OnClick = CheckBoxChoiceParentClick
        end
        object RadioGroup1: TRadioGroup
          Left = 17
          Top = 33
          Width = 156
          Height = 59
          Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '
          TabOrder = 1
        end
        object RadioButtonZhurnal: TRadioButton
          Left = 25
          Top = 49
          Width = 116
          Height = 18
          Caption = #1046#1091#1088#1085#1072#1083#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = ShowFromClick
        end
        object RadioButtonNakl: TRadioButton
          Left = 25
          Top = 66
          Width = 140
          Height = 17
          Caption = #1057#1087#1080#1089#1082#1072' '#1053#1072#1082#1083#1072#1076#1085#1099#1093
          Checked = True
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          TabStop = True
          OnClick = ShowFromClick
        end
      end
      object RadioGroup2: TRadioGroup
        Left = 647
        Top = 17
        Width = 158
        Height = 58
        Caption = #1057#1086#1088#1090#1080#1088#1086#1074#1082#1072
        TabOrder = 2
      end
      object RadioButton1: TRadioButton
        Left = 655
        Top = 33
        Width = 116
        Height = 17
        Caption = #1044#1072#1090#1072
        TabOrder = 3
        OnClick = RadioButtonNClick
      end
      object RadioButtonN: TRadioButton
        Left = 655
        Top = 49
        Width = 141
        Height = 18
        Caption = #1053#1086#1084#1077#1088
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
        TabStop = True
        OnClick = RadioButtonNClick
      end
    end
  end
end
