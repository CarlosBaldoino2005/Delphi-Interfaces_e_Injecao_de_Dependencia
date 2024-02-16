unit Pessoa.DAO;

interface

uses
  Pessoa;

type
  TPessoaDAO = class
    private
    public
      procedure Insert ( aPessoa : TPessoa );
      procedure Update ( aPessoa : TPessoa );
      procedure Delete ( aPessoa : TPessoa );
  end;

implementation

{ TPessoaDAO }

procedure TPessoaDAO.Delete(aPessoa: TPessoa);
begin
  //
end;

procedure TPessoaDAO.Insert(aPessoa: TPessoa);
begin
  //
end;

procedure TPessoaDAO.Update(aPessoa: TPessoa);
begin
  //
end;

end.
