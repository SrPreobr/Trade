object SaldoForm: TSaldoForm
  Left = 91
  Top = 66
  Width = 1185
  Height = 627
  Caption = #1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1077#1090#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Reference Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  PixelsPerInch = 120
  TextHeight = 18
  object Splitter3: TSplitter
    Left = 0
    Top = 415
    Width = 1167
    Height = 3
    Cursor = crVSplit
    Align = alBottom
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1167
    Height = 415
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1047#1072#1082#1091#1087#1082#1072' '#1041#1072#1083#1072#1085#1089
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1159
        Height = 50
        Align = alTop
        TabOrder = 0
        object Label7: TLabel
          Left = 660
          Top = 15
          Width = 283
          Height = 18
          Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1040#1075#1077#1085#1090#1072' '#1085#1077' '#1091#1095#1080#1090#1099#1074#1072#1077#1090#1089#1103
        end
        object Label1: TLabel
          Left = 20
          Top = 15
          Width = 133
          Height = 18
          Caption = #1047#1072#1082#1091#1087#1082#1072' '#1086#1090' '#1040#1075#1077#1085#1090#1072
        end
        object ComboBoxUnit: TComboBox
          Left = 926
          Top = 15
          Width = 267
          Height = 26
          Style = csDropDownList
          Enabled = False
          ItemHeight = 18
          TabOrder = 0
          OnClick = ComboBoxUnitClick
          OnDropDown = ComboBoxUnitDropDown
        end
        object ComboBoxAgent: TComboBox
          Left = 158
          Top = 15
          Width = 247
          Height = 26
          Style = csDropDownList
          ItemHeight = 18
          TabOrder = 1
          OnChange = ComboBoxAgentChange
          OnClick = ComboBoxAgentClick
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 50
        Width = 1159
        Height = 332
        Align = alClient
        TabOrder = 1
        object Splitter1: TSplitter
          Left = 577
          Top = 1
          Height = 330
        end
        object Splitter4: TSplitter
          Left = 1
          Top = 1
          Width = 4
          Height = 330
        end
        object Panel1: TPanel
          Left = 5
          Top = 1
          Width = 572
          Height = 330
          Align = alLeft
          Caption = 'Panel1'
          TabOrder = 0
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 570
            Height = 68
            Align = alTop
            Caption = #1053#1072#1095#1072#1083#1086' '#1054#1090#1089#1095#1077#1090#1072
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            DesignSize = (
              570
              68)
            object Label11: TLabel
              Left = 315
              Top = 39
              Width = 18
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Caption = #1086#1090':'
            end
            object RadioButton1: TRadioButton
              Left = 10
              Top = 20
              Width = 139
              Height = 21
              Caption = #1054#1090' '#1053#1072#1095#1072#1083#1072
              Checked = True
              TabOrder = 0
              TabStop = True
              OnClick = RadioButtonClick
            end
            object RadioButton2: TRadioButton
              Left = 10
              Top = 42
              Width = 247
              Height = 21
              Caption = #1054#1090' '#1053#1072#1082#1083#1072#1076#1085#1086#1081' '#1054#1089#1090#1072#1090#1082#1086#1074' '#1044#1086#1083#1075#1072' '#8470
              TabOrder = 1
            end
            object EditDocN1: TEdit
              Left = 256
              Top = 30
              Width = 50
              Height = 21
              TabOrder = 2
            end
            object EditDocDate1: TEdit
              Left = 335
              Top = 30
              Width = 80
              Height = 21
              TabOrder = 3
            end
            object EditDocTime1: TEdit
              Left = 423
              Top = 30
              Width = 80
              Height = 21
              TabOrder = 4
            end
          end
          object DBGridNakl: TDBGrid
            Left = 1
            Top = 69
            Width = 570
            Height = 260
            Align = alClient
            DataSource = DM.DataSourceNakl
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -14
            TitleFont.Name = 'MS Reference Sans Serif'
            TitleFont.Style = []
            OnCellClick = DBGridNaklCellClick
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sum'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Pr'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cod'
                Visible = True
              end>
          end
        end
        object Panel7: TPanel
          Left = 580
          Top = 1
          Width = 578
          Height = 330
          Align = alClient
          Caption = 'Panel7'
          TabOrder = 1
          object DBGridNaklOstatok2: TDBGrid
            Left = 1
            Top = 70
            Width = 576
            Height = 259
            Align = alClient
            DataSource = DM.DataSourceNaklOstatok2
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -14
            TitleFont.Name = 'MS Reference Sans Serif'
            TitleFont.Style = []
            OnCellClick = DBGridNaklOstatok2CellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'DocN'
                Width = 41
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
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Sum'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Pr'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'Cod'
                Visible = True
              end>
          end
          object GroupBox1: TGroupBox
            Left = 1
            Top = 1
            Width = 576
            Height = 69
            Align = alTop
            Caption = #1050#1086#1085#1077#1094' '#1042#1079#1072#1080#1084#1086#1088#1072#1089#1095#1077#1090#1072' '#1053#1072#1082#1083#1072#1076#1085#1072#1103' '#1054#1089#1090#1072#1090#1082#1086#1074
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            DesignSize = (
              576
              69)
            object Label12: TLabel
              Left = 335
              Top = 39
              Width = 18
              Height = 16
              Anchors = [akLeft, akTop, akRight]
              Caption = #1086#1090':'
            end
            object SpeedButtonNow: TSpeedButton
              Left = 128
              Top = 20
              Width = 28
              Height = 24
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
              Left = 266
              Top = 30
              Width = 50
              Height = 21
              TabOrder = 0
            end
            object EditDocDate2: TEdit
              Left = 354
              Top = 30
              Width = 80
              Height = 21
              TabOrder = 1
            end
            object EditDocTime2: TEdit
              Left = 443
              Top = 30
              Width = 80
              Height = 21
              TabOrder = 2
            end
            object RadioButton3: TRadioButton
              Left = 10
              Top = 20
              Width = 100
              Height = 21
              Caption = #1044#1086' '#1044#1072#1090#1099
              Checked = True
              TabOrder = 3
              TabStop = True
              OnClick = RadioButton3Click
            end
            object RadioButton4: TRadioButton
              Left = 10
              Top = 39
              Width = 247
              Height = 21
              Caption = #1044#1086' '#1053#1072#1082#1083#1072#1076#1085#1086#1081' '#1054#1089#1090#1072#1090#1082#1086#1074' '#1044#1086#1083#1075#1072' '#8470
              TabOrder = 4
            end
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1047#1072#1082#1091#1087#1082#1072#1055#1086#1076#1088#1086#1073#1085#1086
      ImageIndex = 1
      object Splitter2: TSplitter
        Left = 631
        Top = 0
        Width = 4
        Height = 337
      end
      object Panel4: TPanel
        Left = 0
        Top = 337
        Width = 1159
        Height = 45
        Align = alBottom
        TabOrder = 0
        DesignSize = (
          1159
          45)
        object DBNavigator1: TDBNavigator
          Left = 15
          Top = 10
          Width = 128
          Height = 31
          DataSource = DM.DataSourceSaldoZakupkaStr
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akLeft, akBottom]
          TabOrder = 0
        end
        object DBNavigator2: TDBNavigator
          Left = 652
          Top = 6
          Width = 128
          Height = 31
          DataSource = DM.DataSourceSaldoCashToStr
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          Anchors = [akLeft, akBottom]
          TabOrder = 1
        end
      end
      object DBGridSaldoCashToStr: TDBGrid
        Left = 635
        Top = 0
        Width = 524
        Height = 337
        Align = alClient
        DataSource = DM.DataSourceSaldoCashToStr
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = 'MS Reference Sans Serif'
        TitleFont.Style = []
      end
      object DBGridSaldoZakupkaStr: TDBGrid
        Left = 0
        Top = 0
        Width = 631
        Height = 337
        Align = alLeft
        DataSource = DM.DataSourceSaldoZakupkaStr
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -14
        TitleFont.Name = 'MS Reference Sans Serif'
        TitleFont.Style = []
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 418
    Width = 1167
    Height = 164
    Align = alBottom
    TabOrder = 1
    object Label5: TLabel
      Left = 10
      Top = 20
      Width = 227
      Height = 16
      Caption = #1057#1091#1084#1084#1072' '#1052#1086#1077#1075#1086' '#1044#1086#1083#1075#1072' '#1085#1072' '#1085#1072#1095#1072#1083#1086
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 10
      Top = 49
      Width = 115
      Height = 16
      Caption = #1057#1091#1084#1084#1072' '#1047#1072#1082#1091#1087#1082#1080
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 758
      Top = 49
      Width = 108
      Height = 16
      Caption = #1057#1091#1084#1084#1072' '#1042#1099#1087#1083#1072#1090
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 758
      Top = 20
      Width = 259
      Height = 16
      Caption = #1057#1091#1084#1084#1072' '#1074#1074#1077#1076#1077#1085#1085#1086#1075#1086' '#1044#1086#1083#1075#1072' '#1085#1072' '#1082#1086#1085#1077#1094
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 177
      Top = 138
      Width = 55
      Height = 16
      Caption = #1041#1072#1083#1072#1085#1089
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label20: TLabel
      Left = 758
      Top = 89
      Width = 48
      Height = 16
      Caption = #1048#1090#1086#1075' +'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label21: TLabel
      Left = 10
      Top = 89
      Width = 45
      Height = 16
      Caption = #1048#1090#1086#1075' -'
      Color = clBtnFace
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label2: TLabel
      Left = 473
      Top = 138
      Width = 252
      Height = 16
      Caption = #1055#1088#1086#1089#1088#1086#1095#1077#1085#1085#1099#1081' '#1041#1072#1083#1072#1085#1089'. '#1054#1090#1089#1088#1086#1095#1082#1072' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 817
      Top = 138
      Width = 41
      Height = 16
      Caption = #1076#1085#1077#1081'.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 354
      Top = 49
      Width = 109
      Height = 16
      Caption = #1055#1088#1086#1089#1088#1086#1095#1077#1085#1085#1072#1103
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MaskEditOstatok2: TMaskEdit
      Left = 1044
      Top = 14
      Width = 92
      Height = 26
      EditMask = '!#########0,00\ ;1; '
      MaxLength = 14
      TabOrder = 0
      Text = '          ,   '
    end
    object MaskEditOstatok1: TMaskEdit
      Left = 256
      Top = 14
      Width = 92
      Height = 26
      EditMask = '!#########0,00\ ;1; '
      MaxLength = 14
      TabOrder = 1
      Text = '          ,   '
    end
    object MaskEditZakupka: TMaskEdit
      Left = 256
      Top = 43
      Width = 92
      Height = 26
      EditMask = '!#########0,00\ ;1; '
      MaxLength = 14
      TabOrder = 2
      Text = '          ,   '
    end
    object ButtonSaldo: TButton
      Left = 39
      Top = 128
      Width = 93
      Height = 31
      Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
      TabOrder = 3
      OnClick = ButtonSaldoClick
    end
    object MaskEditBalans: TMaskEdit
      Left = 256
      Top = 132
      Width = 96
      Height = 26
      EditMask = '!#######0,00\ '#1088'.;1; '
      MaxLength = 14
      TabOrder = 4
      Text = '        ,   '#1088'.'
    end
    object MaskEditCashTo: TMaskEdit
      Left = 1044
      Top = 43
      Width = 92
      Height = 26
      EditMask = '!#########0,00\ ;1; '
      MaxLength = 14
      TabOrder = 5
      Text = '          ,   '
    end
    object MaskEditPlus: TMaskEdit
      Left = 1044
      Top = 82
      Width = 92
      Height = 26
      EditMask = '!#########0,00\ ;1; '
      MaxLength = 14
      TabOrder = 6
      Text = '          ,   '
    end
    object MaskEditMinus: TMaskEdit
      Left = 256
      Top = 82
      Width = 92
      Height = 26
      EditMask = '!#########0,00\ ;1; '
      MaxLength = 14
      TabOrder = 7
      Text = '          ,   '
    end
    object Button1: TButton
      Left = 1044
      Top = 128
      Width = 112
      Height = 31
      Caption = #1055#1077#1095#1072#1090#1100' '#1074' '#1092#1072#1081#1083
      TabOrder = 8
      OnClick = Button1Click
    end
    object SpinEditProsr: TSpinEdit
      Left = 748
      Top = 128
      Width = 51
      Height = 26
      MaxValue = 0
      MinValue = 0
      TabOrder = 9
      Value = 14
    end
    object MaskEditBalansProsr: TMaskEdit
      Left = 876
      Top = 129
      Width = 96
      Height = 26
      EditMask = '!#######0,00\ '#1088'.;1; '
      MaxLength = 14
      TabOrder = 10
      Text = '        ,   '#1088'.'
    end
    object MaskEditZakupkaProsr: TMaskEdit
      Left = 482
      Top = 43
      Width = 93
      Height = 26
      EditMask = '!#########0,00\ ;1; '
      MaxLength = 14
      TabOrder = 11
      Text = '          ,   '
    end
    object MaskEditMinusProsr: TMaskEdit
      Left = 482
      Top = 82
      Width = 93
      Height = 26
      EditMask = '!#########0,00\ ;1; '
      MaxLength = 14
      TabOrder = 12
      Text = '          ,   '
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 360
    Top = 2
  end
end
