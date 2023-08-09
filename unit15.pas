unit Unit15;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm15 }

  TForm15 = class(TForm)
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
  Form15: TForm15;

implementation

uses unit1;

{$R *.lfm}

{ TForm15 }

procedure TForm15.Button1Click(Sender: TObject);
var
   id_trajetoria_delete: integer;
   i,j,k: integer;
   arquivo_estagios_check: TStringList;    //para leitura do estagios.txt para checagem de exclusao de trajetoria
   aux : string;
   aux2 : string;


   arq_estagios_update     : TextFile;

begin

//teste para impedir a exclusão da trajetória ativa
if (ComboBox1.Itemindex+1 = id_trajetoria_ativa) then
    begin
       Showmessage('Não é possível excluir a trajetória ativa');
       exit;
    end;


//para evitar inconsistencias entre os arquivos trajetorias.txt e o estagios.txt
//só é possível apagar uma trajetória se ele não tiver nenhum estigio associado a ela
//por isso é feita essa checagem antes de permitir a exclusão
//VERIFICANDO SE EXISTEM ESTÁGIOS ASSOCIADOS A TRAJETÓRIA SELECIONADA PARA EXCLUSÃO
try
    arquivo_estagios_check := TStringList.Create;
    arquivo_estagios_check.LoadFromFile('estagios.txt');

    for j:=2 to arquivo_estagios_check.Count-1 do
        begin

          aux:= arquivo_estagios_check[j];
          //aux recebe o id da trajetoria extraida da linha corrente. do 115o caractere da string ate os 19 carecteres seguintes
          aux:= copy(aux,116,19);
          //remove os espaço
          aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
          //remover tabulacao
          aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);
          //verificacao se o estagio lido tem id de trajetoria igual a trajetoria que o usuario está tentando excluir
          if ((ComboBox1.Itemindex+1)=strtoint(aux)) then
             begin
                 showmessage('Existem estágios associados a essa trajetória');
                 showmessage('Não é possível excluir uma trajetória com estágios associados');
                 showmessage('Primeiro exclua todos os estágios da trajetória antes de tentar remover a trajetória');
                 arquivo_estagios_check.Free; //fecha a estrutura economizando memória
                 exit;
             end;
        end;
    arquivo_estagios_check.Free; //fecha a estrutura economizando memória
except
    showmessage('Erro ao tentar abrir estagios.txt');
    showmessage('Linha '+inttostr(j)+' com erro.');
end;


id_trajetoria_delete:= ComboBox1.Itemindex+1; //para o id do estagio selecionado na variavel local id_trajetoria_delete

