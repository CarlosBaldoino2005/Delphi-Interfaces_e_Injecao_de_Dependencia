unit Venda.Interfaces;

interface

type
  iItemAttributes<T : IInterface> = interface;

  iVenda = interface
    ['{6888BF2E-F7ED-4096-BA4D-370CDA773CE4}']
    function ItemAttributes : iItemAttributes<iVenda>;
    function VenderItem : iVenda;
  end;

  iItemAttributes<T : IInterface> = interface
    ['{DE07793A-91DD-4293-A36D-68EE368AEAAC}']
    function Codigo ( aValue : Integer ) : iItemAttributes<T>;
    function Qnt ( aValue : Currency ) : iItemAttributes<T>;
    function PrecoUnitario ( aValue : Currency ) : iItemAttributes<T>;
    function &End : T;
  end;



implementation

end.
