object FormEmail: TFormEmail
  Left = 433
  Top = 314
  Width = 315
  Height = 165
  BorderIcons = [biSystemMenu]
  Caption = 'Email'
  Color = clBtnFace
  Constraints.MaxHeight = 165
  Constraints.MaxWidth = 315
  Constraints.MinHeight = 165
  Constraints.MinWidth = 315
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 299
    Height = 110
    Align = alClient
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      299
      110)
    object lblNome: TLabel
      Left = 0
      Top = 16
      Width = 53
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nome:'
    end
    object lblEmail: TLabel
      Left = 0
      Top = 39
      Width = 53
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Email:'
    end
    object edNome: TEdit
      Left = 56
      Top = 12
      Width = 235
      Height = 21
      TabOrder = 0
    end
    object edEmail: TEdit
      Left = 56
      Top = 35
      Width = 235
      Height = 21
      TabOrder = 1
    end
    object btnSair: TBitBtn
      Left = 210
      Top = 65
      Width = 80
      Height = 36
      Anchors = [akTop, akRight]
      Caption = '&Sair'
      TabOrder = 3
      OnClick = btnSairClick
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF959595A6A6A6FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF7D7D7D8282825959
        59FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF8B8B8BBBBBBBF7F7F78989896D6D6DFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF47479FFF00FFFF00FF5353526464643F3F3FB2B2B2FFFF
        FFFFFFFFE7E7E7656565FF00FFFF00FFFF00FFFF00FFFF00FF1422D26B6BB2FF
        00FF7F7F7AA9A9A95C5C5CB0B0B0F7F7F7F6F6F6FFFFFF727272FF00FF262697
        31329E35359D24248B2437F21525E06868A3807F6FA2A29E595959B1B1B1EFEF
        EFECECECFDFDFD757575FF00FF2227B75868FF4A5AFF3E50FF3648FF2D40FF11
        20DA3C3B7AA2A2985C5C5BB2B2B2E7E7E7E5E5E5F4F4F4797979FF00FF2427B4
        606DFF4F5DFC4755FC3F4EFA3848FD2D41FF0000A97C7C8D5E5E5DB3B3B3DEDE
        DEDCDCDCECECEC7C7C7CFF00FF292CB76975FF5C67FD505CF74F5DFF4756FF15
        1DC15352769B9B9060605FB3B3B3D5D5D5D6D6D6E3E3E3818181FF00FF8080C4
        8A8AC69191C86060A8525FF7252CC96B6BB27E7E7090908E636363B2B2B2CFCF
        CFD0D0D0DCDCDC848484FF00FFFF00FFFF00FFFF00FFFF00FF292DB96B6BB2FF
        00FF7A7A768A8A8A7373736C6C6C9D9D9DC0C0C0D7D7D7878787FF00FFFF00FF
        FF00FFFF00FFFF00FF6B6BB2FF00FFFF00FF7777778585858080807979796A6A
        6A767676ACACAC8D8D8DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF6D6D6D7777777474747373737171716F6F6F7272727A7A7AFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
    end
    object btnEnviar: TBitBtn
      Left = 128
      Top = 65
      Width = 80
      Height = 36
      Anchors = [akTop, akRight]
      Caption = '&Enviar'
      TabOrder = 2
      OnClick = btnEnviarClick
      Glyph.Data = {
        26040000424D2604000000000000360000002800000012000000120000000100
        180000000000F0030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000096CCF5B8D9F2FFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFE4E4E4E4E4E4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000F5FAFC5CB7F967AEEDE1EDF7FFFFFFFFFFFFE3E3E3FB
        FBFBF9F9F9E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFE7F3FA3FB3F93192F293C3EED5DCE1F0F0F0F6F6F6F5F5F5EEEEEE
        E3E3E3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        D3EEFB38B4F92797F75EACEAB0C9D8E9E9E9EEEEEEEAEAEAE3E3E3E3E3E3FFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFB2DBEE48BE
        FA55C1FA90DEFBA6D1E2C8D2D7E3E3E3E1E1E1DBDBDBE5E5E5FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFE7E7E7DEDEDE99D4ED72D4FB86DFFCAD
        EEFDA7E2F59BC1D6D2D4D5DEDEDEDCDCDCE8E8E8FFFFFFFFFFFFFFFFFFFFFFFF
        0000FFFFFFE9E9E9E4E4E4E8E8E8DEE0E188CEEB7DD9FC83DDFC82DCFC75D1FB
        64B1E7A7BED0DEDEDEDFDFDFE9E9E9FFFFFFFFFFFFFFFFFF0000EDEDEDE7E7E7
        ECECECE2E2E2A7B2B969AFD663CCFB6ACFFB65CCFB49BBFA33AAF840A9F67CB8
        E4E2E4E5E2E2E2EEEEEEFFFFFFFFFFFF0000F3F3F3F0F0F0E8E8E889AFC463BD
        F05CC6FB60CCFB63CDFB63CCFB61CAFB53C3FB57C3FB9FD5F3E7E8E9E9E9E9F3
        F3F3FFFFFFFFFFFF0000FFFFFFF4F4F4EAEEF19ADEFA87DCFC93E0FC98E2FC90
        DFFC81D9FC73D2FC81CFF4E1EEF4F2F2F2EEEEEEF3F3F3FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFF6F6F6F6F6F7E1F2F8D1F1FCD9F4FED1F2FEB3E9FD89DAFC
        6CC8F9B6D4E7F6F6F6F6F6F6FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFF6F6F6F9F9F9F9F9F9F6F9FAEFF9FDD3F3FEAEE9FD83D8FD76CCF8C6E0
        EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFF7F7
        F7FCFCFCFCFCFCFBFBFCEEF9FCC8F1FDACEAFD97E1FD7ED2F8DCEDF6FFFFFFFF
        FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FDFDFDFD
        FDFDFDFDFDFCFDFDE3F6FBC4F2FDABEAFD88D7F6E8F3F9FFFFFFFFFFFFFFFFFF
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FEFEFEFEFEFEF8F8F8
        FFFFFFFEFEFFE5F9FDBFF1FE93DBF5F0F7FAFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9FAFAFAFFFFFFFFFFFFFFFFFFFFFF
        FFFEFEFEDFF8FDB1E4F6FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF0000}
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 110
    Width = 299
    Height = 19
    Panels = <>
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 56
    Top = 72
  end
  object IdSMTP: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Host = 'smtp.live.com'
    Port = 25
    AuthenticationType = atLogin
    Password = '6221rob'
    Username = 'agapito.tutu@hotmail.com'
    Left = 88
    Top = 72
  end
end