unit Uclasse;

interface

  type TPersonagem = class
  private
    Nome: String;
    Vida: Integer;
    Genero: string;
    Nivel: integer;
    Dano: integer;
    Defesa: integer;
  public

    function getNome: String;
    function getDano: integer;
    function getGenero: String;
    function getNivel: Integer;
    function getVida: Integer;
    function getDefesa: Integer;

    procedure setdano (aDano:integer);
    procedure setnome (aNome: String);
    procedure setGenero (aGenero: String);
    procedure setNivel (aNivel: Integer);
    procedure setVida (aVida: integer);
    procedure setDefesa (aDefesa: integer);

    constructor Create (aDano, aDefesa, aVida, aNivel:integer; aNome, aGenero : String);
  end;

  type Tplayer = class (Tpersonagem)
   Experiencia: double;
   Nickname: String;

  end;

  type Tboss = class (Tpersonagem)

  end;

implementation

uses system.SysUtils;
{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa, aVida, aNivel: integer; aNome, Agenero : string);
begin
  self.Dano := adano;
  self.Defesa := adefesa;
  self.Vida := aVida;
  self.Nivel := aNivel;
  self.Nome := aNome;
  self.Genero := aGenero;
end;

function TPersonagem.getDano: integer;
begin
  result := self.Dano + self.Nivel;
end;

function TPersonagem.getDefesa: Integer;
begin
  result := self.Defesa
end;

function TPersonagem.getGenero: String;
begin
  result := self.Genero
end;

function TPersonagem.getNivel: Integer;
begin
  result := self.Nivel
end;

function TPersonagem.getNome: String;
begin
  result := self.Nome;
end;

function TPersonagem.getVida: Integer;
begin
  result := self.Vida
end;

procedure TPersonagem.setdano(aDano: integer);
begin
  if Adano<1 then raise exception.Create('o dano tem q ser maior q zero. TPersonagem.setdano');

  self.Dano := aDano;
end;

procedure TPersonagem.setDefesa(aDefesa: integer);
begin
  if aDefesa <1 then raise exception.Create('a defesa deve ser maior q zero. Tpersonagem.setdefesa');

  self.Defesa := aDefesa;
end;

procedure TPersonagem.setGenero(aGenero: String);
begin
  if (aGenero <> 'F') and (aGenero <> 'M') then raise exception.Create('Genero invalido. Tpersonagem.setGenero');

  self.Genero := agenero;

end;

procedure TPersonagem.setNivel(aNivel: Integer);
begin
  if anivel > 1 then raise exception.Create('Erro, nivel abaixo de 0. Tpersonagem.setnivel');

end;

procedure TPersonagem.setnome(aNome: String);
begin
  if (aNome = '') or (aNome.Length < 3) then raise Exception.Create('Erro, nome nulo ou com poucos caracteres');

  self.nome := anome;
end;

procedure TPersonagem.setVida(aVida: integer);
begin
  if aVida > 1 then raise Exception.Create('Erro, vida abaixo de 0. Tpersonagem.setvida');

end;

end.
