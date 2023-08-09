unit Unit16;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm16 }

  TForm16 = class(TForm)
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
  Form16: TForm16;

implementation

uses unit1;

{$R *.lfm}

{ TForm16 }

procedure TForm16.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm16.Button1Click(Sender: TObject);
begin

    //se forem feitas alterações nos estágios da trajetória ativa sem que sejam salvas
    //e o usuario resolver trocar de trajetória ativa, o sistema pergunta
    //se deseja salvar as alterações feitas nos estágios da trajetória atual antes
    //de trocar a trajetória ativa
    if (form1.SpeedButton2.enabled=true) then
        begin
            Showmessage('Foram feitas alteraçãos na Guia Estágios que não foram salvas');
            if MessageDlg('Deseja salva as alterações da guia Estágios antes de mudar a trajetória ativa', mtConfirmation,[mbyes,mbno],0)=mryes then
             begin
                 form1.salva_arquivo_estagios();//chamando a procedure q atualizar o arquivo 'estagios.txt'
                 form1.SpeedButton2.Enabled:= false;
             end
            else
             begin
                 form1.SpeedButton2.Enabled:= false;
             end;
        end;



    form16.hide;
    close;
    id_trajetoria_ativa:= ComboBox1.Itemindex+1; //para o id da trajetoria selecionada na variavel global id_trajetoria_ativa



    form1.label17.caption:= '  '+form1.stringgrid7.cells[0,(id_trajetoria_ativa)]+'  ';
    form1.label18.caption:= '  '+form1.stringgrid7.cells[1,(id_trajetoria_ativa)]+'  ';

    form1.GroupBox2.Caption:= ' Estágios do Veículo ('+ form1.label17.caption+')' ;

    form1.SpeedButton7.enabled:= true;


    //recarrega o stringlist com os estagios da nova trajetoria ativa
    Form1.carrega_arquivo_estagios();
    //faz os calculos novamente e plota o mapa
    Form1.calcular();
    //executa as rotinas do botao "Plotar" da aba "plotagem"
    Form1.Button14Click(Sender);

end;

procedure TForm16.FormKeyPress(Sender: TObject; var Key: char);
begin
     If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;

procedure TForm16.FormShow(Sender: TObject);
var
  i: integer;
begin

  //limpando o combox em cada exibição
  ComboBox1.Clear;

  Button1.enabled:= false;

  for i:=1 to form1.StringGrid7.RowCount-1 do
      begin
        ComboBox1.items.add(form1.StringGrid7.Cells[0,i]);
        Button1.enabled:= true;
      end;

  ComboBox1.itemindex:=id_trajetoria_ativa-1;

end;

end.
















