object Form1: TForm1
  Left = 694
  Top = 291
  Caption = 'Algor'#237'tmos de Ordena'#231#227'o'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 16
    Top = 74
    Width = 94
    Height = 15
    Caption = 'Digite os n'#250'mero:'
  end
  object Label2: TLabel
    Left = 16
    Top = 129
    Width = 55
    Height = 15
    Caption = 'Resultado:'
  end
  object Button1: TButton
    Left = 456
    Top = 94
    Width = 150
    Height = 25
    Caption = 'Ordenar'
    TabOrder = 0
    OnClick = Button1Click
  end
  object EditNumeros: TEdit
    Left = 16
    Top = 95
    Width = 434
    Height = 23
    TabOrder = 1
  end
  object RadioGroup1: TRadioGroup
    Left = 16
    Top = 8
    Width = 590
    Height = 54
    Caption = ' Tipo '
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      'Bubble Sort')
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 16
    Top = 150
    Width = 590
    Height = 243
    TabOrder = 3
  end
end
