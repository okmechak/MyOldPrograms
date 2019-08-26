program interpol; 

var 
   Fl:text; 
   xmax, ymax, h, x:real; 
   ne, i, dr, dm:integer; 
   xe:array[0..100] of real; 
   ye:array[0..100] of real; 
   chx, chy:string; 

function Xscr(x:real):integer; 

begin 
  Xscr:=round(320+x*320/xmax); 
end; 

function Yscr(y:real):integer; 

begin 
  Yscr:=round(240-y*240/ymax); 
end; 

function F(x:real):real; 

var 
   i, j:integer; 
   P, S:real; 
begin 
  P:=1; 
  S:=0; 
  for i:=0 to ne-1 do 
    begin 
      for j:=0 to ne-1 do 
        begin 
          if j<>i then 
            P:=P*(x-xe[j])/(xe[i]-xe[j]); 
        end; 
      S:=S+ye[i]*P; 
      P:=1; 
    end; 
  F:=S; 
end; 

begin 
  ne:=0; 
  Assign(Fl, 'd:\student\fzf11\zach.txt'); 
  Reset(Fl); 
  While Not EOF(Fl) Do 
    Begin 
      Read(Fl, xe[ne]); 
      Read(Fl, Ye[ne]); 
      ne:=ne+1; 
    end; 
  close(fl); 
  xmax:=abs(xe[0]); 
  ymax:=abs(ye[0]); 
  for i:=1 to ne-1 do 
    begin 
      if abs(xe[i])>xmax then 
        xmax:=abs(xe[i]); 
      if abs(ye[i])>ymax then 
        ymax:=abs(ye[i]); 
    end; 
  dr:=detect;
initgraph(dr,dm,'d:\bp\bin');
setbkcolor(white);
setcolor(14);
Line(0, 240, 640, 240);
Line(320, 0, 320, 480);
setcolor(green);
for i:=0 to ne-1 do
begin
	Circle(Xscr(xe[i]),Yscr(ye[i]),2);
end;
h:=2*xmax/640;
x:=-xmax;
setcolor(red);
MoveTo(Xscr(x),Yscr(F(x)));
while x<xmax do
	begin
		Lineto(Xscr(x),Yscr(F(x)));
		x:=x+h;
	end;
	 SetTextJustify(CenterText, CenterText);
 for i:=1 to 7 do
 begin
 if i<>4 then
  begin
  setcolor(11);
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
	readkey;
	closegraph;
	end.
