unit Unit1;
interface
uses  unit2, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, ComCtrls, ExtCtrls, StdCtrls, CheckLst, Spin, TabNotBk, Menus,Math, Buttons, Grids;
const
   mRadar=[4,5,6];
   mCamera=[3];
   mObjects=[8,10,12,13,15,16,17,18];
   mOther=[0,2,7,9,11,14,1];
type
  TGeometry = class(TForm)
    ObjectsTree: TTreeView;    ColorDialog: TColorDialog;    SpinEdit1: TSpinEdit;    UpDown1: TUpDown;    MainBook: TTabbedNotebook;    Main: TPanel;    Atributes: TPanel;    ww: TPanel;    wn: TPanel;    cv: TPanel;    mulmed: TPanel;    gb: TPanel;    Panel7: TPanel;    Panel8: TPanel;    ToolsOptions: TPanel;    aa: TPanel;    ab: TPanel;    Display: TPanel;    da: TPanel;    db: TPanel;    _Position: TGroupBox;    _Rotation: TGroupBox;    pz: TScrollBar;    py: TScrollBar;    px: TScrollBar;    rz: TScrollBar;    ry: TScrollBar;    rx: TScrollBar;    A: TScrollBar;    B: TScrollBar;    C: TScrollBar;    D: TScrollBar;    E: TScrollBar;    F: TScrollBar;    Splitter1: TSplitter;    Splitter2: TSplitter;    Splitter3: TSplitter;    Splitter5: TSplitter;    Splitter6: TSplitter;    Splitter7: TSplitter;    Shape1: TShape;    Shape2: TShape;
    Check1: TCheckBox;    Check2: TCheckBox;    Check3: TCheckBox;    Check4: TCheckBox;    Check6: TCheckBox;    Pen1: TTrackBar;    PenS: TComboBox;    BrushS: TComboBox;    Label2: TLabel;    Label1: TLabel;    WA: TLabel;    WB: TLabel;    WC: TLabel;    WD: TLabel;    WE: TLabel;    WF: TLabel;    WX: TLabel;    WY: TLabel;    X: TTrackBar;    Y: TTrackBar;    MainMenu1: TMainMenu;    ShowToolsandOptions1: TMenuItem;    objectswin: TCheckListBox;    SpeedButton1: TSpeedButton;    SpeedButton2: TSpeedButton;    SpeedButton3: TSpeedButton;    Panel1: TPanel;    Panel2: TPanel;    TrackBar1: TTrackBar;
    NormalXYZ: TLabel;    RADyz: TLabel;    RADXY: TLabel;    radxz: TLabel;    CheckBox1: TCheckBox;    Help1: TMenuItem;    Info: TPanel;    ShovObjectsInforamation1: TMenuItem;   Color1: TButton;    Button5: TButton;    Button6: TButton;    TabControl1: TTabControl;    StringGrid1: TStringGrid;    Shape3: TShape;    Shape4: TShape;    SpinEdit2: TSpinEdit;    TrackBar2: TTrackBar;    Label3: TLabel;    TrackBar3: TTrackBar;    Label4: TLabel;    TabControl2: TTabControl;   ListBox1: TListBox;
    procedure FormCreate(Sender: TObject);
    procedure OutInfo;
    procedure TabControl1Change(Sender: TObject);
    procedure Check6Click(Sender: TObject);
    procedure ShowToolsandOptions1Click(Sender: TObject);
    procedure ShovObjectsInforamation1Click(Sender: TObject);
    procedure ObjectsTreeChange(Sender: TObject; Node: TTreeNode);
    procedure ObjectsEnableds(S:boolean);
    procedure BeforeChScrlAtr(Sender: tObject;ScrollCode: TScrollCode;  var ScrollPos: Integer);
    procedure Atributeschengeobjects(body:TObjects);

  end;
var
  Camera:TCamera;
  RadarXY,RadarYZ,RadarZX:TDisplays;
  Geometry:TGeometry;
  paralelepiped:Tparalelepiped;
  Pruzma:TPruzma;
  tor:Ttor;
  ballet:TBallet;
  square,SusSquare:TSquare;
         SusLine:TLine;
         Suspoint:TPoint;
         SusPivoPoint:Tpivotpoint;
  n:0..25;
