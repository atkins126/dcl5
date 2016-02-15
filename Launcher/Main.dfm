object Form1: TForm1
  Left = 498
  Height = 332
  Top = 227
  Width = 455
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Запуск...'
  ClientHeight = 332
  ClientWidth = 455
  Color = clBtnFace
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  OnClose = FormClose
  OnCreate = FormCreate
  Position = poScreenCenter
  LCLVersion = '1.4.4.0'
  object ListBox1: TListBox
    Left = 0
    Height = 269
    Top = 0
    Width = 318
    Align = alClient
    ItemHeight = 0
    OnClick = ListBox1Click
    OnDblClick = ListBox1DblClick
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 318
    Height = 269
    Top = 0
    Width = 137
    Align = alRight
    BevelInner = bvLowered
    ClientHeight = 269
    ClientWidth = 137
    TabOrder = 1
    object btRunApp: TBitBtn
      Left = 18
      Height = 25
      Top = 20
      Width = 105
      Caption = 'Приложение'
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000FFFFFF00CBFE
        FF0099FEFF0065FEFF0033FEFF0000FDFD00FECBFF00CBCBFF0099CBFF0065CB
        FF0033CCFF0000CBFD00FE99FF00CB99FF009999FF006598FF003398FF000098
        FD00FE65FF00CB65FF009865FF006565FF003365FF000065FD00FE33FF00CB33
        FF009833FF006533FF003333FF000032FD00FD00FD00CB00FD009800FD006500
        FD003200FD000000FD00FFFFCB00CBFFCB0099FFCC0065FFCB0033FFCC0000FD
        CB00FFCBCB00CCCCCC0098CBCB0066CBCC0032CBCB0000CBCC00FF99CB00CB98
        CB009898CB006698CC003298CB000099CC00FF65CB00CB66CC009866CC006666
        CC003265CB000065CC00FF33CB00CB32CB009832CB006532CB003232CB000032
        CC00FD00CB00CB00CC009800CC006500CC003200CC000000CC00FFFF9900CBFF
        990099FF990065FF980033FF990000FD9800FFCC9900CBCB980098CB980066CC
        990032CB980000CC9900FF999900CB9898009999990065989800339899000097
        9800FF659800CC66980098659800656598003365990000659800FF339800CB32
        980098339900653399003333990000329800FD009800CC009800970098006500
        98003200980000009800FFFF6500CBFF650098FF650065FF650033FF660000FD
        6500FFCB6500CCCC660098CC660066CC660032CB650000CC6600FF986500CC99
        660098986500659865003399660000986500FF656500CC666600986565006666
        66003265650000656600FF336500CB3265009933650065326500323265000032
        6600FD006500CC00650098006500650066003200660000006600FFFF3300CCFF
        330098FF330066FF330033FF330000FD3200FFCC3300CBCB320098CB320065CB
        320032CB320000CC3300FF993300CB9832009999330065993300339933000098
        3200FF663300CB65320099663300656532003265320000663300FF333300CB32
        320099333300653232003333330000313200FD003200CC003200980032006600
        32003100320000003200FDFD0000CBFD000098FD000065FD000032FD000000FD
        0000FDCB0000CCCC000099CC000065CC000033CC000000CC0000FD980000CC99
        000098980000659800003298000000980000FD650000CC660000986500006666
        00003266000000660000FD320000CC3300009832000066330000323200000032
        0000FD000000CC0000009800000066000000320000000000EE000000DC000000
        BA000000AA0000008800000076000000540000004400000022000000100000EE
        000000DC000000BA000000AA0000008800000076000000540000004400000022
        000000100000EE000000DC000000BA000000AA00000088000000760000005400
        0000440000002200000010000000EEEEEE00DDDDDD00BBBBBB00AAAAAA008888
        88007777770055555500444444002222220011111100FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
        FBFBFBFBFBFBFBFBFFFFFFFFFFFFFFF9F7F7F7F7F7F7F7F7FFFFFFFFFFFFFFF9
        F7FA23232323F9F7FFFFFFFFFFFFFFFDFBFDFBFBFB23F9F7FFFFFFFFF7F7F7F7
        F7F7F7F7FA23F9F7FFFFFFFFF7F8F7F7F7F7F8F7FA23F9F7FFFFFFFFF7FA10FD
        FBFFFFFBFD23F9F7FFFFFFFFF7FA10F9F7FCFBFBFBFBFCF7FFFFFFFFF7FA10F9
        F7F7F7F7F7F7F7F7FFFFFFFFF7FA10F71010FFFBFFFFFFFFFFFFFFFFF7FCFBFB
        FBFBFCF7FAFFFFFFFFFFFFFFF7F7F7F7F7F7F7F7FAFFFFFFFFFFFFFFF7F7F7F7
        F7F7F7F7FAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      }
      OnClick = btRunAppClick
      ParentFont = False
      TabOrder = 0
    end
    object btRunConstructor: TBitBtn
      Left = 18
      Height = 25
      Top = 60
      Width = 105
      Caption = 'Конфигуратор'
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000130B0000130B00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFE0E0E0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0E0E0E0FFFFFF404040707070
        7070707070707070707070707070707070707070707070707070707070707070
        70404040C0C0C0FFFFFF808080E0E0E0E0E0E0E0E0E0E0E0E0B0B0B040404040
        4040404040404040404040404040404040202020404040606060808080E0E0E0
        E0E0E0E0E0E0E0E0E0808080FFFFFFFFFFFFB0B0B0808080808080F0F0F08080
        80808080C0C0C0404040808080E0E0E0E0E0E0E0E0E0E0E0E0808080FFFFFFFF
        FFFFD0D0D0E0E0E0A0A0A0E0E0E0E0E0E0E0E0E0B0B0B0404040808080E0E0E0
        E0E0E0E0E0E0E0E0E0808080FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF404040808080E0E0E0E0E0E0E0E0E0E0E0E0808080FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF404040808080E0E0E0
        E0E0E0E0E0E0E0E0E08080808000008000008000008000008000008000003030
        30303030303030404040808080F0F0F0F0F0F0F0F0F0F0F0F0C0C0C080808080
        8080808080808080808080808080808080404040606060C0C0C0404040707070
        7070707070707070707070707070707070707070707070707070707070707070
        70303030C0C0C0FFFFFF808080808080B0B0B0C0C0C0808080F0F0F0808080B0
        B0B0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0808080C0C0C0FFFFFF400000800000
        8000008000008000008000008000008000008000008000004000003030303030
        30303030C0C0C0FFFFFF80808080808080808080808080808080808080808080
        8080808080808080808080808080808080808080FFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      }
      OnClick = btRunConstructorClick
      ParentFont = False
      TabOrder = 1
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Height = 23
    Top = 309
    Width = 455
    Panels = <    
      item
        Width = 250
      end>
    SimplePanel = False
  end
  object Panel3: TPanel
    Left = 0
    Height = 40
    Top = 269
    Width = 455
    Align = alBottom
    BevelInner = bvLowered
    ClientHeight = 40
    ClientWidth = 455
    TabOrder = 3
    object btAdd: TButton
      Left = 15
      Height = 25
      Top = 7
      Width = 75
      Caption = 'Добавить'
      OnClick = btAddClick
      TabOrder = 0
    end
    object btEdit: TButton
      Left = 100
      Height = 25
      Top = 7
      Width = 75
      Caption = 'Изменить'
      OnClick = btEditClick
      TabOrder = 1
    end
    object btDelete: TButton
      Left = 185
      Height = 25
      Top = 7
      Width = 75
      Caption = 'Удалить'
      OnClick = btDeleteClick
      TabOrder = 2
    end
  end
end