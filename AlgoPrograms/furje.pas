PROGRAM furje;
const n=10;
type  vector=array[0..n]of real;
var  c,a,b,h:vector;
       i,j,v:integer;
   x1,y1,dx1:real;

function F(x:real):real;
 begin
  if x<0 then
  F:=x/2
  else f:=x/2;
 end;
 
procedure setbasis(x:real); 
 begin 
  a[0]:=1/2;
  for v:=1 to n do
   begin
    a[v]:=cos(v*x);
    b[v]:=sin(v*x);
   end;
 end;

function g(x:real; cup,jk:integer):real;
 var l:real;
 begin
  l:=1/pi;
  if jk=0 then  g:=f(x)*l*cos(cup*x);
  if jk=1 then  g:=f(x)*l*sin(cup*x);
  if(cup=0)and(jk=0)then g:=f(x)*l; 
 end;      
 
function Integrate(tup,jk:integer):real; 
var   sum,dx:real;
      ko:INTEGER; 
 begin   
  ko:=5000;
  dx:=(2*pi)/ko; 
  sum:=0; 
  for j:=0 to ko-1 do 
    sum:=sum+(g(-pi+dx*j,tup,jk)+g(-pi+dx*(j+1),tup,jk))*dx/2; 
  integrate:=sum; 
end;  

procedure setcoords;
 begin
  for i:=0 to n do 
   begin 
    c[i]:=integrate(i,0);
    h[i]:=integrate(i,1);
   end;  
 end;

begin
setcoords;
x1:=-pi*2;
dx1:=0.01;
repeat
x1:=x1+dx1;
y1:=a[0]*c[0];
setbasis(x1);
for i:=1 to n do y1:=y1+a[i]*c[i]+b[i]*h[i];
point(round(x1*100)+620,round(-y1*100)+340);
if (x1>-pi)and(x1<pi) then point(round(x1*100)+620,round(-f(x1)*100)+340);

until x1>=2*pi;
y1:=0;
for i:=0 to n do writeln(c[i]:4:4,'     ',h[i]:4:4);
for i:=0 to n do y1:=y1+abs(h[i]);
writeln(y1:4:9);
end.
