unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
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
  Form5: TForm5;

implementation
uses unit1;

{$R *.lfm}

{ TForm5 }

procedure TForm5.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm5.FormKeyPress(Sender: TObject; var Key: char);
begin
   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;

procedure TForm5.Button1Click(Sender: TObject);
var
   id_embar_delete: integer;
   i: integer;
begin

id_embar_delete:= ComboBox1.Itemindex+1; //para o id da embaracao selecionada na variavel local id_embar_delete

form5.hide;
if MessageDlg('Deseja excluir a embarcação *'+form1.StringGrid2.cells[0,id_embar_delete]+'*', mtConfirmation,[mbyes,mbno],0)=mryes then
   begin
      form1.StringGrid2.DeleteRow(id_embar_delete);
      showmessage('Embarcação Excluída com Sucesso!');
      showmessage('Será feita a renomeação dos índices das embarcações');

      //rotina para renomeação dos índices da embarcações.
      //barco1, barco2, barco3.......
      for i:=1 to form1.StringGrid2.RowCount-1 do
          begin
            form1.StringGrid2.Cells[0,i]:= 'Embarcação_'+inttostr(i);
          end;
      close;
      form1.SpeedButton1.Enabled:= true;

      //se passar por todos os try, faz os calculos novamente e plota o mapa
      //faz os calculos
      form1.calcular();
      //executa as rotinas do botao "Plotar" da aba "plotagem"
      Form1.Button14Click(Sender);
   end
else
   begin
      showmessage('Exclusão de Embarcação Cancelada');
      close;
   end;





end;

procedure TForm5.FormShow(Sender: TObject);
var
  i: integer;
begin

//limpando o combox em cada exibição
ComboBox1.Clear;

Button1.enabled:= false;

for i:=1 to form1.StringGrid2.RowCount-1 do
    begin
      ComboBox1.items.add(form1.StringGrid2.Cells[0,i]);
      Button1.enabled:= true;
    end;

ComboBox1.itemindex:=0;

end;

end.

