unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ListBox1: TListBox;
    Edit1: TEdit;
    Button1: TButton;
    ListBox2: TListBox;
    Edit2: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  aranan,bulunan:string;
i,j,k,n,l:integer;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject); //Türkçeden ingilizceye
begin
listbox1.Items.Clear;
aranan:=edit1.Text;
n:=listbox2.Items.Count-1;
l:=length (aranan);
for i := 0 to n do
  begin
   k:=pos('=',listbox2.Items[i]);
   bulunan:=copy(listbox2.Items[i],k+1,l);
   if aranan=bulunan then
   listbox1.Items.Add(listbox2.Items[i]);
  end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
listbox2.Items.Add(edit2.Text);
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
listbox2.Items.SaveToFile('D:\sözlük\datalar.txt');
end;


procedure TForm1.Button4Click(Sender: TObject);  //ingilizceden tükrçeye
begin
listbox1.Items.Clear;
aranan:=edit1.Text;
n:=listbox2.Items.Count-1;
for i := 0 to n do
  begin
   k:=pos('=',listbox2.Items[i]);
   bulunan:=copy(listbox2.Items[i],0,k-1);
   if aranan=bulunan then
   listbox1.Items.Add(listbox2.Items[i]);
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
listbox2.Items.LoadFromFile('D:\sözlük\datalar.txt');
end;

end.
