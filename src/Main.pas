unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    btnEx01: TButton;
    btnEx2: TButton;
    procedure btnEx01Click(Sender: TObject);
    procedure btnEx2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

Uses
  System.Math;

{$R *.dfm}

procedure TForm1.btnEx01Click(Sender: TObject);
var
  aSeq: array [1 .. 4] of integer;
  I: integer;
begin
  for I := 0 to Length(aSeq) - 1 do
  begin
    aSeq[I] := RandomRange(0, 999);
    ShowMessage('O quadrado de : ' + aSeq[I].ToString + ' � ' + Power(aSeq[I],
      2).ToString);
  end;

end;

procedure TForm1.btnEx2Click(Sender: TObject);
var
  aDados: array [0 .. 3, 0 .. 1] of integer;
  I: integer;
begin
  for I := 0 to 3 do
  begin
    aDados[I, 0] := RandomRange(0, 999);
    aDados[I, 1] := (RandomRange(1, 10) * NegativeValue);

    ShowMessage('A pot�ncia de : ' + aDados[I, 0].ToString + ' por ' + aDados[I,
      1].ToString + ' � ' + Power(aDados[I, 0], aDados[I, 1]).ToString);
  end;
end;

end.