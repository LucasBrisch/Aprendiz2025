program Intervalo_10_a_100;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var num : integer;

begin
  try
    Write ('escolha um numero ');
    try
      readln (num);
    except
      Writeln ('entrada invalida!');
      Readln;
      exit
    end;

    if (num = 50) or not ((num > 10) and (num < 100) ) then begin
      writeln ('o numero ' + inttostr (num) + ' não esta no intervalo de 10 a 100, ou ele é 50');
    end else begin
      writeln ('o numero ' + inttostr (num) + ' esta no intervalo de 10 a 100 e não é 50');
    end;

    Readln;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
