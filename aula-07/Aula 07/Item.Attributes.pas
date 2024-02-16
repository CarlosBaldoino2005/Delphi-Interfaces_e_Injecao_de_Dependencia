unit Item.Attributes;

interface

uses
  Venda.Interfaces;

type
  TItemAttributes<T : IInterface> = class(TInterfacedObject, iItemAttributes<T>)
    private
      FParent : T;
      FCodigo : Integer;
      FQnt : Currency;
      FPrecoUnitario : Currency;
    public
      constructor Create( Parent : T );
      destructor Destroy; override;
      class function New( Parent : T ) : iItemAttributes<T>;
      function Codigo ( aValue : Integer ) : iItemAttributes<T>;
      function Qnt ( aValue : Currency ) : iItemAttributes<T>;
      function PrecoUnitario ( aValue : Currency ) : iItemAttributes<T>;
      function &End : T;
  end;

implementation

{ TItemAttributes<T> }

function TItemAttributes<T>.Codigo(aValue: Integer): iItemAttributes<T>;
begin
  Result := Self;
  FCodigo := aValue;
end;

function TItemAttributes<T>.&End: T;
begin
  Result := FParent;
end;

constructor TItemAttributes<T>.Create( Parent : T );
begin
  FParent := Parent;
end;

destructor TItemAttributes<T>.Destroy;
begin

  inherited;
end;

class function TItemAttributes<T>.New( Parent : T ): iItemAttributes<T>;
begin
  Result := Self.Create(Parent);
end;

function TItemAttributes<T>.PrecoUnitario(aValue: Currency): iItemAttributes<T>;
begin
  Result := Self;
  FPrecoUnitario := aValue;
end;

function TItemAttributes<T>.Qnt(aValue: Currency): iItemAttributes<T>;
begin
  Result := Self;
  FQnt := aValue;
end;

end.
