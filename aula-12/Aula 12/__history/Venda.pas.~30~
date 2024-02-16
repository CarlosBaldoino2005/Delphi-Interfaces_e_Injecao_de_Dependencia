unit Venda;

interface

uses
  Venda.Interfaces,
  System.Generics.Collections,
  System.SysUtils;

type
  TVenda = class(TInterfacedObject, iVenda)
    private
      FListItens : TList<iItemAttributes<iVenda>>;
      FDisplay : TProc<String>;
      FActions : iVendaActions;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iVenda;
      function Actions : iVendaActions;
      function Display ( aValue : TProc<String> ) : iVenda; overload;
      function Display : TProc<String>; overload;
      function ListItens : TList<iItemAttributes<iVenda>>;
      function ItemAttributes : iItemAttributes<iVenda>;
  end;

implementation

uses
  Item.Attributes, Venda.Actions;

{ TVenda }

function TVenda.Actions: iVendaActions;
begin
  if not Assigned(FActions) then
    FActions := TVendaActions.New(Self);

  Result := FActions;
end;

constructor TVenda.Create;
begin
  FListItens := TList<iItemAttributes<iVenda>>.Create;
end;

destructor TVenda.Destroy;
begin
  FListItens.Free;
  inherited;
end;

function TVenda.Display: TProc<String>;
begin
  Result := FDisplay;
end;

function TVenda.Display(aValue: TProc<String>): iVenda;
begin
  Result := Self;
  FDisplay := aValue;
end;

function TVenda.ItemAttributes: iItemAttributes<iVenda>;
begin
  FListItens.Add( TItemAttributes<iVenda>.New(Self) );
  Result := FListItens.Last;
end;

function TVenda.ListItens: TList<iItemAttributes<iVenda>>;
begin
  Result := FListItens;
end;

class function TVenda.New: iVenda;
begin
  Result := Self.Create;
end;

end.
