program afdsf;

var i,j,k,x,y:integer;
    alpha,gama,c:real;



function f(x:real):real;
 var a:real;
 begin
 x:=x-629;
 a:=sin(x/11);
 f:=-a*100+345;
 
 end;
 
 
begin
k:=-1;
repeat
k:=K+1;
event(k,x,y);
brush(9,0,0,0);
rectangle(0,0,1290,700);
pen(0,64, 128, 128);
line(0,345,1300,345);
line(629,0,629,700);
gama:=pi/2-2*arctan((f(x+0.01)-f(x))/0.01); 
alpha:=pi/2-arctan((f(x+0.01)-f(x))/0.01);
moveto(0,round(f(0)));
pen(3,19, 45, 166);
for i:=1 to 1300 do begin
lineto(round(i),round(f((i+1))));

end;
pen(1,  255, 255, 0); 
line(x,0,x,round(f(x))); 

line(x,round(f(x)),round(600*cos(gama))+x,round(f(x)-600*sin(gama)));
pen(1,   0, 123, 0);
line(x-round(600*cos(alpha)),round(f(x)+600*sin(alpha)),round(600*cos(alpha))+x,round(f(x)-600*sin(alpha)));
 
 
 
 
 
 
until k>40; 
 end.
