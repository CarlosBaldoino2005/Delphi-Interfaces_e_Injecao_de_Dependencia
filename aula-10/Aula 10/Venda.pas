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
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iVenda;
      function Display ( aValue : TProc<String> ) : iVenda; overload;
      function Display : TProc<String>; overload;
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

class function TVenda.New: iVenda;
begin
  Result := Self.Create;
end;

function TVenda.VenderItem: iVenda;
var
  I: Integer;
  Msg : String;
begin
  Msg := '';
  for I := 0 to Pred(FListItens.Count) do
  begin
    Msg := Msg +
      Format('Produto %d - Pre�o Unit R$ %f - Qnt %f - Total %f',
      [
        FListItens[I].Codigo,
        FListItens[I].PrecoUnitario,
        FListItens[I].Qnt,
        (FListItens[I].PrecoUnitario * FListItens[I].Qnt)
      ]) + #13 + #10;
  end;
  Display()(Msg);
end;

end.
