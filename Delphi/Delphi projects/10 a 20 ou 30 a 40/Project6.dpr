program Project6;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var num : integer;
begin
  try
    Write ('Escolha um numero: ');
    try
      readln (num);
    except
      Writeln ('entrada invalida!');
      Readln;
      exit
    end;

    if ((num >= 10) and (num <= 20)) then begin
      Writeln ('numero ' + inttostr (num) + ' esta no intervalo entre 10 e 20');
    end else if ((num >= 30) and (num <= 40)) then begin
      Writeln ('numero ' + inttostr (num) + ' esta no intervalo entre 30 e 40');
    end else begin
      Writeln ('numero ' + inttostr (num) + ' não atende nenhum dos requisitos');
    end;

    Readln;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
