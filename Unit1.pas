unit Unit1;

interface

uses
  Windows, Messages, Classes, Controls, Forms, XPMan, Dialogs, SysUtils,
  StdCtrls, CryptoAPI, HashTests, IniFiles, ComCtrls, Clipbrd, Buttons;

type
  TForm1 = class(TForm)
    GroupBox1: TGroupBox;
    Edit4: TEdit;
    Label4: TLabel;
    GroupBox2: TGroupBox;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    Label3: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Edit13: TEdit;
    Edit14: TEdit;
    Edit15: TEdit;
    Edit16: TEdit;
    Edit17: TEdit;
    Edit18: TEdit;
    Edit19: TEdit;
    Edit20: TEdit;
    Edit1: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button3: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    CheckBox12: TCheckBox;
    CheckBox13: TCheckBox;
    CheckBox14: TCheckBox;
    CheckBox15: TCheckBox;
    CheckBox16: TCheckBox;
    CheckBox17: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit21: TEdit;
    Edit22: TEdit;
    Edit23: TEdit;
    Edit24: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    CheckBox18: TCheckBox;
    CheckBox19: TCheckBox;
    CheckBox20: TCheckBox;
    CheckBox21: TCheckBox;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    OpenDialog1: TOpenDialog;
    Label24: TLabel;
    StatusBar1: TStatusBar;
    Button2: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    Button24: TButton;
    Button25: TButton;
    CheckBox22: TCheckBox;
    Label25: TLabel;
    CheckBox23: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure CheckBox3Click(Sender: TObject);
    procedure CheckBox4Click(Sender: TObject);
    procedure CheckBox5Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure CheckBox7Click(Sender: TObject);
    procedure CheckBox8Click(Sender: TObject);
    procedure CheckBox9Click(Sender: TObject);
    procedure CheckBox10Click(Sender: TObject);
    procedure CheckBox11Click(Sender: TObject);
    procedure CheckBox12Click(Sender: TObject);
    procedure CheckBox13Click(Sender: TObject);
    procedure CheckBox14Click(Sender: TObject);
    procedure CheckBox15Click(Sender: TObject);
    procedure CheckBox16Click(Sender: TObject);
    procedure CheckBox17Click(Sender: TObject);
    procedure CheckBox18Click(Sender: TObject);
    procedure CheckBox19Click(Sender: TObject);
    procedure CheckBox20Click(Sender: TObject);
    procedure CheckBox21Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
    procedure CheckBox23Click(Sender: TObject);
  private
    { Private declarations }
    procedure WriteOptions;
    procedure ReadOptions;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  TIF : TIniFile;

implementation

