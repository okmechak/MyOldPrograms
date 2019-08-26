program teploprovidnist; 

const 
   n=125; 
   m=66; 
   k=100; 
var 
   T:array[0..n,0..m]of real; 
   i,j:integer; 
   a,dx,dy,dt:real;

procedure enviroment;

 begin
  for i:=0 to n do 
    for j:=0 to m do 
      begin 
 pen(1,126+round(T[i,j]),0,0);
 brush(1,126+round(T[i,j]),0,0);
 rectangle(10*i,10*j,10*(i+1),10*(j+1));
 end;
 
 end;


procedure start;
  begin
  a:=1;
  dx:=0.1;
  dy:=dx;
  dt:=(sqr(dx)+sqr(dy))/(2*a);
  for i:=0 to n do 
    for j:=0 to m do 
      begin 
       T[i,j]:=126*sin(i/5)*sin(j/5);
      end; 
 end;

procedure disipating;    
 begin
  for i:=1 to n-1 do 
    for j:=1 to m-1 do 
      begin 
      T[i,j]:=a*dt*((T[i+1,j]-2*T[i,j]+T[i-1,j])/sqr(dx)+(T[i,j+1]-2*T[i,j]+T[i,j-1])/sqr(dy))+T[i,j];
      
      end;    
 end;
begin 
  start;
  enviroment;
  disipating; 
end.
