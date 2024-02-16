unit Venda;

interface

uses
  Venda.Interfaces,
  System.Generics.Collections;

type
  TVenda = class(TInterfacedObject, iVenda)
    private
      FListItens : TList<iItemAttributes<iVenda>>;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iVenda;
      function VenderItem : iVenda;
      function ItemAttributes : iItemAttributes<iVenda>;
  end;

implementation

uses
  Item.Attributes;

{ TVenda }

constructor TVenda.Create;
begin
  FListItens := TList<iItemAttributes<iVenda>>.Create;
end;

destructor TVenda.Destroy;
begin
  FListItens.Free;
  inherited;
end;

function TVenda.ItemAttributes: iItemAttributes<iVenda>;
begin
  FListItens.Add( TItemAttributes<iVenda>.New(Self) );
  Result := FListItens.Last;
end;

class function TVenda.New: iVenda;
begin
  Result := Self.Create;
end;

function TVenda.VenderItem: iVenda;
begin
  //
end;

end.
