unit Projeto.Interfaces;

interface

type

  iDAOInterface<T : class> = interface
    procedure Insert;
    procedure Update;
    procedure Delete;
    function This : T;
  end;

implementation

end.
