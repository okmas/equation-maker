unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  randomize;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  prime, vars, rows : integer;
  f : TextFile;
  i, j : integer;
begin
  prime := strtoint(edit3.Text);
  vars := strtoint(edit2.Text);
  rows := strtoint(edit1.Text);

  AssignFile(f, 'rovnica' + inttostr(vars) + inttostr(rows) + '.txt');
  rewrite(f);

  writeLn(f, prime);
  writeLn(f, vars,' ', rows);

  for i := 1 to rows - 1 do
    begin
      for j := 1 to vars - 1 do
        begin
          write(f, inttostr(random(prime)) + 'x' + inttostr(j) + ' + ');
        end;
      write(f, inttostr(random(prime)) + 'x' + inttostr(vars));
      write(f, ' = ' + inttostr(random(prime)));
      writeLn(f);
    end;

  for j := 1 to vars - 1 do
    begin
      write(f, '0x' + inttostr(j) + ' + ');
    end;
  write(f, '0x' + inttostr(vars));
  write(f, ' = 0');

  closeFile(f);
end;

end.
