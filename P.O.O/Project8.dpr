program Project8;

uses
  Vcl.Forms,
  main in 'main.pas' {Form3},
  UPlayer in 'UPlayer.pas',
  UBoss in 'UBoss.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
