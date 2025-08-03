unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, uclasse, uplayer, uboss, formjogo;

type
  TForm3 = class(TForm)
    Enviar: TButton;
    PanelCriarPersonagem: TPanel;
    inputNome: TEdit;
    Masculino: TRadioButton;
    Feminino: TRadioButton;
    Panel2: TPanel;
    PontosRestantes: TLabel;
    Panel3: TPanel;
    AtackPanel: TPanel;
    ATAQUE: TLabel;
    AtaqueStatus: TLabel;
    Panel4: TPanel;
    AtackMinus: TLabel;
    AtackPlus: TLabel;
    DefensePanel: TPanel;
    DEFESA: TLabel;
    DefesaStatus: TLabel;
    Panel5: TPanel;
    DefenseMinus: TLabel;
    DefensePlus: TLabel;
    HealthPanel: TPanel;
    VIDA: TLabel;
    VidaStatus: TLabel;
    Panel6: TPanel;
    HealthMinus: TLabel;
    HealthPlus: TLabel;
    main: TPanel;
    Proxima: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    espaço: TPanel;
    espaço2: TPanel;
    Espaço3: TPanel;
    function selectgender : string;
    procedure HealthMinusClick(Sender: TObject);
    procedure counterhandler(plus : boolean);
    procedure FormCreate(Sender: TObject);
    procedure HealthPlusClick(Sender: TObject);
    procedure DefenseMinusClick(Sender: TObject);
    procedure DefensePlusClick(Sender: TObject);
    procedure AtackPlusClick(Sender: TObject);
    procedure AtackMinusClick(Sender: TObject);
    procedure EnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    var player : tplayer;
    remaining, baseatq, basedef, basehealth : integer
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}





procedure Tform3.counterhandler (plus : boolean);
begin
  if plus then begin
    remaining := remaining - 1;
  end else begin
    remaining := remaining + 1;
  end;
  pontosrestantes.Caption := ('Pontos restantes: ' + remaining.ToString)
end;

procedure TForm3.AtackMinusClick(Sender: TObject);
begin
    if baseatq = 10 then begin
    ShowMessage('Atributo minimo: 10')
    end else begin
    baseatq := baseatq - 1;
    ataquestatus.Caption := inttostr(baseatq);
    counterhandler (false)
    end;
end;

procedure TForm3.AtackPlusClick(Sender: TObject);
begin
    if remaining <= 0 then begin
    ShowMessage('Sem pontos restantes!')
    end else begin
    baseatq := baseatq + 1;
    ataquestatus.Caption := inttostr(baseatq);
    counterhandler (true)
    end;
end;

function Tform3.selectgender  : String;
begin
  if Feminino.Checked then result := 'F';
  if Masculino.Checked then result := 'M';


end;

procedure TForm3.EnviarClick(Sender: TObject);
var name, gender: String;
begin
 if (not Masculino.Checked) and (not Feminino.Checked) then begin
    showmessage ('por favor escolha um genero');
 end else if inputNome.Text = '' then begin
    showmessage ('por favor escolha um nome');
 end else begin
 name := inputNome.Text;
 gender := selectgender;

 player := tplayer.Create(baseatq, basedef, basehealth, 5, name, gender);
 PanelCriarPersonagem.Visible := False;
 end;
end;

procedure TForm3.HealthMinusClick(Sender: TObject);
begin
    if basehealth = 10 then begin
    ShowMessage('Atributo minimo: 10')
    end else begin
    basehealth := basehealth - 1;
    vidastatus.Caption := inttostr(basehealth);
    counterhandler (false)
    end;
end;

procedure TForm3.HealthPlusClick(Sender: TObject);
begin
    if remaining <= 0 then begin
    ShowMessage('Sem pontos restantes!')
    end else begin
    basehealth := basehealth + 1;
    vidastatus.Caption := inttostr(basehealth);
    counterhandler (true)
    end;
end;

procedure TForm3.DefenseMinusClick(Sender: TObject);
begin
    if basedef = 10 then begin
    ShowMessage('Atributo minimo: 10')
    end else begin
    basedef := basedef - 1;
    defesastatus.Caption := inttostr(basedef);
    counterhandler (false)
    end;
end;

procedure TForm3.DefensePlusClick(Sender: TObject);
begin
    if remaining <= 0 then begin
    ShowMessage('Sem pontos restantes!')
    end else begin
    basedef := basedef + 1;
    defesastatus.Caption := inttostr(basedef);
    counterhandler (true)
    end;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  remaining := 20;
  baseatq := 10;
  basedef := 10;
  basehealth := 10;
  pontosrestantes.Caption := ('Pontos restantes: ' + remaining.ToString);
  vidastatus.Caption := inttostr(basehealth);
  defesastatus.Caption := inttostr(basedef);
  ataquestatus.Caption := inttostr(baseatq);
  PanelCriarPersonagem.Visible := True;
end;

end.
