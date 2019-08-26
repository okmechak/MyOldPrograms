object Form1: TForm1
  Left = 308
  Top = 25
  Width = 810
  Height = 747
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = 'Form1'
  Color = 4227200
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = Splitter1Moved
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 290
    Top = 0
    Width = 7
    Height = 642
    Color = clMoneyGreen
    ParentColor = False
    OnMoved = Splitter1Moved
  end
  object MainPanel: TPanel
    Left = 0
    Top = 0
    Width = 290
    Height = 642
    Align = alLeft
    BevelInner = bvRaised
    BevelOuter = bvLowered
    BorderWidth = 3
    Caption = 'Main Panel'
    Constraints.MaxWidth = 750
    Constraints.MinWidth = 240
    DockSite = True
    DragKind = dkDock
    DragMode = dmAutomatic
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 5
      Top = 257
      Width = 280
      Height = 5
      Cursor = crVSplit
      Align = alTop
    end
    object Main: TTabbedNotebook
      Left = 5
      Top = 5
      Width = 280
      Height = 252
      Align = alTop
      Constraints.MaxHeight = 415
      Constraints.MinHeight = 77
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clBtnText
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = []
      TabOrder = 0
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Main'
        object TabControl1: TTabControl
          Left = 0
          Top = 0
          Width = 272
          Height = 47
          Align = alTop
          Style = tsButtons
          TabOrder = 0
          Tabs.Strings = (
            'Pereriz'
            'Proekcia'
            'Sumetria')
          TabIndex = 0
          OnChange = MainChenge
          object Label1: TLabel
            Left = 4
            Top = 27
            Width = 24
            Height = 16
            Align = alLeft
            Caption = 'Type'
          end
        end
        object ChMainType: TComboBox
          Left = 49
          Top = 23
          Width = 109
          Height = 21
          Cursor = crHandPoint
          Color = clCream
          ItemHeight = 13
          TabOrder = 1
          Text = 'Square'
          OnChange = MainOptionsCh
          Items.Strings = (
            'Square')
        end
        object Panel7: TPanel
          Left = 0
          Top = 47
          Width = 272
          Height = 177
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 2
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 220
            Height = 177
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 0
            object Shape1: TShape
              Left = 174
              Top = 89
              Width = 46
              Height = 17
              Align = alRight
              Brush.Color = clGreen
              Constraints.MaxHeight = 17
              Pen.Width = 3
              Shape = stRoundRect
              OnContextPopup = Shape1ContextPopup
            end
            object Label7: TLabel
              Left = 141
              Top = 89
              Width = 33
              Height = 88
              Align = alRight
              Caption = 'Color   '
            end
            object Label3: TLabel
              Left = 8
              Top = 168
              Width = 210
              Height = 13
              Caption = '___________________________________'
            end
            object Shape4: TShape
              Left = 135
              Top = 201
              Width = 49
              Height = 17
              Brush.Color = clYellow
              Pen.Width = 3
              Shape = stRoundRect
            end
            object Shape5: TShape
              Left = 134
              Top = 272
              Width = 52
              Height = 17
              Pen.Width = 3
              Shape = stRoundRect
            end
            object Ma: TScrollBar
              Left = 0
              Top = 0
              Width = 220
              Height = 17
              Align = alTop
              Max = 5000
              PageSize = 0
              Position = 1000
              TabOrder = 0
              OnChange = InComingInfo
            end
            object mb: TScrollBar
              Left = 0
              Top = 17
              Width = 220
              Height = 17
              Align = alTop
              Max = 5000
              PageSize = 0
              Position = 1000
              TabOrder = 1
              OnChange = InComingInfo
            end
            object mx: TTrackBar
              Left = 0
              Top = 34
              Width = 220
              Height = 27
              Align = alTop
              Max = 30
              Min = 1
              Position = 7
              TabOrder = 2
              OnChange = InComingInfo
            end
            object my: TTrackBar
              Left = 0
              Top = 61
              Width = 220
              Height = 28
              Align = alTop
              Max = 30
              Min = 1
              Position = 7
              TabOrder = 3
              OnChange = InComingInfo
            end
            object mp: TLabeledEdit
              Left = 144
              Top = 123
              Width = 33
              Height = 21
              Color = clCream
              EditLabel.Width = 19
              EditLabel.Height = 13
              EditLabel.Caption = 'Pen'
              MaxLength = 2
              TabOrder = 4
              Text = '1'
              OnChange = InComingInfo
            end
            object CheckBox4: TCheckBox
              Left = 8
              Top = 105
              Width = 81
              Height = 17
              Caption = 'Diagonal'
              Color = clCream
              ParentColor = False
              TabOrder = 5
            end
            object CheckBox5: TCheckBox
              Left = 8
              Top = 88
              Width = 81
              Height = 17
              Caption = 'Height&Width'
              Color = clCream
              ParentColor = False
              TabOrder = 6
            end
            object ComboBox1: TComboBox
              Left = 8
              Top = 123
              Width = 121
              Height = 21
              Cursor = crHandPoint
              Color = clCream
              ItemHeight = 13
              TabOrder = 7
              Text = 'Style'
              OnChange = InComingInfo
              Items.Strings = (
                'Solid'
                'Dash'
                'Dot'
                'Dash-Dot'
                'Dash-Dot-Dot'
                'Clear'
                'Inside Frame')
            end
            object CheckBox6: TCheckBox
              Left = 8
              Top = 184
              Width = 161
              Height = 17
              Caption = 'Show LIniji(proekcia,sumetria)'
              TabOrder = 8
            end
            object LabeledEdit1: TLabeledEdit
              Left = 8
              Top = 272
              Width = 41
              Height = 21
              EditLabel.Width = 166
              EditLabel.Height = 13
              EditLabel.Caption = 'Pen    pereriz sproektovana kliaksa'
              TabOrder = 9
              Text = '3'
            end
            object ComboBox2: TComboBox
              Left = 8
              Top = 200
              Width = 121
              Height = 21
              ItemHeight = 13
              TabOrder = 10
              Text = 'Style'
              Items.Strings = (
                'Solid'
                'Dash'
                'Dot'
                'Dash-Dot'
                'Dash-Dot-Dot'
                'Clear'
                'Inside Frame')
            end
            object ComboBox5: TComboBox
              Left = 8
              Top = 145
              Width = 121
              Height = 21
              Cursor = crHandPoint
              Color = clCream
              DropDownCount = 16
              ItemHeight = 13
              ItemIndex = 9
              TabOrder = 11
              Text = 'Merge Pen Not'
              OnChange = InComingInfo
              Items.Strings = (
                'Mask Pen Not'
                'Copy'
                'Xor'
                'Merge'
                'Not Merge'
                'Not Xor'
                'Not Copy'
                'Merge Not Pen'
                'Not'
                'Merge Pen Not'
                'Not Mask'
                'White')
            end
            object ComboBox6: TComboBox
              Left = 8
              Top = 222
              Width = 121
              Height = 21
              ItemHeight = 13
              TabOrder = 12
              Text = 'Mode'
              Items.Strings = (
                'Mask Pen Not'
                'Copy'
                'Xor'
                'Merge'
                'Not Merge'
                'Not Xor'
                'Not Copy'
                'Merge Not Pen'
                'Not'
                'Merge Pen Not'
                'Not Mask'
                'White')
            end
            object ComboBox7: TComboBox
              Left = 8
              Top = 296
              Width = 121
              Height = 21
              ItemHeight = 13
              TabOrder = 13
              Text = 'Style'
              Items.Strings = (
                'Solid'
                'Dash'
                'Dot'
                'Dash-Dot'
                'Dash-Dot-Dot'
                'Clear'
                'Inside Frame')
            end
            object ComboBox8: TComboBox
              Left = 8
              Top = 318
              Width = 121
              Height = 21
              ItemHeight = 13
              TabOrder = 14
              Text = 'Mode'
              Items.Strings = (
                'Mask Pen Not'
                'Copy'
                'Xor'
                'Merge'
                'Not Merge'
                'Not Xor'
                'Not Copy'
                'Merge Not Pen'
                'Not'
                'Merge Pen Not'
                'Not Mask'
                'White')
            end
          end
          object Panel9: TPanel
            Left = 220
            Top = 0
            Width = 52
            Height = 177
            Align = alRight
            BevelOuter = bvNone
            Color = clCream
            Constraints.MaxHeight = 178
            TabOrder = 1
            object wma: TLabel
              Left = 0
              Top = 0
              Width = 52
              Height = 17
              Align = alTop
              Caption = 'OX=10000 mm'
              Constraints.MinHeight = 17
            end
            object wmb: TLabel
              Left = 0
              Top = 17
              Width = 52
              Height = 17
              Align = alTop
              Caption = 'wmb'
              Constraints.MinHeight = 17
            end
            object wmx: TLabel
              Left = 0
              Top = 34
              Width = 52
              Height = 31
              Align = alTop
              Caption = 'wmx'
              Constraints.MinHeight = 31
            end
            object wmy: TLabel
              Left = 0
              Top = 65
              Width = 52
              Height = 31
              Align = alTop
              Caption = 'wmy'
              Constraints.MinHeight = 31
            end
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Options'
        object Label19: TLabel
          Left = 0
          Top = 0
          Width = 272
          Height = 13
          Align = alTop
          Caption = 'Parametru seredovushcha:'
        end
        object Label20: TLabel
          Left = 0
          Top = 93
          Width = 272
          Height = 13
          Align = alTop
          Caption = 'Odunuci Vumiriyvannia:'
        end
        object Panel16: TPanel
          Left = 0
          Top = 13
          Width = 272
          Height = 80
          Align = alTop
          BevelOuter = bvNone
          Color = clSkyBlue
          TabOrder = 0
          object oc1: TCheckBox
            Left = 0
            Top = 8
            Width = 185
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Temnishaje iz zbilshenniam vidstani'
            TabOrder = 0
          end
          object ob1: TButton
            Left = 192
            Top = 8
            Width = 57
            Height = 17
            Caption = 'Advanced'
            TabOrder = 1
          end
          object oc2: TCheckBox
            Left = 0
            Top = 24
            Width = 185
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Tonshaje iz zbilshenniam Vidstani'
            TabOrder = 2
          end
          object ob2: TButton
            Left = 192
            Top = 24
            Width = 57
            Height = 17
            Caption = 'Advanced'
            TabOrder = 3
          end
          object oc3: TCheckBox
            Left = 64
            Top = 40
            Width = 121
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Grani prostranstva'
            TabOrder = 4
          end
          object oc4: TCheckBox
            Left = 0
            Top = 56
            Width = 185
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Osi obertannia i Peremishchennia'
            TabOrder = 5
          end
          object ob4: TButton
            Left = 192
            Top = 56
            Width = 57
            Height = 17
            Caption = 'Advanced'
            TabOrder = 6
          end
        end
        object Panel17: TPanel
          Left = 0
          Top = 106
          Width = 272
          Height = 47
          Align = alTop
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          TabOrder = 1
          object Label21: TLabel
            Left = 0
            Top = 0
            Width = 272
            Height = 13
            Align = alTop
            Caption = '    Position:                      Milimeters (mM)'
          end
          object Label22: TLabel
            Left = 0
            Top = 13
            Width = 272
            Height = 13
            Align = alTop
            Caption = '    Rotation:                     Degress (Deg)'
          end
          object Label23: TLabel
            Left = 0
            Top = 26
            Width = 272
            Height = 13
            Align = alTop
            Caption = '    Objects parameters:    Milimeters (mM)'
          end
        end
        object Aboutmain: TButton
          Left = 0
          Top = 179
          Width = 249
          Height = 41
          Caption = 'About 4-D Geometry'
          TabOrder = 2
        end
        object CheckBox7: TCheckBox
          Left = 8
          Top = 160
          Width = 73
          Height = 17
          Caption = 'Absolut 3D'
          TabOrder = 3
          OnClick = Splitter1Moved
        end
      end
    end
    object Panel5: TPanel
      Left = 5
      Top = 547
      Width = 280
      Height = 90
      Align = alBottom
      AutoSize = True
      BevelOuter = bvNone
      Color = clSkyBlue
      Constraints.MaxHeight = 90
      Constraints.MinHeight = 90
      TabOrder = 1
      object Label2: TLabel
        Left = 128
        Top = 67
        Width = 78
        Height = 13
        Caption = 'Zoom of Camera'
      end
      object Other: TGroupBox
        Left = 0
        Top = 0
        Width = 280
        Height = 60
        Align = alTop
        Caption = 'Objects'
        TabOrder = 0
        object cpiv: TCheckBox
          Left = 176
          Top = 16
          Width = 73
          Height = 17
          Caption = 'Pivot Point'
          TabOrder = 0
          OnClick = MainObjectCh
        end
        object StatusBar1: TStatusBar
          Left = 2
          Top = 36
          Width = 276
          Height = 22
          Color = clGradientInactiveCaption
          Panels = <
            item
              Alignment = taCenter
              Width = 50
            end
            item
              Alignment = taRightJustify
              Width = 50
            end>
        end
        object ChMainOb: TComboBox
          Left = 4
          Top = 13
          Width = 145
          Height = 21
          Cursor = crHandPoint
          Color = clCream
          ItemHeight = 13
          ItemIndex = 2
          TabOrder = 2
          Text = 'Body'
          OnChange = MainObjectCh
          Items.Strings = (
            'Camera'
            'Square'
            'Body'
            'Object Kilt')
        end
      end
      object bRESET: TButton
        Left = -1
        Top = 63
        Width = 42
        Height = 26
        Caption = 'Reset'
        TabOrder = 1
      end
      object ChReset: TListBox
        Left = 43
        Top = 63
        Width = 78
        Height = 26
        Cursor = crHandPoint
        Color = clCream
        ItemHeight = 13
        Items.Strings = (
          'Position'
          'Rotation')
        TabOrder = 2
      end
      object FvEnter: TSpinEdit
        Left = 208
        Top = 65
        Width = 49
        Height = 22
        Color = clCream
        Constraints.MaxHeight = 22
        Constraints.MinHeight = 22
        MaxLength = 3
        MaxValue = 179
        MinValue = 1
        TabOrder = 3
        Value = 90
        OnChange = InComingInfo
      end
    end
    object bodyes: TScrollBox
      Left = 5
      Top = 262
      Width = 280
      Height = 285
      HorzScrollBar.Size = 4
      HorzScrollBar.Style = ssHotTrack
      HorzScrollBar.Visible = False
      VertScrollBar.ButtonSize = 20
      VertScrollBar.Color = clActiveBorder
      VertScrollBar.Increment = 4
      VertScrollBar.ParentColor = False
      VertScrollBar.Position = 22
      VertScrollBar.Style = ssFlat
      VertScrollBar.Tracking = True
      Align = alClient
      BevelInner = bvNone
      BevelOuter = bvNone
      Constraints.MinHeight = 25
      TabOrder = 2
      object ChObject: TTabControl
        Left = 0
        Top = -22
        Width = 259
        Height = 318
        Align = alTop
        HotTrack = True
        Style = tsButtons
        TabOrder = 0
        Tabs.Strings = (
          'Paralelepiped'
          'Pruzma, Piramida'
          'Ballet'
          'Square'
          'Tor')
        TabIndex = 0
        OnChange = ObjectChenge
        object Panel11: TPanel
          Left = 172
          Top = 27
          Width = 83
          Height = 287
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvNone
          BiDiMode = bdLeftToRight
          Color = clCream
          Constraints.MinWidth = 80
          ParentBiDiMode = False
          TabOrder = 0
          object woa: TLabel
            Left = 0
            Top = 0
            Width = 83
            Height = 17
            Align = alTop
            Caption = 'OX=500'
            Constraints.MinHeight = 17
          end
          object wob: TLabel
            Left = 0
            Top = 17
            Width = 83
            Height = 17
            Align = alTop
            Caption = 'OY=500'
            Constraints.MinHeight = 17
          end
          object woc: TLabel
            Left = 0
            Top = 34
            Width = 83
            Height = 17
            Align = alTop
            Caption = 'OZ=500'
            Constraints.MinHeight = 17
          end
          object wod: TLabel
            Left = 0
            Top = 51
            Width = 83
            Height = 17
            Align = alTop
            Caption = 'radius ox=1000 mm'
            Constraints.MinHeight = 17
            Enabled = False
          end
          object woe: TLabel
            Left = 0
            Top = 68
            Width = 83
            Height = 17
            Align = alTop
            Caption = 'woe'
            Constraints.MinHeight = 17
            Enabled = False
          end
          object wog: TLabel
            Left = 0
            Top = 85
            Width = 83
            Height = 17
            Align = alTop
            Caption = 'wog'
            Constraints.MinHeight = 17
            Enabled = False
          end
          object woh: TLabel
            Left = 0
            Top = 102
            Width = 83
            Height = 17
            Align = alTop
            Caption = 'woh'
            Constraints.MinHeight = 17
            Enabled = False
          end
          object wox: TLabel
            Left = 0
            Top = 119
            Width = 70
            Height = 30
            Align = alTop
            Caption = 'wox'
            Constraints.MaxWidth = 70
            Constraints.MinHeight = 30
            Enabled = False
          end
          object woy: TLabel
            Left = 0
            Top = 149
            Width = 83
            Height = 30
            Align = alTop
            Caption = 'woy'
            Constraints.MinHeight = 30
            Enabled = False
          end
        end
        object Panel12: TPanel
          Left = 4
          Top = 27
          Width = 168
          Height = 287
          Align = alClient
          TabOrder = 1
          object oa: TScrollBar
            Left = 1
            Top = 1
            Width = 166
            Height = 17
            Align = alTop
            Max = 5000
            PageSize = 0
            Position = 500
            TabOrder = 0
            OnChange = InComingInfo
          end
          object ob: TScrollBar
            Left = 1
            Top = 18
            Width = 166
            Height = 17
            Align = alTop
            Max = 5000
            PageSize = 0
            Position = 500
            TabOrder = 1
            OnChange = InComingInfo
          end
          object oc: TScrollBar
            Left = 1
            Top = 35
            Width = 166
            Height = 17
            Align = alTop
            Max = 5000
            PageSize = 0
            Position = 500
            TabOrder = 2
            OnChange = InComingInfo
          end
          object od: TScrollBar
            Left = 1
            Top = 52
            Width = 166
            Height = 17
            Align = alTop
            Max = 5000
            PageSize = 0
            Position = 10
            TabOrder = 3
            OnChange = InComingInfo
          end
          object oe: TScrollBar
            Left = 1
            Top = 69
            Width = 166
            Height = 17
            Align = alTop
            Max = 5000
            PageSize = 0
            Position = 10
            TabOrder = 4
            OnChange = InComingInfo
          end
          object og: TScrollBar
            Left = 1
            Top = 86
            Width = 166
            Height = 17
            Align = alTop
            Max = 5000
            PageSize = 0
            Position = 10
            TabOrder = 5
            OnChange = InComingInfo
          end
          object oh: TScrollBar
            Left = 1
            Top = 103
            Width = 166
            Height = 17
            Align = alTop
            Max = 5000
            PageSize = 0
            Position = 10
            TabOrder = 6
            OnChange = InComingInfo
          end
          object ox: TTrackBar
            Left = 1
            Top = 120
            Width = 166
            Height = 31
            Align = alTop
            Enabled = False
            Max = 30
            Min = 2
            Position = 3
            TabOrder = 7
            OnChange = InComingInfo
          end
          object oy: TTrackBar
            Left = 1
            Top = 151
            Width = 166
            Height = 30
            Align = alTop
            Enabled = False
            Max = 30
            Min = 2
            Position = 3
            TabOrder = 8
            OnChange = InComingInfo
          end
          object Panel13: TPanel
            Left = 1
            Top = 181
            Width = 166
            Height = 133
            Align = alTop
            AutoSize = True
            BevelOuter = bvNone
            Color = clScrollBar
            Constraints.MinHeight = 133
            TabOrder = 9
            object Shape2: TShape
              Left = 117
              Top = 0
              Width = 49
              Height = 17
              Align = alRight
              Brush.Color = clPurple
              Constraints.MaxHeight = 17
              Pen.Width = 3
              Shape = stRoundRect
              OnContextPopup = Shape2ContextPopup
            end
            object Label17: TLabel
              Left = 84
              Top = 0
              Width = 33
              Height = 133
              Align = alRight
              Caption = 'Color   '
            end
            object op: TLabeledEdit
              Left = 8
              Top = 17
              Width = 33
              Height = 21
              Color = clCream
              EditLabel.Width = 19
              EditLabel.Height = 13
              EditLabel.Caption = 'Pen'
              MaxLength = 2
              TabOrder = 0
              OnChange = InComingInfo
            end
            object CheckBox1: TCheckBox
              Left = 8
              Top = 88
              Width = 49
              Height = 17
              Caption = '---1---'
              Color = clCream
              ParentColor = False
              TabOrder = 1
              OnClick = ObjectChenge
            end
            object CheckBox2: TCheckBox
              Left = 56
              Top = 88
              Width = 49
              Height = 17
              Caption = '---2---'
              Color = clCream
              ParentColor = False
              TabOrder = 2
              OnClick = ObjectChenge
            end
            object CheckBox3: TCheckBox
              Left = 104
              Top = 88
              Width = 63
              Height = 17
              Caption = '---3---'
              Color = clCream
              ParentColor = False
              TabOrder = 3
              OnClick = ObjectChenge
            end
            object ComboBox3: TComboBox
              Left = 8
              Top = 40
              Width = 121
              Height = 21
              Cursor = crHandPoint
              Color = clCream
              ItemHeight = 13
              TabOrder = 4
              Text = 'Style'
              OnChange = InComingInfo
              Items.Strings = (
                'Solid'
                'Dash'
                'Dot'
                'Dash-Dot'
                'Dash-Dot-Dot'
                'Clear'
                'Inside Frame')
            end
            object ComboBox4: TComboBox
              Left = 8
              Top = 61
              Width = 121
              Height = 21
              Cursor = crHandPoint
              Color = clCream
              DropDownCount = 16
              ItemHeight = 13
              ItemIndex = 9
              TabOrder = 5
              Text = 'Not Xor'
              OnChange = InComingInfo
              Items.Strings = (
                'Black'
                'Mask'
                'Mask Not Pen'
                'Nop'
                'Mask Pen Not'
                'Copy'
                'Xor'
                'Merge'
                'Not Merge'
                'Not Xor'
                'Not Copy'
                'Merge Not Pen'
                'Not'
                'Merge Pen Not'
                'Not Mask'
                'White')
            end
          end
        end
      end
    end
  end
  object Atributesandmultimedia: TPanel
    Left = 0
    Top = 642
    Width = 802
    Height = 71
    Align = alBottom
    BevelOuter = bvNone
    Caption = 'Atributesandmultimedia'
    TabOrder = 1
    object Splitter7: TSplitter
      Left = 260
      Top = 0
      Width = 4
      Height = 45
      Color = clBtnShadow
      ParentColor = False
      ResizeStyle = rsLine
    end
    object Rotation: TGroupBox
      Left = 0
      Top = 0
      Width = 260
      Height = 45
      Align = alLeft
      Caption = 'Rotation'
      Color = clMoneyGreen
      Constraints.MinWidth = 260
      ParentColor = False
      TabOrder = 0
      object RX: TScrollBar
        Left = 2
        Top = 15
        Width = 256
        Height = 10
        Hint = 'OX'
        Align = alTop
        Constraints.MaxHeight = 10
        Max = 10800
        Min = -10800
        PageSize = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnScroll = InComingAtributesinfo
      end
      object RY: TScrollBar
        Left = 2
        Top = 25
        Width = 256
        Height = 10
        Hint = 'OY'
        Align = alTop
        Constraints.MaxHeight = 10
        Max = 10800
        Min = -10800
        PageSize = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnScroll = InComingAtributesinfo
      end
      object RZ: TScrollBar
        Left = 2
        Top = 35
        Width = 256
        Height = 10
        Hint = 'OZ'
        Align = alTop
        Constraints.MaxHeight = 10
        Max = 10800
        Min = -10800
        PageSize = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnScroll = InComingAtributesinfo
      end
    end
    object Position: TGroupBox
      Left = 264
      Top = 0
      Width = 538
      Height = 45
      Align = alClient
      Caption = 'Position'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 1
      object PX: TScrollBar
        Left = 2
        Top = 15
        Width = 534
        Height = 10
        Hint = 'OX'
        Align = alTop
        Constraints.MaxHeight = 10
        Max = 10000
        Min = -10000
        PageSize = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnScroll = InComingAtributesinfo
      end
      object PY: TScrollBar
        Left = 2
        Top = 25
        Width = 534
        Height = 10
        Hint = 'OY'
        Align = alTop
        Constraints.MaxHeight = 10
        Max = 10000
        Min = -10000
        PageSize = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnScroll = InComingAtributesinfo
      end
      object PZ: TScrollBar
        Left = 2
        Top = 35
        Width = 534
        Height = 10
        Hint = 'OZ'
        Align = alTop
        Constraints.MaxHeight = 10
        Max = 10000
        Min = -10000
        PageSize = 0
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnScroll = InComingAtributesinfo
      end
    end
    object Panel10: TPanel
      Left = 0
      Top = 45
      Width = 802
      Height = 26
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object Shape3: TShape
        Left = 71
        Top = 0
        Width = 540
        Height = 26
        Align = alClient
        Brush.Color = clScrollBar
        Brush.Style = bsVertical
        Pen.Color = clInfoText
        Pen.Style = psInsideFrame
        Pen.Width = 2
      end
      object Panel14: TPanel
        Left = 611
        Top = 0
        Width = 191
        Height = 26
        Align = alRight
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 0
        object Label18: TLabel
          Left = 113
          Top = 7
          Width = 23
          Height = 13
          Caption = 'Time'
        end
        object UpDown1: TUpDown
          Left = 0
          Top = 1
          Width = 33
          Height = 24
          Orientation = udHorizontal
          TabOrder = 0
        end
        object Button2: TButton
          Left = 34
          Top = 2
          Width = 31
          Height = 23
          Caption = 'Add'
          TabOrder = 1
        end
        object Button3: TButton
          Left = 64
          Top = 2
          Width = 41
          Height = 23
          Caption = 'Delete'
          TabOrder = 2
        end
        object Edit1: TEdit
          Left = 139
          Top = 4
          Width = 52
          Height = 21
          BevelInner = bvLowered
          BevelKind = bkSoft
          BevelOuter = bvSpace
          BorderStyle = bsNone
          TabOrder = 3
          Text = '123'
        end
      end
      object Panel15: TPanel
        Left = 0
        Top = 0
        Width = 71
        Height = 26
        Align = alLeft
        AutoSize = True
        BevelOuter = bvNone
        TabOrder = 1
        object SpeedButton4: TSpeedButton
          Left = 48
          Top = 3
          Width = 23
          Height = 22
          AllowAllUp = True
          GroupIndex = 1
          Glyph.Data = {
            CA020000424DCA0200000000000036000000280000000E0000000F0000000100
            1800000000009402000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000FFFFFF0000800000800000800000800000800000800000800000
            80000080000080000080000080FFFFFF0000FFFFFF0000800000800000800000
            80000080000080000080000080000080000080000080000080FFFFFF0000FFFF
            FF00008000008000008000008000008000008000008000008000008000008000
            0080000080FFFFFF0000FFFFFF00008000008000008000008000008000008000
            0080000080000080000080000080000080FFFFFF0000FFFFFF00008000008000
            0080000080000080000080000080000080000080000080000080000080FFFFFF
            0000FFFFFF000080000080000080000080000080000080000080000080000080
            000080000080000080FFFFFF0000FFFFFF000080000080000080000080000080
            000080000080000080000080000080000080000080FFFFFF0000FFFFFF000080
            0000800000800000800000800000800000800000800000800000800000800000
            80FFFFFF0000FFFFFF0000800000800000800000800000800000800000800000
            80000080000080000080000080FFFFFF0000FFFFFF0000800000800000800000
            80000080000080000080000080000080000080000080000080FFFFFF0000FFFF
            FF00008000008000008000008000008000008000008000008000008000008000
            0080000080FFFFFF0000FFFFFF00008000008000008000008000008000008000
            0080000080000080000080000080000080FFFFFF0000FFFFFF00008000008000
            0080000080000080000080000080000080000080000080000080000080FFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFF0000}
        end
        object PLAY: TSpeedButton
          Left = 0
          Top = 3
          Width = 23
          Height = 22
          AllowAllUp = True
          GroupIndex = 1
          Glyph.Data = {
            F6030000424DF603000000000000360000002800000010000000140000000100
            180000000000C003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000
            008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF008000008000008000008000008000000000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000
            008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF00800000800000800000800000800000800000800000
            8000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000
            008000008000008000008000008000008000008000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF00800000800000800000800000800000800000800000
            8000008000008000008000000000FFFFFFFFFFFFFFFFFFFFFFFF008000008000
            0080000080000080000080000080000080000080000080000080000080000080
            00FFFFFFFFFFFFFFFFFF00800000800000800000800000800000800000800000
            8000008000008000008000008000008000008000000000FFFFFF008000008000
            0080000080000080000080000080000080000080000080000080000080000080
            0000800000800000000000800000800000800000800000800000800000800000
            8000008000008000008000008000008000FFFFFFFFFFFFFFFFFF008000008000
            008000008000008000008000008000008000008000008000008000008000FFFF
            FFFFFFFFFFFFFFFFFFFF00800000800000800000800000800000800000800000
            8000008000008000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000
            008000008000008000008000008000008000008000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF00800000800000800000800000800000800000800000
            8000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000
            008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF008000008000008000008000008000000000FFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008000008000
            008000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        end
        object PAUSE: TSpeedButton
          Left = 24
          Top = 3
          Width = 23
          Height = 22
          AllowAllUp = True
          GroupIndex = 1
          Glyph.Data = {
            A6030000424DA60300000000000036000000280000000E000000140000000100
            1800000000007003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF0000008000008000008000008000008000FFFFFFFFFFFFFFFFFFFFFF
            FF00800000800000800000800000800000000080000080000080000080000080
            00FFFFFFFFFFFFFFFFFFFFFFFF00800000800000800000800000800000000080
            00008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF00800000800000
            80000080000080000000008000008000008000008000008000FFFFFFFFFFFFFF
            FFFFFFFFFF008000008000008000008000008000000000800000800000800000
            8000008000FFFFFFFFFFFFFFFFFFFFFFFF008000008000008000008000008000
            0000008000008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF008000
            0080000080000080000080000000008000008000008000008000008000FFFFFF
            FFFFFFFFFFFFFFFFFF0080000080000080000080000080000000008000008000
            008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF0080000080000080000080
            000080000000008000008000008000008000008000FFFFFFFFFFFFFFFFFFFFFF
            FF00800000800000800000800000800000000080000080000080000080000080
            00FFFFFFFFFFFFFFFFFFFFFFFF00800000800000800000800000800000000080
            00008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF00800000800000
            80000080000080000000008000008000008000008000008000FFFFFFFFFFFFFF
            FFFFFFFFFF008000008000008000008000008000000000800000800000800000
            8000008000FFFFFFFFFFFFFFFFFFFFFFFF008000008000008000008000008000
            0000008000008000008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF008000
            0080000080000080000080000000008000008000008000008000008000FFFFFF
            FFFFFFFFFFFFFFFFFF0080000080000080000080000080000000008000008000
            008000008000008000FFFFFFFFFFFFFFFFFFFFFFFF0080000080000080000080
            000080000000008000008000008000008000008000FFFFFFFFFFFFFFFFFFFFFF
            FF00800000800000800000800000800000000080000080000080000080000080
            00FFFFFFFFFFFFFFFFFFFFFFFF0080000080000080000080000080000000FFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000}
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 297
    Top = 0
    Width = 505
    Height = 642
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 2
    object Splitter3: TSplitter
      Left = 953
      Top = 0
      Height = 642
      OnMoved = Splitter1Moved
    end
    object Panel2: TPanel
      Left = 0
      Top = 0
      Width = 953
      Height = 642
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Panel2'
      TabOrder = 0
      object NORMAl: TImage
        Left = 0
        Top = 0
        Width = 953
        Height = 641
        Cursor = crCross
        Align = alTop
        Constraints.MinWidth = 1
        IncrementalDisplay = True
        PopupMenu = PopupMenu1
        OnDblClick = NORMAlDblClick
      end
      object ZX: TImage
        Left = 0
        Top = 644
        Width = 953
        Height = 5
        Align = alClient
        IncrementalDisplay = True
        Transparent = True
      end
      object Splitter4: TSplitter
        Left = 0
        Top = 641
        Width = 953
        Height = 3
        Cursor = crVSplit
        Align = alTop
        OnMoved = Splitter1Moved
      end
    end
    object Panel3: TPanel
      Left = 956
      Top = 0
      Width = 27
      Height = 642
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel3'
      TabOrder = 1
      object XY: TImage
        Left = 0
        Top = 0
        Width = 27
        Height = 320
        Align = alTop
        IncrementalDisplay = True
        Transparent = True
      end
      object YZ: TImage
        Left = 0
        Top = 323
        Width = 27
        Height = 319
        Align = alClient
        IncrementalDisplay = True
        Transparent = True
      end
      object Splitter5: TSplitter
        Left = 0
        Top = 320
        Width = 27
        Height = 3
        Cursor = crVSplit
        Align = alTop
        OnMoved = Splitter1Moved
      end
    end
  end
  object ColorDialog1: TColorDialog
    Color = clInfoText
    Options = [cdFullOpen, cdPreventFullOpen, cdShowHelp, cdSolidColor, cdAnyColor]
    Left = 575
    Top = 1
  end
  object PopupMenu1: TPopupMenu
    MenuAnimation = [maLeftToRight, maRightToLeft, maTopToBottom, maBottomToTop]
    Left = 635
    Top = 1
    object BGColor2: TMenuItem
      Caption = 'BGColor'
      OnClick = BGColor2Click
    end
  end
end
