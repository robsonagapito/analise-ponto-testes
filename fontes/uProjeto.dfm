object FormProjeto: TFormProjeto
  Left = 394
  Top = 263
  Width = 438
  Height = 195
  BorderIcons = []
  Caption = 'Cadastro de Projeto'
  Color = clBtnFace
  Constraints.MaxHeight = 195
  Constraints.MaxWidth = 438
  Constraints.MinHeight = 195
  Constraints.MinWidth = 438
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object stProjeto: TStatusBar
    Left = 0
    Top = 140
    Width = 422
    Height = 19
    Panels = <>
  end
  object pnlBotao: TPanel
    Left = 0
    Top = 99
    Width = 422
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnOk: TBitBtn
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Ok'
      TabOrder = 0
      OnClick = btnOkClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF6C8E7D25
        46284B6A53FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF6484725A7D5DD0FFD67DA380658673FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF668573587C58C7FEC7C5
        F9C8CBFFCD2E5331FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF668573547B55BBFCB9BBF8B9BCF7BBBFF9BFA3D5A347674EFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF6A8C794F7A4FB2F9AAB2F8AE9CDC9B5C
        895CB8FBB3BBFBB74B714BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        1E4320ABFDA1A8F7A090D38A30533452715A89C886B0F8ABA8E9A4325435FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF27492A83CE7A79C074294D2EFF00FFFF
        00FF284D28AAF5A1ABF6A460975E85A597FF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF4B6A5254735DFF00FFFF00FFFF00FF799A8864A260A2F599A2F49A2C50
        2CFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FF2E523093E9889CF39175BC6E65886FFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9DBBB14B7C4791F18495F1
        89376336FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF4466477AD66E8CEF7D7ACF6D55745AFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF34603085F0
        7274D1664D6C50FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FF7B9D892C5428325632FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btnCancelar: TBitBtn
      Left = 336
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3A3A97212389FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFAFAFDA19197F4C4C9AFF00FFFF00FFFF00FFFF00FF
        24258F0E24FF0B22FF000090FF00FFFF00FFFF00FFFF00FF9E9ED300009A0008
        FF0008DC4B4B9AFF00FFFF00FFFF00FF0305861D32FF1229FF0D23FF00008FFF
        00FFFF00FFA0A0D400029D000CFF000CFD0007FF19197EFF00FFFF00FFFF00FF
        8383CB151FBD1B30FF1427FF0E24FF00008E7676BB00069E0013FF000EFF000A
        FF00009AAFAFDAFF00FFFF00FFFF00FFFF00FF7777C4151FBC1D32FF152AFF10
        24FF0D19BD051CFF0019FF0016FF00029E9F9FD2FF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FF7979C5161EBC1E32FF172AFF1026FF0C21FF081FFF00079EA1A1
        D5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF4A4AA31323E91D
        32FF192CFF1429FF0F19BD7676BDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFA1A1DA1319AB2D40FF2536FF2132FF1B2EFF162BFF00008FFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9F9FDA171CAE3B4BFF3443FF30
        41FF1624E92439FF1D32FF1A2CFF000391FF00FFFF00FFFF00FFFF00FFFF00FF
        A5A5DE1D23B14958FF404FFF3E4CFF141AAB4A4AA31B23BD263AFF1F33FF1B30
        FF000592FF00FFFF00FFFF00FFFF00FF0B0D8F5A68FF4F59FF4A59FF191DAEA0
        A0DAFF00FF7878C51D25BE2A3BFF2135FF1E33FF22238AFF00FFFF00FFFF00FF
        1B1C956069FF5C69FF1F24B19D9DDAFF00FFFF00FFFF00FF7676C41E27BF2E42
        FF2235FF3B3A98FF00FFFF00FFFF00FFFF00FF1B1C950C0D8FA5A5DEFF00FFFF
        00FFFF00FFFF00FFFF00FF8383CB06078724258FFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
  end
  object pnlGeral: TPanel
    Left = 0
    Top = 0
    Width = 422
    Height = 99
    Align = alClient
    TabOrder = 2
    object lblCodigo: TLabel
      Left = 0
      Top = 19
      Width = 76
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo:'
    end
    object lblTitulo: TLabel
      Left = 0
      Top = 43
      Width = 76
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'T'#237'tulo:'
    end
    object lblTipo: TLabel
      Left = 1
      Top = 68
      Width = 75
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Tipo do Projeto:'
    end
    object edCodigo: TDBEdit
      Left = 79
      Top = 16
      Width = 121
      Height = 21
      DataField = 'Codigo'
      DataSource = formAPT.dsProjeto
      ReadOnly = True
      TabOrder = 0
    end
    object EdTitulo: TDBEdit
      Left = 79
      Top = 40
      Width = 329
      Height = 21
      DataField = 'Titulo'
      DataSource = formAPT.dsProjeto
      TabOrder = 1
    end
    object cbTipo: TDBComboBox
      Left = 79
      Top = 64
      Width = 145
      Height = 21
      DataField = 'Tipo'
      DataSource = formAPT.dsProjeto
      ItemHeight = 13
      Items.Strings = (
        'ERP'
        'Banc'#225'rio'
        'Hospitalar'
        'Governamental'
        'Frente de Loja'
        'Open Source'
        'Telecomunica'#231#227'o')
      TabOrder = 2
    end
    object memTipo: TMemo
      Left = 256
      Top = 8
      Width = 153
      Height = 89
      TabOrder = 3
      Visible = False
    end
  end
end
