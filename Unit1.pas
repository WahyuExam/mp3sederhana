unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, MPlayer;

type
  TForm1 = class(TForm)
    lst1: TListBox;
    mp1: TMediaPlayer;
    btn1: TBitBtn;
    dlgOpen1: TOpenDialog;
    btn2: TBitBtn;
    btn3: TBitBtn;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure lst1DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure simpan_text;
  end;

var
  Form1: TForm1;
  berkas_data : TextFile;

implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
 if dlgOpen1.Execute then
  begin
   lst1.Items.Add(dlgOpen1.FileName);
   simpan_text;
  end;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
 lst1.DeleteSelected;
 simpan_text;
end;

procedure TForm1.simpan_text;
var a : Byte;
begin
 AssignFile(berkas_data, ExtractFilePath(Application.ExeName)+'list.txt');
 Rewrite(berkas_data);
 if lst1.count=0 then
  begin
    DeleteFile(ExtractFilePath(Application.ExeName)+'list.txt');
  end
  else
  begin
   for a:=0 to lst1.Count-1 do
    begin
      Writeln(berkas_data,lst1.items.strings[a]);
    end;
  end;
 CloseFile(berkas_data);
end;

procedure TForm1.lst1DblClick(Sender: TObject);
begin
 mp1.Close;
 mp1.FileName := lst1.Items.Strings[lst1.itemindex];
 mp1.Open; mp1.Play;
end;

procedure TForm1.FormShow(Sender: TObject);
var text : string;
begin
 AssignFile(berkas_data, ExtractFilePath(Application.ExeName)+'list.txt');
 Reset(berkas_data);
 while not Eof(berkas_data) do
  begin
    Readln(berkas_data, text);
    lst1.Items.Add(Text);
  end;
 CloseFile(berkas_data);
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
 lst1.Clear;
 simpan_text;
end;

end.
