program IMC;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var altura, peso, result : double;

begin
  try
    writeln ('Qual sua altura em metros? ');
    try
      readln(altura);
    except
    writeln ('entrada invalida');
    Readln;
    exit
    end;

    writeln ('Qual seu peso em kg? ');
    try
      readln(peso);
    except
    writeln ('entrada invalida');
    Readln;
    exit
    end;

    altura := altura * altura;
    result := peso / altura;

    if result < 18.5 then begin
      writeln('Você esta abaixo do peso com um IMC de ' + FloatToStr(result));
    end else if (result >= 18.5) and (result <= 24.9) then begin
      writeln('Você esta com o peso nomrmal com um IMC de ' + FloatToStr(result));
    end else if (result >= 25) and (result <= 29.9) then begin
      writeln('Você esta com sobrepeso com um IMC de ' + FloatToStr(result));
    end else if (result >= 30) and (result <= 34.9) then begin
      writeln('Você esta com obesidade Grau I com um IMC de ' + FloatToStr(result));
    end else if (result >= 35) and (result <= 39.9) then begin
      writeln('Você esta com obesidade Grau II com um IMC de ' + FloatToStr(result));
    end else begin
      writeln('Você esta com obesidade Grau III com um IMC de ' + FloatToStr(result));
    end;

    Readln;


  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
