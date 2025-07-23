program Project8;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  System.classes;

var lista, lista2: Tstringlist;
algo: String;
i : integer;
begin
  try

  lista := TstringList.create;
  lista2 := TstringList.create;
  for i := 1 to 10 do begin
    Writeln('escreva algo: ');
    readln (algo);
    lista.add(algo);
  end;
  for algo in lista do begin
    writeln(algo);
  end;
  readln;

  lista.SaveToFile(extractFilepath(paramstr(0)) + 'teste.txt');

  lista2.loadfromfile(extractFilepath(paramstr(0)) + 'teste.txt');

  for algo in lista2 do begin
    writeln(algo);
  end;

  readln;

  Lista.free;
  Lista2.free;

  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;
end.
