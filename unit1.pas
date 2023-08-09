unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  Menus, StdCtrls, Grids, Buttons, Math, Types, unit2, unit3, unit4, unit5,
  unit6, unit7, unit8, unit9, Unit10, unit12, unit13, unit14, unit15, unit16,
  unit17;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button19: TButton;
    Button2: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Edit1: TEdit;
    Edit10: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    GroupBox1: TGroupBox;
    GroupBox10: TGroupBox;
    GroupBox11: TGroupBox;
    GroupBox12: TGroupBox;
    GroupBox13: TGroupBox;
    GroupBox14: TGroupBox;
    GroupBox15: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MainMenu1: TMainMenu;
    Memo1: TMemo;
    Memo2: TMemo;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    PageControl1: TPageControl;
    PageControl2: TPageControl;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    StringGrid6: TStringGrid;
    StringGrid7: TStringGrid;
    StringGrid8: TStringGrid;
    TabSheet1: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Timer1: TTimer;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Edit10Change(Sender: TObject);
    procedure Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Edit8Change(Sender: TObject);
    procedure Edit9Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseWheelDown(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure Image1MouseWheelUp(Sender: TObject; Shift: TShiftState;
      MousePos: TPoint; var Handled: Boolean);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure StringGrid1DblClick(Sender: TObject);
    procedure StringGrid2DblClick(Sender: TObject);
    procedure StringGrid7DblClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public
    procedure zoom_out_plotagem();
    procedure zoom_in_plotagem();
    procedure carrega_arquivo_operacao();
    procedure carrega_arquivo_trajetoria_ativa();
    procedure carrega_arquivo_trajetorias();
    procedure carrega_arquivo_embarcacoes();
    procedure carrega_arquivo_estagios();
    procedure salva_arquivo_trajetorias();
    procedure salva_arquivo_trajetoria_ativa();
    procedure salva_arquivo_embarcacoes();
    procedure salva_arquivo_estagios();
    procedure salva_arquivo_operacao();
    procedure clear_mapa();
    procedure carga_dados_plot_mapa();
    procedure plotar_mapa();
    procedure carga_arquivo_plot_mapa();
    procedure salva_arquivo_dados_plot_mapa();
    procedure calculo_origem_grafico();
    function func_calc_latitude_px(latitude_in:double): double; //retorna o ponto no mapa no eixo Y em funcao da latitude inserida
    function func_calc_longitude_px(longitude_in:double): double; //retorna o ponto no mapa no eixo X em funcao da longitude inserida
    procedure plotar_estagios();
    procedure plotar_embarcacoes();
    procedure carrega_hora_lancamento();
    procedure salva_arquivo_hora_lancamento();
    procedure calcular();
    procedure carrega_arquivo_interdicao();

  end;

var
  Form1: TForm1;

  tempo  : integer;
  tempoh : integer;
  tempom : integer;

  lat    : double;
  lat0   : double;
  lon    : double;
  lon0   : double;
  v      : double;
  azi    : double;
  d      : double; //distancia entre a embarcacao e o ponto de impacto do estágio do veículo
  X      : double;
  ng     : double;
  np     : double;
  Prob_Impacto     : double; //Probabilidade de Impacto, era PI no original, mas mudei para nao confundir com o 'pi' usado no pascal
  PIT    : double; //probabilidade de impacto total por embarcacao em funcao de todos os estagios de veiculo
  PITT   : double; //probalidade de impacto total de todas as embarcacoes
  RV     : double; //risco a vida da embarcacao em funcao de um determinado estágio do veiculo
  RVT    : double; //risco a vida total de uma embarcacao em funcao de todos os estagios de veiculo
  RVTT   : double; //risco a vida total de todas as embarcacoes
  Abarco : double; //area da embarcacao
  razao  : double; //razao entre a area da embarcacao é a "area hachurada" (coroa circular)
  latest : double;
  lonest : double;
  sigma  : double;


  h0_hora: integer;    //hora do horario de lançamento
  h0_minuto: integer;  //minuto do horario de lançamento

  id_trajetoria_edit: integer; //auxilar para passar o id da trajetoria
  id_embar_edit: integer; //auxilar para passar o id da embarcacao
  id_estagio_edit: integer; //auxilar para passar o id do estagio


  id_trajetoria_ativa: integer; //indice da trajetoria ativa

  arquivo_trajetorias: TStringList;        //para leitura do trajetorias.txt
  arquivo_trajetoria_ativa: TStringList;   //para leitura do trajetoria_ativa.txt
  arquivo_embarcacoes: TStringList;        //para leitura do embarcacoes.txt
  arquivo_estagios: TStringList;           //para leitura do estagios.txt
  arquivo_interdicao: TStringList;         //para leitura do interdicao.txt


  // matriz dinâmica para armazenar os dados dos pontos para plotagem do mapa
  // matriz_mapa [0][i] é a latitude
  // matriz_mapa [1][i] é o lontitude
  // matriz_mapa [2][i] é o indice do contorno
  matriz_mapa: array of array of double;

  num_elementos_matriz_mapa: integer;  // numero de elementos de matriz_mapa


  alcance_mapa: double;
  observador_lat: double;
  observador_lon: double;

  latitude_origem_mapa: double;  // latitude do ponto 0 do eixo Y do mapa
  longitude_origem_mapa: double; // longitude do ponto 0 do eixo X do mapa

  half_minuto_quadro: double; // valor em graus decimais do centro do mapa até a borda

  id_contorno: integer; // variavel global de indexação dos contornos dos dados do plot_mapa.txt

  posicao_lon_mapa: double; // posicao da longitude indicada pelo curso do mouse no mapa
  posicao_lat_mapa: double; // posicao da latitude indicada pelo curso do mouse no mapa


  arquivo_operacao: TStringList;    //para leitura do operacao.txt


  medida_distancia: integer; //controla o recurso de medir distancia entre dois pontos
  lat_inicial_medida_distancia: double;
  lon_inicial_medida_distancia: double;
  lat_final_medida_distancia: double;
  lon_final_medida_distancia: double;
  distancia_pontos_string: string;

  form_origem_conv_gms: integer; //para controle entre os formularios quem é o pai e se é de latitude ou longitude
  {
  form_origem_conv_gms=1   -> form2 (add embarcacao) latitude
  form_origem_conv_gms=2   -> form2 (add embarcacao) longitude
  }
  valor_graus_decimais_origem: double;

implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.salva_arquivo_operacao();
var
   arq_operacao  : TextFile;
   string_aux       : string;
   string_acumulada : string;
   j                : integer;
   tamanho_str      : integer;
   num_espacos      : integer;
begin

//referente gravacao dos dados em operacao.txt
try
  AssignFile(arq_operacao, 'operacao.txt'); //associa a variavel 'arq_operacao' a o arquivo fisico 'operacao.txt'

  Rewrite(arq_operacao); //independente do arquivo 'operacao.txt' existir, ele é regravado somente com o cabeçalho
  Write(arq_operacao, '                     Operacao|         Veiculo        |          Data|'+char(13)+char(10));
  Write(arq_operacao, '-----------------------------+------------------------+--------------+');

  string_aux:= '';
  string_acumulada:= '';
  //gravando o nome da operacao
  string_aux:= edit8.text;
  tamanho_str:= Length(string_aux);
  //calculando o numero de espacos para ficar alinhado
  num_espacos:= 31-tamanho_str;
  for j:= 1 to num_espacos do
   begin
    string_aux:=string_aux+' ';
   end;
  string_acumulada:= char(13)+char(10)+string_aux;


  //gravando o nome do veículo
  string_aux:= edit9.text;
  tamanho_str:= Length(string_aux);
  //calculando o numero de espacos para ficar alinhado
  num_espacos:= 25-tamanho_str;
  for j:= 1 to num_espacos do
  begin
    string_aux:=string_aux+' ';
  end;
  string_acumulada:= string_acumulada+string_aux;

  //gravando a data
  string_aux:= edit10.text;
  tamanho_str:= Length(string_aux);
  //calculando o numero de espacos para ficar alinhado
  num_espacos:= 16-tamanho_str;
  for j:= 1 to num_espacos do
  begin
    string_aux:=string_aux+' ';
  end;
  string_acumulada:= string_acumulada+string_aux;

  //gravando linha em 'operacao.txt'
  Write(arq_operacao, string_acumulada);

except
  showmessage('Erro ao tentar abrir o arquivo operacao.txt');
end;

try
  CloseFile(arq_operacao); // fecha o arquivo texto 'operacao.txt'
except
  showmessage('Erro ao tentar fechar o arquivo operacao.txt');
end;

end;



function TForm1.func_calc_longitude_px(longitude_in:double): double;
var
   dif_long: double; //diferença em graus decimais da longitude de entrada da funcao e a longitude de origem do mapa
   aux: double;
begin

dif_long:= longitude_in - longitude_origem_mapa;

{
259 é o valor em px de metade do quadro do mapa

259     half_minuto_quadro
---- =  -------------------
Xpx        dif_long
}

aux:= (259 * dif_long) / half_minuto_quadro ;
result:= aux;
end;



procedure TForm1.plotar_estagios();
var
   i: integer;

   aux_lat_estagio: double;
   aux_lon_estagio: double;

   aux_latitude_px: double;
   aux_longitude_px: double;

   aux_raio_PI_px: double;

   sigma_corrente: double;

begin


image1.canvas.pen.color:= clYellow;
image1.canvas.pen.width:= 1;
image1.canvas.Pen.Style:=pssolid;
//image1.canvas.moveto(0,0);
//image1.canvas.LineTo(100,100);


//plotando o ponto de impacto dos estagios
for i := 1 to StringGrid1.RowCount-1 do   //correndo as linhas da StrinGrid dos estagios
    begin
         if (StringGrid1.Cells[2,i]='S') then
            begin
                 aux_lat_estagio:= strtofloat(StringGrid1.Cells[1,i]);
                 aux_lat_estagio:= aux_lat_estagio * -1;
            end
         else
             begin
                  aux_lat_estagio:= strtofloat(StringGrid1.Cells[1,i]);
             end;

         if (StringGrid1.Cells[4,i]='O') then
            begin
                 aux_lon_estagio:= strtofloat(StringGrid1.Cells[3,i]);
                 aux_lon_estagio:= aux_lon_estagio * -1;
            end
         else
             begin
                  aux_lon_estagio:= strtofloat(StringGrid1.Cells[3,i]);
             end;

         aux_latitude_px:= func_calc_latitude_px(aux_lat_estagio); //calculando no image1 o ponto referente a latitude do ponto de impacto do estagio corrente
         aux_longitude_px:= func_calc_longitude_px(aux_lon_estagio); //calculando no image1 o ponto referente a longitude do ponto de impacto do estagio corrente
         //image1.canvas.moveto(round(aux_longitude_px),round(aux_latitude_px));
         //image1.canvas.ellipse(round(aux_longitude_px),round(aux_latitude_px),400,400);


         {
         259 é o valor em px de metade do quadro do mapa

         259          alcance_mapa (km)
         ---- =  ------------------------
         Xpx          sigma(raio do PI)
         }


         //traçando o raio de dispersao (3 sigma)
         sigma_corrente:= strtofloat(StringGrid1.Cells[7,i]);
         aux_raio_PI_px:= (259 * sigma_corrente) / alcance_mapa ;
         image1.canvas.EllipseC(round(aux_longitude_px),round(aux_latitude_px),round(aux_raio_PI_px),round(aux_raio_PI_px));
         image1.canvas.EllipseC(round(aux_longitude_px),round(aux_latitude_px),1,1);


         //traçando a dispersao (1 sigma)
         sigma_corrente:= strtofloat(StringGrid1.Cells[5,i]);
         aux_raio_PI_px:= (259 * sigma_corrente) / alcance_mapa ;
         image1.canvas.EllipseC(round(aux_longitude_px),round(aux_latitude_px),round(aux_raio_PI_px),round(aux_raio_PI_px));
         image1.canvas.EllipseC(round(aux_longitude_px),round(aux_latitude_px),1,1);




    end;
{
image1.canvas.pen.color:= clWhite;
image1.canvas.pen.width:= 1;
image1.canvas.moveto(0,0);
image1.canvas.LineTo(100,10);
}



end;

procedure TForm1.plotar_embarcacoes();
var
   i: integer;
   lat_inicial_embarcacao: double;
   lon_inicial_embarcacao: double;
   lat_final_embarcacao: double;
   lon_final_embarcacao: double;
   aux_latitude_inicial_px: double;
   aux_longitude_inicial_px: double;
   aux_latitude_final_px: double;
   aux_longitude_final_px: double;

begin


for i := 1 to StringGrid2.RowCount-1 do   //correndo as linhas da StrinGrid das embarcacoes
    begin

         //carregando em lat_inicial_embarcacao e lon_inicial_embarcacao os valores da  posicao em que a embarcacao foi visualizada
         if (StringGrid2.Cells[2,i]='S') then
            begin
                 lat_inicial_embarcacao:= strtofloat(StringGrid2.Cells[1,i]);
                 lat_inicial_embarcacao:= lat_inicial_embarcacao * -1;
            end
         else
             begin
                  lat_inicial_embarcacao:= strtofloat(StringGrid2.Cells[1,i]);
             end;

         if (StringGrid2.Cells[4,i]='O') then
            begin
                 lon_inicial_embarcacao:= strtofloat(StringGrid2.Cells[3,i]);
                 lon_inicial_embarcacao:= lon_inicial_embarcacao * -1;
            end
         else
             begin
                  lon_inicial_embarcacao:= strtofloat(StringGrid2.Cells[3,i]);
             end;

             //carregando em lat_final_embarcacao e lon_final_embarcacao os valores calculados da  posicao em que a embarcacao deverá estar no H0
             if (StringGrid3.Cells[2,i]='S') then
                begin
                     lat_final_embarcacao:= strtofloat(StringGrid3.Cells[1,i]);
                     lat_final_embarcacao:= lat_final_embarcacao * -1;
                end
             else
                 begin
                      lat_final_embarcacao:= strtofloat(StringGrid3.Cells[1,i]);
                 end;

             if (StringGrid3.Cells[4,i]='O') then
                begin
                     lon_final_embarcacao:= strtofloat(StringGrid3.Cells[3,i]);
                     lon_final_embarcacao:= lon_final_embarcacao * -1;
                end
             else
                 begin
                      lon_final_embarcacao:= strtofloat(StringGrid3.Cells[3,i]);
                 end;


         image1.canvas.pen.color:= clRed;
         image1.canvas.pen.width:= 1; // inserir aqui a parte da quebra da linha [falha]....
         image1.canvas.Pen.Style:=psdash; //psdash deixa a linha pontilhada

         aux_latitude_inicial_px := func_calc_latitude_px(lat_inicial_embarcacao); //calculando no image1 o ponto da latitude inicial da embarcacao corrente
         aux_longitude_inicial_px:= func_calc_longitude_px(lon_inicial_embarcacao); //calculando no image1 o ponto da longitude inicial da embarcacao corrente

         image1.canvas.moveto(round(aux_longitude_inicial_px),round(aux_latitude_inicial_px));
         //image1.canvas.EllipseC(round(aux_longitude_inicial_px),round(aux_latitude_inicial_px),2,2);


         aux_latitude_final_px := func_calc_latitude_px(lat_final_embarcacao); //calculando no image1 o ponto da latitude futuro da embarcacao corrente no H0
         aux_longitude_final_px:= func_calc_longitude_px(lon_final_embarcacao); //calculando no image1 o ponto da longitude futuro da embarcacao corrente no H0

         image1.canvas.Lineto(round(aux_longitude_final_px),round(aux_latitude_final_px));

         image1.canvas.pen.color:= clBlue;
         image1.canvas.pen.width:= 1;
         image1.canvas.EllipseC(round(aux_longitude_final_px),round(aux_latitude_final_px),2,2);


         image1.Canvas.Font.Name := 'Arial';
         image1.Canvas.Font.Color := clWhite;
         image1.Canvas.Font.Size := 10;
         image1.Canvas.Font.Style := [fsBold];
         image1.canvas.TextRect(image1.ClientRect,round(aux_longitude_final_px),round(aux_latitude_final_px),inttostr(i));


         {
         image1.canvas.EllipseC(round(aux_longitude_px),round(aux_latitude_px),round(aux_raio_PI_px),round(aux_raio_PI_px));
         image1.canvas.EllipseC(round(aux_longitude_px),round(aux_latitude_px),1,1);
         }


    end;




end;

procedure TForm1.carrega_hora_lancamento();
var
   arquivo_hora_lancamento: TStringList; //para leitura do hora_lancamento.txt
   aux: string;
   teste: integer;
begin


arquivo_hora_lancamento := TStringList.Create;


try
arquivo_hora_lancamento.LoadFromFile('hora_lancamento.txt');


//tentar recuperar a hora e minuto do lançemento do arquivo hora_lancamento.txt
aux:= arquivo_hora_lancamento[2];
aux:= copy(aux,1,15);
aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
//remover tabulacao
aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
//teste de conversao para integer para saber se é um numero válido. se nao for entra no except do try
teste:= strtoint(aux);

h0_hora:= strtoint(aux);
edit3.text:= aux;


aux:= arquivo_hora_lancamento[2];
aux:= copy(aux,16,16);
aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
//remover tabulacao
aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
//teste de conversao para integer para saber se é um numero válido. se nao for entra no except do try
teste:= strtoint(aux);

h0_minuto:= strtoint(aux);
edit4.text:= aux;


arquivo_hora_lancamento.Free; //fecha a estrutura economizando memória
except
  showmessage('Erro ao tentar abrir hora_lancamento.txt');
end;




end;

procedure TForm1.salva_arquivo_hora_lancamento();
var
   arq_hora_lancamento_save : TextFile;
   string_aux       : string;
   string_acumulada : string;
   tamanho_str      : integer;
   num_espacos      : integer;
   i: integer;
begin

//referente gravacao dos dados em hora_lancamento.txt
try

AssignFile(arq_hora_lancamento_save, 'hora_lancamento.txt'); //associa a variavel 'arq_hora_lancamento_save' a o arquivo fisico 'hora_lancamento.txt'
Rewrite(arq_hora_lancamento_save); //independente do arquivo 'embarcacoes.txt' existir, ele é regravado somente com o cabeçalho
Write(arq_hora_lancamento_save, '             hh|             mm|'+char(13)+char(10));
Write(arq_hora_lancamento_save, '---------------+---------------+');

string_aux:= '';
string_acumulada:= '';

//gravando a coluna de hora (hh) do lançamento
string_aux:= inttostr(h0_hora);
if (h0_hora=0) then
   begin
        string_aux:= '00';
   end;
tamanho_str:= Length(string_aux);
//calculando o numero de espacos para ficar alinhado
num_espacos:= 15-tamanho_str;
for i:= 1 to num_espacos do
    begin
         string_aux:=' '+string_aux;
    end;
string_acumulada:= char(13)+char(10)+string_acumulada+string_aux;


//gravando a coluna de minuto (mm) do lançamento
string_aux:= floattostr(h0_minuto);
if (h0_minuto=0) then
   begin
        string_aux:= '00';
   end;
tamanho_str:= Length(string_aux);
//calculando o numero de espacos para ficar alinhado
num_espacos:= 16-tamanho_str;
for i:= 1 to num_espacos do
    begin
         string_aux:=' '+string_aux;
    end;
string_acumulada:= string_acumulada+string_aux;

//gravando linha em 'hora_lancamento.txt'
Write(arq_hora_lancamento_save, string_acumulada);
except
  showmessage('Erro ao tentar abrir o arquivo hora_lancamento.txt');
end;


try
  CloseFile(arq_hora_lancamento_save); // fecha o arquivo texto 'hora_lancamento.txt'
except
  showmessage('Erro ao tentar fechar o arquivo hora_lancamento.txt');
end;




end;

procedure TForm1.calcular();
var
   i: integer;
   j: integer;
   w: integer;
begin



//********************************************
//tabela de probabilidade de impacto detalhada
//********************************************
stringgrid5.RowCount:= stringgrid1.RowCount; //quantidade de linhas da probabilidade de impacto é igual as linhas dos estagios
stringgrid5.ColCount:= stringgrid2.RowCount; //quantidade de colunas da probabilidade de impacto é igual as linhas das embarcacoes
//preenchendo as linhas com os estágios
for i:=0 to StringGrid1.RowCount-1 do
    begin
      StringGrid5.Cells[0,i]:= StringGrid1.Cells[0,i];
    end;
//preencendo as colunas com as embarcacoes
for i:=0 to StringGrid2.RowCount-1 do
    begin
      StringGrid5.Cells[i,0]:= StringGrid2.Cells[0,i];
      stringgrid5.AutoSizeColumn(i);
    end;



//********************************************
//tabela de risco a vida detalhada
//********************************************
stringgrid6.RowCount:= stringgrid1.RowCount; //quantidade de linhas da probabilidade de impacto é igual as linhas dos estagios
stringgrid6.ColCount:= stringgrid2.RowCount; //quantidade de colunas da probabilidade de impacto é igual as linhas das embarcacoes
//preencendo as linhas com os estágios
for i:=0 to StringGrid1.RowCount-1 do
    begin
      StringGrid6.Cells[0,i]:= StringGrid1.Cells[0,i];
    end;
//preencendo as colunas com as embarcacoes
for i:=0 to StringGrid2.RowCount-1 do
    begin
      StringGrid6.Cells[i,0]:= StringGrid2.Cells[0,i];
      stringgrid6.AutoSizeColumn(i);
    end;





StringGrid3.RowCount:=StringGrid2.RowCount;
for i:=0 to StringGrid2.RowCount-1 do
    begin
      StringGrid3.Cells[0,i]:= StringGrid2.Cells[0,i];
    end;
stringgrid3.AutoSizeColumn(0);


StringGrid4.RowCount:=StringGrid1.RowCount;
for i:=0 to StringGrid1.RowCount-1 do
    begin
      StringGrid4.Cells[0,i]:= StringGrid1.Cells[0,i];
    end;
stringgrid4.AutoSizeColumn(0);


StringGrid4.RowCount:=StringGrid1.RowCount;
for i:=0 to StringGrid1.RowCount-1 do
    begin
      StringGrid4.Cells[0,i]:= StringGrid1.Cells[0,i];
    end;
stringgrid4.AutoSizeColumn(0);


StringGrid4.ColCount:=StringGrid2.RowCount;
for i:=0 to StringGrid2.RowCount-1 do
    begin
      StringGrid4.Cells[i,0]:= StringGrid2.Cells[0,i];
      stringgrid4.AutoSizeColumn(i);
    end;



PITT:=0; //inicializacao a variavel de totalizacao da probabilidade de impacto da missao
RVTT:=0; //inicializacao a variavel de totalizacao do risco a vida da missao

//*************************************************
//IMPORTANTE
//o codigo original faz uma validacao que nao permite fazer os calculos
//se o horario q a embarcacao for avistada for maior que o horario de lançamento
//mas se por exemplo, o horario de lançamento for de madruga e a embarcacao
//for avista antes de meia-noite daria um erro, porém é um condição valida
//lembrar de adaptar esse codigo para essa situação específica
//*************************************************

//calculo do tempo de movimento dos barcos em relacao a cada estagio do veiculo
for j:=1 to StringGrid2.RowCount-1 do
    begin
         tempoh:= h0_hora - strtoint(StringGrid2.cells[5,j]);
         tempom:= h0_minuto - strtoint(StringGrid2.cells[6,j]);
         tempo:= 3600 * tempoh + 60*tempom; //em segundos a diferença entre a hora que a embracacao foi avista para ao h0

         //aqui preciso tratar se for negativo o variavel "tempo"
         //nao como erro, mas como se o lançamento fosse para o prox. dia
         //se comparado com o horario q a embarcacao foi avistada
         if (tempo<=0) then
            begin
              showmessage('A hora da visada de todas as embarcações precisam ser antes do lançamento');
              showmessage('Procedimento de cálculo cancelado');
              break; //pula o calculo só dessa embarcacao
            end;

         //latitude final e longitude final
         lat:= DegToRad(strtofloat(StringGrid2.cells[1,j])); //converte de graus em radianos

         if ( StringGrid2.cells[2,j] = 'S') then
              begin
                   lat:= -1 * lat;
              end;
         lat0:= lat; //guardando o valor da latitude inicial
         v:= strtofloat(StringGrid2.cells[9,j]);
         v:= 0.51444 * v; //convertendo para m/s
         azi:= strtofloat(StringGrid2.cells[10,j]);

         if (azi=90) then  //pequena adequacao, pois quando era 90º provocava um erro no calculo e a embarcacao nao saia do lugar
            begin
                 azi:= 90.0001;
            end;

         azi:= DegToRad(azi); //converte de graus em radianos
         lat:= v * tempo * cos(azi)/6378880 + lat;

         lon:= DegToRad(strtofloat(StringGrid2.cells[3,j])); //converte de graus em radianos
         if ( StringGrid2.cells[4,j] = 'O') then
              begin
                   lon:= -1 * lon;
              end;

         //funcao abs retorna o valor absoluto (módulo) do numero
         if ( ((abs(azi))<> (pi/2)) and ( (abs(azi))<>(3 * (pi/2))) ) then
              begin
                   //funcao ln retorna ao logaritmo natural (nepteriano)
                   lon:= tan(azi) * ln(abs((tan((lat/2)+ (pi/4)))/(tan((lat0/2)+  (pi/4))))) + lon;
              end
         else
             begin
                  lon:= v * tempo * sin(azi)/6378880 + lon;
             end;

         lat0:= lat; //guardando os valores de lat e lon final em radiano e com sinal
         lon0:=  lon;

         //exibindo os dados de latFinal e lonFinal
         lat:= RadtoDeg(lat); //convertendo de radianos para graus
         if (lat>=0) then
            begin
                 StringGrid3.cells[1,j]:= floattostr(roundto(lat,-3));
                 StringGrid3.cells[2,j]:= 'N';
            end
         else
             begin
                  lat:= -1 * lat;
                  StringGrid3.cells[1,j]:= floattostr(roundto(lat,-3));
                  StringGrid3.cells[2,j]:= 'S';
             end;



         lon:= RadtoDeg(lon); //convertendo de radianos para graus
         if (lon>=0) then
            begin
                 StringGrid3.cells[3,j]:= floattostr(roundto(lon,-3));
                 StringGrid3.cells[4,j]:= 'L';
            end
         else
             begin
                  lon:= -1 * lon;
                  StringGrid3.cells[3,j]:= floattostr(roundto(lon,-3));
                  StringGrid3.cells[4,j]:= 'O';
             end;


         //cálculo da distância dos P.I.N às embarcações, considerando a aproximação Terra plana
         PIT:= 0;
         RVT:= 0;

         for w:=1 to StringGrid1.RowCount-1 do
             begin
                  latest:= DegToRad(strtofloat(StringGrid1.Cells[1,w])); //convertendo para radianos
                  lonest:= DegToRad(strtofloat(StringGrid1.Cells[3,w])); //convertendo para radianos

                  if (StringGrid1.Cells[2,w] = 'S') then
                     begin
                          latest:= -1 * latest;
                     end;
                  if (StringGrid1.Cells[4,w] = 'O') then
                     begin
                          lonest:= -1 * lonest;
                     end;
                  if (lat0<>latest) then //testa se é diferente a latitude do barco corrente com a latitude de cada estagio
                     begin
                          X:= (cos((lat0+latest)/2)*(lon0-lonest)/(lat0-latest));
                          X:= arctan(X); //arcoTangente de "X"
                          d:= 6378.88*(lat0-latest)/(cos(X)); //em quilometro
                     end
                  else
                     begin
                          d:= 6378.88*cos(latest)*(lon0-lonest);
                     end;
                  d:= abs(d); //"d" fica só o módulo, ou seja, sempre >0

                  StringGrid4.cells[j,w]:= floattostr(roundto(d,-3)); //roundto para exibir "d" com 3 casas decimais
                  stringgrid4.AutoSizeColumn(j);


                  //******************
                  //no codigo original, neste ponto faz o copia do conteudo das distancias calculas em outro stringGrid
                  //por enquanto nao vou fazer
                  //******************


                   //calculo da probabilidade de impacto

                   ng:= (d+0.2);  //ng é a circunferencia grande da coroa circular que contem a embarcacao
                   np:= (d-0.2);  //np é a circunferencia pequena da coroa circular que contem a embarcacao

                   if (np<0) then
                      begin
                           np:=0;
                      end;
                   Abarco:= strtofloat(stringGrid2.cells[7,j]); //Abarco recebe a area da embarcacao corrente

                   if (Abarco=0) then
                      begin
                           showmessage('Não pode exister embarcação com área igual a zero');
                           break;
                      end;

                   //power(a,b) é a potencia, onde "a" é a base e "b" é o expoente
                   //power(10,6) é usado para converter metros quadrado em quilômetro quadrado
                   // pi*((Power(ng,2)) - (Power(np,2)) é a area da coroa circular, "área hachurada"
                   razao:= Abarco/(pi*(Power(10,6))* ((Power(ng,2)) - (Power(np,2))));
                   ng:= ng / (strtofloat(stringGrid1.cells[5,w]));
                   np:= np / (strtofloat(stringGrid1.cells[5,w]));

                   ng:= -0.5 * Power(ng,2);
                   np:= -0.5 * Power(np,2);

                   Prob_Impacto:= (exp(np) - exp(ng) )*razao;  //formula da probabilidade de impacto na pag. 16 da monografia

                   //preencimento da strigGrid auxiliar de probabilidade de ponto de impacto detalhado
                   stringGrid5.cells[j,w]:= floattostr(Prob_Impacto);


                   PIT:= PIT + Prob_Impacto; //calculo da probabilidade de impacto total de uma embarcacao sobre todos os estágios

                   //calculo o risco a vida da embarcaco corrente em relacao ao estagio corrente
                   //o calculo do risco a vida é dado por RV = PI.PD.AL
                   // PI - probabilidade de impacto
                   // PD - densidade populacional
                   // AL - Area Letal
                   // para obter a densidade populacional é divido o numero de tripulantes pela área de embarcacao
                   //ja que á densidade é o numero de habitantes pela area
                   RV:= (strtofloat(StringGrid2.cells[8,j]))* Prob_Impacto * (strtofloat(stringGrid1.cells[6,w]))/Abarco;

                   //preencimento da strigGrid auxiliar de Risco a Vida detalhado
                   stringGrid6.cells[j,w]:= floattostr(RV);

                   RVT:= RVT + RV; //totaliza o risco a vida total da embarcacao corrente em funcao de todos os estagios
             end;

         stringgrid5.AutoSizeColumn(j);
         stringgrid6.AutoSizeColumn(j);

         PITT:= PITT+PIT; //total de probabilidade de impacto de todas as embarcacoes
         RVTT:= RVTT+RVT; //total do risco a vida de todas as embarcacoes

         //exibe a probabilidade de impacto e o risco a vida da embarcacao corrente em funcao de todos os estagios
         StringGrid3.cells[5,j]:= floattostr(PIT);
         StringGrid3.cells[6,j]:= floattostr(RVT);
    end;

stringgrid3.AutoSizeColumn(5);
stringgrid3.AutoSizeColumn(6);


//resultados com a probabilidade de impacto total e o risco a vida total da missao
edit1.text:= floattostr(PITT);
edit2.text:= floattostr(RVTT);



//teste do GO ou NGO
label6.visible:= true;
label8.visible:= true;

if (  ((PITT)>(power(10,-5))) or  ((RVTT)>(power(10,-7)))  ) then
   begin
        label3.Caption:= 'NGO';
        label3.Color:= clred;
   end
else
    begin
         label3.Caption:= 'GO';
         label3.Color:= clgreen;
    end;

if (  ((PITT)>(power(10,-5))) ) then
   begin
        label6.caption:= ' Probabilidade de Impacto > E-5 ';
        label6.Color:= clred;
   end
else
    begin
        label6.caption:= ' Probabilidade de Impacto <= E-5 ';
        label6.Color:= clgreen;
    end;

if (  ((RVTT)>(power(10,-7))) ) then
   begin
        label8.caption:= ' Risco a Vida > E-7 ';
        label8.Color:= clred;
   end
else
    begin
        label8.caption:= ' Risco a Vida <= E-7 ';
        label8.Color:= clgreen;
    end;


end;



function TForm1.func_calc_latitude_px(latitude_in:double): double;
var
   dif_lat: double; //diferença em graus decimais da latitude de origem do mapa com a latitude de entrada da funcao
   aux: double;
begin

dif_lat:= latitude_origem_mapa- latitude_in;

aux:= (259 * dif_lat) / half_minuto_quadro ;
result:= aux;

end;



procedure TForm1.MenuItem3Click(Sender: TObject);
begin

close;

end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  form10.showmodal;
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
    medida_distancia:= 1;
    showmessage('Clique na posição inicial da medida');
end;

procedure TForm1.PageControl1Change(Sender: TObject);
begin
  // New Code {  } here...
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  //chamando a procedure q atualizar o arquivo 'embarcacoes.txt'
  salva_arquivo_embarcacoes();
  SpeedButton1.Enabled:= false;

end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
    //chamando a procedure q atualizar o arquivo 'estagios.txt'
    salva_arquivo_estagios();
    SpeedButton2.Enabled:= false;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin

    salva_arquivo_dados_plot_mapa();
    SpeedButton3.enabled:= false;

end;

procedure TForm1.SpeedButton4Click(Sender: TObject);
begin

    zoom_in_plotagem();

end;

procedure TForm1.SpeedButton5Click(Sender: TObject);
begin
  zoom_out_plotagem();
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin

  salva_arquivo_operacao();
  SpeedButton6.Enabled:= false;


end;

procedure TForm1.SpeedButton7Click(Sender: TObject);
begin
    salva_arquivo_trajetorias();//chamando a procedure q atualizar o arquivo 'trajetorias.txt'

    salva_arquivo_trajetoria_ativa();//chamando a procedure q atualizar o arquivo 'trajetoria_ativa.txt'

    SpeedButton7.Enabled:= false;
end;

procedure TForm1.StringGrid1DblClick(Sender: TObject);
begin
//codigo para detectar a linha q foi dado o duplo clique
//ShowMEssage(StringGrid2.Cells[StringGrid2.Col,StringGrid2.Row]);
//ShowMessageFmt ( 'You clicked col %d and row %d', [StringGrid2.Col, StringGrid2.Row ] );

id_estagio_edit:= StringGrid1.Row; //para o id do estagio selecionado na variavel global id_estagio_edit
form8.showmodal;

end;

procedure TForm1.StringGrid2DblClick(Sender: TObject);
begin

id_embar_edit:= StringGrid2.Row ; //para o id da embarcacao selecionada na variavel global id_embar_edit
form4.showmodal;

end;

procedure TForm1.StringGrid7DblClick(Sender: TObject);
begin
//codigo para detectar a linha q foi dado o duplo clique
//ShowMEssage(StringGrid2.Cells[StringGrid2.Col,StringGrid2.Row]);
//ShowMessageFmt ( 'You clicked col %d and row %d', [StringGrid2.Col, StringGrid2.Row ] );

id_trajetoria_edit:= StringGrid7.Row; //para o id do estagio selecionado na variavel global id_estagio_edit
form14.showmodal;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin

{
foi observado que no windows10 apos um periodo de inatividade a aplicação "esqueçe" a configuracao
do separador decimal e assume o valor configurado por padrao no windows.
e isso provoca erros.
por isso, de 5 em 5 min essa configuração é persistida.
}

//DecimalSeparator := '.';   //para padrao ingles
DefaultFormatSettings.DecimalSeparator:='.';



end;

procedure TForm1.zoom_out_plotagem();
var
   aux_alcance: integer;
begin

aux_alcance:= strtoint(edit5.text);

aux_alcance:= round(aux_alcance*1.1);

if (aux_alcance<=0) then //para evitar erros quando o zoom aumente demais e aux_alcance vira 0 ou negativo
   begin
        aux_alcance:=1;
   end;
edit5.text:= inttostr(aux_alcance);
Form1.Button14Click(Self);


//esse trecho serve para limpar a "distancia" da parte de cima do mapa ao fazer zoom
distancia_pontos_string:='';
groupbox1.Caption:= ' '+(floattostr(roundto(posicao_lat_mapa,-3)))
                +'  '+floattostr(roundto(posicao_lon_mapa,-3))+' '
                +'  '+distancia_pontos_string;


end;

procedure TForm1.zoom_in_plotagem();
var
aux_alcance: integer;
begin
aux_alcance:= strtoint(edit5.text);

aux_alcance:= round(aux_alcance/1.1);


if (aux_alcance<=0) then //para evitar erros quando o zoom aumente demais e aux_alcance vira 0 ou negativo
   begin
        aux_alcance:=1;
   end;

edit5.text:= inttostr(aux_alcance);


Form1.Button14Click(Self);


//esse trecho serve para limpar a "distancia" da parte de cima do mapa ao fazer zoom
distancia_pontos_string:='';
groupbox1.Caption:= ' '+(floattostr(roundto(posicao_lat_mapa,-3)))
                +'  '+floattostr(roundto(posicao_lon_mapa,-3))+' '
                +'  '+distancia_pontos_string;



end;




procedure TForm1.carrega_arquivo_operacao();
var
   aux   : string;
begin

arquivo_operacao := TStringList.Create;
try
  arquivo_operacao.LoadFromFile('operacao.txt');
  aux:= arquivo_operacao[2];
  aux:= copy(aux,1,30);
  //remover tabulacao
  aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
  edit8.text:= aux;

  aux:= arquivo_operacao[2];
  aux:= copy(aux,32,24);
  //remover tabulacao
  aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
  edit9.text:= aux;

  aux:= arquivo_operacao[2];
  aux:= copy(aux,57,15);
  //remover tabulacao
  aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
  edit10.text:= aux;

  SpeedButton6.Enabled:= false;


  arquivo_operacao.Free; //fecha a estrutura economizando memória
except
  showmessage('Erro ao tentar abrir operacao.txt');
end;


end;





procedure TForm1.carrega_arquivo_embarcacoes();
var
   i     : integer;
   aux   : string;
   teste : double;
begin



arquivo_embarcacoes := TStringList.Create;
try
  arquivo_embarcacoes.LoadFromFile('embarcacoes.txt');

stringgrid2.RowCount:= 1; //limpa a stringgrid das embarcacoes

for i:=2 to arquivo_embarcacoes.Count-1 do
  begin
      //adiciona uma linha na stringgrid de embarcacoes
      StringGrid2.RowCount := StringGrid2.RowCount+1;

      //preenche a coluna do indice da embarcacao
      stringgrid2.cells[0,i-1]:= 'Embarcação_'+inttostr(i-1);


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe a latitude inicial extraida da linha corrente. do 1o caractere da string ate os 15 carecteres seguintes
      aux:= copy(aux,1,15);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a latitude inicial
      stringgrid2.cells[1,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe o N/S da latitude inicial extraida da linha corrente. do 16o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,16,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //preenche a coluna com N/S da latitude inicial extraida da linha corrente
      stringgrid2.cells[2,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe a longitude inicial extraida da linha corrente. do 32o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,32,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a longitude inicial
      stringgrid2.cells[3,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe o L/O da longitude inicial extraida da linha corrente. do 48o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,48,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //preenche a coluna com O/L da longitude inicial extraida da linha corrente
      stringgrid2.cells[4,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe a hora extraida da linha corrente. do 64o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,64,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com hh da hora
      stringgrid2.cells[5,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe os minutos extraidos da linha corrente. do 80o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,80,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com mm da hora
      stringgrid2.cells[6,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe a area extraida da linha corrente. do 96o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,96,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a Area da embarcacao
      stringgrid2.cells[7,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe a tripulacao extraida da linha corrente. do 112o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,112,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a tripulacao
      stringgrid2.cells[8,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe a velocidade extraida da linha corrente. do 128o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,128,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a velocidade
      stringgrid2.cells[9,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_embarcacoes[i];
      //aux recebe o azimute extraido da linha corrente. do 144o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,144,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com o azimute
      stringgrid2.cells[10,i-1]:= aux;




  end;



  arquivo_embarcacoes.Free; //fecha a estrutura economizando memória
except
  showmessage('Erro ao tentar abrir embarcacoes.txt');
  showmessage('Linha '+inttostr(i)+' com erro.');
end;


//redimenciona as colunas para o texto inserido na grid dos dados das embarcações
stringgrid2.AutoSizeColumn(0);
stringgrid2.AutoSizeColumn(1);
stringgrid2.AutoSizeColumn(2);
stringgrid2.AutoSizeColumn(3);
stringgrid2.AutoSizeColumn(4);
stringgrid2.AutoSizeColumn(5);
stringgrid2.AutoSizeColumn(6);
stringgrid2.AutoSizeColumn(7);
stringgrid2.AutoSizeColumn(8);
stringgrid2.AutoSizeColumn(9);
stringgrid2.AutoSizeColumn(10);

end;



procedure TForm1.carrega_arquivo_trajetoria_ativa();
var
   i     : integer;
   aux   : string;
   teste : integer;
begin

arquivo_trajetoria_ativa := TStringList.Create;


try
  arquivo_trajetoria_ativa.LoadFromFile('trajetoria_ativa.txt');

  //aux recebe a linha
  aux:= arquivo_trajetoria_ativa[2];
  //aux recebe a latitude inicial extraida da linha corrente. do 1o caractere da string ate os 19 carecteres seguintes
  aux:= copy(aux,1,19);
  //remove os espaço
  aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
  //remover tabulacao
  aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
  //teste de conversao pra int para saber se é um numero válido
  teste:= strtoint(aux);

  id_trajetoria_ativa:= strtoint(aux);

  label17.caption:= '  '+stringgrid7.cells[0,(id_trajetoria_ativa)]+'  ';
  label18.caption:= '  '+stringgrid7.cells[1,(id_trajetoria_ativa)]+'  ';



  GroupBox2.Caption:= ' Estágios do Veículo ('+ label17.caption+')' ;


  arquivo_trajetoria_ativa.Free; //fecha a estrutura economizando memória
except
  showmessage('Erro ao tentar abrir trajetoria_ativa.txt');
end;




end;








procedure TForm1.carrega_arquivo_trajetorias();
var
   i     : integer;
   aux   : string;

begin

arquivo_trajetorias := TStringList.Create;
try
  arquivo_trajetorias.LoadFromFile('trajetorias.txt');

  stringgrid7.RowCount:= 1; //limpa a stringgrid dos trajetorias

  for i:=2 to arquivo_trajetorias.Count-1 do
    begin
      //adiciona uma linha na stringgrid de trajetorias
      StringGrid7.RowCount := StringGrid7.RowCount+1;

      //preenche a coluna do indice das trajetorias
      stringgrid7.cells[0,i-1]:= 'Trajetória_'+inttostr(i-1);


      //aux recebe a linha corrente
      aux:= arquivo_trajetorias[i];
      //aux recebe a descricao da trajetoria do 1o caractere da string ate os 20 carecteres seguintes
      aux:= copy(aux,1,20);
      //remove os espaço
      //aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //preenche a coluna com a descricao da trajetoria
      stringgrid7.cells[1,i-1]:= aux;
    end;


  arquivo_trajetorias.Free; //fecha a estrutura economizando memória
except
  showmessage('Erro ao tentar abrir trajetorias.txt');
  showmessage('Linha '+inttostr(i)+' com erro.');
end;



//redimenciona as colunas para o texto inserido na grid dos dados das embarcações
stringgrid7.AutoSizeColumn(0);
stringgrid7.AutoSizeColumn(1);

end;


procedure TForm1.carrega_arquivo_interdicao();
var
    i,j     : integer;
    aux   : string;
    teste : double;
begin

arquivo_interdicao := TStringList.Create;


try
  arquivo_interdicao.LoadFromFile('interdicao.txt');
  stringgrid8.RowCount:= 1; //limpa a stringgrid dos ponto da área de interdicao

  for i:=2 to arquivo_interdicao.Count-1 do
    begin
      //adiciona uma linha na stringgrid de area de interdicao
      StringGrid8.RowCount := StringGrid8.RowCount+1;

      //preenche a coluna do indice de area de interdicao
      stringgrid8.cells[0,i-1]:= 'Ponto_'+inttostr(i-1);


      //aux recebe a linha corrente
      aux:= arquivo_interdicao[i];
      //aux recebe a latitude inicial extraida da linha corrente. do 1o caractere da string ate os 15 caracteres seguintes
      aux:= copy(aux,1,15);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a latitude inicial
      stringgrid8.cells[1,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_interdicao[i];
      //aux recebe o N/S da latitude inicial extraida da linha corrente. do 16o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,16,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //preenche a coluna com N/S da latitude inicial extraida da linha corrente
      stringgrid8.cells[2,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_interdicao[i];
      //aux recebe a longitude inicial extraida da linha corrente. do 32o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,32,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a longitude inicial
      stringgrid8.cells[3,i-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_interdicao[i];
      //aux recebe o L/O da longitude inicial extraida da linha corrente. do 48o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,48,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //preenche a coluna com O/L da longitude inicial extraida da linha corrente
      stringgrid8.cells[4,i-1]:= aux;

    end;
  arquivo_interdicao.Free; //fecha a estrutura economizando memória
except
  showmessage('Erro ao tentar abrir interdicao.txt');
  showmessage('Linha '+inttostr(i)+' com erro.');
end;

//redimenciona as colunas para o texto inserido na grid dos ponto da area de interdicao
stringgrid8.AutoSizeColumn(0);
stringgrid8.AutoSizeColumn(1);
stringgrid8.AutoSizeColumn(2);
stringgrid8.AutoSizeColumn(3);
stringgrid8.AutoSizeColumn(4);


end;



procedure TForm1.carrega_arquivo_estagios();
var
   i,j     : integer;
   aux   : string;
   teste : double;
begin

arquivo_estagios := TStringList.Create;
try
  arquivo_estagios.LoadFromFile('estagios.txt');

  stringgrid1.RowCount:= 1; //limpa a stringgrid dos estagios
  j:=1;  //o 'j' é usado para posicionar na linha certa do stringlist


  for i:=2 to arquivo_estagios.Count-1 do
    begin


      //*****************************************************
      // verificação da trajetória a qual o estágio pertence
      //*****************************************************
      //aux recebe a linha corrente
      aux:= arquivo_estagios[i];
      //aux recebe o id da trajetoria extraida da linha corrente. do 115o caractere da string ate os 19 carecteres seguintes
      aux:= copy(aux,116,19);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //stringgrid1.cells[8,i-1]:= aux;    //deslocado para baixo da linha que acrescente linha na stringlist para nao quebrar a logica

      //verificacao se o estagio corrente pretence ou nao a trajetoria ativa
      if (id_trajetoria_ativa<>strtoint(aux)) then
         begin
             continue; //o "continue" só salta a interação corrente do loop. nao cancela o loop.
         end;


      //adiciona uma linha na stringgrid de estagios
      StringGrid1.RowCount := StringGrid1.RowCount+1;
      j:= j+1;

      //preenche a coluna o indice da trajetoria (que vai ser a trajetoria ativa) do estagio corrente
      stringgrid1.cells[8,j-1]:= aux;

      //preenche a coluna do indice do estágio
      stringgrid1.cells[0,j-1]:= 'Estágio_'+inttostr(j-1);





      //aux recebe a linha corrente
      aux:= arquivo_estagios[i];
      //aux recebe a latitude inicial extraida da linha corrente. do 1o caractere da string ate os 15 caracteres seguintes
      aux:= copy(aux,1,15);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a latitude inicial
      stringgrid1.cells[1,j-1]:= aux;




      //aux recebe a linha corrente
      aux:= arquivo_estagios[i];
      //aux recebe o N/S da latitude inicial extraida da linha corrente. do 16o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,16,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //preenche a coluna com N/S da latitude inicial extraida da linha corrente
      stringgrid1.cells[2,j-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_estagios[i];
      //aux recebe a longitude inicial extraida da linha corrente. do 32o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,32,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a latitude inicial
      stringgrid1.cells[3,j-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_estagios[i];
      //aux recebe o L/O da longitude inicial extraida da linha corrente. do 48o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,48,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //preenche a coluna com N/S da latitude inicial extraida da linha corrente
      stringgrid1.cells[4,j-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_estagios[i];
      //aux recebe o sigma(km) extraido da linha corrente. do 64o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,64,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a latitude inicial
      stringgrid1.cells[5,j-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_estagios[i];
      //aux recebe a area letal extraida da linha corrente. do 80o caractere da string ate os 16 carecteres seguintes
      aux:= copy(aux,80,16);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a latitude inicial
      stringgrid1.cells[6,j-1]:= aux;


      //aux recebe a linha corrente
      aux:= arquivo_estagios[i];
      //aux recebe o raio da dispersao extraida da linha corrente. do 96o caractere da string ate os 19 carecteres seguintes
      aux:= copy(aux,96,19);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      teste:= strtofloat(aux);
      //preenche a coluna com a latitude inicial
      stringgrid1.cells[7,j-1]:= aux;

    end;


  arquivo_estagios.Free; //fecha a estrutura economizando memória
except
  showmessage('Erro ao tentar abrir estagios.txt');
  showmessage('Linha '+inttostr(i)+' com erro.');
end;



//redimenciona as colunas para o texto inserido na grid dos dados das embarcações
stringgrid1.AutoSizeColumn(0);
stringgrid1.AutoSizeColumn(1);
stringgrid1.AutoSizeColumn(2);
stringgrid1.AutoSizeColumn(3);
stringgrid1.AutoSizeColumn(4);
stringgrid1.AutoSizeColumn(5);
stringgrid1.AutoSizeColumn(6);
stringgrid1.AutoSizeColumn(7);


end;

procedure TForm1.salva_arquivo_embarcacoes();
var
   arq_embarcacoes  : TextFile;
   string_aux       : string;
   string_acumulada : string;
   i                : integer;
   j                : integer;
   tamanho_str      : integer;
   num_espacos      : integer;
begin

//referente gravacao dos dados em embarcacoes.txt
try
  AssignFile(arq_embarcacoes, 'embarcacoes.txt'); //associa a variavel 'arq_embarcacoes' a o arquivo fisico 'embarcacoes.txt'

  Rewrite(arq_embarcacoes); //independente do arquivo 'embarcacoes.txt' existir, ele é regravado somente com o cabeçalho
  Write(arq_embarcacoes, '          lat-0|         latN-S|          lon-0|         lonL-O|             hh|             mm|      área(m^2)|     tripulacao|      Vel.knots|          Az.gr|'+char(13)+char(10));
  Write(arq_embarcacoes, '---------------+---------------+---------------+---------------+---------------+---------------+---------------+---------------+---------------+---------------+');

  //grava as linhas do stringGrid2 no embarcacoes.txt
  for i:=1 to StringGrid2.RowCount-1 do //passando por todas as linhas do stringGrid2
  begin
      string_aux:= '';
      string_acumulada:= '';
    //gravando a coluna de latitude inicial
    string_aux:= stringGrid2.cells[1,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 15-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= char(13)+char(10)+string_acumulada+string_aux;


    //gravando a coluna de N-S da latitude inicial
    string_aux:= stringGrid2.cells[2,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna de longitude inicial
    string_aux:= stringGrid2.cells[3,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna de L-O da longitude inicial
    string_aux:= stringGrid2.cells[4,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna da hora
    string_aux:= stringGrid2.cells[5,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna do minuto
    string_aux:= stringGrid2.cells[6,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna da area
    string_aux:= stringGrid2.cells[7,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna da tripulacao
    string_aux:= stringGrid2.cells[8,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna da velocidade
    string_aux:= stringGrid2.cells[9,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna do azimute
    string_aux:= stringGrid2.cells[10,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;

    //gravando linha em 'embarcacoes.txt'
    Write(arq_embarcacoes, string_acumulada);
  end;
except
  showmessage('Erro ao tentar abrir o arquivo embarcacoes.txt');
end;

try
  CloseFile(arq_embarcacoes); // fecha o arquivo texto 'embarcacoes.txt'
except
  showmessage('Erro ao tentar fechar o arquivo embarcacoes.txt');
end;

end;


procedure TForm1.salva_arquivo_trajetoria_ativa();
var
   arq_trajetoria_ativa : TextFile;
   string_aux           : string;
begin

//referente gravacao dos dados em trajetoria_ativa.txt
try
  AssignFile(arq_trajetoria_ativa, 'trajetoria_ativa.txt'); //associa a variavel 'arq_trajetoria_ativa' a o arquivo fisico 'trajetoria_ativa.txt'

  Rewrite(arq_trajetoria_ativa); //independente do arquivo 'trajetoria_ativa.txt' existir, ele é regravado somente com o cabeçalho
  Write(arq_trajetoria_ativa, '      ID_TRAJ_ATIVA|'+char(13)+char(10));
  Write(arq_trajetoria_ativa, '-------------------+');


  //grava o id_trajetoria_ativa no trajetoria_ativa.txt
  string_aux:= char(13)+char(10)+ inttostr(id_trajetoria_ativa);
  //gravando linha em 'trajetoria_ativa.txt'
  Write(arq_trajetoria_ativa, string_aux);

except
  showmessage('Erro ao tentar abrir o arquivo trajetoria_ativa.txt');
end;

try
  CloseFile(arq_trajetoria_ativa); // fecha o arquivo texto 'trajetoria_ativa.txt'
except
  showmessage('Erro ao tentar fechar o arquivo trajetoria_ativa.txt');
end;

end;



procedure TForm1.salva_arquivo_trajetorias();
var
   arq_trajetorias  : TextFile;
   string_aux       : string;
   string_acumulada : string;
   i                : integer;
   j                : integer;
   tamanho_str      : integer;
   num_espacos      : integer;
begin

//referente gravacao dos dados em trajetorias.txt
try
  AssignFile(arq_trajetorias, 'trajetorias.txt'); //associa a variavel 'arq_trajetorias' a o arquivo fisico 'trajetorias.txt'

  Rewrite(arq_trajetorias); //independente do arquivo 'trajetorias.txt' existir, ele é regravado somente com o cabeçalho
  Write(arq_trajetorias, '               DESC|'+char(13)+char(10));
  Write(arq_trajetorias, '-------------------+');


  //grava as linhas do stringGrid7 no trajetorias.txt
  for i:=1 to StringGrid7.RowCount-1 do //passando por todas as linhas do stringGrid7
  begin
      string_aux:= '';
      string_acumulada:= '';

    //gravando a coluna de descricao da trajetoria
    string_aux:= stringGrid7.cells[1,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 19-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=string_aux+' ';
    end;
    string_acumulada:= char(13)+char(10)+string_acumulada+string_aux;



    //gravando linha em 'trajetorias.txt'
    Write(arq_trajetorias, string_acumulada);
    end;

except
  showmessage('Erro ao tentar abrir o arquivo trajetorias.txt');
end;

try
  CloseFile(arq_trajetorias); // fecha o arquivo texto 'trajetorias.txt'
except
  showmessage('Erro ao tentar fechar o arquivo trajetorias.txt');
end;

end;





procedure TForm1.salva_arquivo_estagios();
var
   arq_estagios     : TextFile;
   string_aux       : string;
   string_acumulada : string;
   i,j,k            : integer;
   tamanho_str      : integer;
   num_espacos      : integer;
   aux              : string;

   arquivo_estagios_update: TStringList;    //para leitura do estagios.txt para update


begin

//referente gravacao dos dados em estagios.txt
try

  //arquivo_estagios_update é usado para obter somente os estagios que nao tem a trajetoria ativa
  arquivo_estagios_update := TStringList.Create;
  arquivo_estagios_update.LoadFromFile('estagios.txt');


  AssignFile(arq_estagios, 'estagios.txt'); //associa a variavel 'arq_estagios' ao arquivo fisico 'estagios.txt'
  Rewrite(arq_estagios); //independente do arquivo 'estagios.txt' existir, ele é regravado somente com o cabeçalho
  Write(arq_estagios, '          lat-0|         latN-S|          lon-0|         lonL-O|  Dispersao(km)|Area_letal(m^2)|Raio_dispersao(Km)|      id_trajetoria|'+char(13)+char(10));
  Write(arq_estagios, '---------------+---------------+---------------+---------------+---------------+---------------+------------------+-------------------+');


  //correndo o arquivo_estagios_update para obter somente os estagios que nao tem a trajetória ativa
  //e gravar logo apos o cabeçalho
  //em seguida que os estagios da trajetoria ativa, que estao no stringlist, serão gravado no estagios.txt
  for k:=2 to arquivo_estagios_update.Count-1 do
    begin
      //*****************************************************
      // verificação da trajetória a qual o estágio pertence
      //*****************************************************
      //aux recebe a linha corrente
      aux:= arquivo_estagios_update[k];
      //aux recebe o id da trajetoria extraida da linha corrente. do 115o caractere da string ate os 19 carecteres seguintes
      aux:= copy(aux,116,19);
      //remove os espaço
      aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
      //remover tabulacao
      aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
      //teste de conversao pra float para saber se é um numero válido
      //verificacao se o estagio corrente pretence ou nao a trajetoria ativa
      if (id_trajetoria_ativa<>strtoint(aux)) then
         begin
            Write(arq_estagios,char(13)+char(10)+arquivo_estagios_update[k]);
         end;
    end;
    arquivo_estagios_update.Free; //fecha a estrutura economizando memória




//grava as linhas do stringGrid1 no estagios.txt
for i:=1 to StringGrid1.RowCount-1 do //passando por todas as linhas do stringGrid1
  begin
      string_aux:= '';
      string_acumulada:= '';

    //gravando a coluna de latitude inicial
    string_aux:= stringGrid1.cells[1,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 15-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= char(13)+char(10)+string_acumulada+string_aux;


    //gravando a coluna de N-S da latitude inicial
    string_aux:= stringGrid1.cells[2,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna de longitude inicial
    string_aux:= stringGrid1.cells[3,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna de L-O da longitude inicial
    string_aux:= stringGrid1.cells[4,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna da dispersao
    string_aux:= stringGrid1.cells[5,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna da area
    string_aux:= stringGrid1.cells[6,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna raio da dispersao
    string_aux:= stringGrid1.cells[7,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 19-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna do id da trajetoria referente ao estagio corrente
    string_aux:= stringGrid1.cells[8,i];
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 20-tamanho_str;
    for j:= 1 to num_espacos do
    begin
      string_aux:=' '+string_aux;
    end;
    string_acumulada:= string_acumulada+string_aux;

    //gravando linha em 'estagios.txt'
    Write(arq_estagios, string_acumulada);
    end;

except
  showmessage('Erro ao tentar abrir o arquivo estagios.txt');
end;

try
  CloseFile(arq_estagios); // fecha o arquivo texto 'estagios.txt'
except
  showmessage('Erro ao tentar fechar o arquivo estagios.txt');
end;

end;





procedure TForm1.clear_mapa();
begin

//limpando o image do mapa

image1.Canvas.Brush.Color := clBlack;
image1.Canvas.FillRect(Rect(0,0,form1.clientwidth,form1.clientheight));

//traçando a borda
image1.canvas.pen.color:= clblack;
image1.canvas.Pen.Style:=pssolid;
image1.canvas.rectangle(0,0,image1.width,image1.height);

end;

procedure TForm1.carga_dados_plot_mapa();
var
   i: integer; //controle do laço principal para correr o plot_mapa.txt
   j: integer; //controle para correr a matriz_mapa para preenchimento
   arquivo_plot_mapa: TStringList; //para leitura do plot_mapa.txt
   aux: string;
   latitude_extraida: double;
   longitude_extraida: double;

begin

id_contorno:=0; //inicializa a variavel de indexação dos contornos

arquivo_plot_mapa := TStringList.Create;
try
  arquivo_plot_mapa.LoadFromFile('plot_mapa.txt');

  //dimencionando a matriz_mapa com o numero de linhas do arquivo 'plot_mapa.txt'
  //serão duas colunas detalhas a seguir:
  //matriz_mapa [0][i] é a latitude
  //matriz_mapa [1][i] é o lontitude
  //matriz_mapa [2][i] é o indice do contorno
  {
  o "indice de contorno" é uma coluna com valor unico por contorno
  o grupamento de dados de cada contorno é separada por uma linha
  em branco no plot_mapa.txt

  exemplo:
-2.316 -44.367   <---- começo do contorno 1
-2.150 -44.400
-1.518 -44.126
-1.623 -43.866
-2.295 -44.260
-2.316 -44.367   <---- final do contorno 1

-2.436 -44.147   <---- começo do contorno 2
-2.428 -44.017
-1.801 -43.552
-1.682 -43.747
-2.330 -44.133
-2.436 -44.147   <---- final do contorno 2
  }


  num_elementos_matriz_mapa:=arquivo_plot_mapa.Count;
  SetLength(matriz_mapa,3,num_elementos_matriz_mapa); //o "3" é o numero de colunas (latitude, longitude e indice dos contornos)

  j:=0; //inicializando a variavel de controle de preenchimento da matriz_mapa
        //isso é necessário pq não daria certo usar o indice [i] ja que
        //tem linhas no plot_mapa.txt que não vão corresponder a dados validos


  for i:=0 to arquivo_plot_mapa.Count-1 do  //correndo todo o arquivo plot_mapa.txt através do TStringList
  begin

    latitude_extraida:= 0;
    longitude_extraida:= 0;

    //só tenta processar a linha corrente se ela possuir pelo menos um espaço "char(32)"
    if ( (pos(char(32),arquivo_plot_mapa[i]))<>0) then
       begin

            //aux recebe os caracteres anteriores ao 1º espaço
            aux:= copy(arquivo_plot_mapa[i],1,pos(char(32),arquivo_plot_mapa[i]));

            try
               //tenta converter para double, se for válido avança
               latitude_extraida:= strtofloat(aux);

            except
               //erro na extracao da latitude dessa linha
               //mas devido ao tratamento com o try esse erro passa direto
               //só desconsidera a linha

               //o "continue" volta ao inicio do loop, ou seja, desconsidera essa linha com erro
               //nem tenta extrair lontitude
               continue;
            end;

            {
            pode ocorrer duas situaçãos:
            (situacao 1)- é uma linha comum, com latitude e lontitude com 0d e 0a no final
                 nesse caso só tem um espaco
            -2.316 -44.367 0d0a

            (situacao 2)- é um linha com comentario, no caso tem mais que um espaço e caracteres do comentario seguidos de 0d e 0a
            -21.815 -40.910    MAPA TERRESTRE DO MARANHAO 0d0a

            por isso, para a extração dos dados de longitude devem ser levadas em conta essas duas situações
            }

            aux:= arquivo_plot_mapa[i];
            delete (aux,1,(pos(char(32),arquivo_plot_mapa[i]))); //remove os caracteres de latitude da string aux

            if (aux='') then //para o caso de uma linha só tem latitude o loop é reiniciado na próxima interação e a linha é desconsiderada
               begin
                    continue;
               end;


            if ( (pos(char(32),aux))<>0) then //2º situacao se verdadeiro
               begin
                    //tenta extrair a longitude
                    try
                       aux:= copy(aux,1,pos(char(32),aux)); //extrai o lontitude entre os dois espaços da string original da linha
                       longitude_extraida:= strtofloat(aux);

                       //carrega a array matriz_mapa com as latitude e  longitudes extraidas
                       matriz_mapa [0,j]:= latitude_extraida;
                       matriz_mapa [1,j]:= longitude_extraida;
                       matriz_mapa [2,j]:= id_contorno;
                       j:= j+1;

                    except
                       //erro na extracao da longitude dessa linha
                       //mas devido ao tratamento com o try esse erro passa direto
                       //só desconsidera a linha

                       //o "continue" volta ao inicio do loop, ou seja, desconsidera essa linha com erro
                       //nem tenta extrair lontitude
                       continue;
                    end;
               end
            else
                begin //1º situacao se falso
                    //tenta extrair a longitude
                    try
                       //aux:= copy(aux,1,pos(char(32),aux)); //extrai o lontitude entre os dois espaços da string original da linha
                       longitude_extraida:= strtofloat(aux);

                       //carrega a array matriz_mapa com as latitude e  longitudes extraidas
                       matriz_mapa [0,j]:= latitude_extraida;
                       matriz_mapa [1,j]:= longitude_extraida;
                       matriz_mapa [2,j]:= id_contorno;
                       j:= j+1;
                    except
                       //erro na extracao da longitude dessa linha
                       //mas devido ao tratamento com o try esse erro passa direto
                       //só desconsidera a linha

                       //o "continue" volta ao inicio do loop, ou seja, desconsidera essa linha com erro
                       //nem tenta extrair lontitude
                       continue;
                    end;
                end;
       end
    else
       begin
         id_contorno:= id_contorno+1; //no caso de nao ter espaço é o indicatio de uma linha em branco, por isso incremente o indice de contorno
       end;
  end;

   //redimencionamento a matriz_mapa para eliminar as linhas finais vazias

   num_elementos_matriz_mapa:=j;
   SetLength(matriz_mapa,3,num_elementos_matriz_mapa);


  arquivo_plot_mapa.Free; //fecha a estrutura economizando memória
except
  showmessage('Erro ao tentar abrir plot_mapa.txt');
end;






end;

procedure TForm1.plotar_mapa();
var
   i: integer;
   aux_latitude_px: double;
   aux_longitude_px: double;

   id_contorno_anterior: integer; //variavel de controle para saber que o id_contorno foi alterada, e por isso é um novo contorno

begin

//atualizando as variáveis de alcance e latitude/longitude do observador
try
   observador_lat:= strtofloat(edit6.text);
except
  showmessage('Latitude inválida');
  exit;
end;
try
   observador_lon:= strtofloat(edit7.text);
except
  showmessage('Longitude inválida');
  exit;
end;
try
   alcance_mapa:= strtofloat(edit5.text);
except
  showmessage('Alcance inválido');
  exit;
end;


calculo_origem_grafico(); //para atualizar as variaveis latitude_origem_mapa e longitude_origem_mapa da origem do mapa


image1.canvas.pen.color:= clWhite;
image1.canvas.pen.width:= 1;
image1.canvas.Pen.Style:=pssolid;

//image1.canvas.moveto(0,0);
//image1.canvas.LineTo(100,100);


id_contorno_anterior:= round(matriz_mapa[2,0]); //id_contorno_anterior é inicializado com o id_contorno do primeiro registro da tabela matriz_mapa

//plotando o mapa
for i := 0 to num_elementos_matriz_mapa-1 do   //correndo toda a matriz_mapa
    begin


       if (i=0) then
           begin
                aux_latitude_px:= func_calc_latitude_px(matriz_mapa[0,i]);
                aux_longitude_px:= func_calc_longitude_px(matriz_mapa[1,i]);
                image1.canvas.moveto(round(aux_longitude_px),round(aux_latitude_px));

                //showmessage('entrou no if');
           end
       else
           begin
                if ( (id_contorno_anterior) <> (round(matriz_mapa[2,i])) ) then  //se o id_cortorno_anterior é diferente do id_contorno corrente entao é um novo contorno, e por isso usa-se o moveTo no lugar do LineTo
                    begin
                         aux_latitude_px:= func_calc_latitude_px(matriz_mapa[0,i]);
                         aux_longitude_px:= func_calc_longitude_px(matriz_mapa[1,i]);
                         image1.canvas.moveto(round(aux_longitude_px),round(aux_latitude_px));
                    end
                else
                    begin
                        aux_latitude_px:= func_calc_latitude_px(matriz_mapa[0,i]);
                        aux_longitude_px:= func_calc_longitude_px(matriz_mapa[1,i]);
                        image1.canvas.LineTo(round(aux_longitude_px),round(aux_latitude_px));
                        //showmessage('entrou  no else do if');

                    end;
           end;
       id_contorno_anterior:= round(matriz_mapa[2,i]); //atualizando o valor de id_contorno_anterior com o id_contorno do ultimo registro lido da matriz_mapa
    end;



{
image1.canvas.pen.color:= clWhite;
image1.canvas.pen.width:= 1;
image1.canvas.moveto(0,0);
image1.canvas.LineTo(100,10);
}

SpeedButton3.enabled:= true;

end;

procedure TForm1.carga_arquivo_plot_mapa();
var
   arquivo_vizu_plot_mapa: TStringList; //para leitura do vizu_plot.txt
   aux1: string;
   aux2: string;
   aux3: string;
begin


arquivo_vizu_plot_mapa := TStringList.Create;
try
  arquivo_vizu_plot_mapa.LoadFromFile('vizu_plot.txt');

  aux1:=  arquivo_vizu_plot_mapa[2];
  aux1:= copy(aux1,1,15);
  aux1:= StringReplace(aux1,' ','',[rfReplaceAll, rfIgnoreCase]);

  aux2:=  arquivo_vizu_plot_mapa[2];
  aux2:= copy(aux2,16,16);
  aux2:= StringReplace(aux2,' ','',[rfReplaceAll, rfIgnoreCase]);

  aux3:=  arquivo_vizu_plot_mapa[2];
  aux3:= copy(aux3,32,16);
  aux3:= StringReplace(aux3,' ','',[rfReplaceAll, rfIgnoreCase]);

except
  showmessage('Erro ao tentar abrir vizu_plot.txt');
end;

observador_lat:= strtofloat(aux1);
observador_lon:= strtofloat(aux2);
alcance_mapa:= strtofloat(aux3);
edit5.text:= floattostr(alcance_mapa);
edit6.text:= floattostr(observador_lat);
edit7.text:= floattostr(observador_lon);

end;

procedure TForm1.salva_arquivo_dados_plot_mapa();
var
   arq_vizu_plot_mapa_save : TextFile;
   string_aux       : string;
   string_acumulada : string;
   tamanho_str      : integer;
   num_espacos      : integer;
   i: integer;
begin

//referente gravacao dos dados em vizu_plot.txt
try

    AssignFile(arq_vizu_plot_mapa_save, 'vizu_plot.txt'); //associa a variavel 'arq_vizu_plot_mapa_save' a o arquivo fisico 'vizu_plot.txt'

    Rewrite(arq_vizu_plot_mapa_save); //independente do arquivo 'embarcacoes.txt' existir, ele é regravado somente com o cabeçalho
    Write(arq_vizu_plot_mapa_save, '       latitude|      longitude|        alcance|'+char(13)+char(10));
    Write(arq_vizu_plot_mapa_save, '---------------+---------------+---------------+');

    string_aux:= '';
    string_acumulada:= '';

    //gravando a coluna de latitude do observador
    string_aux:= floattostr(observador_lat);
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 15-tamanho_str;
    for i:= 1 to num_espacos do
        begin
             string_aux:=' '+string_aux;
        end;
    string_acumulada:= char(13)+char(10)+string_acumulada+string_aux;


    //gravando a coluna de longitude do observador
    string_aux:= floattostr(observador_lon);
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for i:= 1 to num_espacos do
        begin
           string_aux:=' '+string_aux;
        end;
    string_acumulada:= string_acumulada+string_aux;


    //gravando a coluna de alcance
    string_aux:= floattostr(alcance_mapa);
    tamanho_str:= Length(string_aux);
    //calculando o numero de espacos para ficar alinhado
    num_espacos:= 16-tamanho_str;
    for i:= 1 to num_espacos do
        begin
           string_aux:=' '+string_aux;
        end;
    string_acumulada:= string_acumulada+string_aux;

    //gravando linha em 'vizu_plot.txt'
    Write(arq_vizu_plot_mapa_save, string_acumulada);
except
  showmessage('Erro ao tentar abrir o arquivo vizu_plot.txt');
end;


try
  CloseFile(arq_vizu_plot_mapa_save); // fecha o arquivo texto 'vizu_plot.txt'
except
  showmessage('Erro ao tentar fechar o arquivo vizu_plot.txt');
end;



end;


//calcula a latitude e longitude referentes os pontos 0 dos eixos X e Y do image1 do mapa
//grava nas variaveis globais latitude_origem_mapa e longitude_origem_mapa
procedure TForm1.calculo_origem_grafico();

begin

{
consideramos a circunferencia da terra no equador com 40075Km dai, a distancia na superficie de um grau de longitude vale:
40075 / 360 = 111,3194444 Km
assim, um  a distancia na superficie de minuto de longitude vale:
111,3194444 /60 = 1,8553240740740740740740740740741 Km

para o calculo, primeiro calculamos o half_minuto_quadro
que é o valor em graus decimais da distancia entre o centro
do quadro do mapa e sua borda
}

{
"alcance_mapa" dividido pelo valor da distancia em KM na superficie de 1 minuto de longitude
resulta no valor em minutos do centro do mapa até a borda.
para converter isso para graus decimais, só dividir por 60
}
half_minuto_quadro:= ((alcance_mapa) /  (((40075/360))/60) ) / 60;

//calculo da latitude do marco 0 (origem do gráfico eixo Y)
latitude_origem_mapa:= observador_lat + half_minuto_quadro;

//calculo da longitude do marco 0  (origem do gráfico eixo X)
longitude_origem_mapa:= observador_lon - half_minuto_quadro;


end;


procedure TForm1.Button10Click(Sender: TObject);
begin
  form7.showmodal;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  form9.showmodal;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  clear_mapa();

    //esse trecho serve para limpar a "distancia" da parte de cima do clicar em limpar
    distancia_pontos_string:='';
    groupbox1.Caption:= ' '+(floattostr(roundto(posicao_lat_mapa,-3)))
                +'  '+floattostr(roundto(posicao_lon_mapa,-3))+' '
                +'  '+distancia_pontos_string;
end;

procedure TForm1.Button13Click(Sender: TObject);
var
   i: integer;
  linha: string;
  arq: TextFile; //declarando a variável "arq" do tipo arquivo texto
begin


//gravando matriz_mapa temporario no arquivo 'matriz_mapa.tmp'
try
AssignFile(arq, 'matriz_mapa.tmp'); //associa a variavel 'arq' a o arquivo fisico 'matriz_mapa.tmp'
Rewrite(arq); // se 'matriz_mapa.tmp' já existir ele é criado novamente limpo, se nao existir é criado
//percorrendo toda a array matriz_mapa

for i := 0 to num_elementos_matriz_mapa-1 do
  begin
     linha:='Matriz_mapa - indice ['+inttostr(i)+']= '+ floattostr(matriz_mapa[0,i])+'   '+floattostr(matriz_mapa[1,i])+'    '+floattostr(matriz_mapa[2,i]);
     WriteLn(arq, linha);

  end;





CloseFile(arq); // fecha o arquivo texto 'matriz_mapa.tmp'
except
end;


if FileExists('matriz_mapa.tmp') then
begin
  Memo2.Lines.LoadFromFile('matriz_mapa.tmp')
end;


//deleta o arquivo temporario
if FileExists('matriz_mapa.tmp') then
begin
  DeleteFile ('matriz_mapa.tmp');
end;


{
memo2.clear;
//checando matriz_mapa
//i corre as colunas
//j corre as linhas
for i := 0 to 1 do
  begin
    for j := 0 to num_elementos_matriz_mapa-1 do
      begin
        memo2.Lines.Append('Matriz_mapa['+inttostr(i)+','+inttostr(j)+']= '+ floattostr(matriz_mapa[i,j]));
      end;
    end;
}

end;

procedure TForm1.Button14Click(Sender: TObject);
begin
   clear_mapa();  //limpa o image1
   plotar_mapa(); //faz a plotagem do mapa, ou seja, do continente
   plotar_estagios(); //plota as areas dos raios de dispersao (3-sigmas) de cada estágio
   plotar_embarcacoes(); //plota o ponto inicial e futuro das embarcacoes e o trajeto previsto

end;

procedure TForm1.Button15Click(Sender: TObject);
begin
  form13.showmodal;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  form15.showmodal;
end;

procedure TForm1.Button17Click(Sender: TObject);
var
   i,j: integer;
  linha: string;
  arq: TextFile; //declarando a variável "arq" do tipo arquivo texto
begin


//gravando matriz_mapa temporario no arquivo 'matriz_mapa.tmp'
try
AssignFile(arq, 'matriz_mapa.tmp'); //associa a variavel 'arq' a o arquivo fisico 'matriz_mapa.tmp'
Rewrite(arq); // se 'matriz_mapa.tmp' já existir ele é criado novamente limpo, se nao existir é criado
//percorrendo toda a array matriz_mapa

{
for i := 0 to 2 do
  begin
    for j := 0 to num_elementos_matriz_mapa-1 do
      begin
        linha:='Matriz_mapa['+inttostr(i)+','+inttostr(j)+']= '+ floattostr(matriz_mapa[i,j]);
        WriteLn(arq, linha);
      end;
    end;
}
for i := 0 to num_elementos_matriz_mapa-1 do
  begin
    for j := 0 to 2 do
      begin
        linha:='Matriz_mapa['+inttostr(j)+','+inttostr(i)+']= '+ floattostr(matriz_mapa[j,i]);
        WriteLn(arq, linha);
      end;
    end;




CloseFile(arq); // fecha o arquivo texto 'matriz_mapa.tmp'
except
end;


if FileExists('matriz_mapa.tmp') then
begin
  Memo2.Lines.LoadFromFile('matriz_mapa.tmp')
end;


//deleta o arquivo temporario
if FileExists('matriz_mapa.tmp') then
begin
  DeleteFile ('matriz_mapa.tmp');
end;


{
memo2.clear;
//checando matriz_mapa
//i corre as colunas
//j corre as linhas
for i := 0 to 1 do
  begin
    for j := 0 to num_elementos_matriz_mapa-1 do
      begin
        memo2.Lines.Append('Matriz_mapa['+inttostr(i)+','+inttostr(j)+']= '+ floattostr(matriz_mapa[i,j]));
      end;
    end;
}




end;

procedure TForm1.Button18Click(Sender: TObject);
var
   i,j: integer;
  linha: string;
  arq: TextFile; //declarando a variável "arq" do tipo arquivo texto
begin
  
//gravando matriz_mapa temporario no arquivo 'matriz_mapa.tmp'
try
AssignFile(arq, 'matriz_mapa.tmp'); //associa a variavel 'arq' a o arquivo fisico 'matriz_mapa.tmp'
Rewrite(arq); // se 'matriz_mapa.tmp' já existir ele é criado novamente limpo, se nao existir é criado
//percorrendo toda a array matriz_mapa


for i := 0 to 2 do
  begin
    for j := 0 to num_elementos_matriz_mapa-1 do
      begin
        linha:='Matriz_mapa['+inttostr(i)+','+inttostr(j)+']= '+ floattostr(matriz_mapa[i,j]);
        WriteLn(arq, linha);
      end;
    end;


CloseFile(arq); // fecha o arquivo texto 'matriz_mapa.tmp'
except
end;


if FileExists('matriz_mapa.tmp') then
begin
  Memo2.Lines.LoadFromFile('matriz_mapa.tmp')
end;


//deleta o arquivo temporario
if FileExists('matriz_mapa.tmp') then
begin
  DeleteFile ('matriz_mapa.tmp');
end;


{
memo2.clear;
//checando matriz_mapa
//i corre as colunas
//j corre as linhas
for i := 0 to 1 do
  begin
    for j := 0 to num_elementos_matriz_mapa-1 do
      begin
        memo2.Lines.Append('Matriz_mapa['+inttostr(i)+','+inttostr(j)+']= '+ floattostr(matriz_mapa[i,j]));
      end;
    end;
}


end;

procedure TForm1.Button19Click(Sender: TObject);
var
    arq_relatorio: TextFile;
    j: integer;
    i,k: integer;
    w: integer;

    string_aux: string;
    string_acumulada: string;
    tamanho_str: integer;
    num_espacos: integer;

    id_trajetoria_ativa_atual : integer;
begin

memo1.clear;

//guarda o id da trajetoria ativa atual para restaurar após gerar o relatório
id_trajetoria_ativa_atual:=id_trajetoria_ativa;


//correndo todas as trajetorias e gerando um relatório para cada uma delas
//em casa passada a trajetoria é definida como trajetoria ativa

for k:=1 to StringGrid7.RowCount-1 do //passando por todas as linhas do stringGrid7
    begin

        id_trajetoria_ativa:=k; //atualizando a trajetória ativa a cada rodada

        //aplicando a trajetória ativa
        //recarrega o stringlist com os estagios da nova trajetoria ativa
        Form1.carrega_arquivo_estagios();
        //faz os calculos novamente e plota o mapa
        Form1.calcular();



        memo1.Lines.Add(edit9.text+'  '+edit8.text);
        memo1.Lines.Add('');
        memo1.Lines.Add(edit10.text);
        memo1.Lines.Add('');
        memo1.Lines.Add('');
        memo1.Lines.Add(form1.stringgrid7.cells[0,(id_trajetoria_ativa)]+'/'+form1.stringgrid7.cells[1,(id_trajetoria_ativa)] );
        memo1.Lines.Add('');
        memo1.Lines.Add(' Estágio   Embarcação        Long       Lat       Probab.de Impacto           Risco de Vida');

        //plotando o ponto de impacto dos estagios
        for j := 1 to StringGrid1.RowCount-1 do   //correndo as linhas da StrinGrid dos estagios
          begin
              string_aux:= '';
              string_acumulada:= '';
              for i := 1 to StringGrid2.RowCount-1 do   //correndo as linhas da StrinGrid das embarcacoes
                  begin

                      string_aux:= inttostr(j);//pegando o indice do estágio corrente
                      tamanho_str:= Length(string_aux);
                      //calculando o numero de espacos para ficar alinhado
                      num_espacos:= 8-tamanho_str;
                      for w:= 1 to num_espacos do
                        begin
                          string_aux:=' '+string_aux;
                        end;
                      string_acumulada:= string_aux;


                      string_aux:= inttostr(i);//pegando o indice da embarcacao corrente
                      tamanho_str:= Length(string_aux);
                      //calculando o numero de espacos para ficar alinhado
                      num_espacos:= 13-tamanho_str;
                      for w:= 1 to num_espacos do
                        begin
                          string_aux:=' '+string_aux;
                        end;
                      string_acumulada:= string_acumulada+string_aux;



                      string_aux:= StringGrid3.Cells[3,i];
                      if (StringGrid3.Cells[4,i]='O') then
                          begin
                              string_aux:= '-'+string_aux;
                          end
                      else
                      begin
                          string_aux:= '+'+string_aux;
                      end;
                      tamanho_str:= Length(string_aux);
                      //calculando o numero de espacos para ficar alinhado
                      num_espacos:= 12-tamanho_str;
                      for w:= 1 to num_espacos do
                        begin
                          string_aux:=' '+string_aux;
                        end;
                      string_acumulada:= string_acumulada+string_aux;



                      string_aux:= StringGrid3.Cells[1,i];
                      if (StringGrid3.Cells[2,i]='S') then
                          begin
                              string_aux:= '-'+string_aux;
                          end
                      else
                      begin
                          string_aux:= '+'+string_aux;
                      end;
                      tamanho_str:= Length(string_aux);
                      //calculando o numero de espacos para ficar alinhado
                      num_espacos:= 10-tamanho_str;
                      for w:= 1 to num_espacos do
                        begin
                          string_aux:=' '+string_aux;
                        end;
                      string_acumulada:= string_acumulada+string_aux;



                      string_aux:= StringGrid5.Cells[i,j];
                      tamanho_str:= Length(string_aux);
                      //calculando o numero de espacos para ficar alinhado
                      num_espacos:= 24-tamanho_str;
                      for w:= 1 to num_espacos do
                        begin
                          string_aux:=' '+string_aux;
                        end;
                      string_acumulada:= string_acumulada+string_aux;


                      string_aux:= StringGrid6.Cells[i,j];
                      tamanho_str:= Length(string_aux);
                      //calculando o numero de espacos para ficar alinhado
                      num_espacos:= 24-tamanho_str;
                      for w:= 1 to num_espacos do
                        begin
                          string_aux:=' '+string_aux;
                        end;
                      string_acumulada:= string_acumulada+string_aux;
                      memo1.Lines.Add(string_acumulada);
                  end;
          end;
        memo1.Lines.Add('');
        memo1.Lines.Add('');
        memo1.Lines.Add('Probabilidade Total de Impacto = '+edit1.text);
        memo1.Lines.Add('');
        memo1.Lines.Add('Risco da Operação              = '+edit2.text);
        memo1.Lines.Add('');
        memo1.Lines.Add('**********************************');
        memo1.Lines.Add ('Lançamento: '+label3.Caption);
        memo1.Lines.Add('**********************************');
        memo1.Lines.Add('');
        memo1.Lines.Add('');
        memo1.Lines.Add('----------------------------------------------------------------------------------------------------------');
    end;




//restaurando o valor da trajetoria ativa antes da geração do relatório
id_trajetoria_ativa:= id_trajetoria_ativa_atual;
//aplicando a trajetória ativa
//recarrega o stringlist com os estagios da nova trajetoria ativa
Form1.carrega_arquivo_estagios();
//faz os calculos novamente e plota o mapa
Form1.calcular();
//executa as rotinas do botao "Plotar" da aba "plotagem"
Form1.Button14Click(Sender);










  //gravando o arquivo relatorio.txt
  try
    AssignFile(arq_relatorio, 'relatorio_todas_traj.txt'); //associa a variavel 'arq_relatorio' a o arquivo fisico 'relatorio_todas_traj.txt'
    Rewrite(arq_relatorio); //independente do arquivo 'relatorio_todas_traj.txt' existir, ele é regravado
    //Write(arq_relatorio, '                     Operacao|         Veiculo        |          Data|'+char(13)+char(10));

    for i:=1 to Memo1.Lines.Count do
      begin
            Write(arq_relatorio,memo1.Lines[i-1]+char(13)+char(10));
      end;
  except
    showmessage('Erro ao tentar abrir o arquivo relatorio.txt');
  end;

  try
    CloseFile(arq_relatorio); // fecha o arquivo texto 'relatorio.txt'
  except
    showmessage('Erro ao tentar fechar o arquivo relatorio.txt');
  end;


end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  form16.showmodal;
end;

procedure TForm1.Button2Click(Sender: TObject);

begin
  calcular();
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form2.showmodal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  form3.showmodal;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  form5.showmodal;
end;

procedure TForm1.Button6Click(Sender: TObject);
var
    arq_relatorio: TextFile;
    j: integer;
    i: integer;
    w: integer;

    string_aux: string;
    string_acumulada: string;
    tamanho_str: integer;
    num_espacos: integer;
begin

  memo1.clear;

  memo1.Lines.Add(edit9.text+'  '+edit8.text);
  memo1.Lines.Add('');
  memo1.Lines.Add(edit10.text);
  memo1.Lines.Add('');
  memo1.Lines.Add('');
  memo1.Lines.Add(form1.stringgrid7.cells[0,(id_trajetoria_ativa)]+'/'+form1.stringgrid7.cells[1,(id_trajetoria_ativa)] );
  memo1.Lines.Add('');
  memo1.Lines.Add(' Estágio   Embarcação        Long       Lat       Probab.de Impacto           Risco de Vida');

  //plotando o ponto de impacto dos estagios
  for j := 1 to StringGrid1.RowCount-1 do   //correndo as linhas da StrinGrid dos estagios
    begin
        string_aux:= '';
        string_acumulada:= '';
        for i := 1 to StringGrid2.RowCount-1 do   //correndo as linhas da StrinGrid das embarcacoes
            begin

                string_aux:= inttostr(j);//pegando o indice do estágio corrente
                tamanho_str:= Length(string_aux);
                //calculando o numero de espacos para ficar alinhado
                num_espacos:= 8-tamanho_str;
                for w:= 1 to num_espacos do
                  begin
                    string_aux:=' '+string_aux;
                  end;
                string_acumulada:= string_aux;


                string_aux:= inttostr(i);//pegando o indice da embarcacao corrente
                tamanho_str:= Length(string_aux);
                //calculando o numero de espacos para ficar alinhado
                num_espacos:= 13-tamanho_str;
                for w:= 1 to num_espacos do
                  begin
                    string_aux:=' '+string_aux;
                  end;
                string_acumulada:= string_acumulada+string_aux;



                string_aux:= StringGrid3.Cells[3,i];
                if (StringGrid3.Cells[4,i]='O') then
                    begin
                        string_aux:= '-'+string_aux;
                    end
                else
                begin
                    string_aux:= '+'+string_aux;
                end;
                tamanho_str:= Length(string_aux);
                //calculando o numero de espacos para ficar alinhado
                num_espacos:= 12-tamanho_str;
                for w:= 1 to num_espacos do
                  begin
                    string_aux:=' '+string_aux;
                  end;
                string_acumulada:= string_acumulada+string_aux;



                string_aux:= StringGrid3.Cells[1,i];
                if (StringGrid3.Cells[2,i]='S') then
                    begin
                        string_aux:= '-'+string_aux;
                    end
                else
                begin
                    string_aux:= '+'+string_aux;
                end;
                tamanho_str:= Length(string_aux);
                //calculando o numero de espacos para ficar alinhado
                num_espacos:= 10-tamanho_str;
                for w:= 1 to num_espacos do
                  begin
                    string_aux:=' '+string_aux;
                  end;
                string_acumulada:= string_acumulada+string_aux;



                string_aux:= StringGrid5.Cells[i,j];
                tamanho_str:= Length(string_aux);
                //calculando o numero de espacos para ficar alinhado
                num_espacos:= 24-tamanho_str;
                for w:= 1 to num_espacos do
                  begin
                    string_aux:=' '+string_aux;
                  end;
                string_acumulada:= string_acumulada+string_aux;


                string_aux:= StringGrid6.Cells[i,j];
                tamanho_str:= Length(string_aux);
                //calculando o numero de espacos para ficar alinhado
                num_espacos:= 24-tamanho_str;
                for w:= 1 to num_espacos do
                  begin
                    string_aux:=' '+string_aux;
                  end;
                string_acumulada:= string_acumulada+string_aux;
                memo1.Lines.Add(string_acumulada);
            end;
    end;
  memo1.Lines.Add('');
  memo1.Lines.Add('');
  memo1.Lines.Add('Probabilidade Total de Impacto = '+edit1.text);
  memo1.Lines.Add('');
  memo1.Lines.Add('Risco da Operação              = '+edit2.text);
  memo1.Lines.Add('');
  memo1.Lines.Add('**********************************');
  memo1.Lines.Add ('Lançamento: '+label3.Caption);
  memo1.Lines.Add('**********************************');


  //gravando o arquivo relatorio.txt
  try
    AssignFile(arq_relatorio, 'relatorio.txt'); //associa a variavel 'arq_relatorio' a o arquivo fisico 'relatorio.txt'
    Rewrite(arq_relatorio); //independente do arquivo 'relatorio.txt' existir, ele é regravado
    //Write(arq_relatorio, '                     Operacao|         Veiculo        |          Data|'+char(13)+char(10));

    for i:=1 to Memo1.Lines.Count do
      begin
            Write(arq_relatorio,memo1.Lines[i-1]+char(13)+char(10));
      end;




  except
    showmessage('Erro ao tentar abrir o arquivo relatorio.txt');
  end;

  try
    CloseFile(arq_relatorio); // fecha o arquivo texto 'relatorio.txt'
  except
    showmessage('Erro ao tentar fechar o arquivo relatorio.txt');
  end;






end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  form6.showmodal;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  form12.showmodal;
end;

procedure TForm1.Button9Click(Sender: TObject);
var
   teste: integer;
begin


try

teste:=strtoint(edit3.text);
teste:=strtoint(edit4.text);

h0_hora:= strtoint(edit3.text);
h0_minuto:=strtoint(edit4.text);


if (h0_hora=0) then
   begin
        edit3.text:= '00';
   end;
if (h0_minuto=0) then
   begin
        edit4.text:= '00';
   end;

showmessage('Horário de Lançameto Atualizado: '+edit3.text+':'+edit4.text);

salva_arquivo_hora_lancamento();
//se passar por todos os try, faz os calculos novamente e plota o mapa
//faz os calculos
form1.calcular();
//executa as rotinas do botao "Plotar" da aba "plotagem"
Form1.Button14Click(Sender);


except
  showmessage('Horário Inválido');
  edit3.text:= inttostr(h0_hora);
  if (h0_hora=0) then
     begin
          edit3.text:= '00';
     end;

  edit4.text:= inttostr(h0_minuto);
    if (h0_minuto=0) then
     begin
          edit4.text:= '00';
     end;
end;


end;

procedure TForm1.Edit10Change(Sender: TObject);
begin
  SpeedButton6.Enabled:= true;
end;

procedure TForm1.Edit3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
    if key=13 then
     begin
       Button9Click(sender);
     end;
end;

procedure TForm1.Edit4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
      if key=13 then
     begin
       Button9Click(sender);
     end;
end;

procedure TForm1.Edit5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
      if key=13 then
     begin
       Button14Click(sender);
     end;
end;

procedure TForm1.Edit6KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
        if key=13 then
     begin
       Button14Click(sender);
     end;

end;

procedure TForm1.Edit7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState
  );
begin
        if key=13 then
     begin
       Button14Click(sender);
     end;

end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
  SpeedButton6.Enabled:= true;
end;

procedure TForm1.Edit9Change(Sender: TObject);
begin
  SpeedButton6.Enabled:= true;
end;

procedure TForm1.FormActivate(Sender: TObject);

begin

//DecimalSeparator := '.';   //para padrao ingles
DefaultFormatSettings.DecimalSeparator:='.';

//inicializacao da variaveis globais

PITT:= 0;
RVTT:= 0;
PIT:= 0;
RVT:= 0;



h0_hora:=0;
h0_minuto:=0;





//nomeando as colunas da stringGrids
//grid dos dados dos estágios do veículo
stringgrid1.Cells[1,0]:='Lat.(gr)';
stringgrid1.Cells[2,0]:='N/S';
stringgrid1.Cells[3,0]:='Lon.(gr)';
stringgrid1.Cells[4,0]:='L/O';
stringgrid1.Cells[5,0]:='Dispersão(Km)';
stringgrid1.Cells[6,0]:='Área Letal(m²)';
stringgrid1.Cells[7,0]:='Raio da Dispersão(Km)';
stringgrid1.Cells[8,0]:='Trajetória';


//redimenciona as colunas para o texto inserido na grid dos dados dos estágios do veículo
stringgrid1.AutoSizeColumn(0);
stringgrid1.AutoSizeColumn(1);
stringgrid1.AutoSizeColumn(2);
stringgrid1.AutoSizeColumn(3);
stringgrid1.AutoSizeColumn(4);
stringgrid1.AutoSizeColumn(5);
stringgrid1.AutoSizeColumn(6);
stringgrid1.AutoSizeColumn(7);
stringgrid1.AutoSizeColumn(8);




//grid dos dados das embarcações
stringgrid2.Cells[1,0]:= 'Lat-0';
stringgrid2.Cells[2,0]:= 'N/S';
stringgrid2.Cells[3,0]:= 'Lon-0';
stringgrid2.Cells[4,0]:= 'L/O';
stringgrid2.Cells[5,0]:= 'hh';
stringgrid2.Cells[6,0]:= 'mm';
stringgrid2.Cells[7,0]:= 'Área(m²)';
stringgrid2.Cells[8,0]:= 'Tripulação';
stringgrid2.Cells[9,0]:= 'Vel.(Knots)';
stringgrid2.Cells[10,0]:= 'Az.(gr)';

//redimenciona as colunas para o texto inserido na grid dos dados das embarcações
stringgrid2.AutoSizeColumn(0);
stringgrid2.AutoSizeColumn(1);
stringgrid2.AutoSizeColumn(2);
stringgrid2.AutoSizeColumn(3);
stringgrid2.AutoSizeColumn(4);
stringgrid2.AutoSizeColumn(5);
stringgrid2.AutoSizeColumn(6);
stringgrid2.AutoSizeColumn(7);
stringgrid2.AutoSizeColumn(8);
stringgrid2.AutoSizeColumn(9);
stringgrid2.AutoSizeColumn(10);



//grid dos dados de resultados
stringgrid3.Cells[1,0]:='Lat-Final';
stringgrid3.Cells[2,0]:='N/S';
stringgrid3.Cells[3,0]:='Lon-Final';
stringgrid3.Cells[4,0]:='L/O';
stringgrid3.Cells[5,0]:='Prob. Impacto';
stringgrid3.Cells[6,0]:='Risco';

//redimenciona as colunas para o texto inserido na grid dos dados de resultados
stringgrid3.AutoSizeColumn(0);
stringgrid3.AutoSizeColumn(1);
stringgrid3.AutoSizeColumn(2);
stringgrid3.AutoSizeColumn(3);
stringgrid3.AutoSizeColumn(4);
stringgrid3.AutoSizeColumn(5);
stringgrid3.AutoSizeColumn(6);


//grid dos dados dos pontos da area de interdicao
stringgrid8.Cells[1,0]:='Latitude';
stringgrid8.Cells[2,0]:='N/S';
stringgrid8.Cells[3,0]:='Longitude';
stringgrid8.Cells[4,0]:='L/O';


//redimenciona as colunas do grid dos dados dos pontos da area de interdicao
stringgrid8.AutoSizeColumn(0);
stringgrid8.AutoSizeColumn(1);
stringgrid8.AutoSizeColumn(2);
stringgrid8.AutoSizeColumn(3);
stringgrid8.AutoSizeColumn(4);





//grid dos dados das trajetórias
stringgrid7.Cells[1,0]:='Descrição Trajetória';


//carrega a stringGrid7 com os dados do trajetorias.txt
carrega_arquivo_trajetorias();


//inicializando a variavel de indice de trajetoria ativa
id_trajetoria_ativa:=0;

//carrega a trajetoria ativa através da leitura do arquivo trajetoria_ativa.txt
carrega_arquivo_trajetoria_ativa();

//carrega a stringGrid2 com os dados do embarcacoes.txt
carrega_arquivo_embarcacoes();

//carrega a stringGrid1 com os dados do estagios.txt
carrega_arquivo_estagios();

//limpa o image do mapa
clear_mapa();


alcance_mapa:=1;
observador_lat:=0;
observador_lon:=0;

//faz a leitura do vizu_plot.txt
//para cargas das variaveis globais: alcance_mapa, observador_lat e observador_lon
carga_arquivo_plot_mapa();

//faz a plotagem do mapa com os dados do plot_mapa.txt
carga_dados_plot_mapa();


//leitura do hora_lancamento.txt para carga do H0
carrega_hora_lancamento();

//leitura do operacao.txt
carrega_arquivo_operacao();

//faz os calculos
calcular();
//executa as rotinas do botao "Plotar" da aba "plotagem"
Form1.Button14Click(Sender);


//inicializa a variavel de controle da ferramenta de medida de distância
medida_distancia:= 0;
lat_inicial_medida_distancia:=0;
lon_inicial_medida_distancia:=0;
lat_final_medida_distancia:=0;
lon_final_medida_distancia:=0;
distancia_pontos_string:='';


//inicializando form_origem_conv_gms
form_origem_conv_gms:=0;
valor_graus_decimais_origem:=0;



//carrega a stringGrid8 com os dados do interdicao.txt
carrega_arquivo_interdicao();

end;

procedure TForm1.Image1Click(Sender: TObject);
var
    aux_lat_inicial_px:double;
    aux_lon_inicial_px:double;
    aux_lat_final_px:double;
    aux_lon_final_px:double;

    lat_aux_inicial: double;
    lon_aux_inicial: double;

    lat_aux_final: double;
    lon_aux_final: double;

    distancia_pontos: double;
    X_distancia: double;

begin

if (medida_distancia = 0) then
    begin
        //rotinas para mudar a posicao do observador
        edit6.text:= floattostr(roundto(posicao_lat_mapa,-3));
        edit7.text:= floattostr(roundto(posicao_lon_mapa,-3));
        Form1.Button14Click(Sender);
    end
else
    begin
        if (medida_distancia=1) then
            begin
                //rotinas para medida da distancia entre dois pontos 1o ponto
                lat_inicial_medida_distancia:= posicao_lat_mapa;
                lon_inicial_medida_distancia:= posicao_lon_mapa;
                medida_distancia:=2;
                showmessage('Clique na posição final da medida');
            end
        else
            begin
                if (medida_distancia=2) then
                    begin
                        //rotinas para medida da distancia entre dois pontos 2o ponto
                        lat_final_medida_distancia:= posicao_lat_mapa;
                        lon_final_medida_distancia:= posicao_lon_mapa;

                        aux_lat_inicial_px:= func_calc_latitude_px(lat_inicial_medida_distancia); //calculando no image1 o ponto referente a latitude do ponto de impacto do estagio corrente
                        aux_lon_inicial_px:= func_calc_longitude_px(lon_inicial_medida_distancia); //calculando no image1 o ponto referente a longitude do ponto de impacto do estagio corrente
                        aux_lat_final_px:= func_calc_latitude_px(lat_final_medida_distancia); //calculando no image1 o ponto referente a latitude do ponto de impacto do estagio corrente
                        aux_lon_final_px:= func_calc_longitude_px(lon_final_medida_distancia); //calculando no image1 o ponto referente a longitude do ponto de impacto do estagio corrente

                        //traçando a linha da medida

                        image1.canvas.pen.color:= clBlue;
                        image1.canvas.pen.width:= 1;
                        image1.canvas.Pen.Style:=pssolid;

                        image1.canvas.moveto(round(aux_lon_inicial_px),round(aux_lat_inicial_px));
                        image1.canvas.LineTo(round(aux_lon_final_px),round(aux_lat_final_px));



                        lat_aux_inicial:= DegToRad(lat_inicial_medida_distancia); //converte de graus em radianos
                        lon_aux_inicial:= DegToRad(lon_inicial_medida_distancia); //converte de graus em radianos

                    	lat_aux_final:= DegToRad(lat_final_medida_distancia); //convertendo para radianos
                        lon_aux_final:= DegToRad(lon_final_medida_distancia); //convertendo para radianos

                        if (lat_aux_inicial<>lat_aux_final) then //testa se é diferente a latitude do 1o ponto com a latitude do 2o ponto
                            begin
                                X_distancia:= (cos((lat_aux_inicial+lat_aux_final)/2)*(lon_aux_inicial-lon_aux_final)/(lat_aux_inicial-lat_aux_final));
                                X_distancia:= arctan(X_distancia); //arcoTangente de "X_distancia"
                                distancia_pontos:= 6378.88*(lat_aux_inicial-lat_aux_final)/(cos(X_distancia)); //em quilometro
                            end
                        else
                            begin
                                distancia_pontos:= 6378.88*cos(lat_aux_final)*(lon_aux_inicial-lon_aux_final);
                            end;
                        distancia_pontos:= abs(distancia_pontos); //"distancia_pontos" fica só o módulo, ou seja, sempre >0
                        distancia_pontos:= roundto(distancia_pontos,-2);
                        //showmessage(floattostr(distancia_pontos));

                        distancia_pontos_string:= '(Distância = '+floattostr(distancia_pontos)+' Km) ';

                        //aqui mesma rotina do image1.onmouseMove
                        //para dar a primeira exibição da distancia
                        groupbox1.Caption:= ' '+(floattostr(roundto(posicao_lat_mapa,-3)))
                                            +'  '+floattostr(roundto(posicao_lon_mapa,-3))+' '
                                            +'  '+distancia_pontos_string;




                        medida_distancia:=0;
                    end;
            end;




    end;







end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);

begin

posicao_lon_mapa:= ((X * half_minuto_quadro)/259)+longitude_origem_mapa;
posicao_lat_mapa:= latitude_origem_mapa-((Y * half_minuto_quadro)/259);

groupbox1.Caption:= ' '+(floattostr(roundto(posicao_lat_mapa,-3)))
                    +'  '+floattostr(roundto(posicao_lon_mapa,-3))+' '
                    +'  '+distancia_pontos_string;


//Form1.Button14Click(Sender);

end;

procedure TForm1.Image1MouseWheelDown(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);

begin

    zoom_out_plotagem();

end;

procedure TForm1.Image1MouseWheelUp(Sender: TObject; Shift: TShiftState;
  MousePos: TPoint; var Handled: Boolean);

begin

    zoom_in_plotagem();

end;

end.









