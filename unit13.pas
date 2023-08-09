unit Unit13;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit14;

type

  { TForm13 }

  TForm13 = class(TForm)
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
  Form13: TForm13;

implementation

uses unit1;
{$R *.lfm}

{ TForm13 }

procedure TForm13.FormShow(Sender: TObject);
var
  i: integer;
begin

  //limpando o combox em cada exibição
  ComboBox1.Clear;

  Button1.enabled:= false;

  id_trajetoria_edit:=0;

  for i:=1 to form1.StringGrid7.RowCount-1 do
      begin
        ComboBox1.items.add(form1.StringGrid7.Cells[0,i]);
        Button1.enabled:= true;
      end;

  ComboBox1.itemindex:=0;

end;

procedure TForm13.Button1Click(Sender: TObject);
begin
     form13.hide;
     close;
     id_trajetoria_edit:= ComboBox1.Itemindex+1; //para o id da trajetoria selecionada na variavel global id_estagio_edit
     form14.showmodal;

end;

procedure TForm13.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm13.FormKeyPress(Sender: TObject; var Key: char);
begin
   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;

end.


























