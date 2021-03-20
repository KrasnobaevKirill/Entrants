object Form4: TForm4
  Left = 132
  Top = 118
  Width = 1118
  Height = 574
  Align = alCustom
  Caption = #1057#1087#1080#1089#1086#1082' '#1087#1086#1089#1090#1091#1087#1080#1074#1096#1080#1093
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 14
  object lbl1: TLabel
    Left = 8
    Top = 8
    Width = 134
    Height = 14
    Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1072#1087#1088#1072#1074#1083#1077#1085#1080#1077
  end
  object lbl2: TLabel
    Left = 184
    Top = 8
    Width = 144
    Height = 14
    Caption = #1042#1074#1077#1076#1080#1090#1077' '#1087#1088#1086#1093#1086#1076#1085#1086#1081' '#1073#1072#1083#1083
  end
  object edt1: TEdit
    Left = 216
    Top = 32
    Width = 81
    Height = 22
    TabOrder = 0
  end
  object cbb1: TComboBox
    Left = 12
    Top = 32
    Width = 125
    Height = 22
    Hint = #13#10#13#10
    Style = csDropDownList
    ItemHeight = 14
    ItemIndex = 0
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    TabStop = False
    Text = '02.03.03 '
    Items.Strings = (
      '02.03.03 '
      '09.03.01 '
      '09.03.04 '
      '09.03.03 ')
  end
  object stringgrid2: TStringGrid
    Left = 8
    Top = 64
    Width = 1087
    Height = 465
    ColCount = 6
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    TabOrder = 2
  end
  object btn1: TButton
    Left = 376
    Top = 24
    Width = 137
    Height = 25
    Caption = #1042#1099#1074#1077#1089#1090#1080' '#1087#1086#1089#1090#1091#1087#1080#1074#1096#1080#1093
    TabOrder = 3
    OnClick = btn1Click
  end
end
