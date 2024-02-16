unit Produto.DAO;

interface

uses
  Produto;

type
  TProdutoDAO = class
    private
    public
      procedure Insert ( aProduto : TProduto );
      procedure Update ( aProduto : TProduto );
      procedure Delete ( aProduto : TProduto );
  end;

implementation

{ TProdutoDAO }

procedure TProdutoDAO.Delete(aProduto: TProduto);
begin
  //
end;

procedure TProdutoDAO.Insert(aProduto: TProduto);
begin
  //
end;

procedure TProdutoDAO.Update(aProduto: TProduto);
begin
  //
end;

end.
