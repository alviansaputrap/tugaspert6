unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnHitung: TButton;
    edtFaktorial: TEdit;
    edtJumlah: TEdit;
    edtDeret: TEdit;
    gbHasil: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure btnHitungClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

function Factorial(n: integer): integer;
begin
  if n <= 1 then
    Result := 1
  else
    Result := n * Factorial(n - 1);
end;

{ TForm1 }

procedure TForm1.btnHitungClick(Sender: TObject);
var
  n, faktorial, jumlah: integer;
  i: Integer;
begin
  // Dapatkan nilai N dari TEdit (edtDeret)
  n := StrToIntDef(edtDeret.Text, 0);

  // Hitung jumlah deret ke-N
  jumlah := 0;
  for i := 1 to n do
    jumlah := jumlah + i;
  edtJumlah.Text := IntToStr(jumlah);

  // Hitung faktorial dari jumlah deret dan tampilkan hasilnya
  faktorial := Factorial(n);  // Ganti 'n' dengan 'jumlah'
  edtFaktorial.Text := IntToStr(faktorial);

end;

procedure TForm1.Label4Click(Sender: TObject);
begin

end;

end.

