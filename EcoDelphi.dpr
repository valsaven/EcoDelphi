program EcoDelphi;

uses
  Forms,
  Main in 'Main.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'EcoDelphi';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
