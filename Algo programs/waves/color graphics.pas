program asfd;
var i,j:integer;

function f(x,y:real):real;
 var a,po1,po2,po3,po4,po5,po6,po7,po8:real;
 begin
  a:=1;
  po1:=sqrt(sqr(x)+sqr(y));
  po2:=sqrt(sqr(x+6*pi)+sqr(y));
  po3:=sqrt(sqr(x+12*pi)+sqr(y));
  po4:=sqrt(sqr(x+18*pi)+sqr(y));
  po5:=sqrt(sqr(x-24*pi)+sqr(y));
  po6:=sqrt(sqr(x-6*pi)+sqr(y));
  po7:=sqrt(sqr(x-12*pi)+sqr(y));
  po8:=sqrt(sqr(x-18*pi)+sqr(y));
  if po1*po2*po3*po4<>0 then
  a:=sin(po1)/po1+sin(po2)/po2+sin(po3)/po3+sin(po4)/po4+sin(po5)/po5+sin(po6)/po6+sin(po7)/po7+sin(po8)/po8; ;
  f:=a;
 end;
 
procedure color(T,a,c:real); 
 var k,r,g,b:real;
 begin
 k:=(c-a)/7;
 r:=0;
 g:=0;
 b:=0;
 if (t>=a)and(t<a+k) then r:=255*(t-a)/k;
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
  if t>=c then begin r:=255; g:=255; b:=255; end;
 pen(1,round(r),round(g),round(b));
 end;
 
 
begin
 for j:=-round(628) to round(628) do
  for i:=-round(311) to round(311) do 
   begin
   color(f(j/5,i/5),-0.5,0.5);  
   point(j+628,i+311);
  end;
end. 
