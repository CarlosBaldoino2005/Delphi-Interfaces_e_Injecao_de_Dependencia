unit Produto;

interface

type
  TProduto = class
    private
    FValor: Currency;
    FDescricao: String;
    procedure SetDescricao(const Value: String);
    procedure SetValor(const Value: Currency);
    public
      property Descricao : String read FDescricao write SetDescricao;
      property Valor : Currency read FValor write SetValor;
  end;

implementation

{ TProduto }

procedure TProduto.SetDescricao(const Value: String);
begin
  FDescricao := Value;
end;

procedure TProduto.SetValor(const Value: Currency);
begin
  FValor := Value;
end;

end.