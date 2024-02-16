unit Projeto.Interfaces;

interface

type

  iDAOInterface<T : class> = interface
    procedure Insert ( aValue : T );
    procedure Update ( aValue : T );
    procedure Delete ( aValue : T );
  end;

implementation

end.