{$R *.dfm}
procedure TForm1.WriteOptions;    // ################### Options Write
var OPT :string;
begin
   OPT := 'Options';

   if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'Data\Options\')
   then ForceDirectories(ExtractFilePath(Application.ExeName) + 'Data\Options\');

   TIF := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Data\Options\Options.ini');
   with TIF do
   begin
   WriteBool(OPT,'MD2',CheckBox1.Checked);
   WriteBool(OPT,'MD4',CheckBox2.Checked);
   WriteBool(OPT,'MD5',CheckBox3.Checked);
   WriteBool(OPT,'CRC32',CheckBox4.Checked);
   WriteBool(OPT,'CRC32B',CheckBox5.Checked);
   WriteBool(OPT,'Adler32',CheckBox6.Checked);
   WriteBool(OPT,'Gost',CheckBox7.Checked);
   WriteBool(OPT,'Haval128',CheckBox8.Checked);
   WriteBool(OPT,'Haval160',CheckBox9.Checked);
   WriteBool(OPT,'Haval192',CheckBox10.Checked);
   WriteBool(OPT,'Haval224',CheckBox11.Checked);
   WriteBool(OPT,'Haval256',CheckBox12.Checked);
   WriteBool(OPT,'SHA1',CheckBox13.Checked);
   WriteBool(OPT,'SHA256',CheckBox14.Checked);
   WriteBool(OPT,'SHA384',CheckBox15.Checked);
   WriteBool(OPT,'SHA512',CheckBox16.Checked);
   WriteBool(OPT,'TIGER128',CheckBox17.Checked);
   WriteBool(OPT,'TIGER160',CheckBox18.Checked);
   WriteBool(OPT,'TIGER192',CheckBox19.Checked);
   WriteBool(OPT,'RipeMD128',CheckBox20.Checked);
   WriteBool(OPT,'RipeMD160',CheckBox21.Checked);
   WriteBool(OPT,'Save',CheckBox22.Checked);
   WriteBool(OPT,'UpperLower',CheckBox23.Checked);
   Free;
   end;
end;

procedure TForm1.ReadOptions;    // ################### Options Read
var OPT:string;
begin
  OPT := 'Options';
  if FileExists(ExtractFilePath(Application.ExeName) + 'Data\Options\Options.ini') then
  begin
  TIF:=TIniFile.Create(ExtractFilePath(Application.ExeName) + 'Data\Options\Options.ini');
  with TIF do
  begin
  CheckBox1.Checked:=ReadBool(OPT,'MD2',CheckBox1.Checked);
  CheckBox2.Checked:=ReadBool(OPT,'MD4',CheckBox2.Checked);
  CheckBox3.Checked:=ReadBool(OPT,'MD5',CheckBox3.Checked);
  CheckBox4.Checked:=ReadBool(OPT,'CRC32',CheckBox4.Checked);
  CheckBox5.Checked:=ReadBool(OPT,'CRC32B',CheckBox5.Checked);
  CheckBox6.Checked:=ReadBool(OPT,'Adler32',CheckBox6.Checked);
  CheckBox7.Checked:=ReadBool(OPT,'Gost',CheckBox7.Checked);
  CheckBox8.Checked:=ReadBool(OPT,'Haval128',CheckBox8.Checked);
  CheckBox9.Checked:=ReadBool(OPT,'Haval160',CheckBox9.Checked);
  CheckBox10.Checked:=ReadBool(OPT,'Haval192',CheckBox10.Checked);
  CheckBox11.Checked:=ReadBool(OPT,'Haval224',CheckBox11.Checked);
  CheckBox12.Checked:=ReadBool(OPT,'Haval256',CheckBox12.Checked);
  CheckBox13.Checked:=ReadBool(OPT,'SHA1',CheckBox13.Checked);
  CheckBox14.Checked:=ReadBool(OPT,'SHA256',CheckBox14.Checked);
  CheckBox15.Checked:=ReadBool(OPT,'SHA384',CheckBox15.Checked);
  CheckBox16.Checked:=ReadBool(OPT,'SHA512',CheckBox16.Checked);
  CheckBox17.Checked:=ReadBool(OPT,'TIGER128',CheckBox17.Checked);
  CheckBox18.Checked:=ReadBool(OPT,'TIGER160',CheckBox18.Checked);
  CheckBox19.Checked:=ReadBool(OPT,'TIGER192',CheckBox19.Checked);
  CheckBox20.Checked:=ReadBool(OPT,'RipeMD128',CheckBox20.Checked);
  CheckBox21.Checked:=ReadBool(OPT,'RipeMD160',CheckBox21.Checked);
  CheckBox22.Checked:=ReadBool(OPT,'Save',CheckBox22.Checked);
  CheckBox23.Checked:=ReadBool(OPT,'UpperLower',CheckBox23.Checked);
  Free;
  end;
  end;
end;

procedure enable;
begin
  Form1.CheckBox1.Checked := true; Form1.CheckBox2.Checked := true;
  Form1.CheckBox3.Checked := true; Form1.CheckBox4.Checked := true;
  Form1.CheckBox5.Checked := true; Form1.CheckBox6.Checked := true;
  Form1.CheckBox7.Checked := true; Form1.CheckBox8.Checked := true;
  Form1.CheckBox9.Checked := true; Form1.CheckBox10.Checked := true;
  Form1.CheckBox11.Checked := true; Form1.CheckBox12.Checked := true;
  Form1.CheckBox13.Checked := true; Form1.CheckBox14.Checked := true;
  Form1.CheckBox15.Checked := true; Form1.CheckBox16.Checked := true;
  Form1.CheckBox17.Checked := true; Form1.CheckBox18.Checked := true;
  Form1.CheckBox19.Checked := true; Form1.CheckBox20.Checked := true;
  Form1.CheckBox21.Checked := true;
end;

procedure disable;
begin
  Form1.CheckBox1.Checked := false; Form1.CheckBox2.Checked := false;
  Form1.CheckBox3.Checked := false; Form1.CheckBox4.Checked := false;
  Form1.CheckBox5.Checked := false; Form1.CheckBox6.Checked := false;
  Form1.CheckBox7.Checked := false; Form1.CheckBox8.Checked := false;
  Form1.CheckBox9.Checked := false; Form1.CheckBox10.Checked := false;
  Form1.CheckBox11.Checked := false; Form1.CheckBox12.Checked := false;
  Form1.CheckBox13.Checked := false; Form1.CheckBox14.Checked := false;
  Form1.CheckBox15.Checked := false; Form1.CheckBox16.Checked := false;
  Form1.CheckBox17.Checked := false; Form1.CheckBox18.Checked := false;
  Form1.CheckBox19.Checked := false; Form1.CheckBox20.Checked := false;
  Form1.CheckBox21.Checked := false;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  buf: array [0..9] of Char;
  ret: LongWord;
  ctx: THashContext;
  S, t : String;
begin
  //buf[0] := c;
  //buf[1] := 'b';
  //buf[2] := 'c';

  {or buf := 'abc';} // Result should be [MD5: 900150983cd24fb0d6963f7d28e17f72]

  buf := 'github.com'; // Dynamic Array

  if CheckBox1.Checked = true then begin  // MD2
    ret := HashInit(@ctx, HASH_MD2);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit5.Text := S;
              end else begin
            Edit5.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox2.Checked = true then begin  // MD4
    ret := HashInit(@ctx, HASH_MD4);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit6.Text := S;
              end else begin
            Edit6.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox3.Checked = true then begin  // MD5
    ret := HashInit(@ctx, HASH_MD5);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit2.Text := S;
              end else begin
            Edit2.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox4.Checked = true then begin  // CRC32
    ret := HashInit(@ctx, HASH_CRC32);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit7.Text := S;
              end else begin
            Edit7.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox5.Checked = true then begin  // CRC32B
    ret := HashInit(@ctx, HASH_CRC32B);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit8.Text := S;
              end else begin
            Edit8.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox6.Checked = true then begin  // Adler32
    ret := HashInit(@ctx, HASH_ADLER32);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit9.Text := S;
              end else begin
            Edit9.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox7.Checked = true then begin  // Gost
    ret := HashInit(@ctx, HASH_GOST);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit10.Text := S;
              end else begin
            Edit10.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox8.Checked = true then begin  // Haval128
    ret := HashInit(@ctx, HASH_HAVAL128);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit11.Text := S;
              end else begin
            Edit11.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox9.Checked = true then begin  // Haval160
    ret := HashInit(@ctx, HASH_HAVAL160);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit12.Text := S;
              end else begin
            Edit12.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox10.Checked = true then begin  // Haval192
    ret := HashInit(@ctx, HASH_HAVAL192);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit13.Text := S;
              end else begin
            Edit13.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox11.Checked = true then begin  // Haval224
    ret := HashInit(@ctx, HASH_HAVAL224);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit14.Text := S;
              end else begin
            Edit14.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox12.Checked = true then begin  // Haval256
    ret := HashInit(@ctx, HASH_HAVAL256);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit15.Text := S;
              end else begin
            Edit15.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox13.Checked = true then begin  // Sha1
    ret := HashInit(@ctx, HASH_SHA1);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit16.Text := S;
              end else begin
            Edit16.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox14.Checked = true then begin  // Sha256
    ret := HashInit(@ctx, HASH_SHA256);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit17.Text := S;
              end else begin
            Edit17.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox15.Checked = true then begin  // Sha384
    ret := HashInit(@ctx, HASH_SHA384);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit18.Text := S;
              end else begin
            Edit18.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox16.Checked = true then begin  // Sha512
    ret := HashInit(@ctx, HASH_SHA512);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit19.Text := S;
              end else begin
            Edit19.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox17.Checked = true then begin  // Tiger128
    ret := HashInit(@ctx, HASH_TIGER128);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit20.Text := S;
              end else begin
            Edit20.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox18.Checked = true then begin  // Tiger160
    ret := HashInit(@ctx, HASH_TIGER160);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit21.Text := S;
              end else begin
            Edit21.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox19.Checked = true then begin  // Tiger192
    ret := HashInit(@ctx, HASH_TIGER192);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit22.Text := S;
              end else begin
            Edit22.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox20.Checked = true then begin  // RipeMD128
    ret := HashInit(@ctx, HASH_RIPEMD128);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit23.Text := S;
              end else begin
            Edit23.Text := HashErrorToStr(ret);
          end;
  end;

  if CheckBox21.Checked = true then begin  // RipeMD160
    ret := HashInit(@ctx, HASH_RIPEMD160);
      if ret = NO_ERROR then ret := HashUpdate(@ctx, @buf, SizeOf(buf));
        if ret = NO_ERROR then ret := HashFinal(@ctx, s);
          if ret = NO_ERROR then begin
            Edit24.Text := S;
              end else begin
            Edit24.Text := HashErrorToStr(ret);
          end;
  end;

  StatusBar1.SetFocus;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  ret: LongWord;
  S: String;
  str : TStringList;
begin
  if OpenDialog1.Execute then begin

  Screen.Cursor := crHourGlass;
  try
   str := TStringList.Create;

  if CheckBox1.Checked then begin             // MD2
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_MD2, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit5.Text := S;
        end else begin
        Edit5.Text := HashErrorToStr(ret);
      end;
      str.Add('MD2 : ' + S);
  end;

  if CheckBox2.Checked then begin             // MD4
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_MD4, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit6.Text := S;
        end else begin
        Edit6.Text := HashErrorToStr(ret);
      end;
      str.Add('MD4 : ' + S);
  end;

  if CheckBox3.Checked then begin             // MD5
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_MD5, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit2.Text := S;
        end else begin
        Edit2.Text := HashErrorToStr(ret);
      end;
      str.Add('MD5 : ' + S);
  end;

  if CheckBox4.Checked then begin             // CRC32
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_CRC32, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit7.Text := S;
        end else begin
        Edit7.Text := HashErrorToStr(ret);
      end;
      str.Add('CRC32 : ' + S);
  end;

  if CheckBox5.Checked then begin             // CRC32B
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_CRC32B, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit8.Text := S;
        end else begin
        Edit8.Text := HashErrorToStr(ret);
      end;
      str.Add('CRC32B : ' + S);
  end;

  if CheckBox6.Checked then begin             // Adler32
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_ADLER32, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit9.Text := S;
        end else begin
        Edit9.Text := HashErrorToStr(ret);
      end;
      str.Add('Adler32 : ' + S);
  end;

  if CheckBox7.Checked then begin             // Gost
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_GOST, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit10.Text := S;
        end else begin
        Edit10.Text := HashErrorToStr(ret);
      end;
      str.Add('Gost : ' + S);
  end;

  if CheckBox8.Checked then begin             // Haval128
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_HAVAL128, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit11.Text := S;
        end else begin
        Edit11.Text := HashErrorToStr(ret);
      end;
      str.Add('Haval128 : ' + S);
  end;

  if CheckBox9.Checked then begin             // Haval160
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_HAVAL160, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit12.Text := S;
        end else begin
        Edit12.Text := HashErrorToStr(ret);
      end;
      str.Add('Haval160 : ' + S);
  end;

  if CheckBox10.Checked then begin             // Haval192
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_HAVAL192, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit13.Text := S;
        end else begin
        Edit13.Text := HashErrorToStr(ret);
      end;
      str.Add('Haval192 : ' + S);
  end;

  if CheckBox11.Checked then begin             // Haval224
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_HAVAL224, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit14.Text := S;
        end else begin
        Edit14.Text := HashErrorToStr(ret);
      end;
      str.Add('Haval224 : ' + S);
  end;

  if CheckBox12.Checked then begin             // Haval256
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_HAVAL256, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit15.Text := S;
        end else begin
        Edit15.Text := HashErrorToStr(ret);
      end;
      str.Add('Haval256 : ' + S);
  end;

  if CheckBox13.Checked then begin             // Sha1
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_SHA1, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit16.Text := S;
        end else begin
        Edit16.Text := HashErrorToStr(ret);
      end;
      str.Add('SHA1 : ' + S);
  end;

  if CheckBox14.Checked then begin             // Sha256
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_SHA256, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit17.Text := S;
        end else begin
        Edit17.Text := HashErrorToStr(ret);
      end;
      str.Add('SHA256 : ' + S);
  end;

  if CheckBox15.Checked then begin             // Sha384
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_SHA384, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit18.Text := S;
        end else begin
        Edit18.Text := HashErrorToStr(ret);
      end;
      str.Add('SHA384 : ' + S);
  end;

  if CheckBox16.Checked then begin             // Sha512
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_SHA512, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit19.Text := S;
        end else begin
        Edit19.Text := HashErrorToStr(ret);
      end;
      str.Add('SHA512 : ' + S);
  end;

  if CheckBox17.Checked then begin             // Tiger128
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_TIGER128, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit20.Text := S;
        end else begin
        Edit20.Text := HashErrorToStr(ret);
      end;
      str.Add('TIGER128 : ' + S);
  end;

  if CheckBox18.Checked then begin             // Tiger160
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_TIGER160, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit21.Text := S;
        end else begin
        Edit21.Text := HashErrorToStr(ret);
      end;
      str.Add('TIGER160 : ' + S);
  end;

  if CheckBox19.Checked then begin             // Tiger192
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_TIGER192, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit22.Text := S;
        end else begin
        Edit22.Text := HashErrorToStr(ret);
      end;
      str.Add('TIGER192 : ' + S);
  end;

  if CheckBox20.Checked then begin             // RipeMD128
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_RIPEMD128, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit23.Text := S;
        end else begin
        Edit23.Text := HashErrorToStr(ret);
      end;
      str.Add('RIPEMD128 : ' + S);
  end;

  if CheckBox21.Checked then begin             // RipeMD160
    Edit3.Text := OpenDialog1.FileName;
    ret := HashFile(HASH_RIPEMD160, OpenDialog1.FileName, S);
      if ret = NO_ERROR then begin
        Edit24.Text := S;
        end else begin
        Edit24.Text := HashErrorToStr(ret);
      end;
      str.Add('RIPEMD160 : ' + S);
  end;

  StatusBar1.Panels[1].Text := 'File Hash Calculate';

  if CheckBox22.Checked = true then begin
  str.SaveToFile(ExtractFilePath(Application.ExeName) +
                 'Data\Save\' + ExtractFileName(Edit3.Text) + '_hash.txt');
  end;

  finally
  str.Free;
  end;

  end;
  Screen.Cursor := crDefault;
  StatusBar1.SetFocus;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  ErrNo: LongWord;
begin
  {Test library before startup}
  ErrNo := HashTestLibrary;
  if ErrNo <> HASH_NOERROR then
  begin
    MessageBox(0, PChar('Could not verify library, error: ' + HashErrorToStr(ErrNo)), nil, 0);
    Halt;
  end;
end;

procedure TForm1.Edit4Change(Sender: TObject);
var
  ret: LongWord;
  S: String;
  str : TStringList;
begin
   try
   str := TStringList.Create;

  if CheckBox1.Checked = true then begin
    ret := HashStr(HASH_MD2, Edit4.Text, S);  // MD2
    if ret = NO_ERROR then begin
    Edit5.Text := S;
    end else begin
    Edit5.Text := HashErrorToStr(ret);
    end;
    str.Add('MD2 : ' + S);
  end;

  if CheckBox2.Checked = true then begin
    ret := HashStr(HASH_MD4, Edit4.Text, S);  // MD4
    if ret = NO_ERROR then begin
    Edit6.Text := S;
    end else begin
    Edit6.Text := HashErrorToStr(ret);
    end;
    str.Add('MD4 : ' + S);
  end;

  if CheckBox3.Checked = true then begin
    ret := HashStr(HASH_MD5, Edit4.Text, S);  // MD5
    if ret = NO_ERROR then begin
    Edit2.Text := S;
    end else begin
    Edit2.Text := HashErrorToStr(ret);
    end;
    str.Add('MD5 : ' + S);
  end;

  if CheckBox4.Checked = true then begin
    ret := HashStr(HASH_CRC32, Edit4.Text, S);  // CRC32
    if ret = NO_ERROR then begin
    Edit7.Text := S;
    end else begin
    Edit7.Text := HashErrorToStr(ret);
    end;
    str.Add('CRC32 : ' + S);
  end;

  if CheckBox5.Checked = true then begin
    ret := HashStr(HASH_CRC32B, Edit4.Text, S);  // CRC32B
    if ret = NO_ERROR then begin
    Edit8.Text := S;
    end else begin
    Edit8.Text := HashErrorToStr(ret);
    end;
    str.Add('CRC32B : ' + S);
  end;

  if CheckBox6.Checked = true then begin
    ret := HashStr(HASH_ADLER32, Edit4.Text, S);  // Adler32
    if ret = NO_ERROR then begin
    Edit9.Text := S;
    end else begin
    Edit9.Text := HashErrorToStr(ret);
    end;
    str.Add('Adler32 : ' + S);
  end;

  if CheckBox7.Checked = true then begin
    ret := HashStr(HASH_GOST, Edit4.Text, S);  // Gost
    if ret = NO_ERROR then begin
    Edit10.Text := S;
    end else begin
    Edit10.Text := HashErrorToStr(ret);
    end;
    str.Add('Gost : ' + S);
  end;

  if CheckBox8.Checked = true then begin
    ret := HashStr(HASH_HAVAL128, Edit4.Text, S);  // Haval 128
    if ret = NO_ERROR then begin
    Edit11.Text := S;
    end else begin
    Edit11.Text := HashErrorToStr(ret);
    end;
    str.Add('Haval128 : ' + S);
  end;

  if CheckBox9.Checked = true then begin
    ret := HashStr(HASH_HAVAL160, Edit4.Text, S);  // Haval 160
    if ret = NO_ERROR then begin
    Edit12.Text := S;
    end else begin
    Edit12.Text := HashErrorToStr(ret);
    end;
    str.Add('Haval160 : ' + S);
  end;

  if CheckBox10.Checked = true then begin
    ret := HashStr(HASH_HAVAL192, Edit4.Text, S);  // Haval 192
    if ret = NO_ERROR then begin
    Edit13.Text := S;
    end else begin
    Edit13.Text := HashErrorToStr(ret);
    end;
    str.Add('Haval192 : ' + S);
  end;

  if CheckBox11.Checked = true then begin
    ret := HashStr(HASH_HAVAL224, Edit4.Text, S);  // Haval 224
    if ret = NO_ERROR then begin
    Edit14.Text := S;
    end else begin
    Edit14.Text := HashErrorToStr(ret);
    end;
    str.Add('Haval224 : ' + S);
  end;

  if CheckBox12.Checked = true then begin
    ret := HashStr(HASH_HAVAL256, Edit4.Text, S);  // Haval 256
    if ret = NO_ERROR then begin
    Edit15.Text := S;
    end else begin
    Edit15.Text := HashErrorToStr(ret);
    end;
    str.Add('Haval256 : ' + S);
  end;

  if CheckBox13.Checked = true then begin
    ret := HashStr(HASH_SHA1, Edit4.Text, S);  // Sha1
    if ret = NO_ERROR then begin
    Edit16.Text := S;
    end else begin
    Edit16.Text := HashErrorToStr(ret);
    end;
    str.Add('SHA1 : ' + S);
  end;

  if CheckBox14.Checked = true then begin
    ret := HashStr(HASH_SHA256, Edit4.Text, S);  // Sha256
    if ret = NO_ERROR then begin
    Edit17.Text := S;
    end else begin
    Edit17.Text := HashErrorToStr(ret);
    end;
    str.Add('SHA256 : ' + S);
  end;

  if CheckBox15.Checked = true then begin
    ret := HashStr(HASH_SHA384, Edit4.Text, S);  // Sha384
    if ret = NO_ERROR then begin
    Edit18.Text := S;
    end else begin
    Edit18.Text := HashErrorToStr(ret);
    end;
    str.Add('SHA384 : ' + S);
  end;

  if CheckBox16.Checked = true then begin
    ret := HashStr(HASH_SHA512, Edit4.Text, S);  // Sha512
    if ret = NO_ERROR then begin
    Edit19.Text := S;
    end else begin
    Edit19.Text := HashErrorToStr(ret);
    end;
    str.Add('SHA512 : ' + S);
  end;

  if CheckBox17.Checked = true then begin
    ret := HashStr(HASH_TIGER128, Edit4.Text, S);  // Tiger128
    if ret = NO_ERROR then begin
    Edit20.Text := S;
    end else begin
    Edit20.Text := HashErrorToStr(ret);
    end;
    str.Add('TIGER128 : ' + S);
  end;

  if CheckBox18.Checked = true then begin
    ret := HashStr(HASH_TIGER160, Edit4.Text, S);  // Tiger160
    if ret = NO_ERROR then begin
    Edit21.Text := S;
    end else begin
    Edit21.Text := HashErrorToStr(ret);
    end;
    str.Add('TIGER160 : ' + S);
  end;

  if CheckBox19.Checked = true then begin
    ret := HashStr(HASH_TIGER192, Edit4.Text, S);  // Tiger192
    if ret = NO_ERROR then begin
    Edit22.Text := S;
    end else begin
    Edit22.Text := HashErrorToStr(ret);
    end;
    str.Add('TIGER192 : ' + S);
  end;

  if CheckBox20.Checked = true then begin
    ret := HashStr(HASH_RIPEMD128, Edit4.Text, S);  // RipeMD128
    if ret = NO_ERROR then begin
    Edit23.Text := S;
    end else begin
    Edit23.Text := HashErrorToStr(ret);
    end;
    str.Add('RIPEMD128 : ' + S);
  end;

  if CheckBox21.Checked = true then begin
    ret := HashStr(HASH_RIPEMD160, Edit4.Text, S);  // RipeMD160
    if ret = NO_ERROR then begin
    Edit24.Text := S;
    end else begin
    Edit24.Text := HashErrorToStr(ret);
    end;
    str.Add('RIPEMD160 : ' + S);
  end;

  Label25.Caption := 'Count : ' + IntToStr(Length(Edit4.Text));

  if CheckBox22.Checked = true then begin
  str.SaveToFile(ExtractFilePath(Application.ExeName) + 'Data\Save\String_hash.txt');
  end;

  finally
  str.Free;
  end;

  StatusBar1.Panels[1].Text := 'String Hash Calculate';
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  Label2.Enabled := CheckBox1.Checked;
  Edit5.Enabled := CheckBox1.Checked;
  Button2.Enabled := CheckBox1.Checked;
  if CheckBox1.Checked = false then Edit5.Clear;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  Label3.Enabled := CheckBox2.Checked;
  Edit6.Enabled := CheckBox2.Checked;
  Button4.Enabled := CheckBox2.Checked;
  if CheckBox2.Checked = false then Edit6.Clear;
end;

procedure TForm1.CheckBox3Click(Sender: TObject);
begin
  Label1.Enabled := CheckBox3.Checked;
  Edit2.Enabled := CheckBox3.Checked;
  Button5.Enabled := CheckBox3.Checked;
  if CheckBox3.Checked = false then Edit2.Clear;
end;

procedure TForm1.CheckBox4Click(Sender: TObject);
begin
  Label5.Enabled := CheckBox4.Checked;
  Edit7.Enabled := CheckBox4.Checked;
  Button6.Enabled := CheckBox4.Checked;
  if CheckBox4.Checked = false then Edit7.Clear;
end;

procedure TForm1.CheckBox5Click(Sender: TObject);
begin
  Label6.Enabled := CheckBox5.Checked;
  Edit8.Enabled := CheckBox5.Checked;
  Button7.Enabled := CheckBox5.Checked;
  if CheckBox5.Checked = false then Edit8.Clear;
end;

procedure TForm1.CheckBox6Click(Sender: TObject);
begin
  Label7.Enabled := CheckBox6.Checked;
  Edit9.Enabled := CheckBox6.Checked;
  Button8.Enabled := CheckBox6.Checked;
  if CheckBox6.Checked = false then Edit9.Clear;
end;

procedure TForm1.CheckBox7Click(Sender: TObject);
begin
  Label8.Enabled := CheckBox7.Checked;
  Edit10.Enabled := CheckBox7.Checked;
  Button9.Enabled := CheckBox7.Checked;
  if CheckBox7.Checked = false then Edit10.Clear;
end;

procedure TForm1.CheckBox8Click(Sender: TObject);
begin
  Label9.Enabled := CheckBox8.Checked;
  Edit11.Enabled := CheckBox8.Checked;
  Button10.Enabled := CheckBox8.Checked;
  if CheckBox8.Checked = false then Edit11.Clear;
end;

procedure TForm1.CheckBox9Click(Sender: TObject);
begin
  Label10.Enabled := CheckBox9.Checked;
  Edit12.Enabled := CheckBox9.Checked;
  Button11.Enabled := CheckBox9.Checked;
  if CheckBox9.Checked = false then Edit12.Clear;
end;

procedure TForm1.CheckBox10Click(Sender: TObject);
begin
  Label11.Enabled := CheckBox10.Checked;
  Edit13.Enabled := CheckBox10.Checked;
  Button12.Enabled := CheckBox10.Checked;
  if CheckBox10.Checked = false then Edit13.Clear;
end;

procedure TForm1.CheckBox11Click(Sender: TObject);
begin
  Label12.Enabled := CheckBox11.Checked;
  Edit14.Enabled := CheckBox11.Checked;
  Button13.Enabled := CheckBox11.Checked;
  if CheckBox11.Checked = false then Edit14.Clear;
end;

procedure TForm1.CheckBox12Click(Sender: TObject);
begin
  Label13.Enabled := CheckBox12.Checked;
  Edit15.Enabled := CheckBox12.Checked;
  Button14.Enabled := CheckBox12.Checked;
  if CheckBox12.Checked = false then Edit15.Clear;
end;

procedure TForm1.CheckBox13Click(Sender: TObject);
begin
  Label14.Enabled := CheckBox13.Checked;
  Edit16.Enabled := CheckBox13.Checked;
  Button15.Enabled := CheckBox13.Checked;
  if CheckBox13.Checked = false then Edit16.Clear;
end;

procedure TForm1.CheckBox14Click(Sender: TObject);
begin
  Label15.Enabled := CheckBox14.Checked;
  Edit17.Enabled := CheckBox14.Checked;
  Button16.Enabled := CheckBox14.Checked;
  if CheckBox14.Checked = false then Edit17.Clear;
end;

procedure TForm1.CheckBox15Click(Sender: TObject);
begin
  Label16.Enabled := CheckBox15.Checked;
  Edit18.Enabled := CheckBox15.Checked;
  Button17.Enabled := CheckBox15.Checked;
  if CheckBox15.Checked = false then Edit18.Clear;
end;

procedure TForm1.CheckBox16Click(Sender: TObject);
begin
  Label17.Enabled := CheckBox16.Checked;
  Edit19.Enabled := CheckBox16.Checked;
  Button18.Enabled := CheckBox16.Checked;
  if CheckBox16.Checked = false then Edit19.Clear;
end;

procedure TForm1.CheckBox17Click(Sender: TObject);
begin
  Label18.Enabled := CheckBox17.Checked;
  Edit20.Enabled := CheckBox17.Checked;
  Button19.Enabled := CheckBox17.Checked;
  if CheckBox17.Checked = false then Edit20.Clear;
end;

procedure TForm1.CheckBox18Click(Sender: TObject);
begin
  Label19.Enabled := CheckBox18.Checked;
  Edit21.Enabled := CheckBox18.Checked;
  Button20.Enabled := CheckBox18.Checked;
  if CheckBox18.Checked = false then Edit21.Clear;
end;

procedure TForm1.CheckBox19Click(Sender: TObject);
begin
  Label20.Enabled := CheckBox19.Checked;
  Edit22.Enabled := CheckBox19.Checked;
  Button21.Enabled := CheckBox19.Checked;
  if CheckBox19.Checked = false then Edit22.Clear;
end;

procedure TForm1.CheckBox20Click(Sender: TObject);
begin
  Label21.Enabled := CheckBox20.Checked;
  Edit23.Enabled := CheckBox20.Checked;
  Button22.Enabled := CheckBox20.Checked;
  if CheckBox20.Checked = false then Edit23.Clear;
end;

procedure TForm1.CheckBox21Click(Sender: TObject);
begin
  Label22.Enabled := CheckBox21.Checked;
  Edit24.Enabled := CheckBox21.Checked;
  Button23.Enabled := CheckBox21.Checked;
  if CheckBox21.Checked = false then Edit24.Clear;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WriteOptions;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  ReadOptions;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Clipboard.AsText := Edit5.Text;
  StatusBar1.Panels[1].Text := 'Copied MD2 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  Clipboard.AsText := Edit6.Text;
  StatusBar1.Panels[1].Text := 'Copied MD4 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  Clipboard.AsText := Edit2.Text;
  StatusBar1.Panels[1].Text := 'Copied MD5 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Clipboard.AsText := Edit7.Text;
  StatusBar1.Panels[1].Text := 'Copied CRC32 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Clipboard.AsText := Edit8.Text;
  StatusBar1.Panels[1].Text := 'Copied CRC32B hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  Clipboard.AsText := Edit9.Text;
  StatusBar1.Panels[1].Text := 'Copied ADLER32 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  Clipboard.AsText := Edit10.Text;
  StatusBar1.Panels[1].Text := 'Copied GOST hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  Clipboard.AsText := Edit11.Text;
  StatusBar1.Panels[1].Text := 'Copied HAVAL128 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  Clipboard.AsText := Edit12.Text;
  StatusBar1.Panels[1].Text := 'Copied HAVAL160 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  Clipboard.AsText := Edit13.Text;
  StatusBar1.Panels[1].Text := 'Copied HAVAL192 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  Clipboard.AsText := Edit14.Text;
  StatusBar1.Panels[1].Text := 'Copied HAVAL224 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  Clipboard.AsText := Edit15.Text;
  StatusBar1.Panels[1].Text := 'Copied HAVAL256 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  Clipboard.AsText := Edit16.Text;
  StatusBar1.Panels[1].Text := 'Copied SHA1 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  Clipboard.AsText := Edit17.Text;
  StatusBar1.Panels[1].Text := 'Copied SHA256 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
  Clipboard.AsText := Edit18.Text;
  StatusBar1.Panels[1].Text := 'Copied SHA384 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
  Clipboard.AsText := Edit19.Text;
  StatusBar1.Panels[1].Text := 'Copied SHA512 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
  Clipboard.AsText := Edit20.Text;
  StatusBar1.Panels[1].Text := 'Copied TIGER128 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
  Clipboard.AsText := Edit21.Text;
  StatusBar1.Panels[1].Text := 'Copied TIGER160 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
  Clipboard.AsText := Edit22.Text;
  StatusBar1.Panels[1].Text := 'Copied TIGER192 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button22Click(Sender: TObject);
begin
  Clipboard.AsText := Edit23.Text;
  StatusBar1.Panels[1].Text := 'Copied RIPEMD128 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button23Click(Sender: TObject);
begin
  Clipboard.AsText := Edit24.Text;
  StatusBar1.Panels[1].Text := 'Copied RIPEMD160 hash.';
  StatusBar1.SetFocus;
end;

procedure TForm1.Button24Click(Sender: TObject);
begin
  enable;
  StatusBar1.SetFocus;
end;

procedure TForm1.Button25Click(Sender: TObject);
begin
  disable;
  StatusBar1.SetFocus;
end;

procedure TForm1.CheckBox23Click(Sender: TObject);
begin
  if CheckBox23.Checked = true then begin
  Edit5.Text := UpperCase(Edit5.Text); Edit6.Text := UpperCase(Edit6.Text);
  Edit2.Text := UpperCase(Edit2.Text); Edit7.Text := UpperCase(Edit7.Text);
  Edit8.Text := UpperCase(Edit8.Text); Edit9.Text := UpperCase(Edit9.Text);
  Edit10.Text := UpperCase(Edit10.Text); Edit11.Text := UpperCase(Edit11.Text);
  Edit12.Text := UpperCase(Edit12.Text); Edit13.Text := UpperCase(Edit13.Text);
  Edit14.Text := UpperCase(Edit14.Text); Edit15.Text := UpperCase(Edit15.Text);
  Edit16.Text := UpperCase(Edit16.Text); Edit17.Text := UpperCase(Edit17.Text);
  Edit18.Text := UpperCase(Edit18.Text); Edit19.Text := UpperCase(Edit19.Text);
  Edit20.Text := UpperCase(Edit20.Text); Edit21.Text := UpperCase(Edit21.Text);
  Edit22.Text := UpperCase(Edit22.Text); Edit23.Text := UpperCase(Edit23.Text);
  Edit24.Text := UpperCase(Edit24.Text);
  end else begin
  Edit5.Text := LowerCase(Edit5.Text); Edit6.Text := LowerCase(Edit6.Text);
  Edit2.Text := LowerCase(Edit2.Text); Edit7.Text := LowerCase(Edit7.Text);
  Edit8.Text := LowerCase(Edit8.Text); Edit9.Text := LowerCase(Edit9.Text);
  Edit10.Text := LowerCase(Edit10.Text); Edit11.Text := LowerCase(Edit11.Text);
  Edit12.Text := LowerCase(Edit12.Text); Edit13.Text := LowerCase(Edit13.Text);
  Edit14.Text := LowerCase(Edit14.Text); Edit15.Text := LowerCase(Edit15.Text);
  Edit16.Text := LowerCase(Edit16.Text); Edit17.Text := LowerCase(Edit17.Text);
  Edit18.Text := LowerCase(Edit18.Text); Edit19.Text := LowerCase(Edit19.Text);
  Edit20.Text := LowerCase(Edit20.Text); Edit21.Text := LowerCase(Edit21.Text);
  Edit22.Text := LowerCase(Edit22.Text); Edit23.Text := LowerCase(Edit23.Text);
  Edit24.Text := LowerCase(Edit24.Text);
  end;
  StatusBar1.SetFocus;
end;

end.




