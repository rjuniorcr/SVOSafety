unit Unit9;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm9 }

  TForm9 = class(TForm)
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
  Form9: TForm9;

implementation

uses unit1;

{$R *.lfm}

{ TForm9 }

procedure TForm9.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm9.FormKeyPress(Sender: TObject; var Key: char);
begin
   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;



procedure TForm9.Button1Click(Sender: TObject);
var
   id_estagio_delete: integer;
   i: integer;
begin

id_estagio_delete:= ComboBox1.Itemindex+1; //para o id do estagio selecionado na variavel local id_estagio_delete

form9.hide;
if MessageDlg('Deseja excluir o estágio *'+form1.StringGrid1.cells[0,id_estagio_delete]+'*', mtConfirmation,[mbyes,mbno],0)=mryes then
   begin
      form1.StringGrid1.DeleteRow(id_estagio_delete);
      showmessage('Estágio Excluído com Sucesso!');
      showmessage('Será feita a renomeação dos índices dos estágios');

      //rotina para renomeação dos índices dos estágios.
      //estagio1, estagio2, estagio3.......
      for i:=1 to form1.StringGrid1.RowCount-1 do
          begin
            form1.StringGrid1.Cells[0,i]:= 'Estágio_'+inttostr(i);
          end;
      close;
      form1.SpeedButton2.Enabled:= true;

      //se passar por todos os try, faz os calculos novamente e plota o mapa
      //faz os calculos
      form1.calcular();
      //executa as rotinas do botao "Plotar" da aba "plotagem"
      Form1.Button14Click(Sender);
   end
else
   begin
      showmessage('Exclusão de Estágio Cancelada');
      close;
   end;



end;

procedure TForm9.FormShow(Sender: TObject);
var
  i: integer;
begin

//limpando o combox em cada exibição
ComboBox1.Clear;

Button1.enabled:= false;

for i:=1 to form1.StringGrid1.RowCount-1 do
    begin
      ComboBox1.items.add(form1.StringGrid1.Cells[0,i]);
      Button1.enabled:= true;
    end;

ComboBox1.itemindex:=0;


end;

end.

