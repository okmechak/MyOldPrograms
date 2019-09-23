program sdfg;

var a,b,c,alpha,beta,gama:real;
     k,pz,px,py,x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4,x5,y5,z5,x6,y6,z6,x7,y7,z7,x8,y8,z8:integer;
procedure drawline(x1,y1,z1,x2,y2,z2:integer);
var d1,d2:real;
begin
d1:=sqrt(sqr(x1/1060)+sqr(y1/1060)+sqr(z1/1060));
d2:=sqrt(sqr(x2/1060)+sqr(y2/1060)+sqr(z2/1060));
line(600+round(x1/d1),300+round(y1/d1),600+round(x2/d2),300+round(y2/d2));
end;
begin
repeat
a:=500;
b:=100;
c:=1000;
pz:=1500;
event(k,px,py);
px:=(px-600)*2;
py:=(py-300)*2;
brush(1,250,250,250);
rectangle(-1,-1,1400,1400);
pz:=1000;
X1:=+round(a/2);
Y1:=+round(b/2);
Z1:=+round(c/2);
X2:=+round(a/2);
Y2:=-round(b/2);
Z2:=+round(c/2);
X3:=-round(a/2);
Y3:=-round(b/2);
Z3:=+round(c/2);
X4:=-round(a/2);
Y4:=+round(b/2);
Z4:=+round(c/2);
X5:=+round(a/2);
Y5:=+round(b/2);
Z5:=-round(c/2);
X6:=+round(a/2);
Y6:=-round(b/2);
Z6:=-round(c/2);
X7:=-round(a/2);
Y7:=-round(b/2);
Z7:=-round(c/2);
X8:=-round(a/2);
Y8:=+round(b/2);
Z8:=-round(c/2);

drawLine(px+x1,py+y1,pz+z1,px+x2,py+y2,pz+z2);
drawLine(px+x2,py+y2,pz+z2,px+x3,py+y3,pz+z3);
drawLine(px+x3,py+y3,pz+z3,px+x4,py+y4,pz+z4);
drawLine(px+x4,py+y4,pz+z4,px+x1,py+y1,pz+z1);
drawLine(px+x1,py+y1,pz+z1,px+x5,py+y5,pz+z5);
drawLine(px+x2,py+y2,pz+z2,px+x6,py+y6,pz+z6);
drawLine(px+x3,py+y3,pz+z3,px+x7,py+y7,pz+z7);
drawLine(px+x4,py+y4,pz+z4,px+x8,py+y8,pz+z8);
drawLine(px+x5,py+y5,pz+z5,px+x6,py+y6,pz+z6);
drawLine(px+x6,py+y6,pz+z6,px+x7,py+y7,pz+z7);
drawLine(px+x7,py+y7,pz+z7,px+x8,py+y8,pz+z8);
drawLine(px+x8,py+y8,pz+z8,px+x5,py+y5,pz+z5);
until false;
end.
end.
