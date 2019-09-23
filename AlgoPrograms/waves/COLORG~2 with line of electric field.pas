program asfd; 

var 
   i,j:integer; 
   eps,xp,yp,vx,vy:real; 

function f(x,y:real):real; 

var 
   a,po1,po2,po3,po4,po5,po6,po7,po8:real; 
begin 
  a:=1; 
  po1:=sqr(x-100)+sqr(y); 
  po2:=sqr(x+100)+sqr(y); 
  if (po1>50) and (po2>50) then 
    a:=-70/po1+30/po2 
  else 
    a:=0; 
  f:=a; 
end; 

procedure color(T,a,c:real); 

var 
   k,r,g,b:real; 
begin 
  k:=(c-a)/7; 
  r:=0; 
  g:=0; 
  b:=0; 
  if (t>=a)and(t<a+k) then 
    r:=255*(t-a)/k; 
  if (t>=a+k)and(t<a+2*k) then 
    begin 
      r:=255; 
      g:=255*(t-a-k)/k; 
    end; 
  if (t>=a+2*k)and(t<a+3*k) then 
    begin 
      g:=255; 
      r:=255*(1-(t-a-2*k)/k); 
    end; 
  if (t>=a+3*k)and(t<a+4*k) then 
    begin 
      g:=255; 
      b:=255*(t-a-3*k)/k; 
    end; 
  if (t>=a+4*k)and(t<a+5*k) then 
    begin 
      b:=255; 
      g:=255*(1-(t-a-4*k)/k); 
    end; 
  if (t>=a+5*k)and(t<a+6*k) then 
    begin 
      b:=255; 
      r:=255*(t-a-5*k)/k; 
    end; 
  if (t>=a+6*k)and(t<a+7*k) then 
    begin 
      b:=255; 
      r:=255; 
      g:=255*(t-a-6*k)/k; 
    end; 
  if t>=c then 
    begin 
      r:=255; 
      g:=255; 
      b:=255; 
    end; 
  pen(1,round(r),round(g),round(b)); 
end; 

function step(a:real):integer; 

var 
   gh:integer; 
begin 
  if a>0 then 
    gh:=15; 
  if a=0 then 
    gh:=0; 
  if a<0 then 
    gh:=-15; 
end; 

begin 
  eps:=0.01; 
   for j:=-round(628) to round(628) do 
    for i:=-round(311) to round(311) do 
      begin 
        color(f(j,i),-0.3,0.3); 
        point(j+628,i+311); 
      end; 
  begin 
  xp:=100;
  yp:=100;
  moveto(round(xp),round(yp));
  repeat
   lineto(628+round(xp),311+round(yp));
   vx:=(f(xp+eps,yp)-f(xp,yp))/eps;
   vy:=(f(xp,yp+eps)-f(xp,yp))/eps;
   xp:=xp+10*vx;
   yp:=yp+10*vy;
   until false;
  
  
  
  end; 
end.
