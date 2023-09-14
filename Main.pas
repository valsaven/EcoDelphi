unit Main;

interface

uses
	Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
	Dialogs, StdCtrls, ShellAPI;

type
	TForm1 = class(TForm)
		ComboBox1: TComboBox;
		Label1: TLabel;
		Label2: TLabel;
		Label3: TLabel;
		Edit1: TEdit;
		Edit2: TEdit;
		Label4: TLabel;
		Label5: TLabel;
		Edit3: TEdit;
		Edit4: TEdit;
		Label6: TLabel;
		Label7: TLabel;
		Label8: TLabel;
		Edit5: TEdit;
		Edit6: TEdit;
		Label9: TLabel;
		Edit7: TEdit;
		Label14: TLabel;
		Label15: TLabel;
		Label16: TLabel;
		Label18: TLabel;
		GroupBox1: TGroupBox;
		Label11: TLabel;
		Edit8: TEdit;
		Label12: TLabel;
		Edit9: TEdit;
		Label13: TLabel;
		Edit10: TEdit;
		Button2: TButton;
		procedure ComboBox1Change(Sender: TObject);
		procedure Button1Click(Sender: TObject);
		procedure FormCreate(Sender: TObject);
		procedure Button2Click(Sender: TObject);
		procedure Edit5Change(Sender: TObject);
		procedure Edit6Change(Sender: TObject);
		procedure Edit5MouseDown(Sender: TObject; Button: TMouseButton;
		  Shift: TShiftState; X, Y: Integer);
		procedure Edit6MouseDown(Sender: TObject; Button: TMouseButton;
		  Shift: TShiftState; X, Y: Integer);
		procedure Edit7Change(Sender: TObject);
		procedure Edit8Change(Sender: TObject);
		procedure Edit3Change(Sender: TObject);
	private
		{ Private declarations }
	public
		{ Public declarations }
		mmg, k, t, g_ppm, tkon, tkon_ppm, q, q_niz, u_exit, u_change: real;
		flag: byte;
	end;

var
	Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
	{ t := StrToFloat(Edit3.Text);  // Присваиваем t температуру
	  k := (mmg / 22.4) * (273 / (273 + t) );
	  Edit4.Text := FloatToStrF (k, ffNumber, 10, 3);
	  g_ppm := StrToFloat(Edit1.Text) / k;
	  Edit2.Text := FloatToStrF(g_ppm, ffNumber, 10, 3); }
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
	ShellAbout(Form1.Handle, 'Eco',
	  'Данное ПО распространяется под лицензией MIT.', Application.Icon.Handle);
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
	case ComboBox1.ItemIndex of
		0:
			mmg := 70.906; // Cl2
		1:
			mmg := 46.0055; // NO2
		2:
			mmg := 34.08188; // H2S
		3:
			mmg := 17.03052; // NH3
		4:
			mmg := 64.0648; // SO2
		5:
			mmg := 28.0104; // CO
		6:
			mmg := 30.0061; // NO
	end;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
	if Edit3.Text <> '' then
	begin
		t := StrToFloat(Edit3.Text); // Присваиваем t температуру
		k := (mmg / 22.4) * (273 / (273 + t));
		Edit4.Text := FloatToStrF(k, ffNumber, 10, 3);
		g_ppm := StrToFloat(Edit1.Text) / k;
		Edit2.Text := FloatToStrF(g_ppm, ffNumber, 10, 3);
	end;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
	if flag = 0 then
	Begin
		tkon := StrToFloat(Edit5.Text);
		tkon := tkon / k;
		Edit6.Text := FloatToStrF(tkon, ffNumber, 10, 3);
		tkon_ppm := StrToFloat(Edit6.Text);
		q := g_ppm / tkon_ppm;
		Edit7.Text := FloatToStrF(q, ffNumber, 10, 3);
	end;
end;

procedure TForm1.Edit5MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	flag := 0;
end;

procedure TForm1.Edit6Change(Sender: TObject);
begin
	if flag = 1 then
	Begin
		tkon_ppm := StrToFloat(Edit6.Text);
		// q := g_ppm / tkon_ppm;
		q := 1 / (tkon_ppm / g_ppm);
		Edit7.Text := FloatToStrF(q, ffNumber, 10, 3);
		tkon := tkon_ppm * k;
		Edit5.Text := FloatToStrF(tkon, ffNumber, 10, 3);
	End;
end;

procedure TForm1.Edit6MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
	flag := 1;
end;

procedure TForm1.Edit7Change(Sender: TObject);
begin
	Edit8.Text := Edit7.Text;
end;

procedure TForm1.Edit8Change(Sender: TObject);
begin
	if Edit8.Text <> '' then
	begin
		q_niz := StrToFloat(Edit8.Text);
		u_exit := 0.1 * ((100 * q_niz) / 12);
		u_change := u_exit / 2;
		Edit9.Text := FloatToStrF(u_exit, ffNumber, 10, 3);
		Edit10.Text := FloatToStrF(u_change, ffNumber, 10, 3);
	end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
	t := 0;
end;

end.