form15.hide;
if MessageDlg('Deseja excluir a trajetória *'+form1.StringGrid7.cells[0,id_trajetoria_delete]+'*', mtConfirmation,[mbyes,mbno],0)=mryes then
   begin
      form1.StringGrid7.DeleteRow(id_trajetoria_delete);
      showmessage('Trajetória Excluída com Sucesso!');
      showmessage('Será feita a renomeação dos índices das trajetórias');

      //rotina para renomeação dos índices das trajetórias.
      //trajetoria1, trajetoria2, trajetoria3.......
      for i:=1 to form1.StringGrid7.RowCount-1 do
          begin
            form1.StringGrid7.Cells[0,i]:= 'Trajetória_'+inttostr(i);
          end;
      close;
      form1.SpeedButton7.Enabled:= true;

      //tratamento da trajetoria ativa
      //necessário pois, na exclusao de uma trajetoria os indices são refeitos, e isso altera o indice da trajetoria ativa
      //basicamente, se a trajetoria ativa tiver um indice menor que a trajetoria excluida nao precisa tratar
      //mas se a trajetoria ativa tiver um indice maior que a trajetoria excluida, precisa tratar, decrementendo 1 do
      //indice da trajetoria ativa
      if (id_trajetoria_delete<id_trajetoria_ativa) then
        begin
            id_trajetoria_ativa:= id_trajetoria_ativa-1;
            form1.label17.caption:= form1.stringgrid7.cells[0,(id_trajetoria_ativa)];
            form1.label18.caption:= form1.stringgrid7.cells[1,(id_trajetoria_ativa)];
            form1.GroupBox2.Caption:= ' Estágios do Veículo ('+ form1.label18.caption+')' ;
        end;


      // é feita uma leitura do arquivo estagios.txt para localizar estágios com
      // id de trajetoria maiores que o id da trajetoria deletada.
      // esses estágios tem o seu id de trajetoria decrementados de 1
      // isso é feito para evitar inconsistências
      try
        arquivo_estagios_check := TStringList.Create;
        arquivo_estagios_check.LoadFromFile('estagios.txt');
        for j:=2 to arquivo_estagios_check.Count-1 do
           begin
             aux:= arquivo_estagios_check[j];
             //aux recebe o id da trajetoria extraida da linha corrente. do 115o caractere da string ate os 19 carecteres seguintes
             aux:= copy(aux,116,19);
             //remove os espaço
             aux:= StringReplace(aux,' ','',[rfReplaceAll, rfIgnoreCase]);
             //remover tabulacao
             aux:= StringReplace(aux,char(9),'',[rfReplaceAll, rfIgnoreCase]);

             if ( (strtoint(aux))> id_trajetoria_delete) then //verifica os estagio onde o id trajetoria é maior que o id trajetoria deletado
               begin
                    aux2:= arquivo_estagios_check[j];
                    delete(aux2,116,19); //removendo da string só o id da trajetoria
                    aux:= inttostr(strtoint(aux)-1); //decrementando de 1 o id da trajetoria
                    //atualizando a linha do estágio no arquivo_estagios_check
                    //calculando o numero de espacos para ficar alinhado
                    for k:= 1 to (19-(Length(aux))) do
                    begin
                      aux:=' '+aux;
                    end;
                    arquivo_estagios_check[j]:= aux2+aux; //atualzando o arquivo_estagios_check[j] com o id trajetoria decrementado de 1
               end;
           end;

        //atualizando o estagios.txt com o id trajetoria atualizado se necessário
        AssignFile(arq_estagios_update, 'estagios.txt'); //associa a variavel 'arq_estagios' ao arquivo fisico 'estagios.txt'
        Rewrite(arq_estagios_update); //independente do arquivo 'estagios.txt' existir, ele é regravado somente com o cabeçalho
        Write(arq_estagios_update, '          lat-0|         latN-S|          lon-0|         lonL-O|  Dispersao(km)|Area_letal(m^2)|Raio_dispersao(Km)|      id_trajetoria|'+char(13)+char(10));
        Write(arq_estagios_update, '---------------+---------------+---------------+---------------+---------------+---------------+------------------+-------------------+');
        for j:=2 to arquivo_estagios_check.Count-1 do
            begin
                Write(arq_estagios_update,char(13)+char(10)+arquivo_estagios_check[j]);
            end;
        CloseFile(arq_estagios_update);  //fecha o arquivo estagios.txt
        arquivo_estagios_check.Free; //fecha a estrutura economizando memória


        //recarrega a stringlist de estagios
        //isso é necessario para o caso de excluirmos uma trajetoria com id trajetoria menos que a trajetoria ativa
        form1.carrega_arquivo_estagios();

        //salva forçado as trajetorias alteradas
        form1.salva_arquivo_trajetorias();//chamando a procedure q atualizar o arquivo 'trajetorias.txt'
        form1.salva_arquivo_trajetoria_ativa();//chamando a procedure q atualizar o arquivo 'trajetoria_ativa.txt'
        form1.SpeedButton7.Enabled:= false;

        //salva forçado os estagios
        form1.salva_arquivo_estagios();//chamando a procedure q atualizar o arquivo 'estagios.txt'
        form1.SpeedButton2.Enabled:= false;


      except
        showmessage('Erro ao tentar abrir estagios.txt');
        showmessage('Linha '+inttostr(j)+' com erro.');
      end;






   end
else
   begin
      showmessage('Exclusão de Trajetória Cancelada');
      close;
   end;



end;
procedure TForm15.Button2Click(Sender: TObject);
begin
  close;
end;

procedure TForm15.FormKeyPress(Sender: TObject; var Key: char);
begin
   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;

procedure TForm15.FormShow(Sender: TObject);
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
ComboBox1.itemindex:=0;

end;

end.












