unit Unit7;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit8;

type

  { TForm7 }

  TForm7 = class(TForm)
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
  Form7: TForm7;

implementation

uses unit1;

{$R *.lfm}

{ TForm7 }

procedure TForm7.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm7.FormKeyPress(Sender: TObject; var Key: char);
begin
   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
     form7.hide;
     close;
     id_estagio_edit:= ComboBox1.Itemindex+1; //para o id do estagio selecionado na variavel global id_estagio_edit
     form8.showmodal;
end;

procedure TForm7.FormShow(Sender: TObject);
var
  i: integer;
begin

//limpando o combox em cada exibição
ComboBox1.Clear;

Button1.enabled:= false;

id_estagio_edit:=0;

for i:=1 to form1.StringGrid1.RowCount-1 do
    begin
      ComboBox1.items.add(form1.StringGrid1.Cells[0,i]);
      Button1.enabled:= true;
    end;

ComboBox1.itemindex:=0;


end;

end.

