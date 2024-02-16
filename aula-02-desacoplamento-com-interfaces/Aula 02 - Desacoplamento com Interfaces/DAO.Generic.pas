unit DAO.Generic;

interface

uses
  Projeto.Interfaces;

type
  TDAOGeneric<T : class> = class(TInterfacedObject, iDAOInterface<T>)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iDAOInterface<T>;
      procedure Insert ( aValue : T );
      procedure Update ( aValue : T );
      procedure Delete ( aValue : T );
  end;

implementation

{ TDAOGeneric<T> }

constructor TDAOGeneric<T>.Create;
begin

end;

procedure TDAOGeneric<T>.Delete(aValue: T);
begin
  //
end;

destructor TDAOGeneric<T>.Destroy;
begin

  inherited;
end;

procedure TDAOGeneric<T>.Insert(aValue: T);
begin
  //Via RTTI
end;

class function TDAOGeneric<T>.New: iDAOInterface<T>;
begin
  Result := Self.Create;
end;

procedure TDAOGeneric<T>.Update(aValue: T);
begin
  //
end;

end.
