unit Unit8;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons, unit11;

type

  { TForm8 }

  TForm8 = class(TForm)
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
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
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
  Form8: TForm8;

implementation

uses unit1;

{$R *.lfm}

{ TForm8 }

procedure TForm8.FormShow(Sender: TObject);
begin

//carregando os edit's com os dados do estagio selecionado que é referenciada pela variavel global "id_estagio_edit"
//latitude em graus decimais, sem sinal...
edit1.Text := form1.stringgrid1.Cells[1,id_estagio_edit];

if (form1.stringgrid1.Cells[2,id_estagio_edit] = 'N') then
   begin
        ComboBox1.ItemIndex := 0;
   end;
if (form1.stringgrid1.Cells[2,id_estagio_edit]='S') then
   begin
        ComboBox1.ItemIndex := 1;
   end;

edit2.text:= form1.stringgrid1.Cells[3,id_estagio_edit];   //longitude em graus decimais, sem sinal


if (form1.stringgrid1.Cells[4,id_estagio_edit]='L') then
   begin
        ComboBox2.ItemIndex:=0;
   end;
if (form1.stringgrid1.Cells[4,id_estagio_edit]='O') then
   begin
        ComboBox2.ItemIndex:=1;
   end;

edit3.text:= form1.stringgrid1.Cells[5,id_estagio_edit];   //sigma
edit4.text:= form1.stringgrid1.Cells[6,id_estagio_edit];   //area letal
edit5.text:= form1.stringgrid1.Cells[7,id_estagio_edit];   //raio da dispersao


end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm8.FormKeyPress(Sender: TObject; var Key: char);
begin
   //detecta a tecla ESC e fecha o form
   If Key = #27 Then Close;
end;

procedure TForm8.Button1Click(Sender: TObject);
var
   teste_dados: double;
   lat_N_S: string;
   lon_L_O: string;
begin
  //********************************
  // validacao dos dados digitados
  //********************************
  try
    teste_dados := strtofloat(edit1.text);
  except
    showmessage('Latitude inválida!');
    exit;
  end;
  try
    teste_dados := strtofloat(edit2.text);
  except
    showmessage('Longitude inválida!');
    exit;
  end;
  try
    teste_dados := strtofloat(edit3.text);
  except
    showmessage('Dispersão(Km) inválida!');
    exit;
  end;
  //para evitar sigma igual a 0 ou negativo
  if ( teste_dados <=0 ) then
     begin
       showmessage('Dispersão(Km) inválida!');
       exit;
     end;
  try
    teste_dados:= strtofloat(edit4.text);
  except
    showmessage('Área inválida!');
    exit;
  end;
  if (teste_dados<=0) then //para evitar área igual a 0 ou negativa
     begin
       showmessage('Área inválida.');
       exit;
     end;

  try
    teste_dados:= strtofloat(edit5.text);
  except
    showmessage('Raio da Dispersão inválido');
    exit;
  end;
  if (teste_dados<=0) then //para evitar raio da dispersão igual a 0 ou negativo
     begin
       showmessage('Raio da Dispersão inválido.');
       exit;
     end;




form8.hide;
form8.close;

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

//grid dos dados dos estágios
form1.stringgrid1.Cells[1,id_estagio_edit]:=  edit1.text;  //latitude em graus decimais, sem sinal
form1.stringgrid1.Cells[2,id_estagio_edit]:=  lat_N_S;     //latitude Norte ou Sul
form1.stringgrid1.Cells[3,id_estagio_edit]:=  edit2.text;  //longitude em graus decimais, sem sinal
form1.stringgrid1.Cells[4,id_estagio_edit]:=  lon_L_O;     //longitude Leste ou Oeste
form1.stringgrid1.Cells[5,id_estagio_edit]:=  edit3.text;  //dispersao(km)
form1.stringgrid1.Cells[6,id_estagio_edit]:=  edit4.text;  //área letal
form1.stringgrid1.Cells[7,id_estagio_edit]:=  edit5.text;  //raio da dispersao

//resetando os itens form
edit1.text:='0';
edit2.text:='0';
edit3.text:='0.0001';
edit4.text:='0.0001';
edit5.text:='0.0001';
ComboBox1.ItemIndex:=0;
ComboBox2.ItemIndex:=0;


form1.SpeedButton2.Enabled:= true;


//se passar por todos os try, faz os calculos novamente e plota o mapa
//faz os calculos
form1.calcular();
//executa as rotinas do botao "Plotar" da aba "plotagem"
Form1.Button14Click(Sender);



end;

procedure TForm8.BitBtn1Click(Sender: TObject);
begin

    form_origem_conv_gms:=7;//variavel de controle entre form da origem
  try
      valor_graus_decimais_origem:= strtofloat(edit1.Text);;
  except
      showmessage('Latitude Inválida');
      exit;
  end;
  form11.showmodal;


end;

procedure TForm8.BitBtn2Click(Sender: TObject);
begin


  form_origem_conv_gms:=8;//variavel de controle entre form da origem
  try
      valor_graus_decimais_origem:= strtofloat(edit2.Text);;
  except
      showmessage('Longitude Inválida');
      exit;
  end;
  form11.showmodal;





end;

end.

