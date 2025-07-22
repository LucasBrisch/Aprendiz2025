program Contador;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  Windows;

var I: integer;

begin
  try
     for I := 1 to 10 do begin
       writeln (I);
       sleep (1000);
     end;

     Writeln ('acabou');
     Readln;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
