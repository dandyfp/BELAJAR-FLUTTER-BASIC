unit UBEKERJADENGANDATA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    EditNikKar: TEdit;
    EditNama: TEdit;
    EditBnykAnak: TEdit;
    EditGP: TEdit;
    EditTIstri: TEdit;
    EditTAnak: TEdit;
    EditTotalTunj: TEdit;
    EditGajiKotor: TEdit;
    EditZakat: TEdit;
    BtnInputLg: TButton;
    BtnHitungGj: TButton;
    procedure BtnHitungGjClick(Sender: TObject);
    procedure BtnInputLgClick(Sender: TObject);
    procedure EditNikKarKeyPress(Sender: TObject; var Key: Char);
    procedure EditNamaKeyPress(Sender: TObject; var Key: Char);
    procedure EditBnykAnakKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnHitungGjClick(Sender: TObject);

  var
  vJmlAnak : Integer;
  vGajiPokok,vTunjanganAnak,vTotalTunjangan,vTunjanganIstri,
  vZakat,vGajiBersih,vGajiKotor : Currency;

begin
    vJmlAnak:=StrToInt(EditBnykAnak.Text);
    vGajiPokok:=StrToCurr(EditGP.Text);

    //Hitung Tunjangan Istri
    vTunjanganIstri:=0.2*  vGajiPokok;
    //Hitung tunjangan anak
     vTunjanganAnak:=(0.05 * vGajiPokok)*vJmlAnak;
     //total tunjangan
     vTotalTunjangan:=  vTunjanganAnak + vTunjanganIstri;
     //gaji kotor
      vGajiKotor:= vGajiPokok + vTotalTunjangan;
       //zakat
       vZakat:= 0.025 * vGajiKotor;
       //gaji bersih
       vGajiBersih :=   vGajiKotor -  vZakat;

       //TAMPIL KE DISPLAY
        EditTIstri.Text :=FormatFloat('#,##0',vTunjanganIstri);
        EditTAnak.Text   :=FormatFloat('#,##0',vTunjanganAnak);
        EditTotalTunj.Text :=FormatFloat('#,##0',vTotalTunjangan);
        EditGajiKotor.Text :=FormatFloat('#,##0',vGajiKotor);
        EditZakat.Text  :=FormatFloat('#,##0',vZakat);
        Panel2.Caption := 'Gaji Bersih :' + FormatFloat('#,##0',vGajiBersih);

end;

procedure TForm1.BtnInputLgClick(Sender: TObject);
begin
EditNikKar.Text:='';
EditNama.Text:='';
EditBnykAnak.Text:='';
EditGP.Text:='';
EditTIstri.Text:='';
EditTAnak.Text:='';
EditTotalTunj.Text:='';
EditGajiKotor.Text:='';
EditZakat.Text:='';
panel2.Caption:='Gaji Bersih :';
EditNikKar.SetFocus;
end;

procedure TForm1.EditBnykAnakKeyPress(Sender: TObject; var Key: Char);
begin
if Key =Char(13) then
EditGP.SetFocus;
end;

procedure TForm1.EditNamaKeyPress(Sender: TObject; var Key: Char);
begin
if Key =Char(13) then
EditBnykAnak.SetFocus;
end;

procedure TForm1.EditNikKarKeyPress(Sender: TObject; var Key: Char);
begin
if Key =Char(13) then
EditNama.SetFocus;
end;

end.
