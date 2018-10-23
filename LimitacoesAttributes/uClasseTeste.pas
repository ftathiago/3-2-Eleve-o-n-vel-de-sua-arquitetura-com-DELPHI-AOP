unit uClasseTeste;

interface

{$M+}

type
  TTesteAttribute = class(TCustomAttribute);

  TClasseTeste = class
  public
    [TTesteAttribute]
    procedure MetodoVirtualPublico; virtual;
  published
    procedure MetodoNaoVirtual;
  end;

  TClasseTesteFilha = class(TClasseTeste)
  public
    procedure MetodoVirtualPublico; override;
  end;

  { TClasseTeste }

implementation

procedure TClasseTeste.MetodoNaoVirtual;
begin
  Writeln('Metodo n�o virtual');
  MetodoVirtualPublico;
end;

procedure TClasseTeste.MetodoVirtualPublico;
begin
  Writeln('M�todo virtual p�blico');
end;

{ TClasseTesteFilha }

procedure TClasseTesteFilha.MetodoVirtualPublico;
begin
  inherited;
  Writeln('M�todo virtual p�blico filho');
end;

end.
