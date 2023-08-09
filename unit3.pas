unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, unit4;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation

uses unit1;

{$R *.lfm}

{ TForm3 }

procedure TForm3.FormShow(Sender: TObject);
var
  i: integer;
begin

//limpando o combox em cada exibição
ComboBox1.Clear;


Button1.enabled:= false;

id_embar_edit:=0;

for i:=1 to form1.StringGrid2.RowCount-1 do
    begin
      ComboBox1.items.add(form1.StringGrid2.Cells[0,i]);
      Button1.enabled:= true;
    end;

ComboBox1.itemindex:=0;


end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm3.FormKeyPress(Sender: TObject; var Key: char);
begin
   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;

procedure TForm3.Button1Click(Sender: TObject);
begin

     form3.hide;
     close;
     id_embar_edit:= ComboBox1.Itemindex+1; //para o id da embaracao selecionada na variavel global id_embar_edit
     form4.showmodal;


end;

end.

