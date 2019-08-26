unit Unit1;

interface

uses Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, ComCtrls, TabNotBk, StdCtrls, Menus, Buttons,
  Spin,Opengl,math;
type




{------Record--of--objects-----------------------------------------------------}
       pos=-10000..10000;
       rot=-1080..1080;
       p=0..50;
       re=1..30;
       bodparam=0..5000;
       pivotpoint=record
        x,y,z:pos;
        end;
       atributes=record
         px,py,pz:pos;
         rx,ry,rz:rot;
         pp:pivotpoint;
         pen:p;         Color:TColor;         S:TPenStyle;         M:TPenMode;
       end;
       camera_=record
         fv:1..179;
         atr:atributes;
       end;
        paralelepiped_=record
         a,b,c:bodparam;
       end;
       pruzma_=record
         trx,trz,brx,brz,h,zx,zz:bodparam;
         resx,resy:re;
       end;
       ballet_=record
         rx,ry,rz:bodparam;
         resg,resv:re;
       end;
       square_=record
         a,b:bodparam;
         resx,resy:re;
       end;
       square__=record
       atr:atributes;
         a,b:bodparam;
         resx,resy:re;
       end;
       tor_=record
         rx1,ry1,rx2,ry2:bodparam;
         resx,resy:re;
       end;
       body_=record
         atr:atributes;
         par:paralelepiped_;
         pru:pruzma_;
         bal:ballet_;
         squ:square_;
         tor:tor_;
       end;
       line_=record
         l:bodparam;
       end;
       objectkilt=record
         atr:atributes;
         line:line_;
      end;
      objects_=record
        camera:camera_;
        square:square__;
        body:body_;
        obje:objectkilt;
      end;
      vector=record
        x,y,z:real48;
        end;
       Tmatrix=array[0..30,0..30] of vector;
{------records--of--multimedia--player-----------------------------------------}


