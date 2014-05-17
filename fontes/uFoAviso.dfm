object foAviso: TfoAviso
  Left = 371
  Top = 274
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Aviso'
  ClientHeight = 171
  ClientWidth = 349
  Color = clBtnFace
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
  object pnlBut: TPanel
    Left = 0
    Top = 130
    Width = 349
    Height = 41
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      349
      41)
    object btn2: TBitBtn
      Left = 106
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'btn2'
      TabOrder = 0
      OnClick = btn2Click
    end
    object btn1: TBitBtn
      Left = 186
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'btn1'
      TabOrder = 1
      OnClick = btn1Click
    end
    object btn0: TBitBtn
      Left = 266
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'btn0'
      TabOrder = 2
      OnClick = btn0Click
    end
  end
  object pnlGeral: TPanel
    Left = 0
    Top = 0
    Width = 349
    Height = 130
    Align = alClient
    TabOrder = 1
    object lblTexto: TLabel
      Left = 1
      Top = 1
      Width = 347
      Height = 128
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      Caption = 'lblTexto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Layout = tlCenter
    end
  end
end
