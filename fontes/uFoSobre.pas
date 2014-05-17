unit uFoSobre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, StdCtrls, ShellApi;

type
  TfoSobre = class(TForm)
    pnlSobre: TPanel;
    pnlGeralSobre: TPanel;
    lblIdea: TLabel;
    lblDesenv: TLabel;
    lblTester: TLabel;
    lblIdeaNome: TLabel;
    lblIdeaEmail: TLabel;
    lblIdeaLinkedin: TLabel;
    lblIdeaTwitter: TLabel;
    lblDesNome: TLabel;
    lblDesEmail: TLabel;
    lblDesLinkedin: TLabel;
    lblDesTwitter: TLabel;
    imgSobre: TImage;
    lblTesNome: TLabel;
    lblTesEmail: TLabel;
    lblTesLinkedin: TLabel;
    lblTesTwitter: TLabel;
    lblVersao: TLabel;
    procedure lblIdeaLinkedinClick(Sender: TObject);
    procedure lblIdeaTwitterClick(Sender: TObject);
    procedure imgSobreClick(Sender: TObject);
    procedure lblTesLinkedinClick(Sender: TObject);
    procedure lblTesTwitterClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foSobre: TfoSobre;

  Function ChamarSobre(stLing:string) : Boolean;

implementation

{$R *.DFM}

Function ChamarSobre(stLing:string) : Boolean;
begin
  foSobre := TfoSobre.Create(Application);

  if (uppercase(stLing) = 'PORTUGUESE') or
     (uppercase(stLing) = 'PADRÃO') then
  begin
    foSobre.Caption := 'Sobre';
    foSobre.lblIdea.Caption := 'Idealizador:';
    foSobre.lblDesenv.Caption := 'Desenvolvedor:';
    foSobre.lblTester.Caption := 'Analista de Teste:';
  end
  else
  begin
    foSobre.Caption := 'About';
    foSobre.lblIdea.Caption := 'Idealizer:';
    foSobre.lblDesenv.Caption := 'Developer:';
    foSobre.lblTester.Caption := 'Tester:';
  end;
  foSobre.ShowModal;
  ChamarSobre := True;
  foSobre.Free;
  foSobre := Nil;
end;

procedure TfoSobre.lblIdeaLinkedinClick(Sender: TObject);
begin
  shellexecute(handle, 'open', 'http://br.linkedin.com/in/robsonagapito', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TfoSobre.lblIdeaTwitterClick(Sender: TObject);
begin
  shellexecute(handle, 'open', 'http://twitter.com/robsonagapito', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TfoSobre.imgSobreClick(Sender: TObject);
begin
  shellexecute(handle, 'open', 'http://www.testadores.com', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TfoSobre.lblTesLinkedinClick(Sender: TObject);
begin
  shellexecute(handle, 'open', 'http://br.linkedin.com/in/drelucas', NiL, NiL, SW_SHOWNORMAL);
end;

procedure TfoSobre.lblTesTwitterClick(Sender: TObject);
begin
  shellexecute(handle, 'open', 'http://twitter.com/drelucas', NiL, NiL, SW_SHOWNORMAL);
end;

end.
