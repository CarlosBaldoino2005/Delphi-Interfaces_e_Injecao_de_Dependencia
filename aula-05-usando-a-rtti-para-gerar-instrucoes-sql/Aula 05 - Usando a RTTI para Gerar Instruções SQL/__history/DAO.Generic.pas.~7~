unit DAO.Generic;

interface

uses
  Projeto.Interfaces;

type
  TDAOGeneric<T : class, constructor> = class(TInterfacedObject, iDAOInterface<T>)
    private
      FEntidade : T;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOInterface<T>;
      procedure Insert;
      procedure Update;
      procedure Delete;
      function This : T;
  end;

implementation

{ TDAOGeneric<T> }

constructor TDAOGeneric<T>.Create;
begin
  FEntidade := T.Create;
end;

procedure TDAOGeneric<T>.Delete;
begin
  //
end;

destructor TDAOGeneric<T>.Destroy;
begin
  if Assigned(FEntidade) then
    FEntidade.Free;

  inherited;
end;

procedure TDAOGeneric<T>.Insert;
begin
  //
end;

class function TDAOGeneric<T>.New: iDAOInterface<T>;
begin
  Result := Self.Create;
end;

function TDAOGeneric<T>.This: T;
begin
  Result := FEntidade;
end;

procedure TDAOGeneric<T>.Update;
begin
  //
end;

end.
