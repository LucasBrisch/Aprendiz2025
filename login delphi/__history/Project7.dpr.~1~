program Project1;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils;

const usuarioAdmin: String = 'admin';
      senhaAdmin: String = 'admin';
var rodando:boolean;
tentativas : integer;

procedure MenuPrincipal();
begin
  Writeln('|------- Menu -------|');
  Writeln('| 1 - Realizar Login |');
  Writeln('| 9 - Sair           |');
  Writeln('|--------------------|' + sLineBreak);

end;


function LoginValido(usuario, senha: String): Boolean;
begin
  Result := (usuario = usuarioAdmin) and (senha = senhaAdmin);
end;

function soma (num1, num2 : Double) : double;
begin
  Result := num1 + num2;
end;

function subtracao (num1, num2 : Double) : double;
begin
  Result := num1 - num2;
end;

function divisao (num1, num2 : Double) : double;
begin
  Result := num1 / num2;
end;

function multiplicacao (num1, num2 : Double) : double;
begin
  Result := num1 * num2;
end;

procedure MenuContas ();
var opcao : integer;
num1, num2, resultado : Double;
begin
Writeln ('escolha um operador:');
writeln ('1 - +');
writeln ('2 - -');
writeln ('3 - X');
writeln ('4 - /');
writeln ('9 - LogOut');

readln (opcao);
if opcao = 9 then begin
  Writeln ('saindo');
  exit;
end;
Writeln ('escolha um numero: ');
readln (num1);
writeln ('escolha outro: ');
readln (num2);
if opcao = 1 then begin
  resultado := (soma(num1, num2));
  Writeln(FloatToStr(resultado));
  MenuContas();
end else if opcao = 2 then begin
  resultado := (subtracao(num1, num2));
  Writeln(FloatToStr(resultado));
  MenuContas();
end else if opcao =  3 then begin
  resultado := (multiplicacao(num1, num2));
  Writeln(FloatToStr(resultado));
  MenuContas();
end else if opcao = 4 then begin
  resultado := (divisao(num1, num2));
  Writeln(FloatToStr(resultado));
  MenuContas();
end;


end;


procedure MenuLogin ();
var usuario, senha:String;
begin
  Write('Digite seu usuário: ');
      Readln(usuario);
      Write('Digite sua senha: ');
      Readln(senha);

      if LoginValido(usuario, senha) then begin
        Writeln('Autenticado com sucesso');
        writeln(tentativas.ToString);
        tentativas := 0;
        Sleep(1000);
        MenuContas();
        Exit;
      end else begin
        Writeln('Credenciais incorretas');
        tentativas := tentativas + 1;
        writeln(tentativas.ToString + ' somou 1 pq errou');
        if tentativas >= 3 then begin
            writeln('numero maximo de tentatias atingido, fechando o sistema');
            rodando := false;
            readln;
            exit;
        end else begin
          MenuLogin();
        end;
      end;
end;

var i: Integer;

procedure LoadView;
begin

for i := 0 to 4 do begin

  Sleep(500);
  Write('.');

end;


end;

procedure DirecionarMenu (opcao: string);
begin
  if (opcao = '1') then begin
    MenuLogin();
    end else if (opcao = '9') then begin
      Write('Encerrando');
      LoadView;
      rodando := false;
      Exit;
    end else begin
      Writeln('Opção inválida');
    end;
end;


begin
var usuario, senha, opcao:String;
rodando := true;
begin

  try
  tentativas := 0;
  writeln(tentativas.ToString + ' valor inicial');
      while rodando do begin

      MenuPrincipal;
      Readln(opcao);
      DirecionarMenu(opcao);
      end;

    except
      on E: Exception do
        Writeln(E.ClassName, ': ', E.Message);
    end;
end;
end.
