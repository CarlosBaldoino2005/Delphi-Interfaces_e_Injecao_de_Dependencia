unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Pessoa,
  Produto,
  DAO.Generic,
  Projeto.Interfaces;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  iDAO : iDAOInterface<TPessoa>;
begin
  iDAO := TDAOGeneric<TPessoa>.New;
  iDAO.This.Nome := 'Thulio';
  iDAO.This.Sobrenome := 'Bittencourt';
  iDAO.Insert;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  iDAO : iDAOInterface<TProduto>;
begin
  iDAO := TDAOGeneric<TProduto>.New;
  iDAO.This.Descricao := 'Arroz Branco';
  iDAO.This.Valor := 10;
  iDAO.Insert;
end;

end.
