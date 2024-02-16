unit Log.Interfaces;

interface

type

  iLog = interface
    ['{3BD7E01B-DCB3-49FD-AF30-8408664F0E15}']
    function Msg ( aValue : String ) : iLog;
    function Save : iLog;
  end;

  iLogFactory = interface
    ['{452795FC-3663-4BFD-821E-88ADEDC4410D}']
    function Log : iLog;
  end;

implementation

end.
