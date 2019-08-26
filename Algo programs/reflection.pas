program boll; 
const m=10;
type 
   vector=record 
        x,y:real 
   end; 
   object=record 
        r0,r,v:vector; 
        t:real 
   end; 
var 
   tglob,dt,defy,dx:real; 
   i:integer; 
   g,n:vector;
   B:array[0..m] of object;

function f(x:real):real; 

begin 
  f:=0;
  f:=-100*exp(sin((x-630)/100))+440; 
end; 

procedure enviroment; 

begin 
  brush(1, 189, 218, 253); 
  pen(1,0, 0, 0); 
  rectangle(0,0,1256,876); 
  point(0,0); 
  for i:=1 to 1256 do 
    lineto(i,round(f(i))); 
  brush(1, 155, 155, 155) ; 
  fill(30,850); 
end; 

procedure reflection; 

begin 
  B[0].r0.x:=B[0].r.x; 
  B[0].r0.y:=B[0].r.y-0.00001; 
  dx:=0.000000000001; 
  defy:=(f(B[0].r.x+dx)-f(B[0].r.x))/dx; 
  n.y:=defy/sqrt(sqr(defy)+1); 
  n.x:=1/sqrt(sqr(defy)+1); 
  B[0].v.x:=B[0].v.x+g.x*B[0].t; 
  B[0].v.y:=B[0].v.y+g.y*B[0].t; 
  B[0].v.x:=B[0].v.x*(sqr(n.x)-sqr(n.y))+B[0].v.y*2*n.x*n.y; 
  B[0].v.y:=-B[0].v.y*(sqr(n.x)-sqr(n.y))+B[0].v.x*2*n.x*n.y; 
  B[0].t:=-dt; 
end; 

procedure zerovalues; 

begin 
  tglob:=0; 
  B[0].t:=0; 
  dt:=0.01; 
  B[0].r.x:=18; 
  B[0].r.y:=130; 
  B[0].v.x:=0; 
  B[0].v.y:=0; 
  g.x:=0; 
  g.y:=0.01; 
end; 

begin 
  zerovalues; 
  enviroment; 
  repeat 
    tglob:=tglob+dt; 
    B[0].t:=B[0].t+dt; 
    B[0].r.x:=B[0].r0.x+B[0].v.x*B[0].t+g.x*sqr(B[0].t)/2; 
    B[0].r.y:=B[0].r0.y+B[0].v.y*B[0].t+g.y*sqr(B[0].t)/2; 
    pen(2, 7, 63, 17); 
    point(round(B[0].r.x),round(B[0].r.y)); 
    if B[0].r.y>=-100*exp(sin((B[0].r.x-630)/100))+440 then reflection; 
  until tglob>100000; 
end.
