program Polinom_Lagranzha;

const n=28;
type masuv=array[0..n] of real;
var fl:text;
xe,ye:masuv;
ymax,xmax,h,x:real;
ne,i,j:integer;
dt,dm:integer;
      w:string;

function F(x:real):real;
 var p,s:real;
 begin
   p:=1;
   s:=0;
   for i:=0 to ne-1 do
    begin
     for j:=0 to ne-1 do if j<>i then p:=p*(x-xe[j])/(xe[i]-xe[j]);
     s:=s+ye[i]*p;
     p:=1;
    end;
   f:=s;
  end;

function xekr(X:real):integer;
 begin
  Xekr:=round(320*x/xmax)+320;
 end;

function yekr(y:real):integer;
 begin
  yekr:=-round(240*y/ymax)+240;
 end;
procedure  circle(x,y,r:real);
 begin
  ellipse(round(x-r),round(y-r),round(x+r),round(y+r))
 
 
 
 end;

 begin
   ne:=0;
   W:='E:\Ex3.txt';
   assign(fl,w);
   reset(Fl);
   for i:=1 to 7 do
    begin
     read(fl,Xe[ne]);
     read(fl,ye[ne]);
     ne:=ne+1;
    end;
   xmax:=abs(xe[0]);
   ymax:=abs(ye[0]);
   for i:=0 to ne do
    begin
     if abs(xe[i])>xmax then Xmax:=abs(xe[i]);
     if abs(ye[i])>ymax then ymax:=abs(ye[i]);
    end;
   xmax:=2*xmax;
   ymax:=2*ymax;
   line(0,240,700,240);
   line(320,0,320,500);

   for i:=0 to ne-1 do  circle (xekr(xe[i]),Yekr(ye[i]),3);
   h:=2*xmax/640;
   x:=-xmax;
   moveto(xekr(-xmax),yekr(F(-xmax)) );
   while x<=xmax do
    begin
     lineto(xekr(x),Yekr(F(X)));
     X:=x+h;
    end;
end.
