unit Unit14;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm14 }

  TForm14 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form14: TForm14;

implementation

uses unit1;

{$R *.lfm}

{ TForm14 }

procedure TForm14.FormShow(Sender: TObject);
begin

  //carregando os edit's com os dados da trajetoria selecionada que é referenciada pela variavel global "id_trajetoria_edit"
  edit1.Text:= form1.stringgrid7.Cells[1,id_trajetoria_edit];    //descricao da trajetoria

end;

procedure TForm14.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm14.FormKeyPress(Sender: TObject; var Key: char);
begin

   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form


end;

procedure TForm14.Button1Click(Sender: TObject);
begin
  
  //*****************************
  //validacao dos dados digitados
  //*****************************
  if (edit1.text ='') then
    begin
        showmessage('Não é aceito uma descrição em branco');
        exit;
    end;
  form14.hide;
  form14.close;


  //grid dos dados dos estágios
  form1.stringgrid7.Cells[1,id_trajetoria_edit]:=  edit1.text;  //descricao da trajetoria

  //resetando os itens form
  edit1.text:='';

  form1.SpeedButton7.Enabled:= true;

  form1.label17.caption:= '  '+form1.stringgrid7.cells[0,(id_trajetoria_ativa)]+'  ';
  form1.label18.caption:= '  '+form1.stringgrid7.cells[1,(id_trajetoria_ativa)]+'  ';


end;

end.























