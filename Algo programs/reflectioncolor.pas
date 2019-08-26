program boll; 

const 
   m={1860}10; 
type 
   vector=record 
        x,y:real 
   end; 
   object=record 
        r0,r,v0,v:vector; 
        t:real 
   end; 
var 
   tglob,dt,defy,dx:real; 
   i:integer; 
   g,n:vector; 
   B:array[0..m]of object; 

function f(x,t:real):real; 

begin 
  f:=-abs((x-630))+655; 
end; 

procedure enviroment; 

var 
   kl:integer; 
begin 
  point(0,0); 
  for kl:=0 to 1260 do 
    lineto(kl,round(f(kl,tglob))); 
end; 

procedure reflection; 

begin 
  B[i].r0.x:=B[i].r.x; 
  B[i].r0.y:=f(B[i].r.x,tglob)-0.001; 
  dx:=0.0000001; 
  defy:=(f(B[i].r.x+dx,tglob)-f(B[i].r.x,tglob))/dx; 
  n.y:=defy/sqrt(sqr(defy)+1); 
  n.x:=1/sqrt(sqr(defy)+1); 
  B[i].v0.x:=B[i].v.x+g.x*B[i].t; 
  B[i].v0.y:=B[i].v.y+g.y*B[i].t; 
  B[i].v.x:=1*(+B[i].v0.x*(sqr(n.x)-sqr(n.y))+B[i].v0.y*2*n.x*n.y); 
  B[i].v.y:=1*(-B[i].v0.y*(sqr(n.x)-sqr(n.y))+B[i].v0.x*2*n.x*n.y); 
  B[i].t:=-dt; 
end; 

procedure zerovalues; 

begin 
  for i:=0 to m do 
    begin 
      dt:=0.01; 
      tglob:=-dt; 
      B[i].t:=-dt; 
      B[i].r0.x:=630+(i-5)*50; 
      B[i].r0.y:=100; 
      B[i].v.x:=0; 
      B[i].v.y:=0; 
      g.x:=0.0; 
      g.y:=0.1; 
    end; 
end; 

begin 
  zerovalues; 
  enviroment; 
  repeat 
    tglob:=tglob+dt; 
    for i:=0 to m do 
      begin 
        B[i].t:=B[i].t+dt; 
        B[i].r.x:=B[i].r0.x+B[i].v.x*B[i].t+g.x*sqr(B[i].t)/2; 
        B[i].r.y:=B[i].r0.y+B[i].v.y*B[i].t+g.y*sqr(B[i].t)/2; 
        pen(2, round(120+120*sin(tglob/8)), round(120+120*sin(tglob/5)), round(i/m*255)); 
        point(round(B[i].r.x),round(B[i].r.y));
        if (i<>m)and(tglob>0)then
          line(round(B[i].r.x),round(B[i].r.y),round(B[i+1].r.x),round(B[i+1].r.y));
        if B[i].r.y>f(B[i].r.x,tglob)then 
          reflection; 
      end; 
  until tglob>100000; 
end.
