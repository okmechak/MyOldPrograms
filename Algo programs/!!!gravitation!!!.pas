program Vsesvitnia_gravitation; 

var 
  fmin, m1,m2,v1x,S,v1y,v2x,v2y,F,a,cs,sn,k,t,alpha,Eks,Ek:real; 
   km,xm,ym,x,y,x1,y1,i,L,H,p1y,p1x,p2x,p2y,r1,r2,sec,xa,ya,Vx,Vy:integer; 

begin 
  m1:=50; 
  m2:=47; 
  p1x:=100; 
  p1y:=100; 
  p2x:=500; 
  p2y:=500;                                     
  K:=1; 
  eks:=0; 
  xm:=0; 
  ym:=0; 
  vx:=800; 
  Vy:=800; 
  fmin:=-1000;
  line(0,0,800,800); 
  for i:=0 to 99999999 do 
    begin 
      if isevent then 
        event(km,xm,ym); 
      t:=i/800; 
      r1:=round(sqrt(m1*3/pi)); 
      r2:=round(sqrt(m2*3/pi)); 
      x:=p1x; 
      y:=p1y;
      
      if i>0 then 
        x:=xa; 
      if i>0 then 
        y:=ya; 
      x1:=xm; 
      y1:=ym; 
      S:=sqrt(abs((x1-x)*(x1-x)+(y1-y)*(y1-y))); 
      if s=0 then 
        s:=0.0000000001; 
      F:=k*(m1*m2*56/sqr(S));
       if fmin<f then fmin:=f; 
      cs:=round(x1-x)/(round(S)+0.0000000001); 
      sn:=round(y1-y)/(round(S)+0.0000000001); 
      a:=f/m1; 
      Ek:=(F/m1); 
      eks:=eks+ek; 
      xa:={round(Vx*t/100)}+round((p1x+(sqr(t)*a)*cs)+((Ek)*sqr(t))*cs); 
      ya:={round(Vy*t/100)}+round((p1y+(sqr(t)*a)*sn)+((Ek)*sqr(t))*sn); 
      Ek:=(F/m1); 
      brush(1,0, 255, 64); 
      ellipse(xa-r1,ya-r1,xa+r1,ya+r1); 
      brush(1,255, 128, 0); 
      ellipse(x1-r2,y1-r2,x1+r2,y1+r2); 
      moveto(10,10); 
      writeln('T=',t:3:4,'C   F=',F:2:4,'H    Ek=',ek:1:4,'Dg     S=',s:3:5,'M    Fmax',fmin:2:3); 
    end; 
end.
