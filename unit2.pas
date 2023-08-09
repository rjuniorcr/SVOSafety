unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons,
  unit11;

type

  { TForm2 }

  TForm2 = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form2: TForm2;



implementation

uses unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button2Click(Sender: TObject);
begin

//resetando os itens form
edit1.text:='0';
edit2.text:='0';
edit3.text:='0';
edit4.text:='0';
edit5.text:='0.0001';
edit6.text:='0';
edit7.text:='0';
edit8.text:='0';
ComboBox1.ItemIndex:=0;
ComboBox2.ItemIndex:=0;

close;


end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  //resetando os itens form
edit1.text:='0';
edit2.text:='0';
edit3.text:='0';
edit4.text:='0';
edit5.text:='0.0001';
edit6.text:='0';
edit7.text:='0';
edit8.text:='0';
ComboBox1.ItemIndex:=0;
ComboBox2.ItemIndex:=0;
end;

procedure TForm2.FormKeyPress(Sender: TObject; var Key: char);
begin
   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;

procedure TForm2.Button1Click(Sender: TObject);
var
  pos_nova_embarcacao: integer;
  lat_N_S: string;
  lon_L_O: string;
  teste_dados: double;
begin


//*****************************
//validacao dos dados digitados
//*****************************
try
  teste_dados:= strtofloat(edit1.text);
except
  showmessage('Latitude inválida');
  exit;
end;
try
  teste_dados:= strtofloat(edit2.text);
except
  showmessage('Longitude inválida');
  exit;
end;
try
  teste_dados:= strtofloat(edit3.text);
except
  showmessage('HH da hora inválida');
  exit;
end;
try
  teste_dados:= strtofloat(edit4.text);
except
  showmessage('mm da hora inválida');
  exit;
end;

try
  teste_dados:= strtofloat(edit5.text);
except
  showmessage('Área inválida');
  exit;
end;

if (teste_dados<=0) then //para evitar área igual a 0 ou negativa
   begin
     showmessage('Área inválida.');
     exit;
   end;

try
  teste_dados:= strtofloat(edit6.text);
except
  showmessage('Tripulação inválida');
  exit;
end;
if (teste_dados<0) then //para evitar tripulacao negativa
   begin
     showmessage('Tripulação inválida.');
     exit;
   end;

try
  teste_dados:= strtofloat(edit7.text);
except
  showmessage('Velocidade inválida');
  exit;
end;
if (teste_dados<0) then //para evitar velocidade negativa
   begin
     showmessage('Velocidade inválida.');
     exit;
   end;
try
  teste_dados:= strtofloat(edit8.text);
except
  showmessage('Azimute inválido');
  exit;
end;
if ((teste_dados<0) or (teste_dados>360)) then //para evitar azimute diferente da faixa de 0 a 360
   begin
     showmessage('Azimute inválido.');
     exit;
   end;





form2.hide; //para evitar do usuario olhar os edit's zerando ao clicar em "adicionar"
form2.close;
form1.StringGrid2.RowCount := form1.StringGrid2.RowCount+1;
pos_nova_embarcacao:= form1.StringGrid2.RowCount-1;

lat_N_S:='';
//carregando lat_N_S com "N" se for norte e com "S" se for Sul
if (ComboBox1.ItemIndex=0) then
   begin
     lat_N_S:='N';
   end;
if (ComboBox1.ItemIndex=1) then
   begin
     lat_N_S:='S';
   end;

lon_L_O:='';
//carregando lon_L_O com "L" se for Leste e com "O" se for Oeste
if (ComboBox2.ItemIndex=0) then
   begin
     lon_L_O:='L';
   end;
if (ComboBox2.ItemIndex=1) then
   begin
     lon_L_O:='O';
   end;



//grid dos dados das embarcações
form1.stringgrid2.Cells[0,pos_nova_embarcacao]:=  'Embarcação_'+inttostr(pos_nova_embarcacao);  //id. do embarcacao
form1.stringgrid2.Cells[1,pos_nova_embarcacao]:=  edit1.text;    //latitude em graus decimais, sem sinal
form1.stringgrid2.Cells[2,pos_nova_embarcacao]:=  lat_N_S;        //latitude Norte ou Sul
form1.stringgrid2.Cells[3,pos_nova_embarcacao]:=  edit2.text;   //longitude em graus decimais, sem sinal
form1.stringgrid2.Cells[4,pos_nova_embarcacao]:=  lon_L_O;        //longitude Leste ou Oeste
form1.stringgrid2.Cells[5,pos_nova_embarcacao]:=  edit3.text;       //hora
form1.stringgrid2.Cells[6,pos_nova_embarcacao]:=  edit4.text;       //minuto
form1.stringgrid2.Cells[7,pos_nova_embarcacao]:=  edit5.text; // Area em metros quadrados
form1.stringgrid2.Cells[8,pos_nova_embarcacao]:=  edit6.text;        //tripulacao
form1.stringgrid2.Cells[9,pos_nova_embarcacao]:=  edit7.text;       //velocidade em Nós
form1.stringgrid2.Cells[10,pos_nova_embarcacao]:= edit8.text;      //direcao em graus


//resetando os itens form
edit1.text:='0';
edit2.text:='0';
edit3.text:='0';
edit4.text:='0';
edit5.text:='0.0001';
edit6.text:='0';
edit7.text:='0';
edit8.text:='0';
ComboBox1.ItemIndex:=0;
ComboBox2.ItemIndex:=0;


form1.stringgrid2.AutoSizeColumn(0);
form1.stringgrid2.AutoSizeColumn(1);
form1.stringgrid2.AutoSizeColumn(2);
form1.stringgrid2.AutoSizeColumn(3);
form1.stringgrid2.AutoSizeColumn(4);
form1.stringgrid2.AutoSizeColumn(5);
form1.stringgrid2.AutoSizeColumn(6);
form1.stringgrid2.AutoSizeColumn(7);
form1.stringgrid2.AutoSizeColumn(8);
form1.stringgrid2.AutoSizeColumn(9);
form1.stringgrid2.AutoSizeColumn(10);


form1.SpeedButton1.Enabled:= true;


//se passar por todos os try, faz os calculos novamente e plota o mapa
//faz os calculos
form1.calcular();
//executa as rotinas do botao "Plotar" da aba "plotagem"
Form1.Button14Click(Sender);



end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin

    form_origem_conv_gms:=1;//variavel de controle entre form da origem
    try
        valor_graus_decimais_origem:= strtofloat(edit1.Text);;
    except
        showmessage('Latitude Inválida');
        exit;
    end;
    form11.showmodal;


end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
  
    form_origem_conv_gms:=2;//variavel de controle entre form da origem
    try
        valor_graus_decimais_origem:= strtofloat(edit2.Text);;
    except
        showmessage('Longitude Inválida');
        exit;
    end;
    form11.showmodal;


end;

end.