{------------------------------------------------------------------------------}
  TForm1 = class(TForm)    NORMAl: TImage;    MainPanel: TPanel;    Main: TTabbedNotebook;    Panel5: TPanel;    Atributesandmultimedia: TPanel;    Rotation: TGroupBox;    RX: TScrollBar;    RY: TScrollBar;    RZ: TScrollBar;    Splitter7: TSplitter;    Position: TGroupBox;    PX: TScrollBar;    PY: TScrollBar;    PZ: TScrollBar;    TabControl1: TTabControl;    ChMainType: TComboBox;    Panel7: TPanel;    Panel8: TPanel;
    Ma: TScrollBar;    mb: TScrollBar;    mx: TTrackBar;    my: TTrackBar;    Panel9: TPanel;    wma: TLabel;    wmb: TLabel;    wmx: TLabel;    wmy: TLabel;    mp: TLabeledEdit;    Shape1: TShape;    Label7: TLabel;    Other: TGroupBox;    cpiv: TCheckBox;    bRESET: TButton;
    ChReset: TListBox;    Panel10: TPanel;    Panel14: TPanel;    Panel15: TPanel;    SpeedButton4: TSpeedButton;    PLAY: TSpeedButton;    PAUSE: TSpeedButton;    UpDown1: TUpDown;    Button2: TButton;    Button3: TButton;    Label18: TLabel;    Edit1: TEdit;    Shape3: TShape;    Label19: TLabel;    Panel16: TPanel;    oc1: TCheckBox;    ob1: TButton;    oc2: TCheckBox;    ob2: TButton;    oc3: TCheckBox;    oc4: TCheckBox;    ob4: TButton;    Label20: TLabel;    Panel17: TPanel;    Label21: TLabel;    Label22: TLabel;    Label23: TLabel;    StatusBar1: TStatusBar;    ColorDialog1: TColorDialog;    bodyes: TScrollBox;    ChObject: TTabControl;
    Panel11: TPanel;    woa: TLabel;    wob: TLabel;    woc: TLabel;    wod: TLabel;    woe: TLabel;    wog: TLabel;    woh: TLabel;    wox: TLabel;    woy: TLabel;    Panel12: TPanel;    oa: TScrollBar;    ob: TScrollBar;    oc: TScrollBar;    od: TScrollBar;    oe: TScrollBar;    og: TScrollBar;    oh: TScrollBar;    ox: TTrackBar;    oy: TTrackBar;    Panel13: TPanel;    Shape2: TShape;    Label17: TLabel;
    op: TLabeledEdit;    CheckBox1: TCheckBox;    CheckBox2: TCheckBox;    CheckBox3: TCheckBox;    Aboutmain: TButton;    Label1: TLabel;    PopupMenu1: TPopupMenu;    BGColor2: TMenuItem;    ChMainOb: TComboBox;    Label2: TLabel;    FvEnter: TSpinEdit;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    ComboBox1: TComboBox;
    Label3: TLabel;
    CheckBox6: TCheckBox;
    LabeledEdit1: TLabeledEdit;
    ComboBox2: TComboBox;
    Shape4: TShape;
    Shape5: TShape;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    ComboBox8: TComboBox;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Splitter3: TSplitter;
    ZX: TImage;
    Splitter4: TSplitter;
    XY: TImage;
    YZ: TImage;
    Splitter5: TSplitter;
    CheckBox7: TCheckBox;
    procedure refresh;
    procedure MainChenge(Sender: TObject);
    procedure MainOptionsCh(Sender: TObject);
    procedure ObjectChenge(Sender: TObject);
    procedure MainObjectCh(Sender: TObject);
    procedure InComingInfo(Sender: TObject);
    Procedure InComingAtributesinfo(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure Shape1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Shape2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure BGColor2Click(Sender: TObject);
    {Draw      Module}
    procedure Draw;
    procedure DrawLine(x1,y1,z1,x2,y2,z2:integer);

    procedure DrawObjectKilts;
    procedure Square;
    procedure Line;
    procedure Point;
    procedure DrawObjects;
    procedure DrawParalelepiped;
    procedure DrawPruzma;
    procedure DrawBallet;
    procedure DrawSquare;
    procedure DrawTor;
    procedure Pivotpoint(X,Y,Z:integer; Color:TColor);
    procedure NORMAlDblClick(Sender: TObject);
    procedure Splitter1Moved(Sender: TObject);
  end;

var
  Form1:TForm1;
  objects:objects_;
implementation

{$R *.dfm}







//zchutyvannia informaciji z programu na interfejs
//nemaje tilku zcutyvznniz dejakuh parametriv objectiv a,b,c,d,e,f (Spoverhni,V,Diagonali i t.d....) na StatusBar1
//neoprobyvanna (nevidomo chu ce vse pravelno)
procedure TForm1.refresh;
var a,b,c:string;
begin
shape2.Brush.Color:=objects.body.atr.Color;
shape1.Brush.Color:=objects.obje.atr.Color;
//-----------Main
if ChMainType.Text='Square' then
begin
str(objects.square.a,a);
wma.Caption:='OX='+a;
str(objects.square.b,a);
wmb.Caption:='OZ='+a;
end;
if ChMainType.Text='Line' then
begin
str(objects.obje.line.l,a);
wma.Caption:='L='+a;
end;
str(mx.Position,a);
wmx.Caption:=a;
str(my.Position,a);
wmy.Caption:=a;
//----------objects
if ChObject.TabIndex=0 then
begin
str(objects.body.par.a,a);
woa.Caption:='OX='+a;
str(objects.body.par.b,a);
wob.Caption:='OY='+a;
str(objects.body.par.c,a);
woc.Caption:='OZ='+a;
end;
if ChObject.TabIndex=1 then
begin
str(objects.body.pru.trx,a);
woa.Caption:='TopRX='+a;
str(objects.body.pru.trz,a);
wob.Caption:='TopRY='+a;
str(objects.body.pru.brx,a);
woc.Caption:='BottonRX='+a;
str(objects.body.pru.brz,a);
wod.Caption:='BottonRY='+a;
str(objects.body.pru.h,a);
woe.Caption:='H='+a;
str(objects.body.pru.zx,a);
wog.Caption:='Zx='+a;
str(objects.body.pru.zz,a);
woh.Caption:='Zz='+a;
str(objects.body.pru.resx,a);
wox.Caption:=a;
str(objects.body.pru.resy,a);
woy.Caption:=a;
end;
if ChObject.TabIndex=2 then
begin
str(objects.body.bal.rx,a);
woa.Caption:='Dx='+a;
str(objects.body.bal.ry,a);
wob.Caption:='Dy='+a;
str(objects.body.bal.rz,a);
woc.Caption:='Dz='+a;
str(objects.body.bal.resg,a);
wox.Caption:=a;
str(objects.body.bal.resv,a);
woy.Caption:=a;
end;
if ChObject.TabIndex=3 then
begin
str(objects.body.squ.a,a);
woa.Caption:='OX='+a;
str(objects.body.squ.b,a);
wob.Caption:='OZ='+a;
str(objects.body.squ.resx,a);
wox.Caption:=a;
str(objects.body.squ.resy,a);
woy.Caption:=a;
end;
if ChObject.TabIndex=4 then
begin
str(objects.body.tor.rx1,a);
woa.Caption:='Dx1='+a;
str(objects.body.tor.ry1,a);
wob.Caption:='Dy1='+a;
str(objects.body.tor.rx2,a);
woc.Caption:='Dx2='+a;
str(objects.body.tor.ry2,a);
wod.Caption:='Dy2='+a;
str(objects.body.tor.resx,a);
wox.Caption:=a;
str(objects.body.tor.resy,a);
woy.Caption:=a;
end;
if cpiv.Checked=false then
begin
if chMainob.Text='Camera' then
begin
str(objects.camera.atr.px,a);
str(objects.camera.atr.py,b);
str(objects.camera.atr.pz,c);
position.Caption:='Position: X='+a+'; Y='+b+'; Z='+c+'.';
str(objects.camera.atr.rx,a);
str(objects.camera.atr.ry,b);
str(objects.camera.atr.rz,c);
Rotation.Caption:='Rotation: X='+a+'; Y='+b+'; Z='+c+'.';
end;
if chMainob.Text='Square' then
begin
str(objects.square.atr.px,a);
str(objects.square.atr.py,b);
str(objects.square.atr.pz,c);
position.Caption:='Position: X='+a+'; Y='+b+'; Z='+c+'.';
str(objects.square.atr.rx,a);
str(objects.square.atr.ry,b);
str(objects.square.atr.rz,c);
Rotation.Caption:='Rotation: X='+a+'; Y='+b+'; Z='+c+'.';
end;
if chMainob.Text='Body' then
begin
str(objects.body.atr.px,a);
str(objects.body.atr.py,b);
str(objects.body.atr.pz,c);
position.Caption:='Position: X='+a+'; Y='+b+'; Z='+c+'.';
str(objects.body.atr.rx,a);
str(objects.body.atr.ry,b);
str(objects.body.atr.rz,c);
Rotation.Caption:='Rotation: X='+a+'; Y='+b+'; Z='+c+'.';
end;
if chMainob.Text='Object Kilt' then
begin
str(objects.obje.atr.px,a);
str(objects.obje.atr.py,b);
str(objects.obje.atr.pz,c);
position.Caption:='Position: X='+a+'; Y='+b+'; Z='+c+'.';
str(objects.obje.atr.rx,a);
str(objects.obje.atr.ry,b);
str(objects.obje.atr.rz,c);
Rotation.Caption:='Rotation: X='+a+'; Y='+b+'; Z='+c+'.';
end;
end;
if cpiv.Checked=true then
begin
if chMainob.Text='Camera' then
begin
str(objects.camera.atr.pp.x,a);
str(objects.camera.atr.pp.y,b);
str(objects.camera.atr.pp.z,c);
position.Caption:='Position: X='+a+'; Y='+b+'; Z='+c+'.';
end;
if chMainob.Text='Square' then
begin
str(objects.square.atr.pp.x,a);
str(objects.square.atr.pp.y,b);
str(objects.square.atr.pp.z,c);
position.Caption:='Position: X='+a+'; Y='+b+'; Z='+c+'.';
end;
if chMainob.Text='Body' then
begin
str(objects.body.atr.pp.x,a);
str(objects.body.atr.pp.y,b);
str(objects.body.atr.pp.z,c);
position.Caption:='Position: X='+a+'; Y='+b+'; Z='+c+'.';
end;
if chMainob.Text='Object Kilt' then
begin
str(objects.obje.atr.pp.x,a);
str(objects.obje.atr.pp.y,b);
str(objects.obje.atr.pp.z,c);
position.Caption:='Position: X='+a+'; Y='+b+'; Z='+c+'.';
end;
end;
Draw;
end;
//----------------interface---------------------------------------------------
procedure TForm1.MainChenge;
begin
if tabcontrol1.TabIndex=0 then
begin
ChMainType.Clear;
ChMainType.Items.Add('Square');
ChMainType.Text:='Square';
end;
if tabcontrol1.TabIndex=1 then
begin
ChMainType.Clear;
ChMainType.Items.Add('Line');
ChMainType.Items.Add('Point');
ChMainType.Text:='Line';
end;
if tabcontrol1.TabIndex=2 then
begin
ChMainType.Clear;
ChMainType.Items.Add('Square');
ChMainType.Items.Add('Line');
ChMainType.Items.Add('Point');
ChMainType.Text:='Square';
end;
MainOptionsCh(Tabcontrol1);
end;
Procedure TForm1.MainOptionsCh;
begin
if ChMainType.Text='Square' then
begin
ma.Enabled:=true;
wma.Enabled:=true;
mb.Enabled:=true;
wmb.Enabled:=true;
mx.Enabled:=true;
wmx.Enabled:=true;
my.Enabled:=true;
wmy.Enabled:=true;
end;
if ChMainType.Text='Line' then
begin
ma.Enabled:=true;
wma.Enabled:=true;
mb.Enabled:=false;
wmb.Enabled:=false;
mx.Enabled:=false;
wmx.Enabled:=false;
my.Enabled:=false;
wmy.Enabled:=false;
end;
if ChMainType.Text='Point' then
begin
ma.Enabled:=false;
wma.Enabled:=false;
mb.Enabled:=false;
wmb.Enabled:=false;
mx.Enabled:=false;
wmx.Enabled:=false;
my.Enabled:=false;
wmy.Enabled:=false;
end;
refresh;
end;
procedure TForm1.ObjectChenge;
begin
if ChObject.TabIndex=0 then
begin
oc.Enabled:=true;
od.Enabled:=false;
oe.Enabled:=false;
og.Enabled:=false;
oh.Enabled:=false;
ox.Enabled:=false;
oy.Enabled:=false;
woc.Enabled:=true;
wod.Enabled:=false;
woe.Enabled:=false;
wog.Enabled:=false;
woh.Enabled:=false;
wox.Enabled:=false;
woy.Enabled:=false;
end;
if ChObject.TabIndex=1 then
begin
oc.Enabled:=true;
od.Enabled:=true;
oe.Enabled:=true;
og.Enabled:=true;
oh.Enabled:=true;
ox.Enabled:=true;
oy.Enabled:=true;
woc.Enabled:=true;
wod.Enabled:=true;
woe.Enabled:=true;
wog.Enabled:=true;
woh.Enabled:=true;
wox.Enabled:=true;
woy.Enabled:=true;
end;
if ChObject.TabIndex=2 then
begin
oc.Enabled:=true;
od.Enabled:=false;
oe.Enabled:=false;
og.Enabled:=false;
oh.Enabled:=false;
ox.Enabled:=true;
oy.Enabled:=true;
woc.Enabled:=true;
wod.Enabled:=false;
woe.Enabled:=false;
wog.Enabled:=false;
woh.Enabled:=false;
wox.Enabled:=true;
woy.Enabled:=true;
end;
if ChObject.TabIndex=3 then
begin
oc.Enabled:=false;
od.Enabled:=false;
oe.Enabled:=false;
og.Enabled:=false;
oh.Enabled:=false;
ox.Enabled:=true;
oy.Enabled:=true;
woc.Enabled:=false;
wod.Enabled:=false;
woe.Enabled:=false;
wog.Enabled:=false;
woh.Enabled:=false;
wox.Enabled:=true;
woy.Enabled:=true;
end;
if ChObject.TabIndex=4 then
begin
oc.Enabled:=true;
od.Enabled:=true;
oe.Enabled:=false;
og.Enabled:=false;
oh.Enabled:=false;
ox.Enabled:=true;
oy.Enabled:=true;
woc.Enabled:=true;
wod.Enabled:=true;
woe.Enabled:=false;
wog.Enabled:=false;
woh.Enabled:=false;
wox.Enabled:=true;
woy.Enabled:=true;
end;
refresh;
end;
procedure TForm1.MainObjectCh;
begin
if cpiv.Checked=false then
begin
if chmainob.Text='Camera' then
begin
px.Position:=objects.camera.atr.px;  py.Position:=objects.camera.atr.py;  pz.Position:=objects.camera.atr.pz;
rx.Position:=objects.camera.atr.rx;  ry.Position:=objects.camera.atr.ry;  rz.Position:=objects.camera.atr.rz;
end;
if chmainob.Text='Square' then
begin
px.Position:=objects.square.atr.px;  py.Position:=objects.square.atr.py;  pz.Position:=objects.square.atr.pz;
rx.Position:=objects.square.atr.rx;  ry.Position:=objects.square.atr.ry;  rz.Position:=objects.square.atr.rz;
end;
if chmainob.Text='Body' then
begin
px.Position:=objects.body.atr.px;  py.Position:=objects.body.atr.py;  pz.Position:=objects.body.atr.pz;
rx.Position:=objects.body.atr.rx;  ry.Position:=objects.body.atr.ry;  rz.Position:=objects.body.atr.rz;
end;
if chmainob.Text='Object Kilt' then
begin
px.Position:=objects.obje.atr.px;  py.Position:=objects.obje.atr.py;  pz.Position:=objects.obje.atr.pz;
rx.Position:=objects.obje.atr.rx;  ry.Position:=objects.obje.atr.ry;  rz.Position:=objects.obje.atr.rz;
end;
end;
if cpiv.Checked=true then
begin
if chmainob.Text='Camera' then
begin
px.Position:=objects.camera.atr.pp.x;
py.Position:=objects.camera.atr.pp.y;
pz.Position:=objects.camera.atr.pp.z;
end;
if chmainob.Text='Square' then
begin
px.Position:=objects.square.atr.pp.x;
py.Position:=objects.square.atr.pp.y;
pz.Position:=objects.square.atr.pp.z;
end;
if chmainob.Text='Body' then
begin
px.Position:=objects.body.atr.pp.x;
py.Position:=objects.body.atr.pp.y;
pz.Position:=objects.body.atr.pp.z;
end;
if chmainob.Text='Object Kilt' then
begin
px.Position:=objects.obje.atr.pp.x;
py.Position:=objects.obje.atr.pp.y;
pz.Position:=objects.obje.atr.pp.z;
end;
end;
if cpiv.Checked=true then rotation.Visible:=false
else rotation.Visible:=true;
refresh;
end;

//mozhna prusypatu do modylia vvedennia informaciji z interfejsy vprogramy//
procedure TForm1.InComingInfo;
var k:integer;
begin
case combobox1.ItemIndex of
0:objects.obje.atr.S:=PsSolid;
1:objects.obje.atr.S:=PsDash;
2:objects.obje.atr.S:=PsDot;
3:objects.obje.atr.S:=PsDashDot;
4:objects.obje.atr.S:=PsDashDotDot;
5:objects.obje.atr.S:=PsClear;
6:objects.obje.atr.S:=PsInsideFrame
end;
case combobox3.ItemIndex of
0:objects.body.atr.S:=PsSolid;
1:objects.body.atr.S:=PsDash;
2:objects.body.atr.S:=PsDot;
3:objects.body.atr.S:=PsDashDot;
4:objects.body.atr.S:=PsDashDotDot;
5:objects.body.atr.S:=PsClear;
6:objects.body.atr.S:=PsInsideFrame
end;
case combobox5.ItemIndex of
0:objects.obje.atr.m:=pmBlack;
1:objects.obje.atr.m:=pmMask;
2:objects.obje.atr.m:=pmMaskNotPen;
3:objects.obje.atr.m:=pmNop;
4:objects.obje.atr.m:=pmMaskPenNot;
5:objects.obje.atr.m:=pmCopy;
6:objects.obje.atr.m:=pmXor;
7:objects.obje.atr.m:=pmMerge;
8:objects.obje.atr.m:=pmNotMerge;
9:objects.obje.atr.m:=pmNotXor;
10:objects.obje.atr.m:=pmNotCopy;
11:objects.obje.atr.m:=pmMergeNotPen;
12:objects.obje.atr.m:=pmNot;
13:objects.obje.atr.m:=pmMergePenNot;
14:objects.obje.atr.m:=pmNotMask;
15:objects.obje.atr.m:=pmWhite;
end;
case combobox4.ItemIndex of
0:objects.body.atr.m:=pmBlack;
1:objects.body.atr.m:=pmMask;
2:objects.body.atr.m:=pmMaskNotPen;
3:objects.body.atr.m:=pmNop;
4:objects.body.atr.m:=pmMaskPenNot;
5:objects.body.atr.m:=pmCopy;
6:objects.body.atr.m:=pmXor;
7:objects.body.atr.m:=pmMerge;
8:objects.body.atr.m:=pmNotMerge;
9:objects.body.atr.m:=pmNotXor;
10:objects.body.atr.m:=pmNotCopy;
11:objects.body.atr.m:=pmMergeNotPen;
12:objects.body.atr.m:=pmNot;
13:objects.body.atr.m:=pmMergePenNot;
14:objects.body.atr.m:=pmNotMask;
15:objects.body.atr.m:=pmWhite;
end;

objects.camera.fv:=FvEnter.Value;
objects.obje.atr.Color:=shape1.Brush.Color;
objects.square.atr.Color:=shape1.Brush.Color;
objects.body.atr.Color:=shape2.Brush.Color;
if ChMainType.Text='Square' then objects.square.a:=Ma.Position;
if ChMainType.Text='Line' then objects.obje.line.l:=Ma.Position;
objects.square.b:=mb.Position;
objects.square.resx:=mx.Position;
objects.square.resy:=my.Position;
val(mp.Text,objects.obje.atr.pen,k);
//informacija teper vid bodyes
if chobject.TabIndex=0 then
begin
objects.body.par.a:=oa.Position;
objects.body.par.b:=ob.Position;
objects.body.par.c:=oc.Position;
end;
if chobject.TabIndex=1 then
begin
objects.body.pru.trx:=oa.Position;
objects.body.pru.trz:=ob.Position;
objects.body.pru.brx:=oc.Position;
objects.body.pru.brz:=od.Position;
objects.body.pru.h:=oe.Position;
objects.body.pru.zx:=og.Position;
objects.body.pru.zz:=oh.Position;
objects.body.pru.resx:=ox.Position;
objects.body.pru.resy:=oy.Position;
end;
if chobject.TabIndex=2 then
begin
objects.body.bal.rx:=oa.Position;
objects.body.bal.ry:=ob.Position;
objects.body.bal.rz:=oc.Position;
objects.body.bal.resg:=ox.Position;
objects.body.bal.resv:=oy.Position;
end;
if chobject.TabIndex=3 then
begin
objects.body.squ.a:=oa.Position;
objects.body.squ.b:=ob.Position;
objects.body.squ.resx:=ox.Position;
objects.body.squ.resy:=oy.Position;
end;
if ChObject.TabIndex=4 then
begin
objects.body.tor.rx1:=oa.Position;
objects.body.tor.ry1:=ob.Position;
objects.body.tor.rx2:=oc.Position;
objects.body.tor.ry2:=od.Position;
objects.body.tor.resx:=ox.Position;
objects.body.tor.resy:=oy.Position;
end;
val(mp.Text,objects.body.atr.pen,k);
val(op.Text,objects.body.atr.pen,k);
refresh;
end;
procedure TForm1.InComingAtributesinfo;
Begin
if cpiv.Checked=false then begin
if ChMainOb.Text='Camera' then
begin
objects.camera.atr.px:=px.Position;
objects.camera.atr.py:=py.Position;
objects.camera.atr.pz:=pz.Position;
objects.camera.atr.rx:=rx.Position;
objects.camera.atr.ry:=ry.Position;
objects.camera.atr.rz:=rz.Position;
end;
if ChMainOb.Text='Body' then
begin
objects.body.atr.px:=px.Position;
objects.body.atr.py:=py.Position;
objects.body.atr.pz:=pz.Position;
objects.body.atr.rx:=rx.Position;
objects.body.atr.ry:=ry.Position;
objects.body.atr.rz:=rz.Position;
end;
if ChMainOb.Text='Square' then
begin
objects.square.atr.px:=px.Position;
objects.square.atr.py:=py.Position;
objects.square.atr.pz:=pz.Position;
objects.square.atr.rx:=rx.Position;
objects.square.atr.ry:=ry.Position;
objects.square.atr.rz:=rz.Position;
end;
if ChMainOb.Text='Object Kilt' then
begin
objects.obje.atr.px:=px.Position;
objects.obje.atr.py:=py.Position;
objects.obje.atr.pz:=pz.Position;
objects.obje.atr.rx:=rx.Position;
objects.obje.atr.ry:=ry.Position;
objects.obje.atr.rz:=rz.Position;
end;
end;
if cpiv.Checked=true then
begin
if ChMainOb.Text='Camera' then
begin
objects.camera.atr.pp.x:=px.Position;
objects.camera.atr.pp.y:=py.Position;
objects.camera.atr.pp.z:=pz.Position;
end;
if ChMainOb.Text='Body' then
begin
objects.body.atr.pp.x:=px.Position;
objects.body.atr.pp.y:=py.Position;
objects.body.atr.pp.z:=pz.Position;
end;
if ChMainOb.Text='Square' then
begin
objects.square.atr.pp.x:=px.Position;
objects.square.atr.pp.y:=py.Position;
objects.square.atr.pp.z:=pz.Position;
end;
if ChMainOb.Text='Object Kilt' then
begin
objects.obje.atr.pp.x:=px.Position;
objects.obje.atr.pp.y:=py.Position;
objects.obje.atr.pp.z:=pz.Position;
end;
end;
refresh;
end;

procedure TForm1.Shape1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
colordialog1.Execute;
objects.obje.atr.Color:=colordialog1.Color;
refresh;
end;
procedure TForm1.Shape2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
colordialog1.Execute;
objects.body.atr.Color:=colordialog1.Color;
refresh;
end;
procedure TForm1.BGColor2Click(Sender: TObject);
begin
colordialog1.Execute;
objects.camera.atr.Color:=colordialog1.Color;
refresh;
end;


//Osnovna Chastuna--------------------------------------------------------------//
procedure TForm1.Draw;
begin
normal.Canvas.Pen.Mode:=pmcopy;
normal.Canvas.Brush.Color:=objects.camera.atr.Color;
normal.Canvas.Rectangle(-100,-100,1400,1000);
xy.Canvas.Brush.Color:=clGray;
yz.Canvas.Brush.Color:=clGray;
zx.Canvas.Brush.Color:=clGray;
xy.Canvas.Rectangle(-100,-100,1400,1000);
yz.Canvas.Rectangle(-100,-100,1400,1000);
zx.Canvas.Rectangle(-100,-100,1400,1000);
DrawObjectKilts;
DrawObjects;
normal.Canvas.Pen.Mode:=pmcopy;
Pivotpoint(objects.camera.atr.px+objects.camera.atr.pp.x,objects.camera.atr.py+objects.camera.atr.pp.y,objects.camera.atr.pz+objects.camera.atr.pp.z,clcream);
end;
procedure TForm1.DrawLine;
var k,d1,d2:real;
begin
k:=tan(degtorad(objects.camera.fv/2))/760;
if checkbox7.Checked then
begin
d1:=sqrt(sqr(x1/800)+sqr(y1/800)+sqr(z1*k));
d2:=sqrt(sqr(x2/800)+sqr(y2/800)+sqr(z2*k));
end
else
begin
d1:=z1*k;
d2:=z2*k;
end;
if (z2>0) and (z1>0) then
begin
Normal.Canvas.MoveTo(round((normal.Width/2)+(x1/d1)),round((normal.Height/2)+(y1/d1)));
Normal.Canvas.LineTo(round((normal.Width/2)+(x2/d2)),round((normal.Height/2)+(y2/d2)));
end;
end;
procedure TForm1.DrawObjectKilts;
begin
normal.Canvas.Pen.Width:=objects.obje.atr.pen;
normal.Canvas.Pen.Color:=objects.obje.atr.Color;
normal.Canvas.Pen.Mode:=objects.obje.atr.M;
normal.Canvas.Pen.Style:=objects.obje.atr.S;
if Chmaintype.Text='Square' then Square;
if Chmaintype.Text='Line' then  Line;
if Chmaintype.Text='Point' then Point;
if tabcontrol1.TabIndex=1 then square;
if ((tabcontrol1.TabIndex=1)or(tabcontrol1.TabIndex=2)) and not(chmaintype.Text='Square') then pivotpoint(objects.obje.atr.px+objects.obje.atr.pp.x,objects.obje.atr.py+objects.obje.atr.pp.y,objects.obje.atr.pz+objects.obje.atr.pp.z,objects.obje.atr.Color);
if chmaintype.Text='Square' then Pivotpoint(objects.square.atr.px+objects.square.atr.pp.x,objects.square.atr.py+objects.square.atr.pp.y,objects.square.atr.pz+objects.square.atr.pp.z,objects.obje.atr.Color);
end;

procedure TForm1.Square;
var a:TMatrix;
    i,f:0..30;
begin
for i:=0 to Objects.square.resx+1 do
for f:=0 to objects.square.resy+1 do
begin
a[i,f].x:=f*(objects.square.b/objects.square.resy)-objects.square.b/2;
a[i,f].z:=i*(objects.square.a/objects.square.resx)-objects.square.a/2;
a[i,f].y:=0;
end;
for i:=0 to objects.square.resx do
for f:=0 to objects.square.resy do
begin
drawline(round(a[i,f].x),round(a[i,f].y),round(a[i,f].z),round(a[i,f+1].x),round(a[i,f+1].y),round(a[i,f+1].z));
drawline(round(a[i,f].x),round(a[i,f].y),round(a[i,f].z),round(a[i+1,f].x),round(a[i+1,f].y),round(a[i+1,f].z));
end;
end;

procedure TForm1.Line;
var Line:vector;
begin
line.x:=objects.obje.line.l;
line.y:=objects.obje.line.l;
line.z:=objects.obje.line.l;
drawline(round(line.x)+objects.obje.atr.px,round(line.y)+objects.obje.atr.py,round(line.z)+objects.obje.atr.pz,objects.obje.atr.px,objects.obje.atr.py,objects.obje.atr.pz);
end;

procedure TForm1.Point;
var x,y,z:integer;
begin
x:=objects.obje.atr.px;
y:=objects.obje.atr.py;
z:=objects.obje.atr.pz;
drawline(x-100,y,z,x+100,y,z);
drawline(x,y-100,z,x,y+100,z);
drawline(x,y,z-100,x,y,z+100);
end;




procedure TForm1.DrawObjects;
begin
normal.Canvas.Pen.Style:=objects.body.atr.S;
normal.Canvas.Pen.Mode:=objects.body.atr.M;
normal.Canvas.Pen.Width:=objects.body.atr.pen;
normal.Canvas.Pen.Color:=objects.body.atr.Color;
if ChObject.TabIndex=0 then DrawParalelepiped;
if ChObject.TabIndex=1 then DrawPruzma;
if ChObject.TabIndex=2 then DrawBallet;
if ChObject.TabIndex=3 then DrawSquare;
if ChObject.TabIndex=4 then DrawTor;
Pivotpoint(objects.body.atr.px+objects.body.atr.pp.x,objects.body.atr.py+objects.body.atr.pp.y,objects.body.atr.pz+objects.body.atr.pp.z,objects.body.atr.Color);
end;
procedure TForm1.DrawParalelepiped;
var x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4,x5,y5,z5,x6,y6,z6,x7,y7,z7,x8,y8,z8:-2500..2500;
begin
X1:=+round(objects.body.par.a/2);
Y1:=+round(objects.body.par.b/2);
Z1:=+round(objects.body.par.c/2);
X2:=+round(objects.body.par.a/2);
Y2:=-round(objects.body.par.b/2);
Z2:=+round(objects.body.par.c/2);
X3:=-round(objects.body.par.a/2);
Y3:=-round(objects.body.par.b/2);
Z3:=+round(objects.body.par.c/2);
X4:=-round(objects.body.par.a/2);
Y4:=+round(objects.body.par.b/2);
Z4:=+round(objects.body.par.c/2);
X5:=+round(objects.body.par.a/2);
Y5:=+round(objects.body.par.b/2);
Z5:=-round(objects.body.par.c/2);
X6:=+round(objects.body.par.a/2);
Y6:=-round(objects.body.par.b/2);
Z6:=-round(objects.body.par.c/2);
X7:=-round(objects.body.par.a/2);
Y7:=-round(objects.body.par.b/2);
Z7:=-round(objects.body.par.c/2);
X8:=-round(objects.body.par.a/2);
Y8:=+round(objects.body.par.b/2);
Z8:=-round(objects.body.par.c/2);
drawLine(x1+objects.body.atr.px,y1+objects.body.atr.py,z1+objects.body.atr.pz,x2+objects.body.atr.px,y2+objects.body.atr.py,z2+objects.body.atr.pz);
drawLine(x2+objects.body.atr.px,y2+objects.body.atr.py,z2+objects.body.atr.pz,x3+objects.body.atr.px,y3+objects.body.atr.py,z3+objects.body.atr.pz);
drawLine(x3+objects.body.atr.px,y3+objects.body.atr.py,z3+objects.body.atr.pz,x4+objects.body.atr.px,y4+objects.body.atr.py,z4+objects.body.atr.pz);
drawLine(x4+objects.body.atr.px,y4+objects.body.atr.py,z4+objects.body.atr.pz,x1+objects.body.atr.px,y1+objects.body.atr.py,z1+objects.body.atr.pz);
drawLine(x1+objects.body.atr.px,y1+objects.body.atr.py,z1+objects.body.atr.pz,x5+objects.body.atr.px,y5+objects.body.atr.py,z5+objects.body.atr.pz);
drawLine(x2+objects.body.atr.px,y2+objects.body.atr.py,z2+objects.body.atr.pz,x6+objects.body.atr.px,y6+objects.body.atr.py,z6+objects.body.atr.pz);
drawLine(x3+objects.body.atr.px,y3+objects.body.atr.py,z3+objects.body.atr.pz,x7+objects.body.atr.px,y7+objects.body.atr.py,z7+objects.body.atr.pz);
drawLine(x4+objects.body.atr.px,y4+objects.body.atr.py,z4+objects.body.atr.pz,x8+objects.body.atr.px,y8+objects.body.atr.py,z8+objects.body.atr.pz);
drawLine(x5+objects.body.atr.px,y5+objects.body.atr.py,z5+objects.body.atr.pz,x6+objects.body.atr.px,y6+objects.body.atr.py,z6+objects.body.atr.pz);
drawLine(x6+objects.body.atr.px,y6+objects.body.atr.py,z6+objects.body.atr.pz,x7+objects.body.atr.px,y7+objects.body.atr.py,z7+objects.body.atr.pz);
drawLine(x7+objects.body.atr.px,y7+objects.body.atr.py,z7+objects.body.atr.pz,x8+objects.body.atr.px,y8+objects.body.atr.py,z8+objects.body.atr.pz);
drawLine(x8+objects.body.atr.px,y8+objects.body.atr.py,z8+objects.body.atr.pz,x5+objects.body.atr.px,y5+objects.body.atr.py,z5+objects.body.atr.pz);
end;
procedure TForm1.DrawPruzma;
type vune=record
       x,z:-2500..2500;
       end;
var t,b:array [0..30] of vune;
     i:0..30;
begin
for i:=0 to objects.body.pru.resx do
begin
t[i].x:=round(objects.body.pru.trx*cos(i*(2*pi/objects.body.pru.resx))+objects.body.atr.px+objects.body.pru.zx/2);
t[i].z:=round(objects.body.pru.trz*sin(i*(2*pi/objects.body.pru.resx))+objects.body.atr.pz+objects.body.pru.zz/2);
b[i].x:=round(objects.body.pru.brx*cos(i*(2*pi/objects.body.pru.resx))+objects.body.atr.px-objects.body.pru.zx/2);
b[i].z:=round(objects.body.pru.brz*sin(i*(2*pi/objects.body.pru.resx))+objects.body.atr.pz-objects.body.pru.zz/2);
end;
for i:=0 to objects.body.pru.resx-1 do
begin
drawline(t[i].x,objects.body.atr.py+round(objects.body.pru.h/2),t[i].z,t[i+1].x,objects.body.atr.py+round(objects.body.pru.h/2),t[i+1].z);
drawline(b[i].x,objects.body.atr.py-round(objects.body.pru.h/2),b[i].z,b[i+1].x,objects.body.atr.py-round(objects.body.pru.h/2),b[i+1].z);
drawLine(t[i].x,objects.body.atr.py+round(objects.body.pru.h/2),t[i].z,b[i].x,objects.body.atr.py-round(objects.body.pru.h/2),b[i].z);
end;
end;
procedure TForm1.DrawBallet;
type vum=record
     x,y,z:-2500..2500;
     end;
var  a:array[0..30,0..30] of vum;
     f,i:0..30;
begin
for i:=0 to objects.body.bal.resg do
begin
for f:=0 to objects.body.bal.resv do
begin
a[i,f].x:=round(objects.body.bal.rx*cos(f*2*pi/objects.body.bal.resv)*sin(i*pi/objects.body.bal.resg)/2);
a[i,f].z:=round(objects.body.bal.rz*sin(f*2*pi/objects.body.bal.resv)*sin(i*pi/objects.body.bal.resg)/2);
a[i,f].y:=round(objects.body.bal.ry*cos(i*pi/objects.body.bal.resg)/2);
end;
end;
for i:=0 to objects.body.bal.resg-1 do
for f:=0 to objects.body.bal.resv-1 do
begin
drawLine(a[i,f].x+objects.body.atr.px,a[i,f].y+objects.body.atr.py,a[i,f].z+objects.body.atr.pz,a[i,f+1].x+objects.body.atr.px,a[i,f+1].y+objects.body.atr.py,a[i,f+1].z+objects.body.atr.pz);
drawLine(a[i,f].x+objects.body.atr.px,a[i,f].y+objects.body.atr.py,a[i,f].z+objects.body.atr.pz,a[i+1,f].x+objects.body.atr.px,a[i+1,f].y+objects.body.atr.py,a[i+1,f].z+objects.body.atr.pz);
end;
end;
procedure TForm1.DrawSquare;
var A,B:array[0..30] of -2500..2500;
      i,f:integer;
begin
for i:=0 to Objects.body.squ.resx do
begin
for f:=0 to objects.body.squ.resy do
begin
B[f]:=round(f*objects.body.squ.b/objects.body.squ.resy-objects.body.squ.b/2);
END;
A[i]:=round(i*objects.body.squ.a/objects.body.squ.resx-objects.body.squ.a/2);
end;
for i:=0 to objects.body.squ.resx-1 do
for f:=0 to objects.body.squ.resy-1 do
begin
drawline(a[i]+objects.body.atr.px,objects.body.atr.py,b[f]+objects.body.atr.pz,a[i+1]+objects.body.atr.px,objects.body.atr.py,b[f]+objects.body.atr.pz);
drawline(a[i]+objects.body.atr.px,objects.body.atr.py,b[f]+objects.body.atr.pz,a[i]+objects.body.atr.px,objects.body.atr.py,b[f+1]+objects.body.atr.pz);
drawline(a[objects.body.squ.resx]+objects.body.atr.px,objects.body.atr.py,b[f]+objects.body.atr.pz,a[objects.body.squ.resx]+objects.body.atr.px,objects.body.atr.py,b[f+1]+objects.body.atr.pz);
drawline(a[i]+objects.body.atr.px,objects.body.atr.py,b[objects.body.squ.resy]+objects.body.atr.pz,a[i+1]+objects.body.atr.px,objects.body.atr.py,b[objects.body.squ.resy]+objects.body.atr.pz);
end;
end;

procedure TForm1.DrawTor;
type vum=record
     x,y,z:integer;
     end;
var  a:array[0..31,0..31] of vum;
     f,i:0..31;
begin
for i:=0 to objects.body.tor.resx+1 do
for f:=0 to objects.body.tor.resy+1 do
begin
a[i,f].x:=round(cos(i*2*pi/objects.body.tor.resx)*objects.body.tor.rx2*cos(f*2*pi/objects.body.tor.resy)/2+cos(i*2*pi/objects.body.tor.resx)*objects.body.tor.rx1/2);
a[i,f].y:=round(objects.body.tor.ry2*sin(f*2*pi/objects.body.tor.resy)/2);
a[i,f].z:=round(sin(i*2*pi/objects.body.tor.resx)*objects.body.tor.rx2*cos(f*2*pi/objects.body.tor.resy)/2+sin(i*2*pi/objects.body.tor.resx)*objects.body.tor.ry1/2);
end;
for i:=0 to objects.body.tor.resx-1 do
for f:=0 to objects.body.tor.resy-1 do
begin
drawline(a[i,f].x+objects.body.atr.px, a[i,f].y+objects.body.atr.py, a[i,f].z+objects.body.atr.pz, a[i,f+1].x+objects.body.atr.px, a[i,f+1].y+objects.body.atr.py, a[i,f+1].z+objects.body.atr.pz);
drawline(a[i,f].x+objects.body.atr.px, a[i,f].y+objects.body.atr.py, a[i,f].z+objects.body.atr.pz, a[i+1,f].x+objects.body.atr.px, a[i+1,f].y+objects.body.atr.py, a[i+1,f].z+objects.body.atr.pz);


end;

end;



procedure TForm1.Pivotpoint;
begin
normal.Canvas.Pen.Color:=Color;
drawline(x-100,y,z,x+100,y,z);
drawline(x,y-100,z,x,y+100,z);
drawline(x,y,z-100,x,y,z+100);


end;










procedure TForm1.NORMAlDblClick(Sender: TObject);
begin
mainpanel.Visible:=true;
end;

procedure TForm1.Splitter1Moved(Sender: TObject);
begin

//??????????????????????????????????????????


refresh;
end;


begin
objects.camera.atr.px:=50;
objects.camera.atr.py:=50;
objects.camera.atr.pz:=50;
objects.camera.atr.rx:=50;
objects.camera.atr.ry:=50;
objects.camera.atr.rz:=50;
objects.camera.fv:=90;
OBJECTS.square.resx:=3;
OBJECTS.square.resy:=4;
objects.body.bal.resv:=3;
objects.body.bal.resg:=4;
objects.body.tor.rx1:=1000;
objects.body.tor.ry1:=1000;
objects.body.tor.rx2:=500;
objects.body.tor.ry2:=500;
objects.body.tor.resx:=10;
objects.body.tor.resy:=10;








end.
//zrobutu tonshannia!!!!! i zluvannia z fonom!!!!!!
//zrobutu parametru do radariv i zminy jogo rozmiriv
//zrobutu obertannia navkolo pp, cameru pp;
//osi vzdovzh jakuh bla-bla
//parametruchni liniji
//liniji seredovushcha
//zrobutu okremuj vid object kilt kolir dlia square
