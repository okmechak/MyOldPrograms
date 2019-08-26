object Geometry: TGeometry
  Left = 213
  Top = 118
  Width = 767
  Height = 538
  HorzScrollBar.Visible = False
  VertScrollBar.Visible = False
  AlphaBlendValue = 150
  BorderIcons = [biSystemMenu, biMinimize, biMaximize, biHelp]
  Caption = '4D Geometria'
  Color = 7548250
  TransparentColorValue = clSkyBlue
  Constraints.MinHeight = 374
  Constraints.MinWidth = 663
  DefaultMonitor = dmDesktop
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    000000008000008000000080800080000000800080008080000080808000C0C0
    C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000000E
    EEEEEE000000EEEEEEEEEE00000000000E000000000000EEEEEE000000000000
    00E00000000000EEEEE000000000000000EE000000000EEEEEE0000000000000
    000E000000000EEEEE00000000000000000EE00000000EEEEE00000000000000
    0000E0000000EEEEE0000000000000000000E0000000EEEEE000000000000000
    00000E00000EEEEE000000000000000000000E00000EEEEE0000000000000000
    000000E000EEEEEE0000000000000000000000E000EEEEE00000000000000000
    000000E00EEEEEE000000000000000000000000E0EEEEE000000000000000000
    0000000E0EEEEE00000000000000000000000000EEEEE0000000000000000000
    00000000EEEEE0000000000000000000000000000EEEE0000000000000000000
    000000000EEE00000000000000000000000000000EEE00000000000000000000
    0000000000E00000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000FFFF
    FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE03F003FFBFFC0FFFDFF
    C1FFFCFF81FFFEFF83FFFE7F83FFFF7F07FFFF7F07FFFFBE0FFFFFBE0FFFFFDC
    0FFFFFDC1FFFFFD81FFFFFE83FFFFFE83FFFFFF07FFFFFF07FFFFFF87FFFFFF8
    FFFFFFF8FFFFFFFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter3: TSplitter
    Left = 0
    Top = 343
    Width = 759
    Height = 5
    Cursor = crVSplit
    Align = alBottom
    Color = clBtnShadow
    ParentColor = False
    ResizeStyle = rsLine
  end
  object Main: TPanel
    Left = 0
    Top = 348
    Width = 759
    Height = 144
    Align = alBottom
    BevelOuter = bvNone
    Color = 7548250
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Splitter2: TSplitter
      Left = 120
      Top = 0
      Width = 5
      Height = 144
      Color = clBtnShadow
      ParentColor = False
    end
    object ObjectsTree: TTreeView
      Left = 0
      Top = 0
      Width = 120
      Height = 144
      Align = alLeft
      AutoExpand = True
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = bsNone
      Color = 10471144
      Constraints.MaxWidth = 140
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      HideSelection = False
      Indent = 15
      ParentFont = False
      ReadOnly = True
      ShowRoot = False
      TabOrder = 0
      OnChange = ObjectsTreeChange
      Items.Data = {
        01000000210000000100000000000000FFFFFFFFFFFFFFFF0000000003000000
        0847656F6D65747279210000000200000000000000FFFFFFFFFFFFFFFF000000
        000400000008446973706C617973220000000300000000000000FFFFFFFFFFFF
        FFFF00000000000000000943616D65726158595A200000000400000000000000
        FFFFFFFFFFFFFFFF000000000000000007526164617258592000000005000000
        00000000FFFFFFFFFFFFFFFF0000000000000000075261646172595A20000000
        0600000000000000FFFFFFFFFFFFFFFF00000000000000000752616461725A58
        270000000700000000000000FFFFFFFFFFFFFFFF00000000030000000E476C6F
        62616C204F626A65637473280000000800000000000000FFFFFFFFFFFFFFFF00
        000000000000000F5065726572697A2853717561726529210000000900000000
        000000FFFFFFFFFFFFFFFF00000000020000000850726F656B6369611F000000
        0A00000000000000FFFFFFFFFFFFFFFF0000000000000000065371756172651D
        0000000B00000000000000FFFFFFFFFFFFFFFF00000000020000000454797065
        1D0000000C00000000000000FFFFFFFFFFFFFFFF0000000000000000044C696E
        651E0000000D00000000000000FFFFFFFFFFFFFFFF000000000000000005506F
        696E74210000000E00000000000000FFFFFFFFFFFFFFFF000000000300000008
        53756D65747269611F0000000F00000000000000FFFFFFFFFFFFFFFF00000000
        00000000065371756172651D0000001000000000000000FFFFFFFFFFFFFFFF00
        00000000000000044C696E651E0000001100000000000000FFFFFFFFFFFFFFFF
        000000000000000005506F696E74200000001200000000000000FFFFFFFFFFFF
        FFFF0000000000000000074F626A65637473}
    end
    object ww: TPanel
      Left = 125
      Top = 0
      Width = 634
      Height = 144
      Align = alClient
      AutoSize = True
      BevelOuter = bvNone
      Color = 7548250
      TabOrder = 1
      object Atributes: TPanel
        Left = 124
        Top = 0
        Width = 510
        Height = 116
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Atributes'
        Color = 7548250
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 273
          Top = 0
          Width = 5
          Height = 73
          Color = 7548250
          ParentColor = False
          ResizeStyle = rsLine
        end
        object wn: TPanel
          Left = 0
          Top = 73
          Width = 510
          Height = 43
          Align = alBottom
          BevelOuter = bvNone
          Color = clSkyBlue
          TabOrder = 2
          object cv: TPanel
            Left = 0
            Top = 0
            Width = 41
            Height = 43
            Align = alLeft
            BevelOuter = bvNone
            Color = 7548250
            TabOrder = 0
            object Shape1: TShape
              Left = 0
              Top = 0
              Width = 41
              Height = 25
              Align = alTop
            end
            object Color1: TButton
              Left = 0
              Top = 25
              Width = 41
              Height = 14
              Caption = 'Color'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clNavy
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
            end
          end
          object gb: TPanel
            Left = 41
            Top = 0
            Width = 129
            Height = 43
            Align = alLeft
            AutoSize = True
            BevelOuter = bvNone
            Color = 7548250
            TabOrder = 1
            object BrushS: TComboBox
              Left = 0
              Top = 0
              Width = 129
              Height = 21
              Color = 487949
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clLime
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ItemHeight = 13
              ParentFont = False
              TabOrder = 0
              Text = 'Brush Style'
              Items.Strings = (
                'Black'
                'White'
                'Nop'
                'Negative Screen'
                'Pen'
                'Negative Pen'
                'Pen or not Screen '
                'Not Pen or Screen'
                'Not Pen and Screen'
                'Not(Pen or Screen)'
                'Pen and Screen '
                'Not(Pen and Screen)'
                'Pen xor Screen'
                'Not(Pen xor Screen)')
            end
            object PenS: TComboBox
              Left = 0
              Top = 20
              Width = 129
              Height = 21
              Color = 487949
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clLime
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ItemHeight = 13
              ParentFont = False
              TabOrder = 1
              Text = 'Pen Style'
              Items.Strings = (
                'Solid ________________'
                'Dash __ __ __ __ __ __ _'
                'Dot  _ _ _ _ _ _ _ _ _ _ _ '
                'DashDot  __ _ __ _ __ _ _'
                'DashDotDot __ _ _ __ _ _ '
                'Clear')
            end
          end
          object Panel1: TPanel
            Left = 170
            Top = 0
            Width = 169
            Height = 43
            Align = alLeft
            BevelOuter = bvNone
            Color = 7548250
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clSkyBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object Label1: TLabel
              Left = 0
              Top = 0
              Width = 60
              Height = 24
              Align = alLeft
              Caption = 'Pen Width'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clYellow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object Pen1: TTrackBar
              Left = 0
              Top = 24
              Width = 169
              Height = 19
              Align = alBottom
              Constraints.MaxHeight = 43
              Constraints.MinHeight = 19
              Max = 100
              Min = 1
              Position = 1
              TabOrder = 0
              ThumbLength = 14
              TickMarks = tmBoth
              TickStyle = tsNone
            end
          end
          object Panel2: TPanel
            Left = 339
            Top = 0
            Width = 171
            Height = 43
            Align = alClient
            BevelOuter = bvNone
            Color = 7548250
            TabOrder = 3
            object Label2: TLabel
              Left = 0
              Top = 0
              Width = 75
              Height = 24
              Align = alLeft
              Caption = '  Field View  '
              Color = 7548250
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clYellow
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object TrackBar1: TTrackBar
              Left = 0
              Top = 24
              Width = 171
              Height = 19
              Align = alBottom
              Max = 18000
              Min = 1
              Position = 1
              TabOrder = 0
              ThumbLength = 17
              TickMarks = tmBoth
              TickStyle = tsNone
            end
          end
        end
        object _Position: TGroupBox
          Left = 0
          Top = 0
          Width = 273
          Height = 73
          Align = alLeft
          Caption = 'Position'
          Color = 7548250
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
          object pz: TScrollBar
            Left = 2
            Top = 35
            Width = 269
            Height = 10
            Align = alTop
            Max = 10000
            Min = -10000
            PageSize = 0
            TabOrder = 0
            OnScroll = BeforeChScrlAtr
          end
          object py: TScrollBar
            Left = 2
            Top = 25
            Width = 269
            Height = 10
            Align = alTop
            Max = 10000
            Min = -10000
            PageSize = 0
            TabOrder = 1
            OnScroll = BeforeChScrlAtr
          end
          object px: TScrollBar
            Left = 2
            Top = 15
            Width = 269
            Height = 10
            Align = alTop
            Max = 10000
            Min = -10000
            PageSize = 0
            TabOrder = 2
            OnScroll = BeforeChScrlAtr
          end
          object Button5: TButton
            Left = 2
            Top = 46
            Width = 79
            Height = 17
            Caption = 'Reset Position'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object CheckBox1: TCheckBox
            Left = 83
            Top = 48
            Width = 89
            Height = 13
            Caption = 'Pivot Point'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
          end
        end
        object _Rotation: TGroupBox
          Left = 278
          Top = 0
          Width = 232
          Height = 73
          Align = alClient
          Caption = 'Rotation'
          Color = 7548250
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 1
          object rz: TScrollBar
            Left = 2
            Top = 35
            Width = 228
            Height = 10
            Align = alTop
            Max = 10800
            Min = -10800
            PageSize = 0
            TabOrder = 0
            OnScroll = BeforeChScrlAtr
          end
          object ry: TScrollBar
            Left = 2
            Top = 25
            Width = 228
            Height = 10
            Align = alTop
            Max = 10800
            Min = -10800
            PageSize = 0
            TabOrder = 1
            OnScroll = BeforeChScrlAtr
          end
          object rx: TScrollBar
            Left = 2
            Top = 15
            Width = 228
            Height = 10
            Align = alTop
            Max = 10800
            Min = -10800
            PageSize = 0
            TabOrder = 2
            OnScroll = BeforeChScrlAtr
          end
          object Button6: TButton
            Left = 2
            Top = 46
            Width = 79
            Height = 17
            Caption = 'Reset Rotation'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
        end
      end
      object objectswin: TCheckListBox
        Left = 0
        Top = 0
        Width = 124
        Height = 116
        Align = alLeft
        BevelInner = bvNone
        BevelOuter = bvNone
        BorderStyle = bsNone
        Color = 487949
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        HeaderColor = clHotLight
        HeaderBackgroundColor = clGradientActiveCaption
        ItemHeight = 13
        Items.Strings = (
          'Paralelepiped'
          'Square'
          'Pruzma'
          'Ballet'
          'Tor')
        ParentFont = False
        TabOrder = 1
      end
      object mulmed: TPanel
        Left = 0
        Top = 116
        Width = 634
        Height = 28
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 3
        Color = clTeal
        TabOrder = 2
        object Shape2: TShape
          Left = 97
          Top = 3
          Width = 413
          Height = 22
          Align = alClient
          Brush.Style = bsVertical
        end
        object Panel7: TPanel
          Left = 3
          Top = 3
          Width = 94
          Height = 22
          Align = alLeft
          BevelOuter = bvNone
          Color = clTeal
          TabOrder = 0
          object SpeedButton1: TSpeedButton
            Left = -1
            Top = -1
            Width = 29
            Height = 24
            GroupIndex = 1
            Caption = 'play'
          end
          object SpeedButton2: TSpeedButton
            Left = 29
            Top = 0
            Width = 33
            Height = 23
            GroupIndex = 1
            Caption = 'pause'
          end
          object SpeedButton3: TSpeedButton
            Left = 63
            Top = -1
            Width = 30
            Height = 23
            GroupIndex = 1
            Caption = 'stop'
          end
        end
        object Panel8: TPanel
          Left = 510
          Top = 3
          Width = 121
          Height = 22
          Align = alRight
          BevelOuter = bvNone
          Color = clTeal
          TabOrder = 1
          object SpinEdit1: TSpinEdit
            Left = 42
            Top = 0
            Width = 80
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 0
            Value = 0
          end
          object UpDown1: TUpDown
            Left = 2
            Top = 0
            Width = 39
            Height = 22
            Orientation = udHorizontal
            TabOrder = 1
          end
        end
      end
    end
  end
  object ToolsOptions: TPanel
    Left = 0
    Top = 201
    Width = 313
    Height = 142
    Align = alLeft
    AutoSize = True
    BevelOuter = bvNone
    Caption = 'Tools and Options'
    Constraints.MaxHeight = 145
    DragKind = dkDock
    Locked = True
    ParentColor = True
    TabOrder = 1
    object MainBook: TTabbedNotebook
      Left = 0
      Top = 0
      Width = 313
      Height = 145
      Align = alTop
      Constraints.MaxHeight = 145
      Constraints.MinHeight = 145
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clLime
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      TabFont.Charset = DEFAULT_CHARSET
      TabFont.Color = clMaroon
      TabFont.Height = -11
      TabFont.Name = 'MS Sans Serif'
      TabFont.Style = [fsBold]
      TabOrder = 0
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Main'
        object TabControl2: TTabControl
          Left = 0
          Top = 0
          Width = 305
          Height = 117
          Align = alClient
          Style = tsFlatButtons
          TabOrder = 0
          Tabs.Strings = (
            'Pereriz'
            'Proekcia'
            'Sumeteria')
          TabIndex = 0
          object ListBox1: TListBox
            Left = 4
            Top = 27
            Width = 297
            Height = 19
            Align = alTop
            Columns = 3
            ItemHeight = 13
            Items.Strings = (
              'Square'
              'Line'
              'Point')
            TabOrder = 0
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Objects parameters'
        object aa: TPanel
          Left = 198
          Top = 0
          Width = 107
          Height = 117
          Align = alRight
          Color = 10471144
          TabOrder = 0
          object WA: TLabel
            Left = 1
            Top = 1
            Width = 105
            Height = 13
            Align = alTop
            Caption = 'WA'
            Color = 10471144
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object WB: TLabel
            Left = 1
            Top = 14
            Width = 105
            Height = 13
            Align = alTop
            Caption = 'WB'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WC: TLabel
            Left = 1
            Top = 27
            Width = 105
            Height = 13
            Align = alTop
            Caption = 'WC'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WD: TLabel
            Left = 1
            Top = 40
            Width = 105
            Height = 13
            Align = alTop
            Caption = 'WD'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WE: TLabel
            Left = 1
            Top = 53
            Width = 105
            Height = 13
            Align = alTop
            Caption = 'WE'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WF: TLabel
            Left = 1
            Top = 66
            Width = 105
            Height = 13
            Align = alTop
            Caption = 'WF'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WX: TLabel
            Left = 1
            Top = 79
            Width = 105
            Height = 13
            Align = alTop
            Caption = 'WX'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object WY: TLabel
            Left = 1
            Top = 92
            Width = 105
            Height = 13
            Align = alTop
            Caption = 'WY'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clRed
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object ab: TPanel
          Left = 0
          Top = 0
          Width = 198
          Height = 117
          Align = alClient
          Color = 10239355
          TabOrder = 1
          object A: TScrollBar
            Left = 1
            Top = 1
            Width = 196
            Height = 13
            Align = alTop
            Max = 5000
            Min = -5000
            PageSize = 0
            TabOrder = 0
            OnScroll = BeforeChScrlAtr
          end
          object B: TScrollBar
            Left = 1
            Top = 14
            Width = 196
            Height = 13
            Align = alTop
            Max = 5000
            Min = -5000
            PageSize = 0
            TabOrder = 1
            OnScroll = BeforeChScrlAtr
          end
          object C: TScrollBar
            Left = 1
            Top = 27
            Width = 196
            Height = 13
            Align = alTop
            Max = 5000
            Min = -5000
            PageSize = 0
            TabOrder = 2
            OnScroll = BeforeChScrlAtr
          end
          object D: TScrollBar
            Left = 1
            Top = 40
            Width = 196
            Height = 13
            Align = alTop
            Max = 5000
            Min = -5000
            PageSize = 0
            TabOrder = 3
            OnScroll = BeforeChScrlAtr
          end
          object E: TScrollBar
            Left = 1
            Top = 53
            Width = 196
            Height = 13
            Align = alTop
            Max = 5000
            Min = -5000
            PageSize = 0
            TabOrder = 4
            OnScroll = BeforeChScrlAtr
          end
          object F: TScrollBar
            Left = 1
            Top = 66
            Width = 196
            Height = 13
            Align = alTop
            Max = 5000
            Min = -5000
            PageSize = 0
            TabOrder = 5
            OnScroll = BeforeChScrlAtr
          end
          object X: TTrackBar
            Left = 1
            Top = 79
            Width = 196
            Height = 15
            Align = alTop
            Max = 50
            Min = 2
            Position = 2
            TabOrder = 6
            ThumbLength = 11
            TickMarks = tmBoth
            TickStyle = tsNone
          end
          object Y: TTrackBar
            Left = 1
            Top = 94
            Width = 196
            Height = 14
            Align = alTop
            Max = 50
            Min = 2
            Position = 2
            TabOrder = 7
            ThumbLength = 11
            TickMarks = tmBoth
            TickStyle = tsNone
          end
        end
      end
      object TTabPage
        Left = 4
        Top = 24
        Caption = 'Options'
        object Shape3: TShape
          Left = 254
          Top = 39
          Width = 43
          Height = 13
        end
        object Shape4: TShape
          Left = 254
          Top = 54
          Width = 43
          Height = 13
        end
        object Label3: TLabel
          Left = 0
          Top = 88
          Width = 15
          Height = 13
          Caption = 'k='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 4
          Top = 102
          Width = 11
          Height = 13
          Caption = 'l='
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clYellow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Check1: TCheckBox
          Left = 0
          Top = 16
          Width = 166
          Height = 17
          Caption = 'Temnishaje   Max Lenght:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object Check2: TCheckBox
          Left = 0
          Top = 0
          Width = 297
          Height = 17
          Caption = 'Tonshaje'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object Check3: TCheckBox
          Left = 0
          Top = 36
          Width = 254
          Height = 17
          Caption = 'Osi obertannia i peremishchennia   Color:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
        end
        object Check4: TCheckBox
          Left = 0
          Top = 51
          Width = 252
          Height = 17
          Caption = 'Parametruchni liniji objektiv           Color:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object Check6: TCheckBox
          Left = 0
          Top = 68
          Width = 297
          Height = 17
          Caption = 'Real 3D (d^2=k*x^2+l*y^2+m*z^2) else (d=m*z)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnClick = Check6Click
        end
        object SpinEdit2: TSpinEdit
          Left = 167
          Top = 13
          Width = 130
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          MaxValue = 0
          MinValue = 0
          ParentFont = False
          TabOrder = 5
          Value = 0
        end
        object TrackBar2: TTrackBar
          Left = 48
          Top = 88
          Width = 257
          Height = 13
          TabOrder = 6
          ThumbLength = 11
          TickMarks = tmBoth
          TickStyle = tsNone
        end
        object TrackBar3: TTrackBar
          Left = 48
          Top = 102
          Width = 257
          Height = 13
          TabOrder = 7
          ThumbLength = 11
          TickMarks = tmBoth
          TickStyle = tsNone
        end
      end
    end
  end
  object Display: TPanel
    Left = 313
    Top = 201
    Width = 446
    Height = 142
    Align = alClient
    BevelOuter = bvNone
    Color = clScrollBar
    TabOrder = 2
    object Splitter5: TSplitter
      Left = 404
      Top = 0
      Width = 4
      Height = 142
      Align = alRight
      ResizeStyle = rsLine
    end
    object da: TPanel
      Left = 408
      Top = 0
      Width = 38
      Height = 142
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
      object Splitter7: TSplitter
        Left = 0
        Top = 125
        Width = 38
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        ResizeStyle = rsLine
      end
      object RADXY: TLabel
        Left = 0
        Top = 0
        Width = 38
        Height = 125
        Align = alClient
        Caption = 'xy'
        Color = 14737632
        ParentColor = False
      end
      object radxz: TLabel
        Left = 0
        Top = 129
        Width = 38
        Height = 13
        Align = alBottom
        Caption = 'xz'
        Color = 14737632
        ParentColor = False
      end
    end
    object db: TPanel
      Left = 0
      Top = 0
      Width = 404
      Height = 142
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object Splitter6: TSplitter
        Left = 0
        Top = 125
        Width = 404
        Height = 4
        Cursor = crVSplit
        Align = alBottom
        ResizeStyle = rsLine
      end
      object NormalXYZ: TLabel
        Left = 0
        Top = 0
        Width = 404
        Height = 125
        Align = alClient
        Caption = 'normal'
        Color = clGray
        ParentColor = False
      end
      object RADyz: TLabel
        Left = 0
        Top = 129
        Width = 404
        Height = 13
        Align = alBottom
        Caption = 'yz'
        Color = 14737632
        ParentColor = False
      end
    end
  end
  object Info: TPanel
    Left = 0
    Top = 0
    Width = 759
    Height = 201
    Align = alTop
    DragKind = dkDock
    TabOrder = 3
    object TabControl1: TTabControl
      Left = 1
      Top = 1
      Width = 757
      Height = 199
      Align = alClient
      MultiLine = True
      Style = tsFlatButtons
      TabOrder = 0
      Tabs.Strings = (
        'Main Atributes'
        'Objects Parameters'
        'Objects Info'
        'Body Matrix')
      TabIndex = 0
      OnChange = TabControl1Change
      object StringGrid1: TStringGrid
        Left = 4
        Top = 27
        Width = 749
        Height = 168
        Align = alClient
        Color = 10471144
        ColCount = 9
        DefaultColWidth = 75
        DefaultRowHeight = 18
        FixedColor = clTeal
        RowCount = 18
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing, goThumbTracking]
        TabOrder = 0
      end
    end
  end
  object ColorDialog: TColorDialog
    Left = 440
    Top = 72
  end
  object MainMenu1: TMainMenu
    Left = 509
    Top = 133
    object ShowToolsandOptions1: TMenuItem
      AutoCheck = True
      Caption = '&Show Tools and Options'
      Checked = True
      ShortCut = 16474
      OnClick = ShowToolsandOptions1Click
    end
    object ShovObjectsInforamation1: TMenuItem
      Caption = 'Shov Objects Inforamation'
      OnClick = ShovObjectsInforamation1Click
    end
    object Help1: TMenuItem
      Caption = 'Help'
    end
  end
end