implementation
{$R *.dfm}
//Interface---------------------------------------------------------------------
procedure TGeometry.FormCreate(Sender: TObject);
   var a,b:trect;
   begin
    RadarXY:=TDisplays.Create;
    RadarYZ:=TDisplays.Create;
    RadarZX:=TDisplays.Create;
    Square:=TSquare.Create;
    Ballet:=TBallet.Create;
    Tor:=ttor.Create;
    Pruzma:=Tpruzma.Create;
    PARALELEpiped:=TParalelepiped.Create;
    Camera:=TCamera.Create;
    a.Left:=0;
    a.Top:=70;
    a.Right:=270;
    a.Bottom:=220;
    b.Left:=0;
    b.Top:=250;
    b.Right:=440;
    b.Bottom:=400;
    toolsoptions.ManualFloat(a);
    Info.ManualFloat(b);
    objectswin.ItemIndex:=3;
    outInfo;
   end;

procedure TGeometry.OutInfo;
   var i:0..20;
       z,x,y:string[15];
   begin
    if tabControl1.TabIndex=0 then
     begin
      stringgrid1.Cols[1].Text:='Position';
      stringgrid1.Cols[2].Text:='Pivot Point Position';
      stringgrid1.Cols[3].Text:='Rotation';
      Stringgrid1.Cols[4].Text:='Field View';
      Stringgrid1.Cols[5].Text:='Pen Width';
      Stringgrid1.Cols[6].Text:='    ';
      Stringgrid1.Cols[7].Text:='    ';
      Stringgrid1.Cols[8].Text:='Color';
      //Camera
      str(camera.px,x);       str(camera.py,y) ;      str(camera.pz,z);
      StringGrid1.Cells[1,2]:='X='+x+'; Y='+y+' Z='+z+';';
      str(camera.ppx,x);      str(camera.ppy,y);      str(camera.ppz,z);
      StringGrid1.Cells[2,2]:='X='+x+'; Y='+y+' Z='+z+';';
      str(camera.Rx,x);       str(camera.Ry,y);       str(camera.Rz,z);
      StringGrid1.Cells[3,2]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Camera.FV,x);
      Stringgrid1.Cells[4,2]:=x+'"';
      str(camera.Color,x);
      stringgrid1.Cells[8,2]:=x;
      //Radar XY
      str(radarXY.px,x);      str(radarXY.py,y);      str(radarXY.pz,z);
      StringGrid1.Cells[1,3]:='X='+x+'; Y='+y+' Z='+z+';';
      str(radarXY.FV,x);
      Stringgrid1.Cells[4,3]:=x+'"';
      str(radarXY.Color,x);
      stringgrid1.Cells[8,3]:=x;
      //Radar YZ
      str(radarYz.px,x);      str(radarYz.py,y);      str(radarYz.pz,z);
      StringGrid1.Cells[1,4]:='X='+x+'; Y='+y+' Z='+z+';';
      str(radarYz.FV,x);
      Stringgrid1.Cells[4,4]:=x+'"';
      str(radarYz.Color,x);
      stringgrid1.Cells[8,4]:=x;
      //Radar ZX
      str(radarZX.px,x);      str(radarZX.py,y);      str(radarZX.pz,z);
      StringGrid1.Cells[1,5]:='X='+x+'; Y='+y+' Z='+z+';';
      str(radarZX.FV,x);
      Stringgrid1.Cells[4,5]:=x+'"';
      str(radarZX.Color,x);
      stringgrid1.Cells[8,5]:=x;

      //  Global Objects--------NONE
      // Bodyes-------------------
      //Paralelepiped
      str(Paralelepiped.px,x);      str(Paralelepiped.py,y);      str(Paralelepiped.pz,z);
      StringGrid1.Cells[1,11]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Paralelepiped.ppx,x);      str(Paralelepiped.ppy,y);      str(Paralelepiped.ppz,z);
      StringGrid1.Cells[2,11]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Paralelepiped.rx,x);      str(Paralelepiped.ry,y);      str(Paralelepiped.rz,z);
      StringGrid1.Cells[3,11]:='X='+x+'; Y='+y+' Z='+z+';';
      Str(paralelepiped.width,x);
      STRINGGRID1.Cells[5,11]:=X;
      str(paralelepiped.Color,x);
      STRINGGRID1.Cells[8,11]:=X;
      //SQuare
      str(Square.px,x);      str(Square.py,y);      str(Square.pz,z);
      StringGrid1.Cells[1,12]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Square.ppx,x);      str(Square.ppy,y);      str(Square.ppz,z);
      StringGrid1.Cells[2,12]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Square.rx,x);      str(Square.ry,y);      str(Square.rz,z);
      StringGrid1.Cells[3,12]:='X='+x+'; Y='+y+' Z='+z+';';
      Str(Square.width,x);
      STRINGGRID1.Cells[5,12]:=X;
      str(Square.Color,x);
      STRINGGRID1.Cells[8,12]:=X;
      //Pruzma
      str(Pruzma.px,x);      str(Pruzma.py,y);      str(Pruzma.pz,z);
      StringGrid1.Cells[1,13]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Pruzma.ppx,x);      str(Pruzma.ppy,y);      str(Pruzma.ppz,z);
      StringGrid1.Cells[2,13]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Pruzma.rx,x);      str(Pruzma.ry,y);      str(Pruzma.rz,z);
      StringGrid1.Cells[3,13]:='X='+x+'; Y='+y+' Z='+z+';';
      Str(Pruzma.width,x);
      STRINGGRID1.Cells[5,13]:=X;
      str(Pruzma.Color,x);
      STRINGGRID1.Cells[8,13]:=X;
      //Ballet
      str(Ballet.px,x);      str(Ballet.py,y);      str(Ballet.pz,z);
      StringGrid1.Cells[1,14]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Ballet.ppx,x);      str(Ballet.ppy,y);      str(Ballet.ppz,z);
      StringGrid1.Cells[2,14]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Ballet.rx,x);      str(Ballet.ry,y);      str(Ballet.rz,z);
      StringGrid1.Cells[3,14]:='X='+x+'; Y='+y+' Z='+z+';';
      Str(Ballet.width,x);
      STRINGGRID1.Cells[5,14]:=X;
      str(Ballet.Color,x);
      STRINGGRID1.Cells[8,14]:=X;
      //Tor
      str(Tor.px,x);      str(Tor.py,y);      str(Tor.pz,z);
      StringGrid1.Cells[1,15]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Tor.ppx,x);      str(Tor.ppy,y);      str(Tor.ppz,z);
      StringGrid1.Cells[2,15]:='X='+x+'; Y='+y+' Z='+z+';';
      str(Tor.rx,x);      str(Tor.ry,y);      str(Tor.rz,z);
      StringGrid1.Cells[3,15]:='X='+x+'; Y='+y+' Z='+z+';';
      Str(Tor.width,x);
      STRINGGRID1.Cells[5,15]:=X;
      str(Tor.Color,x);
      STRINGGRID1.Cells[8,15]:=X;
     end;
    if Tabcontrol1.TabIndex=1 then
     begin
      stringgrid1.Cols[1].Text:='A';
      stringgrid1.Cols[2].Text:='B';
      stringgrid1.Cols[3].Text:='C';
      Stringgrid1.Cols[4].Text:='D';
      Stringgrid1.Cols[5].Text:='E';
      Stringgrid1.Cols[6].Text:='F';
      Stringgrid1.Cols[7].Text:='res., X';
      Stringgrid1.Cols[8].Text:='res., Y';
      //Bodyes
      //Paralelepiped
      str(Paralelepiped.a,x);
      StringGrid1.Cells[1,11]:=x;
      str(Paralelepiped.b,x);
      StringGrid1.Cells[2,11]:=x;
      str(Paralelepiped.c,x);
      StringGrid1.Cells[3,11]:=x;
      str(Paralelepiped.d,x);
      StringGrid1.Cells[4,11]:=x;
      str(Paralelepiped.e,x);
      StringGrid1.Cells[5,11]:=x;
      str(Paralelepiped.f,x);
      StringGrid1.Cells[6,11]:=x;
      //Square
      str(Square.a,x);
      StringGrid1.Cells[1,12]:=x;
      str(Square.b,x);
      StringGrid1.Cells[2,12]:=x;
      str(Square.c,x);
      StringGrid1.Cells[3,12]:=x;
      str(Square.d,x);
      StringGrid1.Cells[4,12]:=x;
      str(Square.e,x);
      StringGrid1.Cells[5,12]:=x;
      str(Square.f,x);
      StringGrid1.Cells[6,12]:=x;
      str(Square.x,x);
      StringGrid1.Cells[7,12]:=x;
      str(Square.y,x);
      StringGrid1.Cells[8,12]:=x;
      //Pruzma
      str(Pruzma.a,x);
      StringGrid1.Cells[1,13]:=x;
      str(Pruzma.b,x);
      StringGrid1.Cells[2,13]:=x;
      str(Pruzma.c,x);
      StringGrid1.Cells[3,13]:=x;
      str(Pruzma.d,x);
      StringGrid1.Cells[4,13]:=x;
      str(Pruzma.e,x);
      StringGrid1.Cells[5,13]:=x;
      str(Pruzma.f,x);
      StringGrid1.Cells[6,13]:=x;
      str(Pruzma.x,x);
      StringGrid1.Cells[7,13]:=x;
      str(Pruzma.y,x);
      StringGrid1.Cells[8,13]:=x;
      //Ballet
      str(Ballet.a,x);
      StringGrid1.Cells[1,14]:=x;
      str(Ballet.b,x);
      StringGrid1.Cells[2,14]:=x;
      str(Ballet.c,x);
      StringGrid1.Cells[3,14]:=x;
      str(Ballet.d,x);
      StringGrid1.Cells[4,14]:=x;
      str(Ballet.e,x);
      StringGrid1.Cells[5,14]:=x;
      str(Ballet.f,x);
      StringGrid1.Cells[6,14]:=x;
      str(Ballet.x,x);
      StringGrid1.Cells[7,14]:=x;
      str(Ballet.y,x);
      StringGrid1.Cells[8,14]:=x;
      //Tor
      str(Tor.a,x);
      StringGrid1.Cells[1,15]:=x;
      str(Tor.b,x);
      StringGrid1.Cells[2,15]:=x;
      str(Tor.c,x);
      StringGrid1.Cells[3,15]:=x;
      str(Tor.d,x);
      StringGrid1.Cells[4,15]:=x;
      str(Tor.e,x);
      StringGrid1.Cells[5,15]:=x;
      str(Tor.f,x);
      StringGrid1.Cells[6,15]:=x;
      str(Tor.x,x);
      StringGrid1.Cells[7,15]:=x;
      str(Tor.y,x);
      StringGrid1.Cells[8,15]:=x;
     end;
    if TabControl1.TabIndex=2 then
     begin
     StringGrid1.Cols[1].Text:='S(poverhneva)';
     StringGrid1.Cols[2].Text:='S(povna)';
     StringGrid1.Cols[3].Text:='V(objem)';
     for i:=4 to stringgrid1.ColCount do stringgrid1.Cols[i].Text:=' ';
     end;
    if TabControl1.TabIndex=3 then
     begin
     {////////////////just do it /////////////////}
     end;
    stringgrid1.Cols[0].Text:='Information';
    stringgrid1.Cells[0,1]:='Displays';    for i:=0 to stringgrid1.ColCount-1 do stringgrid1.Cells[i+1,1]:='-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-';
    stringgrid1.Cells[0,2]:='Camera';
    stringgrid1.Cells[0,3]:='Radar XY';
    stringgrid1.Cells[0,4]:='Radar YZ';
    stringgrid1.Cells[0,5]:='Radar ZX';
    stringgrid1.Cells[0,6]:='Global Objects';    for i:=0 to stringgrid1.ColCount-1 do stringgrid1.Cells[i+1,6]:='-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-';
    stringgrid1.Cells[0,7]:='Square';
    stringgrid1.Cells[0,8]:='Line';
    stringgrid1.Cells[0,9]:='Point';
    stringgrid1.Cells[0,10]:='---Bodyes---';    for i:=0 to stringgrid1.ColCount-1 do stringgrid1.Cells[i+1,10]:='-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-';
    stringgrid1.Cells[0,11]:='Paralelepiped';
    stringgrid1.Cells[0,12]:='Square';
    stringgrid1.Cells[0,13]:='Pruzma';
    stringgrid1.Cells[0,14]:='Ballet';
    stringgrid1.Cells[0,15]:='Tor';
    stringgrid1.Cells[0,16]:='---Main---';
    stringgrid1.Cells[0,17]:='Pereriz(Square)';  for i:=0 to stringgrid1.ColCount-1 do stringgrid1.Cells[i+1,16]:='-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-';
   end;

procedure TGeometry.TabControl1Change(Sender: TObject);
   begin
    OutInfo;
   end;

procedure TGeometry.Check6Click(Sender: TObject);
   begin
    label3.Enabled:=check6.Checked;
    label4.Enabled:=check6.Checked;
    TrackBar2.Enabled:=check6.Checked;
    trackbar3.Enabled:=check6.Checked;
   end;
//showpanels---showpanels---showpanels---showpanels---showpanels---showpanels--showpanels
procedure TGeometry.ShowToolsandOptions1Click(Sender: TObject);
   begin
    if not toolsoptions.Visible then ToolsOptions.Visible:=true
    else toolsoptions.Visible:=false
   end;
procedure TGeometry.ShovObjectsInforamation1Click(Sender: TObject);
   begin
    if info.Visible then info.Visible:=false
    else info.Visible:=true
   end;
//----------------------------------------------------------------------------------------
procedure TGeometry.ObjectsTreeChange(Sender: TObject; Node: TTreeNode);
   begin
      n:=objectstree.Selected.ImageIndex;
       if n in mradar then
         begin
          objectsenableds(false);
          px.Enabled:=true;          rz.Enabled:=False;
          py.Enabled:=true;          ry.Enabled:=False;
          pz.Enabled:=true;          rx.Enabled:=False;
          label1.Enabled:=false;     label2.Enabled:=true;
          brushs.Enabled:=false;
          penS.Enabled:=false;
          pen1.Enabled:=false;
          button6.Enabled:=false;
          trackbar1.Enabled:=true;
          checkbox1.Enabled:=false;
          button5.enabled:=true;
          color1.Enabled:=true
         end;
        if n in mcamera then
         begin
          objectsenableds(false);
          px.Enabled:=true;          rx.Enabled:=true;
          py.Enabled:=true;          ry.Enabled:=true;
          pz.Enabled:=true;          rz.Enabled:=true;
          brushs.Enabled:=false;
          penS.Enabled:=false;
          label1.Enabled:=false;
          pen1.Enabled:=false;
          button6.Enabled:=true;
          label2.Enabled:=true;
          trackbar1.Enabled:=true;
          checkbox1.Enabled:=true;
          button5.enabled:=true;
          color1.Enabled:=true
         end;
        if n in mobjects then
         begin
          objectsenableds(true);
          px.Enabled:=true;          rx.Enabled:=true;
          py.Enabled:=true;          ry.Enabled:=true;
          pz.Enabled:=true;          rz.Enabled:=true;
          label2.Enabled:=false;     label1.Enabled:=true;
          brushs.Enabled:=true;
          penS.Enabled:=true;
          pen1.Enabled:=true;
          button6.Enabled:=true;
          trackbar1.Enabled:=false;
          checkbox1.Enabled:=true;
          button5.enabled:=true;
          color1.Enabled:=true;
          if n=18 then objectswin.Width:=125 else objectswin.Width:=0
         end;
        if n in mother then
         begin
          objectsenableds(false);
          px.Enabled:=false;          rx.Enabled:=false;
          py.Enabled:=false;          ry.Enabled:=false;
          pz.Enabled:=false;          rz.Enabled:=false;
          button5.Enabled:=false;     button6.Enabled:=false;
          label1.Enabled:=false;      label2.Enabled:=false;
          checkbox1.Enabled:=false;
          color1.Enabled:=false;
          brushs.Enabled:=false;
          pens.Enabled:=false;
          pen1.Enabled:=false;
          trackbar1.Enabled:=false
          end
         end;
procedure TGeometry.ObjectsEnableds;
   begin
      a.Enabled:=s;  b.Enabled:=s;  c.Enabled:=s;  d.Enabled:=s;  e.Enabled:=s;  f.Enabled:=s;  x.Enabled:=s;  y.Enabled:=s;
      wa.Enabled:=s; wb.Enabled:=s; wc.Enabled:=s; wd.Enabled:=s; we.Enabled:=s; wf.Enabled:=s; wx.Enabled:=s; wy.Enabled:=s
   end;
//---incominginfo---incominginfo---incominginfo---incominginfo---incominginfo---incominginfo
procedure tGeometry.BeforeChScrlAtr;
   VAR s:string;
   begin
      if scrollcode=scEndScroll then scrollpos:=0;
      if n=18 then
       begin
        if objectswin.ItemIndex=0 then atributeschengeobjects(Paralelepiped);
        IF objectswin.ItemIndex=1 then atributeschengeobjects(Square);
        if objectswin.ItemIndex=2 then atributeschengeobjects(Pruzma);
        if objectswin.ItemIndex=3 then atributeschengeobjects(Ballet);
        if objectswin.ItemIndex=4 then atributeschengeobjects(Tor)
       end;
       if sender=a then begin str(a.Position/10,s); wa.Caption:=s end;
       if sender=b then begin str(b.Position/10,s); wb.Caption:=s end;
       if sender=c then begin str(c.Position/10,s); wc.Caption:=s end;
       if sender=d then begin str(d.Position/10,s); wd.Caption:=s end;
       if sender=e then begin str(e.Position/10,s); we.Caption:=s end;
       if sender=f then begin str(f.Position/10,s); wf.Caption:=s end;
       if sender=px then begin str(px.Position/10,s); _Position.Caption:='Position    '+s end;
       if sender=py then begin str(py.Position/10,s); _Position.Caption:='Position    '+s end;
       if sender=pz then begin str(pz.Position/10,s); _Position.Caption:='Position    '+s end;
       if sender=rx then begin str(rx.Position/10,s); _Rotation.Caption:='Rotation    '+s end;
       if sender=ry then begin str(ry.Position/10,s); _Rotation.Caption:='Rotation    '+s end;
       if sender=rz then begin str(rz.Position/10,s); _Rotation.Caption:='Rotation    '+s end
   end;

procedure tgeometry.atributeschengeobjects;
   begin
    if not CheckBox1.Checked  then
     begin
      body.px:=body.px+px.Position/100;
      body.py:=body.py+py.Position/100;
      body.pz:=body.pz+pz.Position/100
     end
    else
     begin
      body.ppx:=body.ppx+px.Position/100;
      body.ppy:=body.ppy+py.Position/100;
      body.ppz:=body.ppz+pz.Position/100
     end;
    body.Color:=shape1.Brush.Color;
    body.rx:=body.rx+rx.Position/100;
    body.ry:=body.ry+ry.Position/100;
    body.rz:=body.rz+rz.Position/100;
    body.a:=body.a+a.Position/100;
    body.b:=body.b+b.Position/100;
    body.c:=body.c+c.Position/100;
    body.d:=body.d+d.Position/100;
    body.e:=body.e+e.Position/100;
    body.f:=body.f+f.Position/100;
    body.width:=pen1.Position;
    body.x:=x.Position;
    body.y:=y.Position;
    case pens.ItemIndex of
     0,-1: body.style:=psSolid;
     1: body.style:=psDash ;
     2: body.style:=psDashDot ;
     3: body.style:=psDashDotDot ;
     4: body.style:=psClear;
     5: body.style:=psInsideFrame;
    end;
    case brushs.ItemIndex of
     0: body.Mode:=pmBlack;
     1: body.Mode:=pmWhite;
     2: body.Mode:=pmnop;
     3: body.Mode:=pmnot;
     4: body.Mode:=pmCopy;
     5: body.Mode:=pmNotCopy;
     6: body.Mode:=pmMergePenNot;
     7: body.Mode:=pmMaskPenNot;
     8: body.Mode:=pmMergeNotPen;
     9: body.Mode:=pmMaskNotPen;
     10: body.Mode:=pmMerge;
     11: body.Mode:=pmNotMerge;
     12: body.Mode:=pmMask;
     13: body.Mode:=pmNotMask;
     14: body.Mode:=pmXor;
     15: body.Mode:=pmNotXor
    end
   end;
end.
