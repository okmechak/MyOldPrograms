program asjhd; 
var 
   cv,i,x1,x2,y1,y2,v1,v2,km,xm,ym:integer; 
   koef,ti,k,vx,vy,t,g,xo1,yo1,xo2,yo2,l,x,y,alpha,beta,gama,n,xa,ya,Vr:real; 
   label 19,18; 
begin 
  t:=0; 
  x1:=100; 
  x2:=511160; 
  y1:=350; 
  y2:=31451; 
  g:=897000; 
  n:=3; 
  k:=(x2-x1)/(y2-y1); 
  vx:=1; 
  vy:=-8; 
  alpha:=arctan(1/k); 
  xa:=120; 
  ya:=250; 
  cv:=0;
  koef:=0.94;
  xm:=0;
  ym:=0; 
  19: for i:=0 to 999999 do 
    begin
    brush(1,0,0,0);
    rectangle(-10,-10,1300,700);
    if isevent then 
    begin
    event(km,xm,ym);
    xm:=(xm-600);
    ym:=(ym-300);
    end;  
      t:=(i/9000); 
      xo1:=xa+(vx*t); 
      yo1:=ya+((vy*t)+((g*sqr(t))/2));
      xm:=-round((xa+(vx*t)))+120;
      ym:=-round((ya+((vy*t)+((g*sqr(t))/2))))+200; 
      pen(9,255,0,255); 
      line(xm+x1,ym+y1,xm+x2,ym+y2);
      moveto(10,10); 
      writeln('t=',t:2:3,'  a=',alpha*57.29577:2:4,'   V=',sqrt(sqr(vx)+sqr(vy+(g*t))):3:3,'  Vx=',Vx:2:2,'  Vy=',vy+g*t:2:2); 
      PEN(1,255,255,255); 
      BRUSH(2,0, 0, 255); 
      ELLIPSE(xm+round(xo1-9),ym+round(yo1-9),xm+round(xo1+9),ym+round(yo1+9)); 
      pen(1,64, 128, 128); 
      Point(xm+round(xo1)-10,ym+round(yo1)-10); 
      if (xo1<x2) and (xo1>x1) and (round((yo1-y1)*k)>round(xo1-x1)) then 
        begin 
          cv:=cv+1; 
          xa:=xo1; 
          ya:=yo1-3; 
          x:=vx; 
          y:=vy+(g*t); 
          beta:=arctan(y/x); 
          vr:=sqrt(sqr(x)+sqr(y))*koef; 
          vx:=-vr*cos((alpha+pi)-(beta)); 
          vy:=-vr*sin((alpha+pi)-(beta)); 
          if cv=50 then 
            goto 18; 
          goto 19; 
        end; 
    end; 
  18: 
end.
