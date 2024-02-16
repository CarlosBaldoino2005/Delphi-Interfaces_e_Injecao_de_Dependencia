unit Pessoa;

interface

type
  TPessoa = class
    private
    FSobrenome: String;
    FNome: String;
    procedure SetNome(const Value: String);
    procedure SetSobrenome(const Value: String);
    public
      property Nome : String read FNome write SetNome;
      property Sobrenome : String read FSobrenome write SetSobrenome;
  end;

implementation

{ TPessoa }

procedure TPessoa.SetNome(const Value: String);
begin
  FNome := Value;
end;

procedure TPessoa.SetSobrenome(const Value: String);
begin
  FSobrenome := Value;
end;

end.
