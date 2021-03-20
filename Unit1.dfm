object Form1: TForm1
  Left = 199
  Top = 103
  Width = 1063
  Height = 601
  Hint = 
    '02.03.03 "'#1052#1072#1090#1077#1084#1072#1090#1080#1095#1077#1089#1082#1086#1077' '#1086#1073#1077#1089#1087#1077#1095#1077#1085#1080#1077' '#1080' '#1072#1076#1084#1080#1085#1080#1089#1090#1088#1080#1088#1086#1074#1072#1085#1080#1077' '#1080#1085#1092#1086#1088#1084#1072 +
    #1094#1080#1086#1085#1085#1099#1093' '#1089#1077#1090#1077#1081'"'
  VertScrollBar.Position = 141
  Align = alClient
  Caption = #1057#1087#1080#1089#1086#1082' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1086#1074
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object pnl1: TPanel
    Left = 8
    Top = -133
    Width = 241
    Height = 412
    BorderWidth = 2
    TabOrder = 0
    TabStop = True
    object lbl1: TLabel
      Left = 8
      Top = 16
      Width = 90
      Height = 14
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1060'.'#1048'.'#1054'.'
    end
    object lbl2: TLabel
      Left = 8
      Top = 56
      Width = 84
      Height = 14
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1072#1076#1088#1077#1089
    end
    object lbl3: TLabel
      Left = 56
      Top = 200
      Width = 111
      Height = 14
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1073#1072#1083#1083#1086#1074
    end
    object lbl4: TLabel
      Left = 8
      Top = 224
      Width = 67
      Height = 14
      Caption = #1052#1072#1090#1077#1084#1072#1090#1080#1082#1072
    end
    object lbl5: TLabel
      Left = 96
      Top = 224
      Width = 41
      Height = 14
      Caption = #1060#1080#1079#1080#1082#1072
    end
    object lbl6: TLabel
      Left = 160
      Top = 224
      Width = 75
      Height = 14
      Caption = #1056#1091#1089#1089#1082#1080#1081' '#1103#1079#1099#1082
    end
    object lbl7: TLabel
      Left = 8
      Top = 296
      Width = 134
      Height = 14
      Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
    end
    object edt1: TEdit
      Left = 104
      Top = 8
      Width = 129
      Height = 22
      TabOrder = 0
    end
    object btn1: TButton
      Left = 8
      Top = 368
      Width = 225
      Height = 33
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
      TabOrder = 1
      OnClick = btn1Click
    end
    object edt2: TEdit
      Left = 104
      Top = 48
      Width = 129
      Height = 22
      TabOrder = 2
    end
    object rg1: TRadioGroup
      Left = 8
      Top = 88
      Width = 225
      Height = 105
      Caption = #1051#1100#1075#1086#1090#1072
      ItemIndex = 0
      Items.Strings = (
        #1054#1090#1089#1091#1090#1089#1090#1074#1091#1077#1090
        #1048#1085#1074#1072#1083#1080#1076#1085#1086#1089#1090#1100
        #1057#1080#1088#1086#1090#1072
        #1062#1077#1083#1077#1074#1086#1081' '#1085#1072#1073#1086#1088)
      TabOrder = 3
    end
    object edt3: TEdit
      Left = 8
      Top = 248
      Width = 65
      Height = 22
      TabOrder = 4
    end
    object edt4: TEdit
      Left = 88
      Top = 248
      Width = 65
      Height = 22
      TabOrder = 5
    end
    object edt5: TEdit
      Left = 168
      Top = 248
      Width = 65
      Height = 22
      TabOrder = 6
    end
    object cbb1: TComboBox
      Left = 148
      Top = 288
      Width = 85
      Height = 22
      Hint = #13#10#13#10
      Style = csDropDownList
      ItemHeight = 14
      ItemIndex = 0
      ParentShowHint = False
      ShowHint = False
      TabOrder = 7
      TabStop = False
      Text = '02.03.03 '
      Items.Strings = (
        '02.03.03 '
        '09.03.01 '
        '09.03.04 '
        '09.03.03 ')
    end
    object btn4: TButton
      Left = 8
      Top = 328
      Width = 225
      Height = 25
      Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103#1093
      TabOrder = 8
      OnClick = btn4Click
    end
  end
  object StringGrid: TStringGrid
    Left = 256
    Top = -141
    Width = 1087
    Height = 662
    ColCount = 6
    DefaultColWidth = 213
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 1
  end
  object btn2: TButton
    Left = 8
    Top = 291
    Width = 241
    Height = 25
    Caption = #1054#1090#1089#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1087#1086' '#1060'.'#1048'.'#1054
    TabOrder = 2
    OnClick = btn2Click
  end
  object pnl2: TPanel
    Left = 8
    Top = 331
    Width = 241
    Height = 81
    TabOrder = 3
    object lbl8: TLabel
      Left = 8
      Top = 16
      Width = 163
      Height = 14
      Caption = #1042#1074#1077#1076#1080#1090#1077' '#1085#1086#1084#1077#1088' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
    end
    object btn5: TButton
      Left = 8
      Top = 40
      Width = 225
      Height = 33
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1072#1073#1080#1090#1091#1088#1080#1077#1085#1090#1072
      TabOrder = 0
      OnClick = btn5Click
    end
    object edt6: TEdit
      Left = 176
      Top = 11
      Width = 57
      Height = 22
      TabOrder = 1
    end
  end
  object btn6: TButton
    Left = 8
    Top = 426
    Width = 241
    Height = 25
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1074#1077#1089#1100' '#1089#1087#1080#1089#1086#1082
    TabOrder = 4
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 8
    Top = 465
    Width = 241
    Height = 25
    Caption = #1042#1099#1074#1077#1089#1090#1080' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1103' '#1087#1086' '#1087#1086#1087#1091#1083#1103#1088#1085#1086#1089#1090#1080
    TabOrder = 5
    OnClick = btn7Click
  end
  object btn8: TButton
    Left = 8
    Top = 501
    Width = 241
    Height = 25
    Caption = #1042#1099#1074#1077#1089#1090#1080' '#1087#1086#1089#1090#1091#1087#1080#1074#1096#1080#1093
    TabOrder = 6
    OnClick = btn8Click
  end
  object mm1: TMainMenu
    Left = 960
    Top = 424
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
        OnClick = N2Click
      end
      object N3: TMenuItem
        Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100
        OnClick = N3Click
      end
    end
    object N4: TMenuItem
      Caption = #1057#1090#1072#1090#1080#1089#1090#1080#1082#1072
      object N5: TMenuItem
        Caption = #1055#1088#1086#1094#1077#1085#1090' '#1080#1085#1086#1075#1086#1088#1086#1076#1085#1080#1093' '#1089#1090#1091#1076#1077#1085#1090#1086#1074
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1055#1088#1086#1094#1077#1085#1090' '#1083#1100#1075#1086#1090#1085#1080#1082#1086#1074
        OnClick = N6Click
      end
    end
    object N7: TMenuItem
      Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      OnClick = N7Click
    end
  end
  object savedialog: TSaveDialog
    DefaultExt = '*.txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'|*.txt;'
    Left = 904
    Top = 418
  end
  object opendialog: TOpenDialog
    DefaultExt = '*.txt'
    Filter = #1058#1077#1082#1089#1090#1086#1074#1099#1081' '#1092#1072#1081#1083'|*.txt'
    Left = 912
    Top = 368
  end
end
