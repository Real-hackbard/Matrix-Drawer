object Form1: TForm1
  Left = 1672
  Top = 179
  Caption = 'Matrix Drawer'
  ClientHeight = 602
  ClientWidth = 756
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnResize = FormResize
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 583
    Width = 756
    Height = 19
    Panels = <
      item
        Text = 'Size :'
        Width = 35
      end
      item
        Width = 100
      end
      item
        Text = 'Pi :'
        Width = 25
      end
      item
        Text = '180'#176'x180'#176
        Width = 100
      end
      item
        Text = 'Frames :'
        Width = 55
      end
      item
        Text = '0'
        Width = 55
      end>
    ExplicitTop = 582
    ExplicitWidth = 752
  end
  object Panel1: TPanel
    Left = 0
    Top = 58
    Width = 217
    Height = 525
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 524
    object Label1: TLabel
      Left = 19
      Top = 25
      Width = 32
      Height = 13
      Caption = 'Sides :'
    end
    object Label2: TLabel
      Left = 12
      Top = 52
      Width = 39
      Height = 13
      Caption = 'Radius :'
    end
    object Label6: TLabel
      Left = 7
      Top = 107
      Width = 44
      Height = 13
      Caption = 'Oval (V) :'
    end
    object Label8: TLabel
      Left = 6
      Top = 135
      Width = 45
      Height = 13
      Caption = 'Oval (H) :'
    end
    object Label11: TLabel
      Left = 16
      Top = 80
      Width = 35
      Height = 13
      Caption = 'Depth :'
    end
    object GroupBox1: TGroupBox
      Left = 108
      Top = 15
      Width = 101
      Height = 138
      Caption = ' Rotate '
      TabOrder = 0
      object SpeedButton1: TSpeedButton
        Left = 34
        Top = 19
        Width = 25
        Height = 25
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF014203014203014A04025205014603014603FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF024C04024C04037B0803960A03
          9F0C039F0C039D0C038C0A036B0A036B0AFF00FFFF00FFFF00FFFF00FFFF00FF
          013402026A0603A70C03A50C03A10C03A00C03A00C07A51806A71609AF1C0A99
          1F06620FFF00FFFF00FFFF00FF014D0402690603A70C039F0C039E0C039E0CB1
          E6B6FFFFFF41BF570CA6270BA4200FB02D11A3301B9D3DFF00FFFF00FF014D04
          03A60C03A00C039E0C039E0C039E0CAFE5B4FFFFFF41BF580FAA2E0EA72912AA
          3423BC4F1B9D3DFF00FF013302027E0903A50C039E0C039E0C039E0C039E0CAD
          E5B2FFFFFF41BF5B0FAA3010A93113AC3C2FBC5D49C779138C2A014303039D0C
          03A00C039E0C16AA2007A010039E0CADE5B2FFFFFF41C05B11AB342DB8531FB4
          4E30BB6078D99F139923025104039F0C039F0C039E0CD5F2D882D589039E0CB4
          E7BDFFFFFF3EBF5E4FC675F4FCF7ABE6C12CBA5D90E0B1139923025104039F0C
          029E0A039D0AE9F8EAFFFFFF75D07DB7E9C5FFFFFF82D9A0E2F7EAFFFFFF95DE
          B038BD67A7E7C4139923014103039C0B03A00B029D0A48C052F4FCF6FCFEFCF7
          FCF8FCFFFEFAFEFBFFFFFF8EDCAB1CB24F50C77ABDEED4139923013002037808
          03A60C049E0D039E0F41BD4BF3FBF4FFFFFFFFFFFFFFFFFF95DEB01CB14D20B4
          529AE1B698E1B51DA435FF00FF01450304A30D07A41509A41C05A01341BD4EF0
          FBF3FFFFFFA4E3BC1DB24F16AF4866CF8CD0F4E3139923FF00FFFF00FF014503
          0365090AAB1F0DAB280EA92D11AB3470D392BAEACC2CBA5C22B65568D08EC5F0
          D86ACC88139923FF00FFFF00FFFF00FF034F09066B1110AC3017B64118B54A1E
          B7512ABA5C44C67483DDA7AAE7C556C573139923FF00FFFF00FFFF00FFFF00FF
          FF00FF044F09044F090D822317A34121B1513EBD6954C57A4CBD691399231399
          23FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF03570603570606
          680D08741206780E06780EFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SpeedButton1Click
      end
      object SpeedButton2: TSpeedButton
        Left = 59
        Top = 19
        Width = 25
        Height = 25
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000130B0000130B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF06780E06780E08741206680D035706035706FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1399231399234CBD6954C57A3E
          BD6921B15117A3410D8223044F09044F09FF00FFFF00FFFF00FFFF00FFFF00FF
          13992356C573AAE7C583DDA744C6742ABA5C1EB75118B54A17B64110AC30066B
          11034F09FF00FFFF00FFFF00FF1399236ACC88C5F0D868D08E22B6552CBA5CBA
          EACC70D39211AB340EA92D0DAB280AAB1F036509014503FF00FFFF00FF139923
          D0F4E366CF8C16AF481DB24FA4E3BCFFFFFFF0FBF341BD4E05A01309A41C07A4
          1504A30D014503FF00FF1DA43598E1B59AE1B620B4521CB14D95DEB0FFFFFFFF
          FFFFFFFFFFF3FBF441BD4B039E0F049E0D03A60C037808013002139923BDEED4
          50C77A1CB24F8EDCABFFFFFFFAFEFBFCFFFEF7FCF8FCFEFCF4FCF648C052029D
          0A03A00B039C0B014103139923A7E7C438BD6795DEB0FFFFFFE2F7EA82D9A0FF
          FFFFB7E9C575D07DFFFFFFE9F8EA039D0A029E0A039F0C02510413992390E0B1
          2CBA5DABE6C1F4FCF74FC6753EBF5EFFFFFFB4E7BD039E0C82D589D5F2D8039E
          0C039F0C039F0C02510413992378D99F30BB601FB44E2DB85311AB3441C05BFF
          FFFFADE5B2039E0C07A01016AA20039E0C03A00C039D0C014303138C2A49C779
          2FBC5D13AC3C10A9310FAA3041BF5BFFFFFFADE5B2039E0C039E0C039E0C039E
          0C03A50C027E09013302FF00FF1B9D3D23BC4F12AA340EA7290FAA2E41BF58FF
          FFFFAFE5B4039E0C039E0C039E0C03A00C03A60C014D04FF00FFFF00FF1B9D3D
          11A3300FB02D0BA4200CA62741BF57FFFFFFB1E6B6039E0C039E0C039F0C03A7
          0C026906014D04FF00FFFF00FFFF00FF06620F0A991F09AF1C06A71607A51803
          A00C03A00C03A10C03A50C03A70C026A06013402FF00FFFF00FFFF00FFFF00FF
          FF00FF036B0A036B0A038C0A039D0C039F0C039F0C03960A037B08024C04024C
          04FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF01460301460302
          5205014A04014203014203FF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SpeedButton2Click
      end
      object Label3: TLabel
        Left = 15
        Top = 48
        Width = 13
        Height = 13
        Caption = 'X :'
      end
      object SpeedButton3: TSpeedButton
        Left = 34
        Top = 43
        Width = 25
        Height = 25
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF044906055B09066C0C066C0C055E0A044C06FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF05600905600908911309B01809
          B31A09B31909B11907961405680C05680CFF00FFFF00FFFF00FFFF00FFFF00FF
          0A6A150A7F150BB61C09B91A08B41807B21609B31909B41909B81A09B91A0783
          10044D06FF00FFFF00FFFF00FF0B6A150F852216BD3411B7270BB21C07B11608
          B11709B21909B21909B21909B41909BA1A07841006670CFF00FFFF00FF0B6A15
          20BE491BBD4014B7300AB21F28BC36DFF5E1EEFAEF63CE6D09B21909B21909B3
          1909BA1A06670CFF00FF0872101B9A3A2AC65B1DBB450EB4250BB31B11B4219A
          DFA0FFFFFFF7FDF85ACB6509B21909B21909B81A089413045D090872102AB65B
          2CC56522BD4D0FB4220AB21A0CB31C0AB2198DDB95FDFEFDF6FCF758CB6309B2
          1909B51A08AB17045D090F821C37C26C33C76CCDF1DAC9EFD3C7EED0C8EFD2C5
          EED0C7EECFF8FDF9FFFFFFF2FBF36FD27908B41909B31905650B138D2358CC83
          42C977FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFEFDFFFFFFFFFFFFBCEA
          C10AB41A09B319066D0D0F911D6FD2935FD38D6DD49572D69971D69872D69964
          D28C92DFA8FBFEFBFFFFFFACE5B82EBF4C11B82B08B11905610A0F911D67CC83
          9BE5BA38C67030C36938C56F38C56F70D697E8F8EEFFFFFF9FE2B120BD481AB9
          3E10BA2908A31705610AFF00FF25AE39BCEDD282DBA428C0632FC26753CD82F7
          FDF9FFFFFF9CE2B222BC4B1DBA4118B73614C0300A8517FF00FFFF00FF25AE39
          71D28CD2F4E180DAA336C46D39C56FBCECCEABE6C22DC26324BE5623BC4D1FC1
          4616AE340A8517FF00FFFF00FFFF00FF25AE3984D89FDBF7EAAFE8C66BD49352
          CC8144C97849CA7B48CB7839CB6A21B6490F7C1FFF00FFFF00FFFF00FFFF00FF
          FF00FF25AE3925AE39ADE8C5CCF2DEBAEDD1A6E7C291E2B364D4922FB1572FB1
          57FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF32B74E25AE3925
          AE3925AE3925AE3924A342FF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SpeedButton3Click
      end
      object SpeedButton4: TSpeedButton
        Left = 59
        Top = 43
        Width = 25
        Height = 25
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF013002014103025104025104014303013302FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF014503014503037808039C0B03
          9F0C039F0C039D0C027E09014D04014D04FF00FFFF00FFFF00FFFF00FFFF00FF
          034F0903650904A30D03A60C03A00B029E0A039F0C03A00C03A50C03A60C0269
          06013402FF00FFFF00FFFF00FF044F09066B110AAB1F07A415049E0D029D0A03
          9D0A039E0C039E0C039E0C03A00C03A70C026A06024C04FF00FFFF00FF044F09
          10AC300DAB2809A41C039E0F48C052E9F8EAD5F2D816AA20039E0C039E0C039F
          0C03A70C024C04FF00FF0357060D822317B6410EA92D05A01341BD4BF4FCF6FF
          FFFF82D58907A010039E0C039E0C039E0C03A50C037B0801420303570617A341
          18B54A11AB3441BD4EF3FBF4FCFEFC75D07D039E0C039E0C039E0C039E0C039E
          0C03A10C03960A01420306680D21B1511EB75170D392F0FBF3FFFFFFF7FCF8B7
          E9C5B4E7BDADE5B2ADE5B2AFE5B4B1E6B603A00C039F0C014A040874123EBD69
          2ABA5CBAEACCFFFFFFFFFFFFFCFFFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF03A00C039F0C02520506780E54C57A44C6742CBA5CA4E3BCFFFFFFFAFEFB82
          D9A03EBF5E41C05B41BF5B41BF5841BF5707A518039D0C01460306780E4CBD69
          83DDA722B6551DB24F95DEB0FFFFFFE2F7EA4FC67511AB340FAA300FAA2E0CA6
          2706A716038C0A014603FF00FF139923AAE7C568D08E16AF481CB14D8EDCABFF
          FFFFF4FCF72DB85310A9310EA7290BA42009AF1C036B0AFF00FFFF00FF139923
          56C573C5F0D866CF8C20B4521CB24F95DEB0ABE6C11FB44E13AC3C12AA340FB0
          2D0A991F036B0AFF00FFFF00FFFF00FF1399236ACC88D0F4E39AE1B650C77A38
          BD672CBA5D30BB602FBC5D23BC4F11A33006620FFF00FFFF00FFFF00FFFF00FF
          FF00FF13992313992398E1B5BDEED4A7E7C490E0B178D99F49C7791B9D3D1B9D
          3DFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF1DA43513992313
          9923139923139923138C2AFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SpeedButton4Click
      end
      object Label4: TLabel
        Left = 15
        Top = 25
        Width = 13
        Height = 13
        Caption = 'Y :'
      end
      object SpeedButton5: TSpeedButton
        Left = 34
        Top = 67
        Width = 25
        Height = 25
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF7F4026814125814125814125814125814125FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF824125814125CB6600CB6600CB
          6600CB6600CB6600CB6600814125814125FF00FFFF00FFFF00FFFF00FFFF00FF
          9B4E18C56203CA6500CA6500CA6500CA6500CA6500CB6600CB6600CB6600C563
          03814125FF00FFFF00FFFF00FF994D19C46202C86300C66100C66100C66100C6
          6100C86300C96400CB6600CB6600CB6600C56303814125FF00FFFF00FFBB5D06
          C66201C46002C25E02BF5B02CE833FD6955AD8975BD68F4BD07720CB6600CB66
          00CB6600824125FF00FFA85411C96707C7680AC56809C26608C16405E7C3A0FE
          FEFEFEFEFEFEFEFEFEFEFEDB9957CB6600CB6600CB66007F4026AC570FCD7114
          CA7218C8721AC7711AC56F17C56F18C6711CC46E1AC56D1EE4B78DFEFEFECA65
          00CB6600CB6600824125AB5812D48434CF7F2ECD7E2DCD7F2FCC7D2CEACCACC6
          7019C2680CBF6003C66915FEFEFECA6500CB6600CB6600824125AC5915DEA264
          D7934DD38B41D48D44ECCFB1FEFEFECB7B2AC67019C3670BD7985DFEFEFECA65
          00CB6600CB6600824125AA5711E6B482E3B17CDA9854F4E0CCFEFEFEFEFEFEF8
          EEE3F3E1CFF2DFCCFEFEFEE5B88DCA6500CB6600CB6600824125AA550EE7B27D
          F0D3B5E5B079F5E1CCFEFEFEFEFEFEF4E2D0EBCBABE9C7A4DB9E60C76303CA65
          00CB6600CB66007F4026FF00FFAF6221F3D9BFF4D9BEEABB8BF2D8BDFEFEFED5
          8E45D08232CD7720CB6F11CA6604CA6500CB6600824125FF00FFFF00FFAA550E
          E9B782F8E7D5F6DFC8E9BB8BEFCFAED78F45D38433D07A22CF7417CB6808CB66
          00C563037D3F27FF00FFFF00FFFF00FFAB5610EBB986F6E0CAF7E6D4F0D1B1E8
          B98AE3AA71DFA060D98F44CE7111C563038F481EFF00FFFF00FFFF00FFFF00FF
          FF00FFAC570FB36728ECBC8BF0CBA6EECAA4EABC8EE1A263D47E28B05C158945
          21FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE5911B05D17B2
          611DB1601AB05B149C5019FF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SpeedButton5Click
      end
      object SpeedButton6: TSpeedButton
        Left = 59
        Top = 67
        Width = 25
        Height = 25
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000120B0000120B00000000000000000000FF00FFFF00FF
          FF00FFFF00FFFF00FF652814672913672913672913672913672913FF00FFFF00
          FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF682913672913BC4B00BC4B00BC
          4B00BC4B00BC4B00BC4B00672913672913FF00FFFF00FFFF00FFFF00FFFF00FF
          83350BB54701BB4A00BB4A00BB4A00BB4A00BB4A00BC4B00BC4B00BC4B00B548
          01672913FF00FFFF00FFFF00FF81340CB44700B84800B64600B64600B64600B6
          4600B84800BA4900BC4B00BC4B00BC4B00B54801672913FF00FFFF00FFA94202
          B64700B44500B14300B75411C47032CA7D41CC7E40C76E28BA4900BC4B00BC4B
          00BC4B00682913FF00FF923A07BA4C02B74D03B54D03CA8241FEFEFEFEFEFEFE
          FEFEFEFEFEE0B188B64600BA4900BC4B00BC4B00BC4B00652814973D06BF5609
          BB570BB8570CFEFEFEDDAD80BB6218B75810B2500AAF4403B24300B84800BB4A
          00BC4B00BC4B00682913963E07C76A1FC1651ABF6419FEFEFEC26D25BB5D13B6
          550CB14D04DEB289B04100B64600BB4A00BC4B00BC4B00682913973F09D48B49
          CB7A34C67229FEFEFED9A06AC26B21BC6017B6550CFEFEFEDDAC80B54500BB4A
          00BC4B00BC4B00682913953D07DEA068DA9D62CF803AEAC5A1FEFEFEF2DECBF0
          DCC6F4E6D8FEFEFEFEFEFEE7C19EBB4A00BC4B00BC4B00682913953B05E09E63
          EBC6A1DD9C5EDA9554E3B282EBCAA9E7C29FEED5BCFEFEFEFEFEFEE5B890BB4A
          00BC4B00BC4B00652814FF00FF9A4711EFCEADF0CEACE3A972DA9554D18340C9
          752DC2681DFEFEFEE0AB79BB4B01BB4A00BC4B00682913FF00FFFF00FF953B05
          E2A468F6E0C9F3D5B8E2A972D48843CB762DC66A1EE0AA77C1590ABC4D03BC4B
          00B54801632815FF00FFFF00FFFF00FF963C06E5A66CF3D7BBF4DEC7EBC49DE1
          A670DA9556D58945CE762CC05607B54801762F0FFF00FFFF00FFFF00FFFF00FF
          FF00FF973D069F4C16E6AA72EBBC90E9BB8EE3AA75D88B48C764169C41096F2D
          11FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF993F079C420A9E
          460E9D450C9C410984360CFF00FFFF00FFFF00FFFF00FFFF00FF}
        OnClick = SpeedButton6Click
      end
      object Label5: TLabel
        Left = 15
        Top = 72
        Width = 13
        Height = 13
        Caption = 'Z :'
      end
      object Button1: TButton
        Left = 34
        Top = 104
        Width = 50
        Height = 21
        Caption = 'Reset'
        TabOrder = 0
        TabStop = False
        OnClick = Button1Click
      end
    end
    object GroupBox2: TGroupBox
      Left = 9
      Top = 233
      Width = 200
      Height = 168
      Caption = ' Set Matrix Coordinates '
      TabOrder = 1
      object Txt00: TEdit
        Left = 17
        Top = 30
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 0
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt01: TEdit
        Left = 17
        Top = 57
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 1
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt02: TEdit
        Left = 17
        Top = 84
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 2
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt03: TEdit
        Left = 17
        Top = 111
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 3
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object Txt10: TEdit
        Left = 62
        Top = 30
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 4
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt11: TEdit
        Left = 62
        Top = 57
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 5
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt12: TEdit
        Left = 62
        Top = 84
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 6
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt13: TEdit
        Left = 62
        Top = 111
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 7
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object Txt20: TEdit
        Left = 107
        Top = 30
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 8
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt21: TEdit
        Left = 107
        Top = 57
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 9
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt22: TEdit
        Left = 107
        Top = 84
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 10
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt23: TEdit
        Left = 107
        Top = 111
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 11
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object Txt30: TEdit
        Left = 152
        Top = 30
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 12
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt31: TEdit
        Left = 152
        Top = 57
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 13
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt32: TEdit
        Left = 152
        Top = 84
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 14
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object txt33: TEdit
        Left = 152
        Top = 111
        Width = 39
        Height = 21
        TabStop = False
        TabOrder = 15
        Text = 'Txt00'
        OnKeyPress = Txt00KeyPress
      end
      object Button5: TButton
        Left = 22
        Top = 138
        Width = 79
        Height = 20
        Caption = 'Stop'
        TabOrder = 16
        TabStop = False
        OnClick = Button5Click
      end
      object Button9: TButton
        Left = 107
        Top = 138
        Width = 79
        Height = 20
        Caption = 'Set Matrix'
        TabOrder = 17
        TabStop = False
        OnClick = Button9Click
      end
    end
    object GroupBox3: TGroupBox
      Left = 9
      Top = 407
      Width = 200
      Height = 106
      Caption = ' Export '
      TabOrder = 2
      object Label9: TLabel
        Left = 10
        Top = 81
        Width = 42
        Height = 13
        Caption = 'Pixel bit :'
      end
      object Label10: TLabel
        Left = 18
        Top = 54
        Width = 34
        Height = 13
        Caption = 'Count :'
      end
      object Label12: TLabel
        Left = 11
        Top = 24
        Width = 41
        Height = 13
        Caption = 'Interval :'
      end
      object Button10: TButton
        Left = 127
        Top = 21
        Width = 55
        Height = 22
        Caption = 'Bitmap'
        TabOrder = 0
        TabStop = False
        OnClick = Button10Click
      end
      object SpinEdit8: TSpinEdit
        Left = 58
        Top = 49
        Width = 63
        Height = 22
        TabStop = False
        MaxValue = 0
        MinValue = 0
        TabOrder = 1
        Value = 20
      end
      object Button2: TButton
        Left = 127
        Top = 49
        Width = 55
        Height = 22
        Caption = 'Frames'
        TabOrder = 2
        TabStop = False
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 127
        Top = 77
        Width = 55
        Height = 21
        Caption = 'Abort'
        TabOrder = 3
        TabStop = False
        OnClick = Button3Click
      end
      object ComboBox1: TComboBox
        Left = 58
        Top = 77
        Width = 63
        Height = 21
        Style = csDropDownList
        ItemIndex = 2
        TabOrder = 4
        TabStop = False
        Text = '24 bit'
        Items.Strings = (
          '4 bit'
          '8 bit'
          '24 bit')
      end
      object SpinEdit10: TSpinEdit
        Left = 58
        Top = 21
        Width = 63
        Height = 22
        TabStop = False
        MaxLength = 3
        MaxValue = 999
        MinValue = 1
        TabOrder = 5
        Value = 30
        OnChange = SpinEdit10Change
      end
    end
    object SpinEdit1: TSpinEdit
      Left = 54
      Top = 104
      Width = 48
      Height = 22
      TabStop = False
      MaxLength = 4
      MaxValue = 2000
      MinValue = 0
      TabOrder = 3
      Value = 500
      OnChange = SpinEdit1Change
    end
    object SpinEdit2: TSpinEdit
      Left = 54
      Top = 131
      Width = 48
      Height = 22
      TabStop = False
      MaxLength = 4
      MaxValue = 2000
      MinValue = 0
      TabOrder = 4
      Value = 500
      OnChange = SpinEdit2Change
    end
    object GroupBox4: TGroupBox
      Left = 9
      Top = 169
      Width = 200
      Height = 58
      Caption = ' RGB '
      TabOrder = 5
      object SpeedButton7: TSpeedButton
        Left = 164
        Top = 22
        Width = 27
        Height = 25
        Cursor = crHandPoint
        Hint = 'Background Color'
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          1800000000000003000000000000000000000000000000000000606060000000
          0000000000000000000000000000000000000000000000003F00000000000000
          00000000000000000000609FDF3F3F3F00000000000000000000000000000000
          00000000000000003F00003F0000000000000000000000000000609FDF3F7FFF
          0000FF0000FF007FFF00FFFF00FF7F007F007F7F00BF3F00FF00007F00007F00
          7FFF00FF000000000000609FDF3F7FFF0000FF0000FF007FFF00FFFF00FF7F00
          7F007F7F00BF3F00FF00007F00007F007FFF00FF000000000000609FDF3F7FFF
          0000FF0000FF007FFF00FFFF00FF7F007F007F7F00BF3F00FF00007F00007F00
          7FFF00FF000000000000609FDF3F7FFF0000FF0000FF007FFF00FFFF00FF7F00
          7F007F7F00BF3F00FF00007F00007F007FFF00FF000000000000609FDF3F7FFF
          0000FF0000FF007FFF00FFFF00FF7F007F007F7F00BF3F00FF00007F00007F00
          7FFF00FF000000000000609FDF3F7FFF0000FF0000FF007FFF00FFFF00FF7F00
          7F007F7F00BF3F00FF00007F00007F007FFF00FF000000000000609FDF3F7FFF
          0000FF0000FF007FFF00FFFF00FF7F007F007F7F00BF3F00FF00007F00007F00
          7FFF00FF000000000000609FDF3F7FFF0000FF0000FF007FFF00FFFF00FF7F00
          7F007F7F00BF3F00FF00007F00007F007FFF00FF000000000000609FDF3F7FFF
          0000FF0000FF007FFF00FFFF00FF7F007F007F7F00BF3F00FF00007F00007F00
          7FFF00FF000000000000609FDF3F7FFF0000FF0000FF007FFF00FFFF00FF7F00
          7F007F7F00BF3F00FF00007F00007F007FFF00FF000000000000609FDF3F7FFF
          0000FF0000FF007FFF00FFFF00FF7F007F007F7F00BF3F00FF00007F00007F00
          7FFF00FF000000000000609FDF3F7FFF0000FF0000FF007FFF00FFFF00FF7F00
          7F007F7F00BF3F00FF00007F00007F007FFF00FF000000000000609FDF7F7FFF
          7F7FFF7F7FFF7F7FFFFFFFFFBFFFBF00FF007FFF00FFBF00FF7F00FF7F7FFF7F
          BFFF7FFF3F3F3F00000090CFCF609FDF609FDF609FDF609FDF60DFDF60DF9F60
          DF6060DF60DFDF60DF9F60DF9F60DF9FDFDF9FDFDF9FDF606060}
        ParentShowHint = False
        ShowHint = True
        OnClick = SpeedButton7Click
      end
      object SpinEdit3: TSpinEdit
        Left = 11
        Top = 24
        Width = 45
        Height = 22
        TabStop = False
        MaxLength = 3
        MaxValue = 255
        MinValue = 0
        TabOrder = 0
        Value = 155
        OnChange = SpinEdit3Change
      end
      object SpinEdit4: TSpinEdit
        Left = 62
        Top = 24
        Width = 45
        Height = 22
        TabStop = False
        MaxLength = 3
        MaxValue = 255
        MinValue = 0
        TabOrder = 1
        Value = 255
        OnChange = SpinEdit4Change
      end
      object SpinEdit5: TSpinEdit
        Left = 113
        Top = 24
        Width = 45
        Height = 22
        TabStop = False
        MaxLength = 3
        MaxValue = 255
        MinValue = 0
        TabOrder = 2
        Value = 155
        OnChange = SpinEdit5Change
      end
    end
    object SpinEdit6: TSpinEdit
      Left = 54
      Top = 21
      Width = 48
      Height = 22
      TabStop = False
      MaxLength = 3
      MaxValue = 100
      MinValue = 10
      TabOrder = 6
      Value = 100
      OnChange = SpinEdit6Change
    end
    object SpinEdit7: TSpinEdit
      Left = 54
      Top = 49
      Width = 48
      Height = 22
      TabStop = False
      MaxValue = 0
      MinValue = 0
      TabOrder = 7
      Value = 30
      OnChange = SpinEdit7Change
    end
    object SpinEdit9: TSpinEdit
      Left = 54
      Top = 76
      Width = 48
      Height = 22
      TabStop = False
      MaxLength = 3
      MaxValue = 100
      MinValue = 1
      TabOrder = 8
      Value = 20
      OnChange = SpinEdit9Change
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 756
    Height = 58
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 752
    object Label7: TLabel
      Left = 15
      Top = 9
      Width = 180
      Height = 39
      Caption = 'Matrix Drawer'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -32
      Font.Name = 'Impact'
      Font.Style = []
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 217
    Top = 58
    Width = 539
    Height = 525
    Align = alClient
    TabOrder = 3
    ExplicitWidth = 535
    ExplicitHeight = 524
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 517
      Height = 503
      Align = alClient
      PopupMenu = PopupMenu1
      OnMouseDown = Image1MouseDown
      OnMouseMove = Image1MouseMove
      OnMouseUp = Image1MouseUp
      ExplicitLeft = -1
      ExplicitTop = 6
    end
    object Panel4: TPanel
      Left = 518
      Top = 1
      Width = 20
      Height = 503
      Align = alRight
      TabOrder = 0
      ExplicitLeft = 514
      ExplicitHeight = 502
      object ScrollBar1: TScrollBar
        Left = 2
        Top = 1
        Width = 17
        Height = 501
        Align = alRight
        Kind = sbVertical
        Max = 1000
        Min = -1000
        PageSize = 0
        Position = 180
        TabOrder = 0
        OnChange = ScrollBar1Change
        ExplicitHeight = 500
      end
    end
    object Panel6: TPanel
      Left = 1
      Top = 504
      Width = 537
      Height = 20
      Align = alBottom
      TabOrder = 1
      ExplicitTop = 503
      ExplicitWidth = 533
      object Panel5: TPanel
        Left = 520
        Top = 1
        Width = 16
        Height = 18
        Align = alRight
        TabOrder = 0
        ExplicitLeft = 516
        object Image2: TImage
          Left = 1
          Top = 1
          Width = 14
          Height = 16
          Cursor = crHandPoint
          Hint = 'Return'
          Align = alClient
          ParentShowHint = False
          Picture.Data = {
            07544269746D617036030000424D360300000000000036000000280000001000
            0000100000000100180000000000000300000000000000000000000000000000
            0000FFFFFFFFFFFFFFFFFFF8FCF6AFD89B57B83227A00924A50C24980A3EA328
            9CC68FE0EEDCFFFFFFFFFFFFFFFFFFD4EFCBFFFFFFFFFFFFCBE5C037A31222D0
            001DE40017EB0017E4001AE60522E30928D50B26AC069ACE8AFFFFFF81BD7719
            9405FFFFFFD1E8C61EA00017E0001AE8001CE10021E40327E7072CE50830E505
            36E81332EC1925C50C1883081DC9162ECE1AF7FCF5248D0610D70017DF001DE2
            0023E60530D60A3AC90E56DB3777F2765EF4444CEC2B45F02D31E82347FA4437
            CE26ACD29B12B30010D9001ADA012AE40747BE158AC771E7F4E1D3EEC976C75B
            5DCD5C7FFC7466F14E62F45977FD7B46D83430901A09CC000FD4031FE30846C5
            0DDFF2D2FFFFFFFFFFFFE3F4DE59C14561E5627AFB6976F86B77F87492FF9D49
            E0386FA8514ABE391BC10424C70981CC60FFFFFFFFFFFFF7FDF455BB3B43C443
            97EBA38EF3969DFFB0A5FFB1A6FFBC47E63BFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFEEF9ECBDE5BD93E38F57D35B51DB5695FAAE59
            E850BD6E1FF3C56BECB378E09B6AECC3A2F0D7BEFBF4EDFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBB620BEBA917F0BD4FF7D87DF6D7
            94F1D4A1E3B168DB9D53FDFAF5FFFFFFFFFFFFDD8B25F5B24BFDB149FFB751FF
            9331BD660FE49604E1970AE6A31DEEB63BEEC467DCA261F7EBE0FFFFFFFFFFFF
            F9EBD7EAB048FFEC9BFFEB99FFF2C9F3CA6CBF6812E59F0FE6A421E7A829F2C6
            5FE4B472C6885FE8D3C9F4E9E2D19B76DE9636FCE088FDE28BFFECABFCE3B4F9
            E2AFBF6613E69A0FE2961DE9A930EBB23BF4CA63F7DA90EFC370E8AE4FF2C662
            FDE187FCE186FDE394FFF7DCF2C359FFFDF8C97512D88110B85E1CD88D2BEFB9
            41F0BF4CF1C14CF5CA5EF9D470F9D774FADA7DFFE8A3FFF7DCF5CD74FCEED2FF
            FFFFB55A0FD6A680FFFFFFE5BC95D98F34ECB854F7D679F9DC89FBE08FFDE8A7
            FDEBB8FBE4B4F2C661FBECCDFFFFFFFFFFFFF1DECEFFFFFFFFFFFFFFFFFFF9ED
            DFEECDA2E8B566EAB45EF2C779F0C270F3CA79F8E1AFFFFDF8FFFFFFFFFFFFFF
            FFFF}
          ShowHint = True
          OnMouseDown = Image2MouseDown
          ExplicitLeft = -1
          ExplicitTop = -9
          ExplicitWidth = 16
          ExplicitHeight = 14
        end
      end
      object ScrollBar2: TScrollBar
        Left = 1
        Top = 1
        Width = 519
        Height = 18
        Align = alClient
        Max = 1000
        Min = -1000
        PageSize = 0
        Position = 180
        TabOrder = 1
        OnChange = ScrollBar2Change
        ExplicitWidth = 515
      end
    end
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 360
    Top = 148
  end
  object SaveDialog1: TSaveDialog
    Filter = 'Bitmap (*.BMP)|*.bmp'
    Left = 288
    Top = 152
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 30
    OnTimer = Timer2Timer
    Left = 424
    Top = 152
  end
  object ColorDialog1: TColorDialog
    Left = 289
    Top = 226
  end
  object PopupMenu1: TPopupMenu
    Left = 561
    Top = 234
    object Reset1: TMenuItem
      Caption = 'Reset'
      OnClick = Reset1Click
    end
    object Stop1: TMenuItem
      Caption = 'Stop'
      OnClick = Stop1Click
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object Stalks1: TMenuItem
      AutoCheck = True
      Caption = 'Stalks'
      Checked = True
    end
    object Rings1: TMenuItem
      AutoCheck = True
      Caption = 'Rings'
      Checked = True
    end
    object BGRColor1: TMenuItem
      Caption = 'BGR Color'
      OnClick = BGRColor1Click
    end
    object Invert1: TMenuItem
      AutoCheck = True
      Caption = 'Invert'
    end
    object DrawFrame1: TMenuItem
      AutoCheck = True
      Caption = 'Draw Frame'
    end
    object N4: TMenuItem
      Caption = '-'
    end
    object AntiAliasingslow1: TMenuItem
      AutoCheck = True
      Caption = 'AntiAliasing (slow)'
      RadioItem = True
    end
    object Blur1: TMenuItem
      AutoCheck = True
      Caption = 'Blur (slow)'
      RadioItem = True
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Bitmap1: TMenuItem
      Caption = 'Bitmap'
      OnClick = Bitmap1Click
    end
    object ExportFrames1: TMenuItem
      Caption = 'Export Frames'
      OnClick = ExportFrames1Click
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Panel7: TMenuItem
      AutoCheck = True
      Caption = 'Panel'
      Checked = True
      OnClick = Panel7Click
    end
    object Highlight1: TMenuItem
      Caption = 'Highlight'
    end
  end
end
