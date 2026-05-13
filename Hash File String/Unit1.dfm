object Form1: TForm1
  Left = 1643
  Top = 135
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'SimpleTest'
  ClientHeight = 705
  ClientWidth = 636
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 617
    Height = 105
    Caption = ' Data :'
    TabOrder = 0
    object Label4: TLabel
      Left = 41
      Top = 26
      Width = 33
      Height = 13
      Caption = 'String :'
    end
    object Label23: TLabel
      Left = 52
      Top = 50
      Width = 22
      Height = 13
      Caption = 'File :'
    end
    object Label24: TLabel
      Left = 40
      Top = 74
      Width = 34
      Height = 13
      Caption = 'Buffer :'
    end
    object Label25: TLabel
      Left = 552
      Top = 26
      Width = 43
      Height = 13
      Caption = 'Count : 0'
    end
    object Edit4: TEdit
      Left = 80
      Top = 24
      Width = 465
      Height = 21
      TabStop = False
      TabOrder = 0
      OnChange = Edit4Change
    end
    object Edit1: TEdit
      Left = 80
      Top = 71
      Width = 465
      Height = 21
      TabStop = False
      Enabled = False
      TabOrder = 1
      Text = 'github.com'
    end
    object Button1: TButton
      Left = 552
      Top = 71
      Width = 25
      Height = 22
      Caption = '>>'
      TabOrder = 2
      TabStop = False
      OnClick = Button1Click
    end
    object Edit3: TEdit
      Left = 80
      Top = 47
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 3
      Text = 'any file...'
    end
    object Button3: TButton
      Left = 552
      Top = 47
      Width = 25
      Height = 22
      Caption = '...'
      TabOrder = 4
      TabStop = False
      OnClick = Button3Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 120
    Width = 617
    Height = 561
    Caption = ' Hash : '
    TabOrder = 1
    object Label1: TLabel
      Left = 46
      Top = 75
      Width = 29
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'MD5 :'
      ParentBiDiMode = False
    end
    object Label2: TLabel
      Left = 46
      Top = 27
      Width = 29
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'MD2 :'
      ParentBiDiMode = False
    end
    object Label3: TLabel
      Left = 46
      Top = 51
      Width = 29
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'MD4 :'
      ParentBiDiMode = False
    end
    object Label5: TLabel
      Left = 36
      Top = 99
      Width = 40
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'CRC32 :'
      ParentBiDiMode = False
    end
    object Label6: TLabel
      Left = 29
      Top = 123
      Width = 47
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'CRC32B :'
      ParentBiDiMode = False
    end
    object Label7: TLabel
      Left = 33
      Top = 147
      Width = 42
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Adler32 :'
      ParentBiDiMode = False
    end
    object Label8: TLabel
      Left = 47
      Top = 171
      Width = 28
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Gost :'
      ParentBiDiMode = False
    end
    object Label9: TLabel
      Left = 23
      Top = 195
      Width = 52
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Haval128 :'
      ParentBiDiMode = False
    end
    object Label10: TLabel
      Left = 23
      Top = 219
      Width = 52
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Haval160 :'
      ParentBiDiMode = False
    end
    object Label11: TLabel
      Left = 20
      Top = 243
      Width = 55
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Haval 192 :'
      ParentBiDiMode = False
    end
    object Label12: TLabel
      Left = 23
      Top = 267
      Width = 52
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Haval224 :'
      ParentBiDiMode = False
    end
    object Label13: TLabel
      Left = 20
      Top = 291
      Width = 55
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Haval 256 :'
      ParentBiDiMode = False
    end
    object Label14: TLabel
      Left = 43
      Top = 315
      Width = 31
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Sha1 :'
      ParentBiDiMode = False
    end
    object Label15: TLabel
      Left = 31
      Top = 339
      Width = 43
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Sha256 :'
      ParentBiDiMode = False
    end
    object Label16: TLabel
      Left = 31
      Top = 363
      Width = 43
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Sha384 :'
      ParentBiDiMode = False
    end
    object Label17: TLabel
      Left = 31
      Top = 387
      Width = 43
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Sha512 :'
      ParentBiDiMode = False
    end
    object Label18: TLabel
      Left = 26
      Top = 411
      Width = 48
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Tiger128 :'
      ParentBiDiMode = False
    end
    object Label19: TLabel
      Left = 26
      Top = 435
      Width = 48
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Tiger160 :'
      ParentBiDiMode = False
    end
    object Label20: TLabel
      Left = 26
      Top = 459
      Width = 48
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'Tiger192 :'
      ParentBiDiMode = False
    end
    object Label21: TLabel
      Left = 10
      Top = 483
      Width = 63
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'RipeMD128 :'
      ParentBiDiMode = False
    end
    object Label22: TLabel
      Left = 10
      Top = 507
      Width = 63
      Height = 13
      BiDiMode = bdLeftToRight
      Caption = 'RipeMD160 :'
      ParentBiDiMode = False
    end
    object Edit2: TEdit
      Left = 80
      Top = 72
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 0
    end
    object Edit5: TEdit
      Left = 80
      Top = 24
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 1
    end
    object Edit6: TEdit
      Left = 80
      Top = 48
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 2
    end
    object Edit7: TEdit
      Left = 80
      Top = 96
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 3
    end
    object Edit8: TEdit
      Left = 80
      Top = 120
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 4
    end
    object Edit9: TEdit
      Left = 80
      Top = 144
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 5
    end
    object Edit10: TEdit
      Left = 80
      Top = 168
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 6
    end
    object Edit11: TEdit
      Left = 80
      Top = 192
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 7
    end
    object Edit12: TEdit
      Left = 80
      Top = 216
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 8
    end
    object Edit13: TEdit
      Left = 80
      Top = 240
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 9
    end
    object Edit14: TEdit
      Left = 80
      Top = 264
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 10
    end
    object Edit15: TEdit
      Left = 80
      Top = 288
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 11
    end
    object Edit16: TEdit
      Left = 80
      Top = 312
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 12
    end
    object Edit17: TEdit
      Left = 80
      Top = 336
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 13
    end
    object Edit18: TEdit
      Left = 80
      Top = 360
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 14
    end
    object Edit19: TEdit
      Left = 80
      Top = 384
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 15
    end
    object Edit20: TEdit
      Left = 80
      Top = 408
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 16
    end
    object CheckBox1: TCheckBox
      Left = 585
      Top = 26
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 17
      OnClick = CheckBox1Click
    end
    object CheckBox2: TCheckBox
      Left = 585
      Top = 50
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 18
      OnClick = CheckBox2Click
    end
    object CheckBox3: TCheckBox
      Left = 585
      Top = 74
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 19
      OnClick = CheckBox3Click
    end
    object CheckBox4: TCheckBox
      Left = 585
      Top = 98
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 20
      OnClick = CheckBox4Click
    end
    object CheckBox5: TCheckBox
      Left = 585
      Top = 122
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 21
      OnClick = CheckBox5Click
    end
    object CheckBox6: TCheckBox
      Left = 585
      Top = 146
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 22
      OnClick = CheckBox6Click
    end
    object CheckBox7: TCheckBox
      Left = 585
      Top = 170
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 23
      OnClick = CheckBox7Click
    end
    object CheckBox8: TCheckBox
      Left = 585
      Top = 194
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 24
      OnClick = CheckBox8Click
    end
    object CheckBox9: TCheckBox
      Left = 585
      Top = 218
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 25
      OnClick = CheckBox9Click
    end
    object CheckBox10: TCheckBox
      Left = 585
      Top = 242
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 26
      OnClick = CheckBox10Click
    end
    object CheckBox11: TCheckBox
      Left = 585
      Top = 266
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 27
      OnClick = CheckBox11Click
    end
    object CheckBox12: TCheckBox
      Left = 585
      Top = 290
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 28
      OnClick = CheckBox12Click
    end
    object CheckBox13: TCheckBox
      Left = 585
      Top = 314
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 29
      OnClick = CheckBox13Click
    end
    object CheckBox14: TCheckBox
      Left = 585
      Top = 338
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 30
      OnClick = CheckBox14Click
    end
    object CheckBox15: TCheckBox
      Left = 585
      Top = 362
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 31
      OnClick = CheckBox15Click
    end
    object CheckBox16: TCheckBox
      Left = 585
      Top = 386
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 32
      OnClick = CheckBox16Click
    end
    object CheckBox17: TCheckBox
      Left = 585
      Top = 410
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 33
      OnClick = CheckBox17Click
    end
    object Edit21: TEdit
      Left = 80
      Top = 432
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 34
    end
    object Edit22: TEdit
      Left = 80
      Top = 456
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 35
    end
    object Edit23: TEdit
      Left = 80
      Top = 480
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 36
    end
    object Edit24: TEdit
      Left = 80
      Top = 504
      Width = 465
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 37
    end
    object CheckBox18: TCheckBox
      Left = 585
      Top = 434
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 38
      OnClick = CheckBox18Click
    end
    object CheckBox19: TCheckBox
      Left = 585
      Top = 458
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 39
      OnClick = CheckBox19Click
    end
    object CheckBox20: TCheckBox
      Left = 585
      Top = 482
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 40
      OnClick = CheckBox20Click
    end
    object CheckBox21: TCheckBox
      Left = 585
      Top = 506
      Width = 17
      Height = 17
      TabStop = False
      Checked = True
      State = cbChecked
      TabOrder = 41
      OnClick = CheckBox21Click
    end
    object Button2: TButton
      Left = 556
      Top = 24
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 42
      TabStop = False
      OnClick = Button2Click
    end
    object Button4: TButton
      Left = 556
      Top = 48
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 43
      TabStop = False
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 556
      Top = 72
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 44
      TabStop = False
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 556
      Top = 96
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 45
      TabStop = False
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 556
      Top = 120
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 46
      TabStop = False
      OnClick = Button7Click
    end
    object Button8: TButton
      Left = 556
      Top = 144
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 47
      TabStop = False
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 556
      Top = 168
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 48
      TabStop = False
      OnClick = Button9Click
    end
    object Button10: TButton
      Left = 556
      Top = 192
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 49
      TabStop = False
      OnClick = Button10Click
    end
    object Button11: TButton
      Left = 556
      Top = 216
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 50
      TabStop = False
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 556
      Top = 240
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 51
      TabStop = False
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 556
      Top = 264
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 52
      TabStop = False
      OnClick = Button13Click
    end
    object Button14: TButton
      Left = 556
      Top = 288
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 53
      TabStop = False
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 556
      Top = 312
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 54
      TabStop = False
      OnClick = Button15Click
    end
    object Button16: TButton
      Left = 556
      Top = 336
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 55
      TabStop = False
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 556
      Top = 360
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 56
      TabStop = False
      OnClick = Button17Click
    end
    object Button18: TButton
      Left = 556
      Top = 384
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 57
      TabStop = False
      OnClick = Button18Click
    end
    object Button19: TButton
      Left = 556
      Top = 408
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 58
      TabStop = False
      OnClick = Button19Click
    end
    object Button20: TButton
      Left = 556
      Top = 432
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 59
      TabStop = False
      OnClick = Button20Click
    end
    object Button21: TButton
      Left = 556
      Top = 456
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 60
      TabStop = False
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 556
      Top = 480
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 61
      TabStop = False
      OnClick = Button22Click
    end
    object Button23: TButton
      Left = 556
      Top = 504
      Width = 16
      Height = 22
      Hint = 'Copy'
      Caption = 'C'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 62
      TabStop = False
      OnClick = Button23Click
    end
    object Button24: TButton
      Left = 80
      Top = 536
      Width = 75
      Height = 25
      Caption = 'Enable all'
      TabOrder = 63
      TabStop = False
      OnClick = Button24Click
    end
    object Button25: TButton
      Left = 160
      Top = 536
      Width = 75
      Height = 25
      Caption = 'Disable all'
      TabOrder = 64
      TabStop = False
      OnClick = Button25Click
    end
    object CheckBox22: TCheckBox
      Left = 248
      Top = 540
      Width = 73
      Height = 17
      TabStop = False
      Caption = 'Save Hash'
      TabOrder = 65
    end
    object CheckBox23: TCheckBox
      Left = 336
      Top = 540
      Width = 113
      Height = 17
      Caption = 'Upper Lower Case'
      TabOrder = 66
      OnClick = CheckBox23Click
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 686
    Width = 636
    Height = 19
    Panels = <
      item
        Text = 'Last Action :'
        Width = 80
      end
      item
        Width = 50
      end>
  end
  object OpenDialog1: TOpenDialog
    Left = 136
    Top = 16
  end
end
