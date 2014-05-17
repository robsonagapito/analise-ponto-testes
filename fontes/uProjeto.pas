unit uProjeto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, ComCtrls, Buttons, uFoAviso;

type
  TFormProjeto = class(TForm)
    stProjeto: TStatusBar;
    pnlBotao: TPanel;
    pnlGeral: TPanel;
    edCodigo: TDBEdit;
    EdTitulo: TDBEdit;
    lblCodigo: TLabel;
    lblTitulo: TLabel;
    lblTipo: TLabel;
    cbTipo: TDBComboBox;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    memTipo: TMemo;
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    vCancelarProjeto: Boolean;
    Function ValidarProjeto: Boolean;
    Procedure LeTipoProj;
  public
    { Public declarations }

  end;

var
  FormProjeto: TFormProjeto;

Function ChamarProjeto : Boolean;

implementation

{$R *.DFM}

Uses uAPT;

Function ChamarProjeto : Boolean;
begin
  FormProjeto := TFormProjeto.Create(Application);

  if formAPT.stFormProjeto <> '' then
    FormProjeto.Caption := formAPT.stFormProjeto;
  if formAPT.stCODIGO <> '' then
    FormProjeto.lblCodigo.Caption := formAPT.stCODIGO;
  if formAPT.stTITULO <> '' then
    FormProjeto.lblTitulo.Caption := formAPT.stTITULO;
  if formAPT.stTIPOPR <> '' then
    FormProjeto.lblTipo.Caption := formAPT.stTIPOPR;
  if formAPT.stCANCEL <> '' then
    FormProjeto.btnCancelar.Caption := formAPT.stCANCEL;

  FormProjeto.LeTipoProj;

  FormProjeto.ShowModal;
  ChamarProjeto := FormProjeto.vCancelarProjeto;
  FormProjeto.Free;
  FormProjeto := Nil;
end;

Procedure TFormProjeto.LeTipoProj;
  var i: integer;
begin
  cbTipo.Text := formAPT.cdsProjetoTipo.AsString;
  memTipo.Clear;
  if FileExists(formAPT.vDiretorio + 'Linguagem\Tipo.txt') then
    memTipo.Lines.LoadFromFile(formAPT.vDiretorio + 'Linguagem\Tipo.txt');
  if memTipo.Text = '' then exit;

  cbTipo.Clear;

  for i := 0 to memTipo.Lines.Count - 1 do
    cbTipo.Items.Add(memTipo.Lines.Strings[i]);

  cbTipo.Text := formAPT.cdsProjetoTipo.AsString;
end;

Function TFormProjeto.ValidarProjeto: Boolean;
begin
  ValidarProjeto := False;
  if formAPT.cdsProjetoCodigo.AsString = '' then
  begin
    Aviso('', formAPT.stMsn200, 'Ok','' ,'');
    //ShowMessage(formAPT.stMsn200);
    edCodigo.SetFocus;
    Exit;
  end;

  if formAPT.cdsProjetoTipo.AsString = '' then
  begin
    Aviso('', formAPT.stMsn201, 'Ok','' ,'');
    //ShowMessage(formAPT.stMsn201);
    cbTipo.SetFocus;
    Exit;
  end;

  if formAPT.cdsProjetoTitulo.AsString = '' then
  begin
    Aviso('', formAPT.stMsn202, 'Ok','' ,'');
    //ShowMessage(formAPT.stMsn202);
    edTitulo.SetFocus;
    Exit;
  end;

  ValidarProjeto := True;
end;

procedure TFormProjeto.btnOkClick(Sender: TObject);
begin
  if ValidarProjeto then
  begin
    uAPT.formAPT.cdsProjeto.Post;
    uAPT.formAPT.cdsAPT.Append;
    uAPT.formAPT.cdsAPT.Post;
    vCancelarProjeto := True;
    Close;
  end;
end;

procedure TFormProjeto.btnCancelarClick(Sender: TObject);
begin
  uAPT.formAPT.cdsProjeto.Cancel;
  vCancelarProjeto := False;
  Close;
end;

procedure TFormProjeto.FormShow(Sender: TObject);
begin
  EdTitulo.SetFocus;
end;

end.
