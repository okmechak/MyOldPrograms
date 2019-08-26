program interpol;
uses crt, graph;
type
vec=array[0..500] of real;
var Fl:text;
xmax, ymax, h, x,al,bl,hh,tp:real;
ne, i, dr, dm:integer;
xe, ye, yg:vec;
chx, chy:string;
function Xscr(x:real):integer;
begin
Xscr:=round(320+x*320/xmax);
end;
function Yscr(y:real):integer;
begin
Yscr:=round(240-y*240/ymax);
end;
function f(x:real):real;
begin
if (x<-0.5)and(x>-1)  then
f:=-1;
if (x>-0.5)and(x<0.5)  then
f:=0;
if (x>0.5)and(x<1) then
f:=1
end;

procedure furje (xe, ye:vec; ne:integer; var yg:vec);
var a, b:array[0..40] of real;
i, k, ng:integer;
w, kom, s, g, d:real;
begin
writeln('vvedit kil garmonik ng=');
readln(ng);
w:=2*pi/tp;
for k:=1 to ng do
begin
kom:=k*w;
g:=0;
d:=0;
for i:=1 to ne do
begin
s:=kom*xe[i];
g:=g+ye[i]*cos(s);
d:=d+ye[i]*sin(s)
end;
a[k]:=2*g/ne;
b[k]:=2*d/ne;
end;
a[0]:=0;
for i:=1 to ne do
a[0]:=a[0]+ye[i];
a[0]:=a[0]/ne;
for i:=0 to ne-1 do
begin
s:=0;
d:=xe[i]*w;
for k:=1 to ng do
begin
kom:=k*d;
s:=s+b[k]*sin(kom)+a[k]*cos(kom)
end;
yg[i]:=a[0]+s
end
end;

begin
clrscr;
  write('vvedit');
  read(al,bl,ne);
  tp:=bl-al;
  hh:=(bl-al)/ne;
  xe[0]:=al;
  for i:=0 to ne do begin
  ye[i]:=f(xe[i]);
    xe[i+1]:=xe[i]+hh;
  end;

  xmax:=abs(xe[0]);
ymax:=abs(ye[0]);
for i:=1 to ne-1 do
	begin
		if abs(xe[i])>xmax then xmax:=abs(xe[i]);
		if abs(ye[i])>ymax then ymax:=abs(ye[i]);
	end;

  furje(xe, ye, ne,yg);
dr:=detect;
initgraph(dr,dm,'c:\tp7\units');
setbkcolor(white);
setcolor(green);
Line(0, 240, 640, 240);
Line(320, 0, 320, 480);
setcolor(blue);

	 SetTextJustify(CenterText, CenterText);
 for i:=1 to 7 do
 begin
 if i<>4 then
  begin
  setcolor(2);
   line(round(640/8*i),235,round(640/8*i),245);
   line(315,round(480/8*i),325,round(480/8*i));
   setcolor(3);
   str(xmax/4*(i-4):3:1,chx);
   str(ymax/4*(4-i):3:1,chy);
   settextstyle(0,0,1);
   outtextxy(625,250,'X');
   outtextXY(80*i,255,chx);
   outtextxy(345,60*i,chy);
   outtextxy(300,10,'Y');
   outtextxy(330,255,'0');
   end;
   end;
   line(480,40,625,40);
   line(20,440,160,440);
   line(160,240,480,240);
moveto(round(xscr(xe[0])),round(yscr(yg[0])));
   for i:=0 to ne-1 do
   lineto(round(xscr(xe[i])),round(yscr(yg[i])/1.2)+40);
 	readkey;
	closegraph;
	end.
