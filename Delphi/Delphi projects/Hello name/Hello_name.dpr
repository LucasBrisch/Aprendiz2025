program Hello_name;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

var nome : String;

begin
  try
    Write ('Qual o seu nome? ');

    try
      Readln (nome);
    except
     Write ('Nome invalido');
    end;
    Writeln ('Oi ' + nome);
    Readln;
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
