program dgfdg;
const m=100;
      n=99;
type com=record
       a,b,mo,arg:real;
     end;
    complex=array[0..n]of com;       
var z:complex;
    i:com;
    xm,ym,km:integer;
    j,k:integer;
    
procedure suma(z1,z2:com;var z3:com);
 begin
  z3.a:=z1.a+z2.a;
  z3.b:=z1.b+z2.b; 
 end;
         
procedure rizn(z1,z2:com;var z3:com);
 begin
  z3.a:=z1.a-z2.a;
  z3.b:=z1.b-z2.b; 
 end; 
 
procedure mnozh(z1,z2:com;var z3:com); 
 begin
  z3.a:=z1.a*z2.a-z2.b*z1.b;
  z3.b:=z1.a*z2.b+z2.a*z1.b; 
 end;

procedure step(z1:com;n:integer;var z2:com);
 var z0:com;
 begin
  z0:=z1;
  for j:=1 to n-1 do mnozh(z0,z1,z1);
  z2:=z1;
 end;
 
procedure dill(z1,z2:com;var z3:com); 
 begin
  z3.a:=(z1.a*z2.a+z1.b*z2.b)/(sqr(z2.a)+sqr(z2.b)); 
  z3.b:=(z2.a*z1.b-z1.a*z2.b)/(sqr(z2.a)+sqr(z2.b));
 end;
 
procedure module(var z:com);
 begin
  z.mo:=sqrt(sqr(z.a)+sqr(z.a));
 end; 

procedure argum(var z:com);
 begin
  if z.a>0 then z.arg:=arctan(z.b/z.a);
  if (z.a<0)and(z.b>=0)then z.arg:=pi+arctan(z.b/z.a);
  if (z.a<0)and(z.b<0)then z.arg:=-pi+arctan(z.b/z.a);
  if (z.a=0)and(z.b>0)then z.arg:=pi/2;
  if (z.a=0)and(z.b<0)then z.arg:=-pi/2;
 end;    
 
 
    
begin
brush(1,255,255,255);
i.a:=0;
i.b:=1;
z[2].a:=10;
z[2].b:=3;
z[3].a:=-41;
z[3].b:=10;
repeat
event(km,xm,ym);
{rectangle(-1,-1,2000,2000);}
pen(1,0,0,0);
line(0,340,1300,340);
line(620,0,620,800);
z[1].a:=(xm-620)/30; 
z[1].b:=(-ym+340)/30;
mnozh(z[1],z[1],z[4]);
{line(round(z[4].a*30+620),round(-z[4].b*30+340),620,340);}
pen(1,0,0,255);
point(round(z[1].a*30+620),round(-z[1].b*30+340));
pen(1,  255, 0, 0);
point(round(z[4].a*30+620),round(-z[4].b*30+340));
until false;


end.
