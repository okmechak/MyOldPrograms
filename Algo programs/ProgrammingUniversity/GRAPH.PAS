
program graphik;
uses graph,crt;
var x,y,xmax,ymax,a,b,h,h2:real;
    dt,dm:integer;

function f(x:real):real;
 begin
  f:=sin(x);
 end;
function f2(x:real):real;
begin
f2:=sqr(x);
end;
{-------makx znachennia f-ciji--------}
 function ym:real;
 var c,h,xt:real;
 begin
 c:=abs(f(a));
 h:=0.1;
 xt:=a;
 while xt<=b do
  begin
   if abs(f(xt))>c then c:=abs(f(xt));
   xt:=xt+h;
  end;
  ym:=c;
 end;

 function xm:real;
  begin
   if abs(a)<abs(b) then xm:=abs(b)
                    else xm:=abs(a);
  end;

{-------peretvorennia coordunat-------}
function xekr(x:real):integer;
 begin
 xekr:=round(320*x/xmax)+320;
 end;

 function yekr(y:real):integer;
 begin
 yekr:=round(-240*y/ymax)+240;
 end;

{------coordunatna sitka------------------}
 procedure coordsitka(nx:integer);
 var j,cx,cy,ny:integer;
     hx,hy:real;
     a:string;
  begin
   cx:=320; cy:= 240;
   ny:=round(cy/cx*nx);
   setcolor(3);
   line(0,cy,2*cx,cy);
   line(cx,0,cx,2*cy);
   hy:=cy/ny;
   hx:=cx/nx;
   for j:=-nx to nx do
    begin
     line(round(cx+hx*j),cy-3,round(cx+hx*j),cy+3);
     textcolor(3);
     str(j*xmax/nx:3:2,a);
     if j<>0 then outtextxy(round(cx+hx*j)+1,cy+3,a);
    end;
   for j:=-ny to ny do
    begin
     line(cx-3,cy+round(hy*j),cx+3,cy+round(hy*j));
     textcolor(3);
     str(j*ymax/ny:3:2,a);
     outtextxy(cx+3,round(cy+hy*j)+1,a);
    end;
  end;

  begin
   a:=-5;
   b:=5;
   h:=0.1;
   ymax:=ym;
   xmax:=xm;
       dt:=detect;
       initgraph(dt,dm,'f:\bp\bgi');
   coordsitka(3);
   x:=a;
   moveto(xekr(x),yekr(f(x)));
   setcolor(5);

   while x<=b do
    begin
    lineto(xekr(x),yekr(f(x)));    x:=x+h;
    end;
    x:=a;
    h2:=0.1;
    moveto(xekr(a),yekr(f2(a)));
  while  x<=b do
  begin
  lineto(xekr(x),yekr(f2(x))); x:=x+h2;
  end;
  readln;
  closegraph;
  end.




