program Impar_par;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var num : integer;

begin
  try
    Write ('escolha um numero: ');

    try
      Readln (num);
    Except
      Writeln ('Numero invalido!');
      Readln;
      exit;
    end;

    if num mod 2 = 0 then begin
      Writeln ('O numero ' + IntToStr (num) + ' � par');
    end else begin
      Writeln ('O numero ' + IntToStr (num) + ' � impar');
    end;

    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
