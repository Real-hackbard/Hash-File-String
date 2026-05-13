program hasher;

uses
  Forms,
  CryptoUtils in 'CryptoUtils.pas',
  MD in 'MD.pas',
  SHA in 'SHA.pas',
  CRC in 'CRC.pas',
  Tiger in 'Tiger.pas',
  Adler in 'Adler.pas',
  Haval in 'Haval.pas',
  Gost in 'Gost.pas',
  RIPEMD in 'RIPEMD.pas',
  CryptoAPI in 'CryptoAPI.pas',
  HashTests in 'HashTests.pas',
  Unit1 in 'Unit1.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
