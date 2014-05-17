unit uFormEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ComCtrls, ExtCtrls, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent,
  IdMessage, Buttons,IdIOHandler, IdIOHandlerSocket, IdSSLOpenSSL, uFoAviso;

type
  TFormEmail = class(TForm)
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    Panel1: TPanel;
    StatusBar1: TStatusBar;
    lblNome: TLabel;
    lblEmail: TLabel;
    edNome: TEdit;
    edEmail: TEdit;
    btnSair: TBitBtn;
    btnEnviar: TBitBtn;
    procedure btnSairClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
    stDir: String;
    Procedure EnviarEmail;
  public
    { Public declarations }
  end;

var
  FormEmail: TFormEmail;

  Function ChamarEmail(pDir: String): Boolean;

implementation

{$R *.dfm}

uses uAPT;

Function ChamarEmail(pDir: String): Boolean;
begin
  FormEmail := TFormEmail.Create(Application);
  FormEmail.Caption := formAPT.stFormEmail;
  FormEmail.lblNome.Caption := formAPT.stNOME;
  FormEmail.lblEmail.Caption := formAPT.stEMAIL;
  FormEmail.btnEnviar.Caption := formAPT.stENVIAR;
  FormEmail.btnSair.Caption := formAPT.stSAIR;

  FormEmail.stDir := pDir;
  FormEmail.ShowModal;
  ChamarEmail := True;
  FormEmail.Free;
  FormEmail := Nil;
end;

procedure TFormEmail.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TFormEmail.btnEnviarClick(Sender: TObject);
begin
  if edNome.Text = '' then
  begin
    Aviso('', formAPT.stMsn100, 'Ok','' ,'');
    //ShowMessage(formAPT.stMsn100);
    edNome.SetFocus;
    exit;
  end;

  if Pos('@',edEmail.Text) = 0 then
  begin
    Aviso('', formAPT.stMsn101, 'Ok','' ,'');
    //ShowMessage(formAPT.stMsn101);
    edEmail.SetFocus;
    exit;
  end;

  EnviarEmail;
  Close;
end;

Procedure TFormEmail.EnviarEmail;
// var SSL : TIdSSLIOHandlerSocketOpenSSL;
begin

  // Criando o Segurança SSL
  //SSL := TIdSSLIOHandlerSocketOpenSSL.Create(nil);

  IdMessage.From.Name := edNome.Text;
  IdMessage.From.Address := edEmail.Text;
  IdMessage.Recipients.EMailAddresses := 'robagapito@hotmail.com';
  IdMessage.Subject := '[APT - Resultado]';
  IDMessage.Body.Clear;
  IDMessage.Body.Add('Nome: '  + EdNome.Text);
  IDMessage.Body.Add('Email: ' + EdEmail.Text);
  IDMessage.Body.Add('');
  IDMessage.Body.Add('Email informativo para base histórica.');
  IDMessage.Body.Add('Resultado da análise de pontos de Teste.');
  IDMessage.Body.Add('');
  IDMessage.Body.Add('Comunidade Testadores');

  TIdAttachment.Create(idmessage.MessageParts, TFileName(stDir + 'Totais.XML'));
  TIdAttachment.Create(idmessage.MessageParts, TFileName(stDir + 'ProjetoEmail.XML'));

  //IdSMTP.IOHandler := SSL;
  //IdSMTP.UseTLS := utUseExplicitTLS;

  IdSMTP.Connect;
  try
    IdSMTP.Send(IdMessage);
  finally
    IdSMTP.Disconnect;

    //SSL.Destroy();
    IdSMTP.Destroy();
    IDMessage.Destroy();
  end;
  Aviso('', formAPT.stMsn102, 'Ok','' ,'');
  //ShowMessage(formAPT.stMsn102);
end;

end.
