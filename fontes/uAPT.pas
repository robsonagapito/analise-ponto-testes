unit uAPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids,
  ComCtrls, DBCtrls, Db, DBClient, Buttons, Mask,FileCtrl, jpeg, Consts,
  ImgList, uFoAviso;

type
  TformAPT = class(TForm)
    pnlTituloAPT: TPanel;
    stStatus: TStatusBar;
    pnlGeral: TPanel;
    pc_geral: TPageControl;
    ts_PTD: TTabSheet;
    pbAPT: TProgressBar;
    pcPTD: TPageControl;
    ts_PTD_PF: TTabSheet;
    ts_PTD_FDf: TTabSheet;
    ts_PTD_QRd: TTabSheet;
    pcQRd: TPageControl;
    ts_PTD_QRd_CE: TTabSheet;
    ts_PTD_QRd_CI: TTabSheet;
    ts_PTE: TTabSheet;
    ts_AT: TTabSheet;
    ts_QET: TTabSheet;
    ts_IPC: TTabSheet;
    pnlPTETit: TPanel;
    pnlAT: TPanel;
    pnlQET: TPanel;
    pnlIPC: TPanel;
    pnlPTD: TPanel;
    gbPF: TGroupBox;
    pnlFD: TPanel;
    rgUe: TdbRadioGroup;
    rgI: TdbRadioGroup;
    rgUy: TDBRadioGroup;
    rgC: TdbRadioGroup;
    gbU: TGroupBox;
    cbUniformidade: TDBComboBox;
    dsFD: TDataSource;
    cdsFD: TClientDataSet;
    cdsFDCodigo: TIntegerField;
    cdsFDTitulo: TStringField;
    cdsFDUe: TStringField;
    cdsFDUy: TStringField;
    cdsFDInterface: TStringField;
    cdsFDComplexidade: TStringField;
    rgCEFunc: TDBRadioGroup;
    rgCEEfetividade: TDBRadioGroup;
    rgCESeguranca: TDBRadioGroup;
    rgCEPerformance: TDBRadioGroup;
    pnlCI: TPanel;
    ckCIEfetividade: TDBCheckBox;
    ckCISeguranca: TDBCheckBox;
    ckCIPerformance: TDBCheckBox;
    ckCIFuncionalidade: TDBCheckBox;
    pnlPTEGer: TPanel;
    ckPTEEfet: TDBCheckBox;
    ckPTESeg: TDBCheckBox;
    ckPTEPerf: TDBCheckBox;
    ckPTEFunc: TDBCheckBox;
    cbQET: TDBComboBox;
    pnlBotao: TPanel;
    pcAT: TPageControl;
    ts_AT_01: TTabSheet;
    ts_AT_02: TTabSheet;
    rgATDocumentacao: TDBRadioGroup;
    rgATPrecedencia: TDBRadioGroup;
    rgATFerramenta: TDBRadioGroup;
    rgATTestware: TDBRadioGroup;
    rgATAmbienteT: TDBRadioGroup;
    rgATAmbienteD: TDBRadioGroup;
    rgIPCTamanho: TDBRadioGroup;
    rgIPCFerramenta: TDBRadioGroup;
    ts_Tot: TTabSheet;
    dsAPT: TDataSource;
    cdsAPT: TClientDataSet;
    cdsAPTCodigo: TStringField;
    cdsAPTTitulo: TStringField;
    cdsAPTPF: TIntegerField;
    cdsAPTCE_Funcionalidade: TStringField;
    cdsAPTCE_Performance: TStringField;
    cdsAPTCE_Seguranca: TStringField;
    cdsAPTCE_Efetividade: TStringField;
    cdsAPTCI_Funcionalidade: TStringField;
    cdsAPTCI_Performance: TStringField;
    cdsAPTCI_Seguranca: TStringField;
    cdsAPTCI_Efetividade: TStringField;
    cdsAPTPTE_Funcionalidade: TStringField;
    cdsAPTPTE_Seguranca: TStringField;
    cdsAPTPTE_Performance: TStringField;
    cdsAPTPTE_Efetividade: TStringField;
    cdsAPTAT_Ferramenta: TStringField;
    cdsAPTAT_Precedencia: TStringField;
    cdsAPTAT_Documentacao: TStringField;
    cdsAPTAT_AmbienteD: TStringField;
    cdsAPTAT_AmbienteT: TStringField;
    cdsAPTAT_Testware: TStringField;
    cdsAPTQET: TStringField;
    cdsAPTIPC_Equipe: TStringField;
    cdsAPTIPC_Ferramenta: TStringField;
    lblProjeto: TLabel;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    dsProjeto: TDataSource;
    cdsProjeto: TClientDataSet;
    cdsProjetoCodigo: TStringField;
    cdsProjetoTitulo: TStringField;
    cdsProjetoTipo: TStringField;
    rgVisualizar: TRadioGroup;
    nePF: TDBEdit;
    btnEditar: TBitBtn;
    cbProjeto: TComboBox;
    cdsAPTCodigoProj: TStringField;
    cdsFDCodigoProj: TStringField;
    pnlFDFBotoes: TPanel;
    FDFBotExcluir: TButton;
    pcFDF: TPageControl;
    ts_PTD_FDf_Reg: TTabSheet;
    ts_PTD_FDf_Sobre: TTabSheet;
    gridFD: TDBGrid;
    memFDf: TMemo;
    ImgTestadores: TImage;
    pnlCabTot: TPanel;
    lblPTD: TLabel;
    lblPTE: TLabel;
    lblPT: TLabel;
    lblHTP: TLabel;
    lblTHT: TLabel;
    lblQET: TLabel;
    lblAT: TLabel;
    lblFC: TLabel;
    pnlTotRes: TPanel;
    spLiga01: TShape;
    spLiga02: TShape;
    spLiga03: TShape;
    spLiga04: TShape;
    spLiga05: TShape;
    spLiga06: TShape;
    pnlTotResCab: TPanel;
    neHoraReal: TDBEdit;
    neHoraPrev: TDBEdit;
    lblHorasPrev: TLabel;
    lblHorasReal: TLabel;
    cdsProjetoHoraPrev: TFloatField;
    cdsProjetoHoraReal: TFloatField;
    cdsFDPontos: TFloatField;
    gbPDTAjuda: TGroupBox;
    memPF: TMemo;
    gbCEAjuda: TGroupBox;
    memCE: TMemo;
    gbCIAjuda: TGroupBox;
    memCI: TMemo;
    gbPTEAjuda: TGroupBox;
    memPTE: TMemo;
    gbATAjuda: TGroupBox;
    memAT: TMemo;
    gbQETAjuda: TGroupBox;
    memQET: TMemo;
    gbIPCAjuda: TGroupBox;
    memIPC: TMemo;
    dsTotais: TDataSource;
    cdsTotais_: TClientDataSet;
    gridTotal: TDBGrid;
    cdsTotais_Sigla: TStringField;
    cdsTotais_Descricao: TStringField;
    cdsTotais_Formula: TStringField;
    cdsTotais_Resultado: TFloatField;
    butAvancar: TBitBtn;
    ButVoltar: TBitBtn;
    butEmail: TBitBtn;
    cdsFDUniformidade: TStringField;
    cdsProjetoEmail: TClientDataSet;
    EmailCodigo: TStringField;
    EmailTitulo: TStringField;
    EmailTipo: TStringField;
    EmailHP: TFloatField;
    EmailHR: TFloatField;
    dsProjetoEmail: TDataSource;
    Panel1: TPanel;
    gbImgComlex: TGroupBox;
    gbImgInterface: TGroupBox;
    tsCap: TTabSheet;
    memCap: TMemo;
    btnCap: TButton;
    btnSavCap: TButton;
    ImageList1: TImageList;
    pnlImgFunArq: TPanel;
    sgInterface: TStringGrid;
    pnlImgArq: TPanel;
    pnlImgFun: TPanel;
    sgImgComplex: TStringGrid;
    meHoraPrev: TMaskEdit;
    meHoraReal: TMaskEdit;
    dsLinguagem: TDataSource;
    lblLingua: TLabel;
    cbLingua: TComboBox;
    cdsLinguagem: TClientDataSet;
    cdsLinguagemLinguagem: TStringField;
    tsPadrao: TTabSheet;
    memPadrao: TMemo;
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsProjetoNewRecord(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure cbProjetoChange(Sender: TObject);
    procedure gridFDDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure cdsFDNewRecord(DataSet: TDataSet);
    procedure cdsAPTNewRecord(DataSet: TDataSet);
    procedure nePFExit(Sender: TObject);
    procedure butAvancarClick(Sender: TObject);
    procedure ButVoltarClick(Sender: TObject);
    procedure rgVisualizarClick(Sender: TObject);
    procedure FDFBotExcluirClick(Sender: TObject);
    procedure cdsFDBeforePost(DataSet: TDataSet);
    procedure pc_geralChange(Sender: TObject);
    procedure ImgTestadoresClick(Sender: TObject);
    procedure cdsTotais_BeforeDelete(DataSet: TDataSet);
    procedure nePFKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure butEmailClick(Sender: TObject);
    procedure btnCapClick(Sender: TObject);
    procedure btnSavCapClick(Sender: TObject);
    procedure meHoraRealExit(Sender: TObject);
    procedure cbLinguaChange(Sender: TObject);
  private
    { Private declarations }
    vProjeto : String;
    vUltProj : integer;
    vWiz : integer;
    vApagaTotal,
    vContinuarAPT : Boolean;
    stNORMAL,
    stALTA  ,
    stBAIXA ,

    stNTEXTO,
    stATEXTO,
    stBTEXTO,

    stATFERRAM01,
    stATFERRAM02,
    stATFERRAM03,

    stATPRECED01,
    stATPRECED02,
    stATPRECED03,

    stATDOCUME01,
    stATDOCUME02,
    stATDOCUME03,

    stATDESENV01,
    stATDESENV02,
    stATDESENV03,

    stATTESTES01,
    stATTESTES02,
    stATTESTES03,

    stATTESTWA01,
    stATTESTWA02,
    stATTESTWA03,

    stIPCFERRA01,
    stIPCFERRA02,
    stIPCFERRA03,

    stIPCEQUIP01,
    stIPCEQUIP02,
    stIPCEQUIP03,

    stMSN01,
    stMSN02,
    stMSN03,
    stMSN04,
    stMSN05,
    stMSN06,
    stMSN07,
    stMSN08,
    stMSN09,
    stMSN10,
    stMSN11,
    stMSN12,
    stMSN13,

    stGTPF01,
    stGTPF02,
    stGTPF03,

    stGTFDF01,
    stGTFDF02,
    stGTFDF03,

    stGTCE01 ,
    stGTCE02 ,
    stGTCE03 ,

    stGTCI01 ,
    stGTCI02 ,
    stGTCI03 ,

    stGTQRD01,
    stGTQRD02,
    stGTQRD03,

    stGTPTD01,
    stGTPTD02,
    stGTPTD03,

    stGTPTE01,
    stGTPTE02,
    stGTPTE03,

    stGTPT01 ,
    stGTPT02 ,
    stGTPT03 ,

    stGTAT01 ,
    stGTAT02 ,
    stGTAT03 ,

    stGTQET01,
    stGTQET02,
    stGTQET03,

    stGTHTP01,
    stGTHTP02,
    stGTHTP03,

    stGTIPC01,
    stGTIPC02,
    stGTIPC03,

    stGTTHT01,
    stGTTHT02,
    stGTTHT03: String;



    Procedure ValidarMidas;
    Procedure CriarDiretorio;
    Procedure AtualizarComboProjeto;
    Procedure AtualizarComboLinguagem;
    Procedure PosicionaProjeto;
    Procedure AtualizaDiretorio;
    Procedure SalvarTabelas;
    Procedure LerTabelas;
    Procedure AbrirTabelas;
    Procedure FecharTabelas;
    Function  ColocarZero(num: Integer; qtd: Integer): String;
    Procedure Wizard(pProcesso: Integer; pWiz: boolean);
    Procedure HabitarWizard(pHab: Boolean);
    Function TotalPF: Currency;
    Function RetornaPDf: Currency;
    Function RetornaCI: Currency;
    Function RetornaCE: Currency;
    Function RetornaQRd: Currency;
    Function TotalPTD: Currency;
    Function TotalPTE: Currency;
    Function TotalAT: Currency;
    Function TotalQET: Currency;
    Function TotalIPC: Currency;
    Function TotalPT: Currency;
    Function TotalHTP: Currency;
    Function TotalTHT: Currency;
    Procedure AtualizaHorasPrev;
    Procedure AtualizaGridTotal;
    Procedure PrepararXML;
    Procedure AtualizaImgInterface(pBai, pNor, pAlt: String);
    Procedure AtualizaImgComplexidade(pBai, pBai1, pNor, pNor1, pAlt, pAlt1: String);

    Procedure AtualizaLinguagem;
    Procedure EscolheLinguagem(pArq: String);
    Procedure AtualizaVariaveisOri;
    Procedure AtualizaVariaveisArq(pStr: TStringList);
    Procedure AtualizaRadioGroup;
    Function StringParaHora(pHora: String): Currency;
    Function HoraParaString(pHora: Extended): String;
    Procedure AtualizaLinguaPadrao;
    Procedure CorrigeDiretorios;


  public
    { Public declarations }

    vDiretorio : String;
    stSIM,
    stNAO,
    stCANCEL,

    stNOME,
    stEMAIL,
    stENVIAR,
    stSAIR,

    stCODIGO,
    stTITULO,
    stTIPOPR,
    stLINGUA,

    stMSN100,
    stMSN101,
    stMSN102,

    stMSN200,
    stMSN201,
    stMSN202,

    stVISU01,
    stVISU02,

    stFormEmail,
    stFormProjeto: String;
  end;

var
  formAPT: TformAPT;

(*
[#NORMAL]<Normal>
[#ALTA]<Alta>
[#BAIXA]<Baixa>

[#NTEXTO]<De 6 a 11 condições>
[#ATEXTO]<Mais que 11 Condições>
[#BTEXTO]<Até 5 Condições>

[#ATFERRAM01]<1 - Existe uma ferramenta de automação para as fases de especificação e execução dos testes.>
[#ATFERRAM02]<2 - Existe uma ferramenta de automação para as fases de especificação ou para a fase de execução dos testes.>
[#ATFERRAM03]<4 - Não existe ferramenta de automação de teste.>

[#ATPRECED01]<2 - Existe um plano para o teste precedente e a equipe está familiarizada com ele, assim como com os respectivos casos de teste e resultados de teste.>
[#ATPRECED02]<4 - Existe um plano para o teste precedente.>
[#ATPRECED03]<8 - Não existe um plano para o teste precedente.>

[#ATDOCUME01]<3 - Durante o desenvolvimento  do sistema são usados padrões de documentação e templates. Há revisões periódicas da documentação.>
[#ATDOCUME02]<6 - Durante o desenvolvimento  do sistema são usados alguns padrões de documentação e templates. Eventualmente há revisões periódicas da documentação.>
[#ATDOCUME03]<12 - A documentação não segue nenhum padrão nem templates são usados.>

[#ATDESENV01]<2 - O sistema foi desenvolvido usando uma linguagem de quarta geração, integrada a um sistema de gerência de banco de dados.>
[#ATDESENV02]<4 - O sistema foi desenvolvido usando uma combinação de linguagens de 4ª e 3ª geração.>
[#ATDESENV03]<8 - O sistema foi desenvolvido em linguagem de 3ª geração como COBOL, PASCAL, C++, Delphi, ASP, Html, etc.>

[#ATTESTES01]<1 - O ambiente de teste já foi usado inúmeras vezes.>
[#ATTESTES02]<2 - O ambiente de teste é similar ao que já vinha sendo usado anteriormente.>
[#ATTESTES03]<4 - O ambiente de teste é completamente novo e experimental.>

[#ATTESTWA01]<1 - Existe um material de teste, tais como bases de dados, tabelas, casos de teste, e outros, que poderão ser re-utilizados.>
[#ATTESTWA02]<2 - Existem apenas tabelas e bases de dados disponíveis para re-utilização.>
[#ATTESTWA03]<4 - Não existe testware disponível.>

[#IPCFERRA01]<0,02 - Existem ferramentas de registro de tempo e de gerência de defeitos, além de ferramentas de gerência de configuração.>
[#IPCFERRA02]<0,04 - Apenas uma das ferramentas citadas acima está disponível.>
[#IPCFERRA03]<0,08 - Não existem ferramentas disponíveis.>

[#IPCEQUIP01]<0,03 - Entre 3 e 4 técnicos.>
[#IPCEQUIP02]<0,06 - Entre 5 e 10 técnicos.>
[#IPCEQUIP03]<0,12 - Mais de 10 técnicos.>

[#MSN01]<Deseja salvar alterações antes de sair?>
[#MSN02]<Não é possível criar o Diretório = >
[#MSN03]<Deseja realmente excluir este Projeto?>
[#MSN04]<Deseja Registrar o Midas.dll>
[#MSN05]<O arquivo Midas.dll está no mesmo diretório do Executável?>
[#MSN06]<DLL Registrada com sucesso Reinicio o Sistema APT.>
[#MSN07]<Somente é aceitável um valor numérico.>
[#MSN08]<Número referente a PF tem que ser maior que Zero.>
[#MSN09]<É aconselhavel que PF seja maior que 500
para que o valor final da Análise não seja afetado.
Continua mesmo assim?>
[#MSN10]<Deseja realmente deletar funcionalidade?>
[#MSN11]<Deseja atualizar Horas Prevista?>
[#MSN12]<Somente é aceitável um valor numérico, positivo e inteiro.>
[#MSN13]<Necessário informar o valor de horas realizadas.>

[#GTPF01]<PF>
[#GTPF02]<Pontos por Função>
[#GTPF03]<PF>

[#GTFDF01]<FDf>
[#GTFDF02]<Funções Dependentes>
[#GTFDF03]<[(Ue + Uy + I + C)/20] x U>

[#GTCE01]<CE>
[#GTCE02]<Características Explícitas>
[#GTCE03]<F + P + S + A>

[#GTCI01]<CI>
[#GTCI02]<Características Implícitas>
[#GTCI03]<n x 0,02 (n de 0 a 4)>

[#GTQRD01]<QRd>
[#GTQRD02]<Qualidade Dinâmica>
[#GTQRD03]<CE + CI>

[#GTPTD01]<PTD>
[#GTPTD02]<Pontos de Teste Dinâmicos>
[#GTPTD03]<PF x FD x QRd>

[#GTPTE01]<PTE>
[#GTPTE02]<Pontos de Teste Estáticos>
[#GTPTE03]<16 x n (n de 0 a 4)>

[#GTPT01]<PT>
[#GTPT02]<Pontos de Testes>
[#GTPT03]<Sum(PTDf) + (PF x PTE) / 500)>

[#GTAT01]<AT>
[#GTAT02]<Ambiente de Testes>
[#GTAT03]<(Soma de todos os Fatores)/21>

[#GTQET01]<QET>
[#GTQET02]<Qualificação Equipe Testes>
[#GTQET03]<Entre 0,7 e 2,0>

[#GTHTP01]<HTP>
[#GTHTP02]<Horas de Testes Primárias>
[#GTHTP03]<PT x QET x AT>

[#GTIPC01]<IPC>
[#GTIPC02]<Índice de Planej. Controle>
[#GTIPC03]<1 + (Equipe + Ferramenta)>

[#GTTHT01]<THT>
[#GTTHT02]<Total de Horas de Teste>
[#GTTHT03]<HTP + IPC>

[#SIM]<Sim>
[#NAO]<Não>
[#CANCELAR]<Cancelar>

[#NOME]<Nome>
[#EMAIL]<Email>
[#ENVIAR]<Enviar>
[#SAIR]<Sair>

[#CODIGO]<Código>
[#TITULO]<Título>
[#TIPOPR]<Tipo do Projeto>
[#LINGUA]<Linguagem>

[#FORMEMAIL]<Email>
[#MSN100]<Necessário informar o seu nome.>
[#MSN101]<Necessário informar um email válido.>
[#MSN102]<Email enviado com sucesso!>

[#FORMPROJETO]<Cadastro de Projetos>
[#MSN200]<Necessário informar o Código do Projeto>
[#MSN201]<Necessário informar o Tipo do Projeto>
[#MSN202]<Necessário informar o Título do Projeto>

*)

implementation

{$R *.DFM}

Uses uProjeto, uFoSobre, uFormEmail;

procedure TformAPT.FormShow(Sender: TObject);
begin
  DecimalSeparator:= ',';
  AtualizaVariaveisOri;
  vApagaTotal := False;
  ValidarMidas;
  AbrirTabelas;
  AtualizaDiretorio;
  CorrigeDiretorios;
  LerTabelas;
  AtualizarComboProjeto;
  AtualizarComboLinguagem;
  if cdsProjeto.RecordCount = 0 then
  begin
    btnNovo.Click;
    if not vContinuarAPT then Application.Terminate;
  end;
  HabitarWizard(rgVisualizar.ItemIndex = 0);
  AtualizaLinguagem;
end;

Procedure TformAPT.CorrigeDiretorios;
  Procedure CopiaArquivos(pExt: String;pCaminho: String);
  var
    F: TSearchRec;
    Ret: Integer;
    DeAquivo : String;
    ParaArquivo : String;

    function TemAtributo(Attr, Val: Integer): Boolean;
    begin
      Result := Attr and Val = Val;
    end;

  begin
    Ret := FindFirst(vDiretorio + '*.' + pExt, faAnyFile, F);
    try
      while Ret = 0 do
      begin
        if not TemAtributo(F.Attr, faDirectory) then
        begin
          DeAquivo := vDiretorio + F.Name;
          ParaArquivo := pCaminho + F.Name;
          MoveFile(PChar(DeAquivo),PChar(ParaArquivo));
        end;
        Ret := FindNext(F);
      end;
    finally
      FindClose(F);
    end;
  end;


begin
  if not DirectoryExists(vDiretorio +'XML') then
    ForceDirectories(vDiretorio +'XML');

  CopiaArquivos('XML', vDiretorio +'XML\');

  if not DirectoryExists(vDiretorio +'Linguagem') then
    ForceDirectories(vDiretorio +'Linguagem');

  CopiaArquivos('APT', vDiretorio +'Linguagem\');
end;

Procedure TformAPT.AtualizaVariaveisArq(pStr: TStringList);
  var vTex: String;
      vStr: String;
begin

  vStr := pStr.Text;
  vTex := pStr.Text;
  vTex := copy(vTex, pos('<',vTex)+1,length(vTex));
  vTex := copy(vTex, 1,length(Trim(vTex))-1);

  if pos('#NORMAL',vStr) > 0 then
    stNORMAL     := vTex
  else if pos('#ALTA',vStr) > 0 then
    stALTA       := vTex
  else if pos('#BAIXA',vStr) > 0 then
    stBAIXA      := vTex
  else if pos('#NTEXTO',vStr) > 0 then
    stNTEXTO     := vTex
  else if pos('#ATEXTO',vStr) > 0 then
    stATEXTO     := vTex
  else if pos('#BTEXTO',vStr) > 0 then
    stBTEXTO     := vTex
  else if pos('#ATFERRAM01',vStr) > 0 then
    stATFERRAM01 := vTex
  else if pos('#ATFERRAM02',vStr) > 0 then
    stATFERRAM02 := vTex
  else if pos('#ATFERRAM03',vStr) > 0 then
    stATFERRAM03 := vTex
  else if pos('#ATPRECED01',vStr) > 0 then
    stATPRECED01 := vTex
  else if pos('#ATPRECED02',vStr) > 0 then
    stATPRECED02 := vTex
  else if pos('#ATPRECED03',vStr) > 0 then
    stATPRECED03 := vTex
  else if pos('#ATDOCUME01',vStr) > 0 then
    stATDOCUME01 := vTex
  else if pos('#ATDOCUME02',vStr) > 0 then
    stATDOCUME02 := vTex
  else if pos('#ATDOCUME03',vStr) > 0 then
    stATDOCUME03 := vTex
  else if pos('#ATDESENV01',vStr) > 0 then
    stATDESENV01 := vTex
  else if pos('#ATDESENV02',vStr) > 0 then
    stATDESENV02 := vTex
  else if pos('#ATDESENV03',vStr) > 0 then
    stATDESENV03 := vTex
  else if pos('#ATTESTES01',vStr) > 0 then
    stATTESTES01 := vTex
  else if pos('#ATTESTES02',vStr) > 0 then
    stATTESTES02 := vTex
  else if pos('#ATTESTES03',vStr) > 0 then
    stATTESTES03 := vTex
  else if pos('#ATTESTWA01',vStr) > 0 then
    stATTESTWA01 := vTex
  else if pos('#ATTESTWA02',vStr) > 0 then
    stATTESTWA02 := vTex
  else if pos('#ATTESTWA03',vStr) > 0 then
    stATTESTWA03 := vTex
  else if pos('#IPCFERRA01',vStr) > 0 then
    stIPCFERRA01 := vTex
  else if pos('#IPCFERRA02',vStr) > 0 then
    stIPCFERRA02 := vTex
  else if pos('#IPCFERRA03',vStr) > 0 then
    stIPCFERRA03 := vTex
  else if pos('#IPCEQUIP01',vStr) > 0 then
    stIPCEQUIP01 := vTex
  else if pos('#IPCEQUIP02',vStr) > 0 then
    stIPCEQUIP02 := vTex
  else if pos('#IPCEQUIP03',vStr) > 0 then
    stIPCEQUIP03 := vTex
  else if pos('#MSN01',vStr) > 0 then
    stMSN01      := vTex
  else if pos('#MSN02',vStr) > 0 then
    stMSN02      := vTex
  else if pos('#MSN03',vStr) > 0 then
    stMSN03      := vTex
  else if pos('#MSN04',vStr) > 0 then
    stMSN04      := vTex
  else if pos('#MSN05',vStr) > 0 then
    stMSN05      := vTex
  else if pos('#MSN06',vStr) > 0 then
    stMSN06      := vTex
  else if pos('#MSN07',vStr) > 0 then
    stMSN07      := vTex
  else if pos('#MSN08',vStr) > 0 then
    stMSN08      := vTex
  else if pos('#MSN09',vStr) > 0 then
    stMSN09      := vTex
  else if pos('#MSN10',vStr) > 0 then
    stMSN10      := vTex
  else if pos('#MSN11',vStr) > 0 then
    stMSN11      := vTex
  else if pos('#MSN12',vStr) > 0 then
    stMSN12      := vTex
  else if pos('#MSN13',vStr) > 0 then
    stMSN13      := vTex
  else if pos('#GTPF01',vStr) > 0 then
    stGTPF01     := vTex
  else if pos('#GTPF02',vStr) > 0 then
    stGTPF02     := vTex
  else if pos('#GTPF03',vStr) > 0 then
    stGTPF03     := vTex
  else if pos('#GTFDF01',vStr) > 0 then
    stGTFDF01    := vTex
  else if pos('#GTFDF02',vStr) > 0 then
    stGTFDF02    := vTex
  else if pos('#GTFDF03',vStr) > 0 then
    stGTFDF03    := vTex
  else if pos('#GTCE01',vStr) > 0 then
    stGTCE01     := vTex
  else if pos('#GTCE02',vStr) > 0 then
    stGTCE02     := vTex
  else if pos('#GTCE03',vStr) > 0 then
    stGTCE03     := vTex
  else if pos('#GTCI01',vStr) > 0 then
    stGTCI01     := vTex
  else if pos('#GTCI02',vStr) > 0 then
    stGTCI02     := vTex
  else if pos('#GTCI03',vStr) > 0 then
    stGTCI03     := vTex
  else if pos('#GTQRD01',vStr) > 0 then
    stGTQRD01    := vTex
  else if pos('#GTQRD02',vStr) > 0 then
    stGTQRD02    := vTex
  else if pos('#GTQRD03',vStr) > 0 then
    stGTQRD03    := vTex
  else if pos('#GTPTD01',vStr) > 0 then
    stGTPTD01    := vTex
  else if pos('#GTPTD02',vStr) > 0 then
    stGTPTD02    := vTex
  else if pos('#GTPTD03',vStr) > 0 then
    stGTPTD03    := vTex
  else if pos('#GTPTE01',vStr) > 0 then
    stGTPTE01    := vTex
  else if pos('#GTPTE02',vStr) > 0 then
    stGTPTE02    := vTex
  else if pos('#GTPTE03',vStr) > 0 then
    stGTPTE03    := vTex
  else if pos('#GTPT01',vStr) > 0 then
    stGTPT01     := vTex
  else if pos('#GTPT02',vStr) > 0 then
    stGTPT02     := vTex
  else if pos('#GTPT03',vStr) > 0 then
    stGTPT03     := vTex
  else if pos('#GTAT01',vStr) > 0 then
    stGTAT01     := vTex
  else if pos('#GTAT02',vStr) > 0 then
    stGTAT02     := vTex
  else if pos('#GTAT03',vStr) > 0 then
    stGTAT03     := vTex
  else if pos('#GTQET01',vStr) > 0 then
    stGTQET01    := vTex
  else if pos('#GTQET02',vStr) > 0 then
    stGTQET02    := vTex
  else if pos('#GTQET03',vStr) > 0 then
    stGTQET03    := vTex
  else if pos('#GTHTP01',vStr) > 0 then
    stGTHTP01    := vTex
  else if pos('#GTHTP02',vStr) > 0 then
    stGTHTP02    := vTex
  else if pos('#GTHTP03',vStr) > 0 then
    stGTHTP03    := vTex
  else if pos('#GTIPC01',vStr) > 0 then
    stGTIPC01    := vTex
  else if pos('#GTIPC02',vStr) > 0 then
    stGTIPC02    := vTex
  else if pos('#GTIPC03',vStr) > 0 then
    stGTIPC03    := vTex
  else if pos('#GTTHT01',vStr) > 0 then
    stGTTHT01    := vTex
  else if pos('#GTTHT02',vStr) > 0 then
    stGTTHT02    := vTex
  else if pos('#GTTHT03',vStr) > 0 then
    stGTTHT03    := vTex
  else if pos('#SIM',vStr) > 0 then
    stSIM        := vTex
  else if pos('#NAO',vStr) > 0 then
    stNAO        := vTex
  else if pos('#CANCEL',vStr) > 0 then
    stCANCEL     := vTex
  else if pos('#NOME',vStr) > 0 then
    stNOME       := vTex
  else if pos('#EMAIL',vStr) > 0 then
    stEMAIL      := vTex
  else if pos('#ENVIAR',vStr) > 0 then
    stENVIAR     := vTex
  else if pos('#SAIR',vStr) > 0 then
    stSAIR       := vTex
  else if pos('#CODIGO',vStr) > 0 then
    stCODIGO     := vTex
  else if pos('#TITULO',vStr) > 0 then
    stTITULO     := vTex
  else if pos('#TIPOPR',vStr) > 0 then
    stTIPOPR     := vTex
  else if pos('#LINGUA',vStr) > 0 then
    stLINGUA     := vTex
  else if pos('#MSN100',vStr) > 0 then
    stMSN100     := vTex
  else if pos('#MSN101',vStr) > 0 then
    stMSN101     := vTex
  else if pos('#MSN102',vStr) > 0 then
    stMSN102     := vTex
  else if pos('#MSN200',vStr) > 0 then
    stMSN200     := vTex
  else if pos('#MSN201',vStr) > 0 then
    stMSN201     := vTex
  else if pos('#MSN202',vStr) > 0 then
    stMSN202     := vTex
  else if pos('#VISU01',vStr) > 0 then
    stVISU01      := vTex
  else if pos('#VISU02',vStr) > 0 then
    stVISU02      := vTex
  else if pos('#FORMEMAIL',vStr) > 0 then
    stFormEmail  := vTex
  else if pos('#FORMPROJETO',vStr) > 0 then
    stFormProjeto:= vTex;
end;

Procedure TformAPT.AtualizaVariaveisOri;
begin
  stNORMAL := 'Normal';
  stALTA := 'Alta';
  stBAIXA := 'Baixa';

  stNTEXTO := 'De 6 a 11 condições';
  stATEXTO := 'Mais que 11 Condições';
  stBTEXTO := 'Até 5 Condições';

  stATFERRAM01 := '1 - Existe uma ferramenta de automação para as fases de especificação e execução dos testes.';
  stATFERRAM02 := '2 - Existe uma ferramenta de automação para as fases de especificação ou para a fase de execução dos testes.';
  stATFERRAM03 := '4 - Não existe ferramenta de automação de teste.';

  stATPRECED01 := '2 - Existe um plano para o teste precedente e a equipe está familiarizada com ele, assim como com os respectivos casos de teste e resultados de teste.';
  stATPRECED02 := '4 - Existe um plano para o teste precedente.';
  stATPRECED03 := '8 - Não existe um plano para o teste precedente.';

  stATDOCUME01 := '3 - Durante o desenvolvimento  do sistema são usados padrões de documentação e templates. Há revisões periódicas da documentação.';
  stATDOCUME02 := '6 - Durante o desenvolvimento  do sistema são usados alguns padrões de documentação e templates. Eventualmente há revisões periódicas da documentação.';
  stATDOCUME03 := '12 - A documentação não segue nenhum padrão nem templates são usados.';

  stATDESENV01 := '2 - O sistema foi desenvolvido usando uma linguagem de quarta geração, integrada a um sistema de gerência de banco de dados.';
  stATDESENV02 := '4 - O sistema foi desenvolvido usando uma combinação de linguagens de 4ª e 3ª geração.';
  stATDESENV03 := '8 - O sistema foi desenvolvido em linguagem de 3ª geração como COBOL, PASCAL, C++, Delphi, ASP, Html, etc.';

  stATTESTES01 := '1 - O ambiente de teste já foi usado inúmeras vezes.';
  stATTESTES02 := '2 - O ambiente de teste é similar ao que já vinha sendo usado anteriormente.';
  stATTESTES03 := '4 - O ambiente de teste é completamente novo e experimental.';

  stATTESTWA01 := '1 - Existe um material de teste, tais como bases de dados, tabelas, casos de teste, e outros, que poderão ser re-utilizados.';
  stATTESTWA02 := '2 - Existem apenas tabelas e bases de dados disponíveis para re-utilização.';
  stATTESTWA03 := '4 - Não existe testware disponível.';

  stIPCFERRA01 := '0,02 - Existem ferramentas de registro de tempo e de gerência de defeitos, além de ferramentas de gerência de configuração.';
  stIPCFERRA02 := '0,04 - Apenas uma das ferramentas citadas acima está disponível.';
  stIPCFERRA03 := '0,08 - Não existem ferramentas disponíveis.';

  stIPCEQUIP01 := '0,03 - Entre 3 e 4 técnicos.';
  stIPCEQUIP02 := '0,06 - Entre 5 e 10 técnicos.';
  stIPCEQUIP03 := '0,12 - Mais de 10 técnicos.';

  stMSN01 := 'Deseja salvar alterações antes de sair?';
  stMSN02 := 'Não é possível criar o Diretório = ';
  stMSN03 := 'Deseja realmente excluir este Projeto?';
  stMSN04 := 'Deseja Registrar o Midas.dll';
  stMSN05 := 'O arquivo Midas.dll está no mesmo diretório do Executável?';
  stMSN06 := 'DLL Registrada com sucesso Reinicio o Sistema APT.';
  stMSN07 := 'Somente é aceitável um valor numérico.';
  stMSN08 := 'Número referente a PF tem que ser maior que Zero.';
  stMSN09 := 'É aconselhavel que PF seja maior que 500' + #13 +
             'para que o valor final da Análise não seja afetado.' + #13 +
             'Continua mesmo assim?';
  stMSN10 := 'Deseja realmente deletar funcionalidade?';
  stMSN11 := 'Deseja atualizar Horas Prevista?';
  stMSN12 := 'Somente é aceitável um valor numérico, positivo e inteiro.';
  stMSN13 := 'Necessário informar o valor de horas realizadas.';

  stGTPF01 := 'PF';
  stGTPF02 := 'Pontos por Função';
  stGTPF03 := 'PF';

  stGTFDF01 := 'FDf';
  stGTFDF02 := 'Funções Dependentes';
  stGTFDF03 := '[(Ue + Uy + I + C)/20] x U';

  stGTCE01 := 'CE';
  stGTCE02 := 'Características Explícitas';
  stGTCE03 := 'F + P + S + A';

  stGTCI01 := 'CI';
  stGTCI02 := 'Características Implícitas';
  stGTCI03 := 'n x 0,02 (n de 0 a 4)';

  stGTQRD01 := 'QRd';
  stGTQRD02 := 'Qualidade Dinâmica';
  stGTQRD03 := 'CE + CI';

  stGTPTD01 := 'PTD';
  stGTPTD02 := 'Pontos de Teste Dinâmicos';
  stGTPTD03 := 'PF x FD x QRd';

  stGTPTE01 := 'PTE';
  stGTPTE02 := 'Pontos de Teste Estáticos';
  stGTPTE03 := '16 x n (n de 0 a 4)';

  stGTPT01 := 'PT';
  stGTPT02 := 'Pontos de Testes';
  stGTPT03 := 'Sum(PTDf) + (PF x PTE) / 500)';

  stGTAT01 := 'AT';
  stGTAT02 := 'Ambiente de Testes';
  stGTAT03 := '(Soma de todos os Fatores)/21';

  stGTQET01 := 'QET';
  stGTQET02 := 'Qualificação Equipe Testes';
  stGTQET03 := 'Entre 0,7 e 2,0';

  stGTHTP01 := 'HTP';
  stGTHTP02 := 'Horas de Testes Primárias';
  stGTHTP03 := 'PT x QET x AT';

  stGTIPC01 := 'IPC';
  stGTIPC02 := 'Índice de Planej. Controle';
  stGTIPC03 := '1 + (Equipe + Ferramenta)';

  stGTTHT01 := 'THT';
  stGTTHT02 := 'Total de Horas de Teste';
  stGTTHT03 := 'HTP + IPC';

  stSIM := 'Sim';
  stNAO := 'Não';
  stCANCEL := 'Cancelar';

  stNOME := 'Nome';
  stEMAIL := 'Email';
  stENVIAR := 'Enviar';
  stSAIR := 'Sair';

  stCODIGO := 'Código';
  stTITULO := 'Título';
  stTIPOPR := 'Tipo do Projeto';
  stLINGUA := 'Linguagem';


  stMSN100 := 'Necessário informar o seu nome.';
  stMSN101 := 'Necessário informar um email válido.';
  stMSN102 := 'Email enviado com sucesso!';

  stMSN200 := 'Necessário informar o Código do Projeto';
  stMSN201 := 'Necessário informar o Tipo do Projeto';
  stMSN202 := 'Necessário informar o Título do Projeto';

  stFormEmail := 'Email';
  stFormProjeto := 'Cadastro de Projetos';

  stVISU01 := 'Wizard';
  stVISU02 := 'Geral';

end;

Procedure TformAPT.AtualizaLinguaPadrao;
begin
  AtualizaVariaveisOri;
  EscolheLinguagem('Portuguese.apt');
  AtualizaImgInterface(stBAIXA,stNormal,stAlta);
  AtualizaImgComplexidade(stBAIXA,stBTexto,stNormal,stNTexto, stAlta, stATexto);
  AtualizaRadioGroup;
end;

Procedure TformAPT.AtualizaLinguagem;
begin

  AtualizaVariaveisOri;
  if cbLingua.Text <> 'PADRÃO' then
    EscolheLinguagem(cbLingua.text + '.apt');
  AtualizaImgInterface(stBAIXA,stNormal,stAlta);
  AtualizaImgComplexidade(stBAIXA,stBTexto,stNormal,stNTexto, stAlta, stATexto);
  AtualizaRadioGroup;
end;

Procedure TformAPT.AtualizaRadioGroup;
begin
  rgATFerramenta.Items.Strings[0]   := stATFERRAM01;
  rgATFerramenta.Items.Strings[1]   := stATFERRAM02;
  rgATFerramenta.Items.Strings[2]   := stATFERRAM03;

  rgATPrecedencia.Items.Strings[0]  := stATPRECED01;
  rgATPrecedencia.Items.Strings[1]  := stATPRECED02;
  rgATPrecedencia.Items.Strings[2]  := stATPRECED03;

  rgATDocumentacao.Items.Strings[0] := stATDOCUME01;
  rgATDocumentacao.Items.Strings[1] := stATDOCUME02;
  rgATDocumentacao.Items.Strings[2] := stATDOCUME03;

  rgATAmbienteD.Items.Strings[0]    := stATDESENV01;
  rgATAmbienteD.Items.Strings[1]    := stATDESENV02;
  rgATAmbienteD.Items.Strings[2]    := stATDESENV03;

  rgATAmbienteT.Items.Strings[0]    := stATTESTES01;
  rgATAmbienteT.Items.Strings[1]    := stATTESTES02;
  rgATAmbienteT.Items.Strings[2]    := stATTESTES03;

  rgATTestware.Items.Strings[0]     := stATTESTWA01;
  rgATTestware.Items.Strings[1]     := stATTESTWA02;
  rgATTestware.Items.Strings[2]     := stATTESTWA03;

  rgIPCTamanho.Items.Strings[0]     := stIPCEQUIP01;
  rgIPCTamanho.Items.Strings[1]     := stIPCEQUIP02;
  rgIPCTamanho.Items.Strings[2]     := stIPCEQUIP03;

  rgIPCFerramenta.Items.Strings[0]  := stIPCFERRA01;
  rgIPCFerramenta.Items.Strings[1]  := stIPCFERRA02;
  rgIPCFerramenta.Items.Strings[2]  := stIPCFERRA03;

  rgVisualizar.Items.Strings[0]     := stVISU01;
  rgVisualizar.Items.Strings[1]     := stVISU02;

  rgUe.Items.Strings[0]     := stBAIXA;
  rgUe.Items.Strings[1]     := stNORMAL;
  rgUe.Items.Strings[2]     := stALTA;

  rgUy.Items.Strings[0]     := stBAIXA;
  rgUy.Items.Strings[1]     := stNORMAL;
  rgUy.Items.Strings[2]     := stALTA;

  rgI.Items.Strings[0]     := stBAIXA;
  rgI.Items.Strings[1]     := stNORMAL;
  rgI.Items.Strings[2]     := stALTA;

  rgC.Items.Strings[0]     := stBAIXA;
  rgC.Items.Strings[1]     := stNORMAL;
  rgC.Items.Strings[2]     := stALTA;


end;

procedure TformAPT.btnSairClick(Sender: TObject);
  var vRes : integer;
begin
  //vRes := MessageDlg(stMsn01,mtConfirmation, [mbYes, mbNo, mbCancel], 0);
  vRes := Aviso('', stMsn01, stSIM, stNAO , stCANCEL);
  if vRes = 0 then
    btnGravar.Click;
  if vRes <> 2 then
  begin
    FecharTabelas;
    Close;
  end;
end;

procedure TformAPT.btnNovoClick(Sender: TObject);
begin
  cdsProjeto.Last;
  if cdsProjeto.RecordCount = 0 then
    vUltProj := 0
  else
    vUltProj := cdsProjetoCodigo.AsInteger;
  cdsProjeto.Append;
  vContinuarAPT := ChamarProjeto;
  //CriarDiretorio;
  AtualizarComboProjeto;
  SalvarTabelas;
end;

Procedure TformAPT.AtualizaDiretorio;
  var vDir : String;
begin
  vDir := GetCurrentDir + '\';
  vDir := StringReplace(vDir, '\\','\',[rfReplaceAll]);
  vDiretorio := vDir;
end;

Procedure TformAPT.CriarDiretorio;
  var vDir : String;
begin
  AtualizaDiretorio;

  vDir := vDiretorio;

  if not DirectoryExists(vDir) then
    if not CreateDir(vDir) then
      Aviso('', stMsn02 + vDir, 'Ok','' ,'');
      //ShowMessage(stMsn02 + vDir);
end;

procedure TformAPT.btnExcluirClick(Sender: TObject);
  var vCodProj : String;
begin
  if cdsProjeto.RecordCount <= 1 then exit;
  PosicionaProjeto;
  //if MessageDLG(stMsn03, mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  if Aviso('', stMsn03, stSIM, stNAO,'') = 0 then
  begin
    vCodProj := cdsProjetoCodigo.AsString;
    cdsAPT.Delete;
    cdsFD.First;
    while not cdsFD.Eof do
      cdsFD.Delete;
    cdsProjeto.Delete;
    AtualizarComboProjeto;
    SalvarTabelas;
  end;

end;

procedure TformAPT.btnEditarClick(Sender: TObject);
begin
  if cdsProjeto.RecordCount = 0 then exit;
  PosicionaProjeto ;
  cdsProjeto.Edit;
  vContinuarAPT := ChamarProjeto;
  AtualizarComboProjeto;
  SalvarTabelas;
end;


procedure TformAPT.cdsProjetoNewRecord(DataSet: TDataSet);
begin
  cdsProjetoCodigo.AsInteger := vUltProj + 1;
  cdsProjetoCodigo.AsString  := ColocarZero(cdsProjetoCodigo.AsInteger, 4);
end;

Function TformAPT.ColocarZero(num: Integer; qtd: Integer): String;
var
  zeros, cont: Integer;
  numero: String;
begin
  zeros := qtd - length(IntToStr(num));
  cont := 0;
  numero:= IntToStr(num);
  while cont < zeros do
    begin
      numero := '0'+numero;
      cont := cont+1;
    end;
Result := numero;
end;

Procedure TformAPT.AtualizarComboLinguagem;
var
  F: TSearchRec;
  Ret: Integer;
  TempNome: string;
  vArq: string;

  function TemAtributo(Attr, Val: Integer): Boolean;
  begin
    Result := Attr and Val = Val;
  end;

begin
  cbLingua.Clear;
  cbLingua.Items.Add('PADRÃO');
  Ret := FindFirst(vDiretorio + 'Linguagem\'+'*.APT', faAnyFile, F);
  try
    while Ret = 0 do
    begin
      if not TemAtributo(F.Attr, faDirectory) then
      begin
        vArq := StringReplace(UpperCase(F.Name), '.APT','',[rfReplaceAll]);
        cbLingua.Items.Add(vArq);
      end;
      Ret := FindNext(F);
    end;

    For Ret := 0 to cbLingua.Items.Count - 1 do
      if cbLingua.items.Strings[Ret] = cdsLinguagemLinguagem.AsString then
        cbLingua.ItemIndex := cbLingua.Items.IndexOf(cdsLinguagemLinguagem.AsString);

    if cdsLinguagemLinguagem.AsString = '' then
      cbLingua.ItemIndex := 0

  finally
    FindClose(F);
  end;
end;

Procedure TformAPT.AtualizarComboProjeto;
Begin
  cbProjeto.Clear;
  cdsProjeto.First;
  while not cdsProjeto.Eof do
  begin
    cbProjeto.Items.Add(cdsProjetoCodigo.AsString + ' - ' + cdsProjetoTitulo.AsString + ' (' + cdsProjetoTipo.AsString + ')');
    cdsProjeto.Next;
  end;
  cbProjeto.ItemIndex := cbProjeto.Items.Count - 1;
  vProjeto := Copy(cbProjeto.Text, 1, 4);
  meHoraPrev.Text := HoraParaString(cdsProjetoHoraPrev.AsCurrency);
  meHoraReal.Text := HoraParaString(cdsProjetoHoraReal.AsCurrency);
End;

Procedure TformAPT.PosicionaProjeto;
 var vProj : string;
begin
  vProj := Copy(cbProjeto.Text, 1, 4);
  vProjeto := vProj;
  cdsProjeto.Locate('codigo',vProj,[]);
  meHoraPrev.Text := HoraParaString(cdsProjetoHoraPrev.AsCurrency);
  meHoraReal.Text := HoraParaString(cdsProjetoHoraReal.AsCurrency);
end;

procedure TformAPT.btnGravarClick(Sender: TObject);
begin
  SalvarTabelas;
end;

Procedure TformAPT.SalvarTabelas;
begin
  if cdsAPT.State in [dsEdit, dsInsert] then cdsAPT.Post;
  if cdsFD .State in [dsEdit, dsInsert] then cdsFD .Post;
  if cdsProjeto.State in [dsEdit, dsInsert] then cdsProjeto.Post;
  if cdsLinguagem.State in [dsEdit, dsInsert] then cdsLinguagem.Post;

  cdsAPT.SaveToFile(vDiretorio + 'XML\APT.XML',dfXML);
  cdsFD .SaveToFile(vDiretorio + 'XML\FD.XML',dfXML);
  cdsProjeto.SaveToFile(vDiretorio + 'XML\Projeto.XML',dfXML);
  cdsTotais_.SaveToFile(vDiretorio + 'XML\Totais.XML',dfXML);
  cdsLinguagem.SaveToFile(vDiretorio + 'XML\Linguagem.XML',dfXML);
end;

Procedure TformAPT.LerTabelas;
begin
  if FileExists(vDiretorio + 'XML\APT.XML') then
    cdsAPT.LoadFromFile(vDiretorio + 'XML\APT.XML');

  if FileExists(vDiretorio + 'XML\FD.XML') then
    cdsFD .LoadFromFile(vDiretorio + 'XML\FD.XML');

  if FileExists(vDiretorio + 'XML\Projeto.XML') then
    cdsProjeto.LoadFromFile(vDiretorio + 'XML\Projeto.XML');

  if FileExists(vDiretorio + 'XML\Linguagem.XML') then
    cdsLinguagem.LoadFromFile(vDiretorio + 'XML\Linguagem.XML');

  if cdsFD.RecordCount = 0 then
  begin
    cdsFD.Append;
    cdsFD.Post;
  end;

  if cdsLinguagem.RecordCount = 0 then
    cdsLinguagem.Insert

end;

Procedure TformAPT.ValidarMidas;
begin
  Try
    cdsAPT.CreateDataSet;
    cdsAPT.Close;
  Except
    on E: Exception do
    begin
      if Pos('MIDAS.DLL',Uppercase(E.Message)) > 0 then
      begin
        //if MessageDLG(stMsn04,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
        if Aviso('', stMsn04, stSIM, stNAO , '') = 0 then
          //if MessageDLG(stMsn05,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
          if Aviso('', stMsn05, stSIM, stNAO , '') = 0 then
            if WinExec(PCHAR('REGSVR32 '+ vDiretorio + 'MIDAS.DLL'),SW_HIDE) = 0 then
            begin
              Aviso('', stMsn06, 'Ok','' ,'');
              //ShowMessage(stMsn06);
              exit;
            end;
      end
      else
      begin
        Aviso('', E.Message, 'Ok','' ,'');
        //ShowMessage(E.Message);
      end;
      Application.Terminate;
    end;
  End;
end;

Procedure TformAPT.AbrirTabelas;
begin
  cdsAPT.CreateDataSet;
  cdsFD .CreateDataSet;
  cdsProjeto.CreateDataSet;
  cdsTotais_.CreateDataSet;
  cdsLinguagem.CreateDataSet;
end;

Procedure TformAPT.FecharTabelas;
begin
  cdsAPT.Close;
  cdsFD .Close;
  cdsProjeto.Close;
  cdsTotais_.Close;
  cdsLinguagem.Close
end;

procedure TformAPT.cbProjetoChange(Sender: TObject);
begin
  AtualizaDiretorio;
  PosicionaProjeto;
end;

procedure TformAPT.gridFDDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  if UpperCase(Column.FieldName) = 'CODIGO' then
  begin
    Column.Color := clScrollBar;
    Column.Font.Color := clBlack;
    //Column.Field.ReadOnly := True;
  end;
end;

procedure TformAPT.cdsFDNewRecord(DataSet: TDataSet);
begin
  cdsFDCodigo.asInteger := cdsFD.RecordCount + 1;
  cdsFDUe.AsString := 'N';
  cdsFDUy.AsString := 'N';
  cdsFDInterface.AsString := 'N';
  cdsFDComplexidade.AsString := 'N';
  cdsFDUniformidade.AsString := '0,8';
  cbUniformidade.Text := '0,8';
  cdsFDPontos.asCurrency := 0;
  cdsFDCodigoProj.AsString := cdsProjetoCodigo.AsString;
end;

procedure TformAPT.cdsAPTNewRecord(DataSet: TDataSet);
begin
  (* Geral *)

  cdsAPTCodigo.AsInteger    := cdsAPT.RecordCount + 1;
  cdsAPTCodigo.AsString     := cdsProjetoCodigo.AsString + '.' + ColocarZero(cdsAPTCodigo.AsInteger, 3);
  cdsAPTCodigoProj.AsString := cdsProjetoCodigo.AsString;
  cdsAPTTitulo.AsString     := '';

  (* Pontos por Função *)

  cdsAPTPF.AsInteger := 500;

  (* Ambiente de Teste *)

  cdsAPTAT_AmbienteD.AsString    := '4';
  cdsAPTAT_AmbienteT.AsString    := '2';
  cdsAPTAT_Documentacao.AsString := '6';
  cdsAPTAT_Ferramenta.AsString   := '2';
  cdsAPTAT_Precedencia.AsString  := '4';
  cdsAPTAT_Testware.AsString     := '2';

  (* Características Explícitas*)

  cdsAPTCE_Efetividade.AsString    := '4';
  cdsAPTCE_Funcionalidade.AsString := '4';
  cdsAPTCE_Performance.AsString    := '4';
  cdsAPTCE_Seguranca.AsString      := '4';

  (* Características Implícitas*)

  cdsAPTCI_Efetividade.AsString    := 'N';
  cdsAPTCI_Funcionalidade.AsString := 'S';
  cdsAPTCI_Performance.AsString    := 'N';
  cdsAPTCI_Seguranca.AsString      := 'N';

  (* Indice de Planejamento e Controle *)

  cdsAPTIPC_Equipe.AsString     := '2';
  cdsAPTIPC_Ferramenta.AsString := '2';

  (* Pontos de Testes Estáticos *)
  cdsAPTPTE_Efetividade.AsString    := 'N';
  cdsAPTPTE_Funcionalidade.AsString := 'S';
  cdsAPTPTE_Performance.AsString    := 'N';
  cdsAPTPTE_Seguranca.AsString      := 'N';

  (* Qualificação da Equipe de Testes *)
  cdsAPTQET.AsString := '1,4';

end;

procedure TformAPT.nePFExit(Sender: TObject);
  var vNum : Integer;
begin
  Try
    vNum := StrToInt(cdsAPTPF.asString);
  Except
    Aviso('', stMsn07, 'Ok','' ,'');
    //ShowMessage(stMsn07);
    cdsAPTPF.AsInteger := 500;
    nePF.SetFocus;
    exit;
  end;

  if cdsAPTPF.AsInteger < 0 then
  begin
    Aviso('', stMsn08, 'Ok','' ,'');
    //ShowMessage(stMsn08);
    nePF.SetFocus;
    exit;
  end;

  if cdsAPTPF.AsInteger < 500 then
  begin
    //if MessageDlg(stMsn09,mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    if Aviso('', stMsn09, stSIM, stNAO , '') = 1 then
      nePF.SetFocus;
  end;


end;

Procedure TformAPT.Wizard(pProcesso: Integer; pWiz: boolean);

  Procedure EscolherProcesso(pProc: Integer);
  begin
    if pProc = 1 then
    begin
      ts_PTD.TabVisible := True;
      ts_PTD_PF.TabVisible := True;
      if (cdsFD.State in [dsInsert,dsEdit]) and (cdsFDTitulo.AsString <> '') then cdsFD.Post;
    end
    else if pProc = 2 then
    begin
      ts_PTD.TabVisible := True;
      ts_PTD_FDf.TabVisible := True;
      ts_PTD_FDf_Reg.TabVisible := True;
      ts_PTD_FDf_Sobre.TabVisible := True;
      gridFD.SetFocus;
      cdsFD.Edit;
    end
    else if pProc = 3 then
    begin
      ts_PTD.TabVisible := True;
      ts_PTD_QRd.TabVisible := True;
      ts_PTD_QRd_CE.TabVisible := True;
      if (cdsFD.State in [dsInsert,dsEdit]) and (cdsFDTitulo.AsString <> '') then cdsFD.Post;
    end
    else if pProc = 4 then
    begin
      ts_PTD.TabVisible := True;
      ts_PTD_QRd.TabVisible := True;
      ts_PTD_QRd_CI.TabVisible := True;
    end
    else if pProc = 5 then
    begin
      ts_PTE.TabVisible := True;
    end
    else if pProc = 6 then
    begin
      ts_AT.TabVisible := True;
      ts_AT_01.TabVisible := True;
    end
    else if pProc = 7 then
    begin
      ts_AT.TabVisible := True;
      ts_AT_02.TabVisible := True;
    end
    else if pProc = 8 then
    begin
      ts_QET.TabVisible := True;
    end
    else if pProc = 9 then
    begin
      ts_IPC.TabVisible := True;
    end
    else if pProc = 10 then
    begin
      ts_Tot.TabVisible := True;
    end;
  end;

begin
  ts_PTD.TabVisible := not pWiz;
    ts_PTD_PF.TabVisible := not pWiz;
      ts_PTD_FDf.TabVisible := not pWiz;
      ts_PTD_FDf_Reg.TabVisible := not pWiz;
      ts_PTD_FDf_Sobre.TabVisible := not pWiz;
    ts_PTD_QRd.TabVisible := not pWiz;
      ts_PTD_QRd_CE.TabVisible := not pWiz;
      ts_PTD_QRd_CI.TabVisible := not pWiz;
  ts_PTE.TabVisible := not pWiz;
  ts_AT.TabVisible := not pWiz;
    ts_AT_01.TabVisible := not pWiz;
    ts_AT_02.TabVisible := not pWiz;
  ts_QET.TabVisible := not pWiz;
  ts_IPC.TabVisible := not pWiz;
  ts_Tot.TabVisible := not pWiz;

  if not pWiz then exit;

  EscolherProcesso(pProcesso);

end;

procedure TformAPT.butAvancarClick(Sender: TObject);
begin
  Inc(vWiz);
  if vWiz = 11 then vWiz := 10;
  butAvancar.Visible := (vWiz < 10);
  ButVoltar.Visible := (vWiz > 1);
  if vWiz = 10 then AtualizaHorasPrev;
  Wizard(vWiz, True);
end;

procedure TformAPT.ButVoltarClick(Sender: TObject);
begin
  vWiz := vWiz - 1;
  if vWiz = 0 then vWiz := 1;
  ButVoltar.Visible := (vWiz > 1);
  butAvancar.Visible := (vWiz < 10);
  Wizard(vWiz, True);
end;

procedure TformAPT.rgVisualizarClick(Sender: TObject);
begin
  HabitarWizard(rgVisualizar.ItemIndex = 0);
end;

Procedure TformAPT.HabitarWizard(pHab: Boolean);
begin
  ButVoltar.Visible := False;
  if pHab then
  begin
    vWiz := 1;
    Wizard(vWiz, True);
    butAvancar.Visible := true;
  end
  else
  begin
    Wizard(0, False);
    butAvancar.Visible := False;
  end;
end;

procedure TformAPT.FDFBotExcluirClick(Sender: TObject);
begin
  if cdsFD.RecordCount = 0 then exit;
  //if MessageDlg(stMsn10,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  if Aviso('', stMsn10, stSIM, stNAO , '') = 0 then
    cdsFD.Delete;
end;

Function TformAPT.TotalPF: Currency;
begin
  TotalPF := cdsAPTPF.AsInteger;
end;


Function TformAPT.RetornaPDf: Currency;
  var vTot : Currency;
begin
  cdsFD.First;
  vTot := 0;
  while not cdsFD.Eof do
  begin
    vTot := vTot + cdsFDPontos.asCurrency;
    cdsFD.Next;
  end;
  RetornaPDf := vTot;
end;


Function TformAPT.RetornaCE: Currency;
  var vCE, vFa, vPb, vSc, vAd : Currency;
begin
  vFa := (cdsAPTCE_Funcionalidade.AsInteger * 0.75) / 4;
  vPb := (cdsAPTCE_Performance.AsInteger    * 0.10) / 4;
  vSc := (cdsAPTCE_Seguranca.AsInteger      * 0.05) / 4;
  vAd := (cdsAPTCE_Efetividade.AsInteger    * 0.10) / 4;
  vCE := vFa + vPb + vSc + vAd;

  RetornaCE := vCE;
end;

Function TformAPT.RetornaCI: Currency;
  var vCI: Integer;
      vCITot: Currency;

begin
  vCI := 0;
  if cdsAPTCI_Funcionalidade.AsString = 'S' then inc(vCI);
  if cdsAPTCI_Efetividade.AsString    = 'S' then inc(vCI);
  if cdsAPTCI_Performance.AsString    = 'S' then inc(vCI);
  if cdsAPTCI_Seguranca.AsString      = 'S' then inc(vCI);

  vCITot := vCI * 0.02;

  RetornaCI := vCITot;
end;

Function TformAPT.RetornaQRd: Currency;
  var vCE, vCITot: Currency;
begin
  vCE    := RetornaCE;
  vCITot := RetornaCI;

  RetornaQRd := vCE + vCITot;
end;

Function TformAPT.TotalPTD: Currency;
  var vPF, vPDf, vQRd : Currency;
begin

  vPF := cdsAPTPF.AsInteger;
  vPDf := RetornaPDf;
  vQRd := RetornaQRd;

  TotalPTD := vPF * vPDf * vQRd;
end;

Function TformAPT.TotalPTE: Currency;
  var vPTE: Integer;
begin
  vPTE := 0;
  if cdsAPTPTE_Funcionalidade.AsString = 'S' then inc(vPTE);
  if cdsAPTPTE_Efetividade.AsString    = 'S' then inc(vPTE);
  if cdsAPTPTE_Performance.AsString    = 'S' then inc(vPTE);
  if cdsAPTPTE_Seguranca.AsString      = 'S' then inc(vPTE);

  vPTE := 16 * vPTE;

  TotalPTE := vPTE;
end;

Function TformAPT.TotalPT: Currency;
  var vPT, vPTD, vPTE, vPF : currency;
begin
  vPTD := TotalPTD;
  vPTE := TotalPTE;
  vPF  := cdsAPTPF.AsInteger;
  vPT := (vPTD + ( vPF * vPTE)) / 500;

  TotalPT := vPT;
end;

Function TformAPT.TotalAT: Currency;
  var vFer, vPre, vDoc, vDes, vTes, vTestware : Integer;
      vAT: Currency;
begin
  vFer := cdsAPTAT_Ferramenta.AsInteger;
  vPre := cdsAPTAT_Precedencia.AsInteger;
  vDoc := cdsAPTAT_Documentacao.AsInteger;
  vDes := cdsAPTAT_AmbienteD.AsInteger;
  vTes := cdsAPTAT_AmbienteT.AsInteger;
  vTestware := cdsAPTAT_Testware.AsInteger;

  vAT := (vFer + vPre + vDoc + vDes + vTes + vTestware) / 21;

  TotalAT := vAT;
end;

Function TformAPT.TotalQET: Currency;
begin
  TotalQET := cdsAPTQET.AsCurrency;
end;

Function TformAPT.TotalHTP: Currency;
  var vHTP, vPT, vQET, vAT : Currency;
begin
  vPT  := TotalPT;
  vQET := TotalQET;
  vAT  := TotalAT;
  vHTP := vPT * vQET * vAT;

  TotalHTP := vHTP;
end;

Function TformAPT.TotalIPC: Currency;
  var vEq, vFe, vIPC: currency;
begin

  case cdsAPTIPC_Equipe.AsInteger of
    1: vEq := 0.03;
    2: vEq := 0.06;
    3: vEq := 0.12;
  end;

  case cdsAPTIPC_Ferramenta.AsInteger of
    1: vFe := 0.02;
    2: vFe := 0.04;
    3: vFe := 0.08;
  end;

  vIPC := 1 + vEq + vFe;

  TotalIPC := vIPC;
end;

Function TformAPT.TotalTHT: Currency;
  var vHTP, vIPC, vTHT : Currency ;
begin
  vHTP := TotalHTP;
  vIPC := TotalIPC;
  vTHT := vHTP * vIPC;

  TotalTHT := vTHT;
end;


procedure TformAPT.cdsFDBeforePost(DataSet: TDataSet);
  var vUe, vUy, vI, vC: Currency;
begin
  if cdsFDUe.AsString = 'B' Then vUe := 3
  else if cdsFDUe.AsString = 'N' Then vUe := 6
  else if cdsFDUe.AsString = 'A' Then vUe := 12;

  if cdsFDUy.AsString = 'B' Then vUy := 2
  else if cdsFDUy.AsString = 'N' Then vUy := 4
  else if cdsFDUy.AsString = 'A' Then vUy := 8;

  if cdsFDInterface.AsString = 'B' Then vI := 2
  else if cdsFDInterface.AsString = 'N' Then vI := 4
  else if cdsFDInterface.AsString = 'A' Then vI := 8;

  if cdsFDComplexidade.AsString = 'B' Then vC := 3
  else if cdsFDComplexidade.AsString = 'N' Then vC := 6
  else if cdsFDComplexidade.AsString = 'A' Then vC := 12;

  cdsFDPontos.AsCurrency := vUe + vUy + vI + vC;
  cdsFDPontos.AsCurrency := (cdsFDPontos.AsCurrency / 20) * cdsFDUniformidade.AsCurrency;
end;

procedure TformAPT.pc_geralChange(Sender: TObject);
begin
  if pc_geral.ActivePage = ts_Tot then
    AtualizaHorasPrev;
end;

Procedure TformAPT.AtualizaHorasPrev;
  var vRes : Currency;
begin
  vRes := TotalTHT;

  AtualizaGridTotal;

  if cdsProjetoHoraPrev.AsCurrency <> vRes then
  begin
    //if MessageDlg(stMsn11,mtConfirmation, [mbYes, mbNo], 0) = mrNo then
    if Aviso('', stMsn11, stSIM, stNAO , '') = 1 then
      Exit
    else
    begin
      if not (cdsProjeto.State in [dsInsert, dsEdit]) then
        cdsProjeto.Edit;
      cdsProjetoHoraPrev.AsCurrency := vRes;
      meHoraPrev.Text := HoraParaString(cdsProjetoHoraPrev.AsCurrency);
      cdsProjeto.Post;
    end;
  end;
end;

Procedure TformAPT.AtualizaGridTotal;
  Procedure GravaTotais(pSig, pDes, pFor: String; pRes: Currency);
  begin
    cdsTotais_.Append;
    cdsTotais_Sigla.AsString     := pSig;
    cdsTotais_Descricao.AsString := pDes;
    cdsTotais_Formula.AsString   := pFor;
    cdsTotais_Resultado.AsFloat  := pRes;
    cdsTotais_.Post;
  end;
begin
  cdsTotais_.First;
  vApagaTotal := True;
  while not cdsTotais_.Eof do
    cdsTotais_.Delete;
  vApagaTotal := False;

  GravaTotais(stGTPF01 , stGTPF02 , stGTPF03 , TotalPF   );
  GravaTotais(stGTFDf01, stGTFDf02, stGTFDf03, RetornaPDf);
  GravaTotais(stGTCE01 , stGTCE02 , stGTCE03 , RetornaCE );
  GravaTotais(stGTCI01 , stGTCI02 , stGTCI03 , RetornaCI );
  GravaTotais(stGTQRd01, stGTQRd02, stGTQRd03, RetornaQRd);
  GravaTotais(stGTPTD01, stGTPTD02, stGTPTD03, TotalPTD  );
  GravaTotais(stGTPTE01, stGTPTE02, stGTPTE03, TotalPTE  );
  GravaTotais(stGTPT01 , stGTPT02 , stGTPT03 , TotalPT   );
  GravaTotais(stGTAT01 , stGTAT02 , stGTAT03 , TotalAT   );
  GravaTotais(stGTQET01, stGTQET02, stGTQET03, TotalQET  );
  GravaTotais(stGTHTP01, stGTHTP02, stGTHTP03, TotalHTP  );
  GravaTotais(stGTIPC01, stGTIPC02, stGTIPC03, TotalIPC  );
  GravaTotais(stGTTHT01, stGTTHT02, stGTTHT03, TotalTHT  );

end;

procedure TformAPT.ImgTestadoresClick(Sender: TObject);
begin
  ChamarSobre(cbLingua.Text);
end;

(*
procedure Sendmail;
var
  Anexo: TStringList;
  FileName : String;
begin
  FileName := 'c:\Temp\Cotacao.XLS';
  Anexo := TStringList.Create;
  Anexo.Add(FileName);

  // Conecta ao servidor.
  NMSMTP1.Host := '171.13.1.8'; // Nome do host de mansagens enviadas. Por ex: smtp.cba.zaz.com.br
  NMSMTP1.Port := 25;
  NMSMTP1.UserID := 'Salomao';

  if not NMSMTP1.Connected then
    NMSMTP1.Connect;

  // Dados do remetente.
  NMSMTP1.PostMessage.FromAddress := 'unic.salomao@ig.com.br'; // De - email
  NMSMTP1.PostMessage.FromName := 'UNIC - Universidade de Cuiabá'; // De - Nome
  NMSMTP1.PostMessage.Subject := 'Cotação de Preços UNIC'; // Assunto
  NMSMTP1.PostMessage.ToAddress.Add('robagapito@hotmail.com'); // Para
  NMSMTP1.PostMessage.ToBlindCarbonCopy.Add(''); // Cópia oculta - Cco
  NMSMTP1.PostMessage.ToCarbonCopy.Add(''); // Com cópia - Cc
  NMSMTP1.PostMessage.Attachments.AddStrings(Anexo); // Arquivos anexos
  NMSMTP1.PostMessage.Body.Assign(Memo1.Lines); // Corpo do email
  NMSMTP1.SendMail; // Envia o email
end;
*)

procedure TformAPT.cdsTotais_BeforeDelete(DataSet: TDataSet);
begin
  if not vApagaTotal then
    Abort;
end;

procedure TformAPT.nePFKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var vNum : integer;
begin
  try
    vNum := StrToInt(nePF.Text);
  Except
    Aviso('', stMsn12, 'Ok','' ,'');
    //ShowMessage(stMsn12);
    cdsAPTPF.AsInteger := 0;
    nePF.SetFocus;
  end;
end;

procedure TformAPT.butEmailClick(Sender: TObject);
begin
  if cdsProjetoHoraReal.AsCurrency = 0 then
  begin
    Aviso('', stMsn13, 'Ok','' ,'');
    //ShowMessage(stMsn13);
    neHoraReal.SetFocus;
    Exit;
  end;
  PrepararXML;
  ChamarEmail(vDiretorio + 'XML\');
//  EnviarEmail;
end;

Procedure TformAPT.PrepararXML;
begin
  cdsProjetoEmail.Close;
  cdsProjetoEmail.CreateDataSet;
  cdsProjetoEmail.Append;
  cdsProjetoEmail.FieldByName('codigo').Value := cdsProjetoCodigo.Value;
  cdsProjetoEmail.FieldByName('Titulo').Value := cdsProjetoTitulo.Value;
  cdsProjetoEmail.FieldByName('Tipo').Value := cdsProjetoTipo.Value;
  cdsProjetoEmail.FieldByName('HoraPrev').Value := cdsProjetoHoraPrev.Value;
  cdsProjetoEmail.FieldByName('HoraReal').Value := cdsProjetoHoraReal.Value;
  cdsProjetoEmail.post;
  cdsProjetoEmail.SaveToFile(vDiretorio + 'XML\ProjetoEmail.XML',dfXML);
End;

procedure TformAPT.btnCapClick(Sender: TObject);
  var vCont: integer;
      vDesc: string;

  Function DescComp(pObj : TComponent): String;
    var vRes : String;
  begin
    if pObj is TLabel then
      vRes := '.TLabel]<' + TLabel(pObj).Caption
    else if pObj is TPanel then
      vRes := '.TPanel]<' + TPanel(pObj).Caption
    else if pObj is TMemo then
      vRes := '.TMemo]<' + TMemo(pObj).Text
    else if pObj is TGroupBox then
      vRes := '.TGroupBox]<' + TGroupBox(pObj).Caption
    else if pObj is TCheckBox then
      vRes := '.TCheckBox]<' + TCheckBox(pObj).Caption
    else if pObj is TTabSheet then
      vRes := '.TTabSheet]<' + TTabSheet(pObj).Caption
    else if pObj is TDBRadioGroup then
      vRes := '.TDBRadioGroup]<' + TDBRadioGroup(pObj).Caption
    else if pObj is TRadioGroup then
      vRes := '.TRadioGroup]<' + TRadioGroup(pObj).Caption
    else if pObj is TBitBtn then
      vRes := '.TBitBtn]<' + TBitBtn(pObj).Caption
    else if pObj is TButton then
      vRes := '.TButton]<' + TButton(pObj).Caption
    else if pObj is TStringField then
      vRes := '.TStringField]<' + TStringField(pObj).DisplayLabel
    else if pObj is TIntegerField then
      vRes := '.TIntegerField]<' + TIntegerField(pObj).DisplayLabel
    else if pObj is TFloatField then
      vRes := '.TFloatField]<' + TFloatField(pObj).DisplayLabel;

    if vRes <> '' then
      DescComp := vRes + '>'
    else
      DescComp := '';
  end;

begin
  memCap.Lines.Clear;
  for vCont := 0 to formAPT.ComponentCount - 1 do
  begin
    vDesc := DescComp(formAPT.Components[vCont]);
    if vDesc <> '' then
      memCap.Lines.Add('[formAPT.' + formAPT.Components[vCont].Name + vDesc);
  end;
end;

procedure TformAPT.btnSavCapClick(Sender: TObject);
begin
  memCap.Lines.SaveToFile('Portugues.apt');
end;

Procedure TformAPT.AtualizaImgComplexidade(pBai, pBai1, pNor, pNor1, pAlt, pAlt1: String);
begin
  sgImgComplex.Cells[0,0] := pBai;
  sgImgComplex.Cells[0,1] := pNor;
  sgImgComplex.Cells[0,2] := pAlt;
  sgImgComplex.Cells[1,0] := pBai1;
  sgImgComplex.Cells[1,1] := pNor1;
  sgImgComplex.Cells[1,2] := pAlt1;


end;

Procedure TformAPT.AtualizaImgInterface(pBai, pNor, pAlt: String);
begin

  sgInterface.Cells[0,0] := 'DataSets';
  sgInterface.Cells[0,1] := '1';
  sgInterface.Cells[0,2] := '2 - 5';
  sgInterface.Cells[0,3] := '> 5';

  sgInterface.Cells[1,0] := '1';
  sgInterface.Cells[2,0] := '2 - 5';
  sgInterface.Cells[3,0] := '> 5';

  sgInterface.Cells[1,1] := pBai;
  sgInterface.Cells[2,1] := pBai;
  sgInterface.Cells[3,1] := pNor;

  sgInterface.Cells[1,2] := pBai;
  sgInterface.Cells[2,2] := pNor;
  sgInterface.Cells[3,2] := pAlt;

  sgInterface.Cells[1,3] := pNor;
  sgInterface.Cells[2,3] := pAlt;
  sgInterface.Cells[3,3] := pAlt;


end;

Procedure TformAPT.EscolheLinguagem(pArq: String);
  var vCont: integer;
      vDesc: TStringList;
      vLin: Integer;

  function GravaObj(pObj : TComponent; pStr: TStringList): boolean;
    var vRes: String;
        vTex: String;
        vStr: AnsiString;

  begin
    vStr := pStr.Text;
    GravaObj := False;
    if (Pos('.' + pObj.Name + '.',vStr) > 0) and (Pos('<>',vStr) = 0) then
    begin
      vTex := copy(vStr, pos('<',vStr)+1,length(vStr));
      vTex := copy(vTex, 1,length(Trim(vTex))-1);

      if pObj is TLabel then
        TLabel(pObj).Caption := vTex
      else if pObj is TPanel then
        TPanel(pObj).Caption := vTex
      else if pObj is TMemo then
        TMemo(pObj).Text := vTex
      else if pObj is TGroupBox then
        TGroupBox(pObj).Caption := vTex
      else if pObj is TCheckBox then
        TCheckBox(pObj).Caption := vTex
      else if pObj is TDBCheckBox then
        TDBCheckBox(pObj).Caption := vTex
      else if pObj is TTabSheet then
        TTabSheet(pObj).Caption := vTex
      else if pObj is TDBRadioGroup then
        TDBRadioGroup(pObj).Caption := vTex
      else if pObj is TRadioGroup then
        TRadioGroup(pObj).Caption := vTex
      else if pObj is TBitBtn then
        TBitBtn(pObj).Caption := vTex
      else if pObj is TButton then
        TButton(pObj).Caption := vTex
      else if pObj is TStringField then
        TStringField(pObj).DisplayLabel := vTex
      else if pObj is TIntegerField then
        TIntegerField(pObj).DisplayLabel := vTex
      else if pObj is TFloatField then
        TFloatField(pObj).DisplayLabel := vTex;
      GravaObj := True;
    end;
  end;


begin
  memCap.Lines.Clear;
  if cbLingua.Text = 'PADRÃO' then
    memCap.Text := memPadrao.Text
  else
    memCap.Lines.LoadFromFile(vDiretorio + 'Linguagem\' + pArq);

  vLin := 0;
  vDesc := TStringList.Create;
  vDesc.Clear;
  while vLin < memCap.Lines.Count do
  begin
    vDesc.Add(memCap.Lines.Strings[vLin]);
    if pos('>',vDesc.Text) > 0 then
    begin
      AtualizaVariaveisArq(vDesc);
      for vCont := 0 to formAPT.ComponentCount - 1 do
        if GravaObj(formAPT.Components[vCont], vDesc) then break;
      vDesc.Clear;
    end;
    inc(vLin);
  end;
end;


procedure TformAPT.meHoraRealExit(Sender: TObject);
  var vHora: String;
begin
  vHora := meHoraReal.Text;
  vHora := StringReplace(vHora,' ', '0',[rfReplaceAll]);
  meHoraReal.Text := vHora;

  cdsProjeto.Edit;
  cdsProjetoHoraReal.AsCurrency := StringParaHora(meHoraReal.Text);
  cdsProjeto.Post;
end;

Function TformAPT.StringParaHora(pHora: String): Currency;
  var vH, vM, vRes: Currency;
      vPos: integer;
      vHora, vSt: string;
begin
  StringParaHora := 0;

  vHora := Trim(pHora);



  if vHora = '' then exit;
  vPos := Pos(':',vHora);
  vSt := copy(vHora,1,vPos-1);
  vH  := StrToInt(vSt);
  vSt := copy(vHora,vPos+1,2);
  vM  := StrToInt(vSt);
  vRes := ((vH * 60) + vM) / 60;
  StringParaHora := vRes;
end;

Function TformAPT.HoraParaString(pHora: Extended): String;
  var vH,vM,vRes : String;
      vCur : Extended;
begin
  HoraParaString := '00:00';

  if pHora = 0 then exit;

  vCur := Int(pHora);
  vH := CurrToStr(vCur);
  vCur := int((Frac(pHora))*60);
  vM := CurrToStr(vCur);

  vRes := ColocarZero(StrToInt(vH),2) + ':' + ColocarZero(StrToInt(vM),2);
  HoraParaString := vRes;
end;

procedure TformAPT.cbLinguaChange(Sender: TObject);
begin
  If not (cdsLinguagem.State in [dsInsert,dsEdit]) then
    cdsLinguagem.Edit;
  cdsLinguagemLinguagem.AsString := cbLingua.Text;
  cdsLinguagem.Post;

  AtualizaLinguagem;

  If cbLingua.Text = 'PADRÃO' then
    AtualizaLinguaPadrao;
end;

end.
