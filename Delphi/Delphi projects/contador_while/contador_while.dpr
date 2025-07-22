program contador_while;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils, windows;

var num : integer;

begin
  try
    num := 1;

    while num < 11 do begin

      writeln(num.toString());
      num := num+1;
      sleep (1000);
    end;
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
