unit uEmail;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient,
  IdSMTP, IdBaseComponent, IdMessage, StdCtrls, Buttons;

type
  TfEmail = class(TForm)
    IdMessage: TIdMessage;
    IdSMTP: TIdSMTP;
    gbEmail: TGroupBox;
    Label2: TLabel;
    edCt: TEdit;
    edSeq: TEdit;
    Label1: TLabel;
    btEnviar: TBitBtn;
    edNome: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    edEmail: TEdit;
    cbMU: TCheckBox;
    procedure btEnviarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEmail: TfEmail;

implementation

uses uVer, uConVerScript, uDM, StdConvs;

{$R *.dfm}

procedure TfEmail.btEnviarClick(Sender: TObject);
var vVerA : string;
    vSeqA : string;
    vOwnerA : string;
    vNomeA : string;
    vStatusA : string;
    vSeqSA : string;
    vLogA : string;

    vVer : string;
    vSeq : string;
    vOwnerE : string;
    vNome : string;
    vStatus : string;
    vLog : string;

    vTipo : string;
    vOwner : string;
    vObj : string;

begin
  IdMessage.From.Name := edNome.Text;
  IdMessage.From.Address := edEmail.Text;

  //IdMessage.Recipients.EMailAddresses := 'andre.miranda@mega.com.br';
  IdMessage.Recipients.EMailAddresses := 'andre.miranda@mega.com.br,juliana.caliman@mega.com.br,robson@mega.com.br,antonio.gomes@mega.com.br';
  IdMessage.CCList.EMailAddresses := 'joao.fernando@mega.com.br,frank@mega.com.br,cibele.anselmo@mega.com.br,cynthia@mega.com.br';

  if cbMU.Checked = true then
    IdMessage.Subject := edSeq.text+'º'+' Teste de Script executado pelo MU - '+fVerScript.edVersao.text
  else
    IdMessage.Subject := edSeq.text+'º'+' Teste de Script - '+fVerScript.edVersao.text;

  IDMessage.Body.Clear;
  if cbMU.Checked = true then
    IDMessage.Body.Add('Foram executados através do Mega Update:')
  else
    IDMessage.Body.Add('Foram executados:');
  IDMessage.Body.Add('');
  IDMessage.Body.Add(fVerScript.sb.Panels[1].Text); //Soma Total
  IDMessage.Body.Add('');
  IDMessage.Body.Add(fVerScript.sb.Panels[4].Text); //Ok
  IDMessage.Body.Add('');
  IDMessage.Body.Add(fVerScript.sb.Panels[2].Text); //Avisos
  With fConVerScript.vDM.qrTemp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT count(A.SCR_ST_VERSAO) "Cont"'           );
    Sql.Add('FROM MGGLO.GLO_SCRIPT A'                        );
    Sql.Add('  LEFT OUTER JOIN MGGLO.GLO_SCRIPTSQL B ON'     );
    Sql.Add('       B.SCR_ST_VERSAO    = A.SCR_ST_VERSAO'    );
    Sql.Add('   AND B.SCR_ST_SEQUENCIA = A.SCR_ST_SEQUENCIA' );
    Sql.Add('   AND B.SCR_IN_OWNERSEQ  = A.SCR_IN_OWNERSEQ'  );
    Sql.Add(' WHERE 1 = 1'                                   );
    Sql.Add('   AND A.SCR_CH_STATUS = ''A'''                                           );
    Sql.Add('   AND A.SCR_ST_VERSAO like ''%' +fVerScript.edVersao.text+ '%''        ' );
    open;
    if FieldValues['Cont'] <> 0 then
    begin
      IDMessage.Body.Add('Versão  Seq  Owner PM          Status   Seq SQL  Log');
      IDMessage.Body.Add('======  ===  ===== =========== =======  =======  ==========================================');
      With fConVerScript.vDM.qrObjAviso do
      begin
        IDMessage.Body.Add('');
        Close;
        Sql.Clear;
        Sql.Add('SELECT a.scr_st_versao "Versao",'                                         );
        Sql.Add('       a.scr_st_sequencia "SeqScript",'                                   );
        Sql.Add('       a.scr_st_owner "Owner",'                                           );
        Sql.Add('       a.scr_st_nome "Nome",'                                             );
        Sql.Add('       case a.scr_ch_status  when''A'' then ''Aviso'' end "StatusScript",');
        Sql.Add('       b.sql_in_sequencia "SeqSql",'                                      );
        Sql.Add('       B.SQL_ST_LOG "Log"'                                                );
        Sql.Add('FROM MGGLO.GLO_SCRIPT A'                                                  );
        Sql.Add('  LEFT OUTER JOIN MGGLO.GLO_SCRIPTSQL B ON'                               );
        Sql.Add('       B.SCR_ST_VERSAO    = A.SCR_ST_VERSAO'                              );
        Sql.Add('   AND B.SCR_ST_SEQUENCIA = A.SCR_ST_SEQUENCIA'                           );
        Sql.Add('   AND B.SCR_IN_OWNERSEQ  = A.SCR_IN_OWNERSEQ'                            );
        Sql.Add(' WHERE 1 = 1'                                                             );
        Sql.Add('   AND A.SCR_CH_STATUS = ''A'''                                           );
        Sql.Add('   AND A.SCR_ST_VERSAO like ''%' +fVerScript.edVersao.text+ '%''        ' );
        Sql.Add('   order by a.SCR_ST_VERSAO desc, a.scr_st_sequencia, b.sql_in_sequencia' );
        open;
        First;
        While not eof do
        begin
          vVerA   := fConVerScript.vDM.qrObjAvisoVersao.AsString;
          vSeqA   := fConVerScript.vDM.qrObjAvisoSeqScript.AsString;
          vOwnerA:= fConVerScript.vDM.qrObjAvisoOwner.AsString;
          vNomeA  := fConVerScript.vDM.qrObjAvisoNome.AsString;
          vStatusA:= fConVerScript.vDM.qrObjAvisoStatusScript.AsString;
          vSeqSA := fConVerScript.vDM.qrObjAvisoSeqSql.AsString;
          vLogA   := fConVerScript.vDM.qrObjAvisoLog.AsString;
          IDMessage.Body.Add(vVerA+' '+vSeqA+' '+vOwnerA+' '+vNomeA+' '+vStatusA+'     '+vSeqSA+'       '+vLogA);
          Next;
        end;
      end;
    end;
  end;
  IDMessage.Body.Add('');
  IDMessage.Body.Add(fVerScript.sb.Panels[3].Text); //Erros
  With fConVerScript.vDM.qrTemp do
  begin
    Close;
    Sql.Clear;
    Sql.Add('SELECT count(A.SCR_ST_VERSAO) "Cont"'           );
    Sql.Add('FROM MGGLO.GLO_SCRIPT A'                        );
    Sql.Add('  LEFT OUTER JOIN MGGLO.GLO_SCRIPTSQL B ON'     );
    Sql.Add('       B.SCR_ST_VERSAO    = A.SCR_ST_VERSAO'    );
    Sql.Add('   AND B.SCR_ST_SEQUENCIA = A.SCR_ST_SEQUENCIA' );
    Sql.Add('   AND B.SCR_IN_OWNERSEQ  = A.SCR_IN_OWNERSEQ'  );
    Sql.Add(' WHERE 1 = 1'                                   );
    Sql.Add('   AND A.SCR_CH_STATUS = ''E'''                                           );
    Sql.Add('   AND A.SCR_ST_VERSAO like ''%' +fVerScript.edVersao.text+ '%''        ' );
    open;
    if FieldValues['Cont'] <> 0 then
    begin
      IDMessage.Body.Add('Versão  Seq  Owner PM          Status  Log');
      IDMessage.Body.Add('======  ===  ===== =========== ======  ======================================================');
      With fConVerScript.vDM.qrObjErro do
      begin
        Close;
        Sql.Clear;
        Sql.Add('SELECT distinct a.scr_st_versao "Versao",'                            );
        Sql.Add('       a.scr_st_sequencia "SeqScript",'                               );
        Sql.Add('       a.scr_st_owner "Owner",'                                       );
        Sql.Add('       a.scr_st_nome "Nome",'                                         );
        Sql.Add('       case a.scr_ch_status  when''E'' then ''Erro'' end "StatusScript",' );
        Sql.Add('       B.SQL_ST_LOG "Log"'                                            );
        Sql.Add('FROM MGGLO.GLO_SCRIPT A'                                              );
        Sql.Add('  LEFT OUTER JOIN MGGLO.GLO_SCRIPTSQL B ON'                           );
        Sql.Add('       B.SCR_ST_VERSAO    = A.SCR_ST_VERSAO'                          );
        Sql.Add('   AND B.SCR_ST_SEQUENCIA = A.SCR_ST_SEQUENCIA'                       );
        Sql.Add('   AND B.SCR_IN_OWNERSEQ  = A.SCR_IN_OWNERSEQ'                        );
        Sql.Add(' WHERE 1 = 1'                                                         );
        Sql.Add('   AND A.SCR_ST_VERSAO like ''%' +fVerScript.edVersao.text+ '%''     ');
        Sql.Add('   AND A.SCR_CH_STATUS = ''E'''                                       );
        Sql.Add('   order by A.SCR_ST_VERSAO desc'                                     );
        open;
        First;
        While not eof do
        begin
          vVer   := fConVerScript.vDM.qrObjErroVersao.AsString;
          vSeq   := fConVerScript.vDM.qrObjErroSeqScript.AsString;
          vOwnerE:= fConVerScript.vDM.qrObjErroOwner.AsString;
          vNome  := fConVerScript.vDM.qrObjErroNome.AsString;
          vStatus:= fConVerScript.vDM.qrObjErroStatusScript.AsString;
          vLog   := fConVerScript.vDM.qrObjErroLog.AsString;
          IDMessage.Body.Add(vVer+' '+vSeq+' '+vOwnerE+' '+vNome+' '+vStatus+'    '+vLog);
          Next;
        end;
      end
    end;
  end;
  IDMessage.Body.Add('');
  IDMessage.Body.Add('Os objetos abaixo ficaram inválidos:');
  IDMessage.Body.Add('');
  with fConVerScript.vDM.qrObj do
  begin
    Close;
    Sql.Clear;
    Sql.Add('select rownum "Chave",'                  );
    Sql.Add('       status "Status",'                 );
    Sql.Add('       object_type "Tipo",'              );
    Sql.Add('       owner "Owner",'                   );
    Sql.Add('       object_name "Object",'            );
    Sql.Add('       created "Criado"'                 );
    Sql.Add('    from dba_objects where 1=1'          );
    Sql.Add('AND ((OWNER LIKE ''MG%'') OR (OWNER = ''MEGA''))' );
    Sql.Add('    and status = ''INVALID'' order by 4,2' );
    open;
    First;
    While not eof do
    begin
      vTipo := fConVerScript.vDM.qrObjTipo.AsString;
      vOwner := fConVerScript.vDM.qrObjOwner.AsString;
      vObj := fConVerScript.vDM.qrObjObject.AsString;
      IDMessage.Body.Add(vTipo+' '+vOwner+'.'+vObj);
      Next;
    end;
  end;
  IDMessage.Body.Add('');
  IDMessage.Body.Add('O resultado encontra-se no caso de teste '+edCt.text+' da ferramenta de caso de teste na aba LogResult.');
  IDMessage.Body.Add('');
  IDMessage.Body.Add('Testes executados na '+fConVerScript.cbCon.text+'.');
  IdSMTP.Connect;
  try
    IdSMTP.Send(IdMessage);
  finally
    IdSMTP.Disconnect;
  end;
  Application.MessageBox('Email enviado com sucesso!', 'Confirmação',
  MB_ICONINFORMATION +   MB_OK);
end;


end.


