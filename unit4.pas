unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons
  , unit11;

type

  { TForm4 }

  TForm4 = class(TForm)
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
    procedure FormKeyPress(Sender: TObject; var Key: char);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form4: TForm4;

implementation

uses unit1;

{$R *.lfm}

{ TForm4 }

procedure TForm4.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm4.FormKeyPress(Sender: TObject; var Key: char);
begin
   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;

procedure TForm4.Button1Click(Sender: TObject);
var
   teste_dados: double;
   lat_N_S: string;
   lon_L_O: string;
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

form4.hide;
form4.close;

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
form1.stringgrid2.Cells[1,id_embar_edit]:=  edit1.text;   //latitude em graus decimais, sem sinal
form1.stringgrid2.Cells[2,id_embar_edit]:=  lat_N_S;      //latitude Norte ou Sul
form1.stringgrid2.Cells[3,id_embar_edit]:=  edit2.text;   //longitude em graus decimais, sem sinal
form1.stringgrid2.Cells[4,id_embar_edit]:=  lon_L_O;      //longitude Leste ou Oeste
form1.stringgrid2.Cells[5,id_embar_edit]:=  edit3.text;   //hora
form1.stringgrid2.Cells[6,id_embar_edit]:=  edit4.text;   //minuto
form1.stringgrid2.Cells[7,id_embar_edit]:=  edit5.text;   // Area em metros quadrados
form1.stringgrid2.Cells[8,id_embar_edit]:=  edit6.text;   //tripulacao
form1.stringgrid2.Cells[9,id_embar_edit]:=  edit7.text;   //velocidade em Nós
form1.stringgrid2.Cells[10,id_embar_edit]:= edit8.text;   //direcao em graus


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


form1.SpeedButton1.Enabled:= true;

//se passar por todos os try, faz os calculos novamente e plota o mapa
//faz os calculos
form1.calcular();
//executa as rotinas do botao "Plotar" da aba "plotagem"
Form1.Button14Click(Sender);



end;

procedure TForm4.BitBtn1Click(Sender: TObject);
begin

    form_origem_conv_gms:=3;//variavel de controle entre form da origem
    try
        valor_graus_decimais_origem:= strtofloat(edit1.Text);;
    except
        showmessage('Latitude Inválida');
        exit;
    end;
    form11.showmodal;

end;

procedure TForm4.BitBtn2Click(Sender: TObject);
begin
    form_origem_conv_gms:=4;//variavel de controle entre form da origem
    try
        valor_graus_decimais_origem:= strtofloat(edit2.Text);;
    except
        showmessage('Lontitude Inválida');
        exit;
    end;
    form11.showmodal;
end;



procedure TForm4.FormShow(Sender: TObject);

begin

//carregando os edit's com os dados da embarcacao selecionada que é referenciada pela variavel global "id_embar_edit"
edit1.Text:= form1.stringgrid2.Cells[1,id_embar_edit];    //latitude em graus decimais, sem sinal


if (form1.stringgrid2.Cells[2,id_embar_edit]='N') then
   begin
        ComboBox1.ItemIndex:=0;
   end;
if (form1.stringgrid2.Cells[2,id_embar_edit]='S') then
   begin
        ComboBox1.ItemIndex:=1;
   end;

edit2.text:= form1.stringgrid2.Cells[3,id_embar_edit];   //longitude em graus decimais, sem sinal


if (form1.stringgrid2.Cells[4,id_embar_edit]='L') then
   begin
        ComboBox2.ItemIndex:=0;
   end;
if (form1.stringgrid2.Cells[4,id_embar_edit]='O') then
   begin
        ComboBox2.ItemIndex:=1;
   end;

edit3.text:= form1.stringgrid2.Cells[5,id_embar_edit];   //hora
edit4.text:= form1.stringgrid2.Cells[6,id_embar_edit];   //minuto
edit5.text:= form1.stringgrid2.Cells[7,id_embar_edit];   // Area em metros quadrados
edit6.text:= form1.stringgrid2.Cells[8,id_embar_edit];   //tripulacao
edit7.text:= form1.stringgrid2.Cells[9,id_embar_edit];   //velocidade em Nós
edit8.text:= form1.stringgrid2.Cells[10,id_embar_edit];  //direcao em graus



end;

end.

