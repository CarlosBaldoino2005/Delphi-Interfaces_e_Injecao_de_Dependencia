unit Venda.Interfaces;

interface

uses
  System.SysUtils,
  System.Generics.Collections,
  Venda.Types;

type
  iItemAttributes<T : IInterface> = interface;
  iVendaActions = interface;

  iVenda = interface
    ['{6888BF2E-F7ED-4096-BA4D-370CDA773CE4}']
    function State ( aValue : TEnumVendaTypes ) : iVenda;
    function Display ( aValue : TProc<String> ) : iVenda; overload;
    function Display : TProc<String>; overload;
    function ListItens : TList<iItemAttributes<iVenda>>;
    //function Attributes : iVendaAttributes<iVenda>;
    function ItemAttributes : iItemAttributes<iVenda>;
    function Actions : iVendaActions;
  end;

  iVendaActions = interface
    ['{F9DE7E01-9FFA-4F04-B0BE-6F3E9C943F46}']
    function Vender : iVendaActions;
    function Desconto : iVendaActions;
    function &End : iVenda;
  end;

  iItemAttributes<T : IInterface> = interface
    ['{DE07793A-91DD-4293-A36D-68EE368AEAAC}']
    function Codigo ( aValue : Integer ) : iItemAttributes<T>; overload;
    function Codigo : Integer; overload;
    function Qnt ( aValue : Currency ) : iItemAttributes<T>; overload;
    function Qnt : Currency; overload;
    function PrecoUnitario ( aValue : Currency ) : iItemAttributes<T>; overload;
    function PrecoUnitario : Currency; overload;
    function Display ( aValue : TProc<String> ) : iItemAttributes<T>; overload;
    function Display : TProc<String>; overload;
    function &End : T;
  end;



implementation

end.
