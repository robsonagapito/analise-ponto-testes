program AgaAPT;

uses
  Forms,
  uAPT in 'uAPT.pas' {formAPT},
  uProjeto in 'uProjeto.pas' {FormProjeto},
  uFoSobre in 'uFoSobre.pas' {foSobre},
  uFormEmail in 'uFormEmail.pas' {FormEmail},
  uFoAviso in 'uFoAviso.pas' {foAviso};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Análise de Pontos de Testes';
  Application.CreateForm(TformAPT, formAPT);
  Application.CreateForm(TFormProjeto, FormProjeto);
  Application.CreateForm(TfoSobre, foSobre);
  Application.CreateForm(TFormEmail, FormEmail);
  Application.CreateForm(TfoAviso, foAviso);
  Application.Run;
end.
