unit uOperacoes;

interface

uses uTrabalhador, System.SysUtils, FMX.Dialogs;

  type TOperacoes = class(TTrabalhador)
  private
    procedure lancardocumentos;
  public
    procedure ExecutarFuncao; override;
  end;

implementation

{ TOperacoes }

procedure Toperacoes.lancardocumentos;
begin
  ShowMessage('O '+ Self.Nome+' acabou de lançar muitos EAQs');
  Self.Trabalhando:=False;
end;

procedure Toperacoes.ExecutarFuncao;
begin
  Self.IniciarExpediente;
  Self.lancarDocumentos;
  Self.EncerrarExpediente;
end;

end.
