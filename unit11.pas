unit Unit11;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm11 }

  TForm11 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: char);
  private

  public

  end;

var
  Form11: TForm11;

implementation

uses unit1, unit2, unit4, unit6, unit8;

{$R *.lfm}

{ TForm11 }

procedure TForm11.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TForm11.ComboBox1Change(Sender: TObject);
begin
    Button1.enabled:=true;
end;

procedure TForm11.Edit1Change(Sender: TObject);
begin
    Button1.enabled:=true;;
end;

procedure TForm11.Edit2Change(Sender: TObject);
begin
    Button1.enabled:=true;
end;

procedure TForm11.Edit3Change(Sender: TObject);
begin
    Button1.enabled:=true;
end;

procedure TForm11.FormActivate(Sender: TObject);
var
  grau_origem: double;
  minuto_origem: double;
  segundo_origem: double;
  aux_origem: double;
begin

  button2.enabled:= false;

  //trunc pega somente a parte inteira do numero real
  grau_origem:= trunc(valor_graus_decimais_origem);
  edit1.Text:= floattostr(grau_origem);;

  //frac pega somente a parte fracionaria do numero real
  aux_origem:= frac(valor_graus_decimais_origem);
  aux_origem:= aux_origem * 60;
  minuto_origem:= trunc(aux_origem);
  edit2.Text:= floattostr(minuto_origem);

  aux_origem:= frac(aux_origem);

  aux_origem:= aux_origem * 60;
  segundo_origem:= roundto(aux_origem,-3);
  edit3.Text:= floattostr(segundo_origem);;


  if (form_origem_conv_gms=1) then
    begin
        ComboBox1.Clear;
        ComboBox1.items.add('N');
        ComboBox1.items.add('S');
        ComboBox1.ItemIndex:=Form2.ComboBox1.ItemIndex;
    end;
  if (form_origem_conv_gms=3) then
    begin
        ComboBox1.Clear;
        ComboBox1.items.add('N');
        ComboBox1.items.add('S');
        ComboBox1.ItemIndex:=Form4.ComboBox1.ItemIndex;
    end;
  if (form_origem_conv_gms=5) then
    begin
        ComboBox1.Clear;
        ComboBox1.items.add('N');
        ComboBox1.items.add('S');
        ComboBox1.ItemIndex:=Form6.ComboBox1.ItemIndex;
    end;
  if (form_origem_conv_gms=7) then
    begin
        ComboBox1.Clear;
        ComboBox1.items.add('N');
        ComboBox1.items.add('S');
        ComboBox1.ItemIndex:=Form8.ComboBox1.ItemIndex;
    end;




  if (form_origem_conv_gms=2) then
    begin
        ComboBox1.Clear;
        ComboBox1.items.add('L');
        ComboBox1.items.add('O');
        ComboBox1.ItemIndex:=Form2.ComboBox2.ItemIndex;
    end;
  if (form_origem_conv_gms=4) then
    begin
        ComboBox1.Clear;
        ComboBox1.items.add('L');
        ComboBox1.items.add('O');
        ComboBox1.ItemIndex:=Form4.ComboBox2.ItemIndex;
    end;
  if (form_origem_conv_gms=6) then
    begin
        ComboBox1.Clear;
        ComboBox1.items.add('L');
        ComboBox1.items.add('O');
        ComboBox1.ItemIndex:=Form6.ComboBox2.ItemIndex;
    end;
  if (form_origem_conv_gms=8) then
    begin
        ComboBox1.Clear;
        ComboBox1.items.add('L');
        ComboBox1.items.add('O');
        ComboBox1.ItemIndex:=Form8.ComboBox2.ItemIndex;
    end;


Button1Click(self); //acionao o botao converter na ativação do formulário

Button1.enabled:=false;

end;

procedure TForm11.FormKeyPress(Sender: TObject; var Key: char);
begin
   If Key = #27 Then Close; //detecta a tecla ESC e fecha o form
end;

procedure TForm11.Button1Click(Sender: TObject);
var
    grau_in: double;
    minuto_in: double;
    segundo_in: double;
    valor_convertido: double;
begin
  button2.enabled:= true;

  try
    grau_in:= strtofloat(edit1.text);
    minuto_in:= strtofloat(edit2.text);
    segundo_in:= strtofloat(edit3.text);

    valor_convertido:= grau_in + (minuto_in / 60) + (segundo_in / 3600) ;

    edit4.Text:= floattostr(roundto(valor_convertido,-5));
    label6.caption:= ComboBox1.Items.Strings[ComboBox1.ItemIndex];

  except
    showmessage('Valores de Graus/Minutos/Segundos inválidos');
    exit();
  end;


end;

procedure TForm11.Button2Click(Sender: TObject);
begin


    if (form_origem_conv_gms=1) then
      begin
          form2.edit1.Text:= edit4.text ;
          form2.ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(label6.caption);
      end;

    if (form_origem_conv_gms=2) then
      begin
          form2.edit2.Text:= edit4.text ;
          form2.ComboBox2.ItemIndex:=ComboBox1.Items.IndexOf(label6.caption);;
      end;

    if (form_origem_conv_gms=3) then
      begin
          form4.edit1.Text:= edit4.text ;
          form4.ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(label6.caption);;
      end;

    if (form_origem_conv_gms=4) then
      begin
          form4.edit2.Text:= edit4.text ;
          form4.ComboBox2.ItemIndex:=ComboBox1.Items.IndexOf(label6.caption);;
      end;

    if (form_origem_conv_gms=5) then
      begin
          form6.edit1.Text:= edit4.text ;
          form6.ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(label6.caption);;
      end;

    if (form_origem_conv_gms=6) then
      begin
          form6.edit2.Text:= edit4.text ;
          form6.ComboBox2.ItemIndex:=ComboBox1.Items.IndexOf(label6.caption);;
      end;

    if (form_origem_conv_gms=7) then
      begin
        form8.edit1.Text:= edit4.text ;
        form8.ComboBox1.ItemIndex:=ComboBox1.Items.IndexOf(label6.caption);;
      end;

    if (form_origem_conv_gms=8) then
      begin
        form8.edit2.Text:= edit4.text ;
        form8.ComboBox2.ItemIndex:=ComboBox1.Items.IndexOf(label6.caption);;
      end;



    close;
end;



end.

