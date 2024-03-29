unit Log.Txt;

interface

uses
  Log.Interfaces;

type
  TLogTXT = class(TInterfacedObject, iLog)
    private
      FMsg : String;
      FDecorator : iLog;
    public
      constructor Create( aDecorator : iLog );
      destructor Destroy; override;
      class function New( aDecorator : iLog = nil ) : iLog;
      function Msg ( aValue : String ) : iLog;
      function Save : iLog;
  end;

implementation

{ TLogTXT }

constructor TLogTXT.Create( aDecorator : iLog );
begin
  FDecorator := aDecorator;
end;

destructor TLogTXT.Destroy;
begin

  inherited;
end;

function TLogTXT.Msg(aValue: String): iLog;
begin
  Result := Self;

  if Assigned(FDecorator) then
    FDecorator.Msg(aValue);

  FMsg := aValue;
end;

class function TLogTXT.New( aDecorator : iLog ) : iLog;
begin
  Result := Self.Create(aDecorator);
end;

function TLogTXT.Save: iLog;
var
  aTeste: string;
begin
  if Assigned(FDecorator) then
    FDecorator.Save;

  aTeste := FMsg;
end;

end.
