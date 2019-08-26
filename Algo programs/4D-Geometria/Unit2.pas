unit Unit2;
interface
uses Variants, Graphics, Controls,Math;
type
    typeob=(camera,radar,obj);
    n=1..50;
    m=1..50;
    Tres=0..50;
    pen=0..50;
    TRec=record
    x,y,z:real48;
    end;
    TMatrix=array[n,m]of TRec;

TDisplays=class
   private
    fpx,fpy,fpz:real;
    FColor:TColor;
    FFieldView:real48;
   public
    property px:real read fpx write fpx;
    property py:real read fpy write fpy;
    property pz:real read fpz write fpz;
    property Color:TColor read FColor write FColor;
    property FV:real48 read FFieldView write FFieldView;
   end;


TCamera=Class(TDisplays)
   private
    frx,fry,frz:real;
    fppx,fppy,fppz:real;
   public
    property Rx:real read frx write frx;
    property Ry:real read fry write fry;
    property Rz:real read frz write frz;
    property ppx:real read fppx write fppx;
    property ppy:real read fppy write fppy;
    property ppz:real read fppz write fppz;
   end;


TObjects=class
   private
    fpx,fpy,fpz,fppx,fppy,fppz,frx,fry,frz,fa,fb,fc,fd,fe,ff:real;
    fWidth:pen;
    fStyle:TPenStyle;
    fMode:TPenMode;
    fx,fy:Tres;
    fColor:TColor;
   public
    property a:real read fa write fa;
    property b:real read fb write fb;
    property c:real read fc write fc;
    property d:real read fd write fd;
    property e:real read fe write fe;
    property f:real read ff write ff;
    property px:real read fpx write fpx;
    property py:real read fpy write fpy;
    property pz:real read fpz write fpz;
    property Rx:real read frx write frx;
    property Ry:real read fry write fry;
    property Rz:real read frz write frz;
    property ppx:real read fppx write fppx;
    property ppy:real read fppy write fppy;
    property ppz:real read fppz write fppz;
    property x:TRes read fx write fx;
    property y:TRes read fy write fy;
    property width:pen read fwidth write Fwidth default 0;
    property style:TPenstyle read fstyle write Fstyle default psSolid;
    property Mode:TPenMode read fmode write fmode default pmCopy;
    property Color:TColor read FColor write FColor default clLime;
   end;
TPereriz=Class
 protected
  FGloPX,FGloPy,FGloPz,FGlorX,FGlory,FGlorz,FGlobppx,FGlobppy,FGlobppz:real48;
  fWidth:pen;
  A,B:Real48;
  fStyle:TPenStyle;
  fMode:TPenMode;
  fx,fy:Tres;
  fColor:TColor;

  //Nezakinchenno--------
 end;
TProekcia=class
protected
  FGloPX,FGloPy,FGloPz,FGlorX,FGlory,FGlorz,FGlobppx,FGlobppy,FGlobppz:real48;
  FType:Boolean;
  FSpx,FSpy,FSpz,FSrx,FSry,FSrz,FSppx,FSppy,FSppz:real;
  FTpx,FTpy,FTpz,FTrx,FTry,FTrz,FTppx,FTppy,FTppz:real;
  fx,fy:Tres;
  A,B:Real48;
  fSStyle,FTStyle:TPenStyle;
  fSMode,FTmode:TPenMode;
  L:real48;
  fSColor,FTColor:TColor;
  //Zakinchutu----------
 end;

 TSumetria=Class
 //Zrobutu----------

 end;
TPoint=Class(tObjects)
   public
    {procedure CreatArray;
    procedure AfinniTransform;
    procedure Draw; }
    end;


TLine=Class(TObjects)
   public
    {procedure CreatArray;
    procedure AfinniTransform;
    procedure Draw;}
    end;

TPivotPoint=class(TObjects)
   public
    {procedure CreatArray(sender: tobjects);
    procedure AfinniTransform;
    procedure Draw; }
    end;

TSquare=class(TObjects)
   public
{pe} procedure CreatArray(a,b,c,d,f,px,py,pz,rx,ry,rz,ppx,ppy,ppz:real;resx,resy:tres; fWidth:pen; fStyle:TPenStyle; fMode:TPenMode;  Visible:boolean);
    {procedure AfinniTransform;
    procedure Draw;}
   end;

TParalelepiped=class(TObjects)
   public
    {procedure CreatArray;
    procedure AfinniTransform;
    procedure Draw;}
   end;

TBallet=class(TObjects)
   public
    procedure CreatArray(a,b,c,d,f,px,py,pz,rx,ry,rz,ppx,ppy,ppz:real;resx,resy:tres; fWidth:pen; fStyle:TPenStyle; fMode:TPenMode;  Visible:boolean);
    {procedure AfinniTransform;
    procedure Draw;}
   end;

TTor=class(TObjects)
   public
    procedure CreatArray(a,b,c,d,f,px,py,pz,rx,ry,rz,ppx,ppy,ppz:real; resx,resy:tres; fWidth:pen; fStyle:TPenStyle; fMode:TPenMode;  Visible:boolean);
    {procedure AfinniTransform;
    procedure Draw;}
   end;

TPruzma=class(TObjects)
   public
    {procedure CreatArray;
    procedure AfinniTransform;
    procedure Draw; }
   end;

implementation
procedure Draw_line(x1,y1,z1,x2,y2,z2:real);
begin

end;

procedure TSquare.CreatArray;
var Sq:TMatrix;
    x,y:TRes;
begin
If visible then begin
for x:=0 to resx+1 do
for y:=0 to resy+1 do
begin
Sq[x,y].x:=x*(a/resx)-a/2;
Sq[x,y].z:=y*(b/resy)-b/2;
SQ[x,y].y:=0;
end;
end;
end;


procedure TBallet.CreatArray;
var Bal:TMatrix;
    x,y:TRes;
begin
for x:=0 to resx do
for y:=0 to resy do
begin
Bal[x,y].x:=a*cos(y*2*pi/resy)*sin(x*2*pi/resx)/2;
Bal[x,y].y:=b*sin(y*2*pi/resy)*sin(x*2*pi/resx)/2;
BAl[x,y].z:=c*cos(x*2*pi/resx)/2;
end;
end;

procedure TTor.CreatArray;
var Tor:TMatrix;
    x,y:TRes;
begin
for x:=0 to resx+1 do
for y:=0 to resy+1 do
begin
tor[x,y].x:=(c*cos(x*2*pi/resx)*cos(y*2*pi/resy)+a*cos(x*2*pi/resx))/2;
tor[x,y].y:=d*sin(y*2*pi/resy)/2;
tor[x,y].z:=(c*sin(x*2*pi/resx)*cos(y*2*pi/resy)+b*sin(x*2*pi/resx))/2;
end;
end;
end.
