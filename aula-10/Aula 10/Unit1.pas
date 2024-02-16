unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs, Vcl.StdCtrls, Venda.Interfaces;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FVenda : iVenda;
    procedure DisplayMsg( aValue : String );
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Venda;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  FVenda
    .ItemAttributes
      .Codigo(StrToInt(Edit1.Text))
      .Qnt(StrToCurr(Edit2.Text))
      .PrecoUnitario(StrToCurr(Edit3.Text))
  .&End
  .VenderItem;
end;

procedure TForm1.DisplayMsg(aValue: String);
begin
  Memo1.Lines.Clear;
  Memo1.Lines.Add(aValue);
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FVenda := TVenda.New.Display(DisplayMsg);
  ReportMemoryLeaksOnShutdown := True;
end;

end.
