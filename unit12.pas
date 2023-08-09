unit Unit12;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm12 }

  TForm12 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form12: TForm12;

implementation

uses unit1;

{$R *.lfm}

{ TForm12 }

procedure TForm12.Button1Click(Sender: TObject);
var
    pos_nova_trajetoria: integer;
    descricao: string;

begin

  //*****************************
  //validacao dos dados digitados
  //*****************************
  if (edit1.text ='') then
    begin
        showmessage('Não é aceito uma descrição em branco');
        exit;
    end;

  form12.hide; //para evitar do usuario olhar os edit's zerando ao clicar em "adicionar"
  form12.close;
  form1.StringGrid7.RowCount := form1.StringGrid7.RowCount+1;
  pos_nova_trajetoria:= form1.StringGrid7.RowCount-1;


  form1.SpeedButton7.Enabled:= true;


  //grid dos dados das trajetorias
  form1.stringgrid7.Cells[0,pos_nova_trajetoria]:=  'Trajetória_'+inttostr(pos_nova_trajetoria); //id da trajetoria
  form1.stringgrid7.Cells[1,pos_nova_trajetoria]:=  edit1.text;  //descricao da trajetória

  //resetando os itens form
  edit1.text:='';
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
  //resetando os itens form
  edit1.text:='';
  close;
end;

procedure TForm12.FormKeyPress(Sender: TObject; var Key: char);
begin
     If Key = #27 Then
       begin
           edit1.text:='';
           Close; //detecta a tecla ESC e fecha o form
       end;
end;

end.


















