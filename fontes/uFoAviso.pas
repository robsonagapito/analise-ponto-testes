unit uFoAviso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfoAviso = class(TForm)
    pnlBut: TPanel;
    pnlGeral: TPanel;
    btn2: TBitBtn;
    btn1: TBitBtn;
    btn0: TBitBtn;
    lblTexto: TLabel;
    procedure btn0Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vRes : Integer;
  public
    { Public declarations }
  end;

var
  foAviso: TfoAviso;

  Function Aviso(stTit, stTex, stBtn0, stBtn1, stBtn2: String): Integer;

implementation

{$R *.dfm}

Function Aviso(stTit, stTex, stBtn0, stBtn1, stBtn2: String): Integer;
begin
  foAviso := TfoAviso.Create(Application);
  foAviso.lblTexto.Caption := stTex;
  foAviso.Caption      := stTit;
  foAviso.btn2.Caption := stBtn2;
  foAviso.btn1.Caption := stBtn1;
  foAviso.btn0.Caption := stBtn0;

  foAviso.btn2.Visible := stBtn2 <> '';
  foAviso.btn1.Visible := stBtn1 <> '';
  foAviso.btn0.Visible := stBtn0 <> '';

  foAviso.ShowModal;
  Aviso := foAviso.vRes;
  foAviso.Destroy;
  foAviso := Nil;
end;

procedure TfoAviso.btn0Click(Sender: TObject);
begin
  vRes := 0;
  Close;
end;

procedure TfoAviso.btn1Click(Sender: TObject);
begin
  vRes := 1;
  Close;
end;

procedure TfoAviso.btn2Click(Sender: TObject);
begin
  vRes := 2;
  Close;
end;

procedure TfoAviso.FormShow(Sender: TObject);
begin
  btn0.SetFocus;
end;

end.
