program teploprovidnist; 

const 
   n=1260;  
   k=100; 
var 
   T:array[0..n]of real; 
   i:integer; 
   a,dx,dt:real; 
   km,xm,ym:integer;

procedure enviroment; 

begin 
  for i:=0 to n do 
      begin 
        pen(1,round(T[i]),round(T[i]),round(T[i])); 
        line(i,0,i,658);
      end; 
end; 

procedure start; 

begin 
  a:=1; 
  dx:=0.00001; 
  dt:=sqr(dx)/(2*a); 
  repeat 
   enviroment;
   event(km,xm,ym);   
         T[xm]:=T[xm]+20;
         T[xm-1]:=T[xm-1]+20;
         T[xm+1]:=T[xm+1]+20;
         T[xm-2]:=T[xm-2]+20;
         T[xm+2]:=T[xm+2]+20;
  until ym>600; 
end; 

procedure disipating; 

begin 
  for i:=1 to n-1 do T[i]:=a*dt*(T[i+1]-2*T[i]+T[i-1])/sqr(dx)+T[i]; 
end; 

begin 
  start; 
  
  repeat
    if isevent=true then 
       begin 
         event(km,xm,ym);
         T[xm]:=T[xm]+250;
         T[xm-1]:=T[xm-1]+250;
         T[xm+1]:=T[xm+1]+250;
         T[xm-2]:=T[xm-2]+250;
         T[xm+2]:=T[xm+2]+250;
        end;
    enviroment; 
    disipating; 
  until false; 
end.
