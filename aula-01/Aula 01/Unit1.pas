unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,
  LampadaIncandecente;

type
  TfRedeEletrica = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fRedeEletrica: TfRedeEletrica;

implementation

{$R *.dfm}

procedure TfRedeEletrica.Button1Click(Sender: TObject);
begin
  fLampadaIncandecente.Show;
end;

end.
