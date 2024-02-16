unit Log.Database;

interface

uses
  Log.Interfaces;

type
  TLogDataBase = class(TInterfacedObject, iLog)
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

{ TLogDataBase }

constructor TLogDataBase.Create( aDecorator : iLog );
begin
  FDecorator := aDecorator;
end;

destructor TLogDataBase.Destroy;
begin

  inherited;
end;

function TLogDataBase.Msg(aValue: String): iLog;
begin
  Result := Self;

  if Assigned(FDecorator) then
    FDecorator.Msg(aValue);

  FMsg := aValue;
end;

class function TLogDataBase.New( aDecorator : iLog ) : iLog;
begin
  Result := Self.Create(aDecorator);
end;

function TLogDataBase.Save: iLog;
var
  aTeste: string;
begin

  if Assigned(FDecorator) then
    FDecorator.Save;

  aTeste := FMsg;
end;

end.
