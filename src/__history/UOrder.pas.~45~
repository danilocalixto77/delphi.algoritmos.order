unit UOrder;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.StrUtils;

type
  TForm1 = class(TForm)
    Button1: TButton;
    EditNumeros: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    RadioGroup1: TRadioGroup;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function OrderBubbleSort(var arrNumeros : TArray<Integer>): TArray<Integer>;
    function ObterNumeros(var strValores : String) : TArray<Integer>;
    procedure ImprimirNumeros(var arrNumerosOrdenados : TArray<Integer>);
  end;
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  arriNums1, arriNums2 : TArray<Integer>;
  strTexto : String;
begin
   strTexto := EditNumeros.Text;
   if RadioGroup1.ItemIndex = 0 then
   begin
     arriNums1 := ObterNumeros(strTexto);
     arriNums2 := OrderBubbleSort(arriNums1);
     ImprimirNumeros(arriNums2);
   end;
end;

procedure TForm1.ImprimirNumeros(var arrNumerosOrdenados: TArray<Integer>);
var
  I: Integer;
begin
  for I := 0 to (length(arrNumerosOrdenados)-1) do
  begin
    Memo1.Lines.Add('Posição : ' + IntToStr(i) + ' Número: ' + IntToStr(arrNumerosOrdenados[i]));
  end;
end;

function TForm1.ObterNumeros(var strValores : String) : TArray<Integer>;
//Usar a função SplitString para separar os números (System.StrUtils)
var
  arrsNumeros : TArray<String>;
  I: Integer;
begin
  arrsNumeros := SplitString(strValores, ',');

  SetLength(Result, length(arrsNumeros));

  for I := 0 to length(arrsNumeros) -1 do
    Result[I] := StrToInt(arrsNumeros[I])
end;

function TForm1.OrderBubbleSort(var arrNumeros: TArray<Integer>): TArray<Integer>;
var
  I, intTamanho, intVlAnterior : Integer;
  J : Integer;
  booOrdenou : Boolean;
begin

  intTamanho := length(arrNumeros);
  setLength(Result, intTamanho);

  booOrdenou := False;
  while booOrdenou = False do
  begin
    booOrdenou := True;
    for I := 0 to (intTamanho-1) do
    begin
        //Memo1.Lines.Add('Numero de I sendo analisado: '+ IntToStr(i)+' Valor: '+ IntTostr(arrNumeros[i]));
        if ((i) < (intTamanho-1)) then
        begin
          if (arrNumeros[i] > arrNumeros[i+1]) then
          begin
            booOrdenou := False;
            intVlAnterior := arrNumeros[I];
            arrNumeros[I] := arrNumeros[I+1];
            arrNumeros[I+1] := intVlAnterior;
          end;
        end;

    end;

  end;
  for J := 0 to (intTamanho-1) do
  begin
    Result[J] := arrNumeros[J];
    //Memo1.Lines.Add('Posição : '+ IntToStr(J)+' Valor: '+ IntTostr(arrNumeros[J]));
  end;
end;

end.
