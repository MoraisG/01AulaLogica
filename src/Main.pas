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
    Button1: TButton;
    procedure btnEx01Click(Sender: TObject);
    procedure btnEx2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    function DividirPar(Value: Integer): Integer;
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
  aSeq: array [1 .. 4] of Integer;
  I: Integer;
begin
  for I := 0 to Length(aSeq) - 1 do
  begin
    aSeq[I] := RandomRange(0, 999);
    ShowMessage('O quadrado de : ' + aSeq[I].ToString + ' é ' + Power(aSeq[I],
      2).ToString);
  end;

end;

procedure TForm1.btnEx2Click(Sender: TObject);
var
  aDados: array [0 .. 3, 0 .. 1] of Integer;
  I: Integer;
begin
  for I := 0 to 3 do
  begin
    aDados[I, 0] := RandomRange(0, 999);
    aDados[I, 1] := (RandomRange(1, 10) * NegativeValue);

    ShowMessage('A potência de : ' + aDados[I, 0].ToString + ' por ' + aDados[I,
      1].ToString + ' é ' + Power(aDados[I, 0], aDados[I, 1]).ToString);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  xNumero: Integer;
  I, X: Integer;
  vFatores: array of Integer;
begin
  X := 0;
  xNumero := RandomRange(1, 999);
  for I := 1 to xNumero do
    if FMod(xNumero, I) = 0 then
    begin
      SetLength(vFatores, (Length(vFatores) + 1));
      vFatores[X] := I;
      Inc(X);
    end;

  for I := 0 to Length(vFatores) - 1 do
    ShowMessage('Os fatores foram: ' + vFatores[I].ToString);

end;

function TForm1.DividirPar(Value: Integer): Integer;
begin
  Result := Value div 2;
end;

end.
