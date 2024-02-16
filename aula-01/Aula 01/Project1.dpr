program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {fRedeEletrica},
  LampadaIncandecente in 'LampadaIncandecente.pas' {fLampadaIncandecente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfRedeEletrica, fRedeEletrica);
  Application.CreateForm(TfLampadaIncandecente, fLampadaIncandecente);
  Application.Run;
end.
