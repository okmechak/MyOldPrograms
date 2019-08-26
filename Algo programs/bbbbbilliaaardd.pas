program biliard2D; 

var 
   r,xm,ym,km,j,i,x1,y1,z1,t1,x2,y2,z2,t2,x3,y3,z3,t3,x4,y4,z4,t4,x5,y5,z5,t5,x6,y6,z6,t6,al,xs1,ys1,xs2,ys2:integer; 
   tct,tst,pxo,pyo,t,xb,yb,Vx,Vy,V,a,alpha,beta,gama:real; 

   label 11,12,13,14,15,16,17; 

begin 
 13:
  r:=10; 
  a:=6300;
  tst:=0;
  t:=0;
  t:=0;
    tst:=0;
    tct:=0; 
  {for stil-------------------------------} 
  xs1:=10; 
  ys1:=10; 
  xs2:=1250; 
  ys2:=650; 
  al:=20; 
  x1:=xs1; 
  y1:=ys1; 
  z1:=xs1+al; 
  t1:=ys1+al; 
  x2:=round(((xs1+xs2)-al)/2); 
  y2:=ys1; 
  z2:=round(((xs1+xs2)+al)/2); 
  t2:=ys1+al; 
  x3:=xs2; 
  y3:=ys1; 
  z3:=xs2-al; 
  t3:=ys1+al; 
  x4:=xs2; 
  y4:=ys2; 
  z4:=xs2-al; 
  t4:=ys2-al; 
  x5:=round(((xs1+xs2)-al)/2); 
  y5:=ys2; 
  z5:=round(((xs1+xs2)+al)/2); 
  t5:=ys2-al; 
  x6:=xs1; 
  y6:=ys2; 
  z6:=xs1+al; 
  t6:=ys2-al; 
  pxo:=(xs2-xs1)/4; 
  pyo:=(ys2-ys1)/2;
  xb:=pxo;
  yb:=pyo; 
  {------------------------------------------------------} 
  
  12:
  t:=0;
 
    tst:=0;
    tct:=0;
  tst:=0;
  t:=0;
  pen(10,47, 94, 94); 
      brush(1,84, 168, 0); 
      rectangle(xs1,ys1,xs2,ys2); 
      pen(5,132, 0, 66); 
      brush(1,0, 0, 255); 
      rectangle(x1,y1,z1,t1); 
      rectangle(x2,y2,z2,t2); 
      rectangle(x3,y3,z3,t3); 
      rectangle(x4,y4,z4,t4); 
      rectangle(x5,y5,z5,t5); 
      rectangle(x6,y6,z6,t6); 
      brush(0,0,0,0); 
      pen(6,255, 0,0); 
      ellipse(round(pxo-3),round(pyo-3),round(pxo+3),round(pyo+3)); 
      pen(6,255, 0, 0); 
      ellipse(round(pxo-3),round(pyo-3),round(pxo+3),round(pyo+3)); 
  for i:=0 to 999999999 do 
    begin  
      event(km,xm,ym);
      pen(10,47, 94, 94); 
      brush(1,84, 168, 0); 
      rectangle(xs1,ys1,xs2,ys2); 
      pen(5,132, 0, 66); 
      brush(1,0, 0, 255); 
      rectangle(x1,y1,z1,t1); 
      rectangle(x2,y2,z2,t2); 
      rectangle(x3,y3,z3,t3); 
      rectangle(x4,y4,z4,t4); 
      rectangle(x5,y5,z5,t5); 
      rectangle(x6,y6,z6,t6); 
      brush(0,0,0,0); 
      pen(6,255, 0,0); 
      ellipse(round(pxo-3),round(pyo-3),round(pxo+3),round(pyo+3)); 
      pen(6,255, 0, 0); 
      ellipse(round(pxo-3),round(pyo-3),round(pxo+3),round(pyo+3)); 
      brush(2,0,0,0); 
      pen(1,255,255,255); 
      ellipse(round(xb-r),round(yb-r),round(xb+r),round(yb+r)); 
      moveto(round(xb-4),round(yb-8)); 
      textcolor(255, 255, 89); 
      writeln('8'); 
      if km>1 then 
        begin 
          if sqrt(sqr(xm-pxo)+sqr(ym-pyo))<300 then 
            begin 
              vx:=30*(xm-pxo); 
              vy:=30*(ym-pyo); 
              pen(round((300-sqrt(sqr(xm-pxo)+sqr(ym-pyo)))/20),0, 128, 0); 
              line(round(pxo),round(pyo),xm,ym); 
              brush(1,round(0.85*sqrt(sqr(xm-pxo)+sqr(ym-pyo))),255-round(0.85*sqrt(sqr(xm-pxo)+sqr(ym-pyo))),255-round(0.85*sqrt(sqr(xm-pxo)+sqr(ym-pyo)))); 
              if (ym<ys2-20) then
              writeln('  alpha=',(arctan(vx/(vy+0.0001))*360/(2*pi))+90:3:1,'"    Vx=',Vx:3:0,'   Vy=',Vy:3:0,'  V',sqrt(sqr(vx)+sqr(vy)):3:0); 
            end; 
          if sqrt(sqr(xm-pxo)+sqr(ym-pyo))>300 then 
            begin 
              moveto(xm,ym); 
              brush(1,255, 0, 0); 
              if (ym<ys2-20) then 
              writeln('!!! Max speed !!!'); 
              pen(1,100,0,0); 
            end; 
        end; 
      if km=1 then 
        goto 11; 
    end;
    t:=0;
    tst:=0;
    tct:=0; 
  11: 
  tct:=tct+t;
  tst:=(a*(t+tct));
  pen(10,47, 94, 94); 
  brush(1,84, 168, 0); 
  rectangle(xs1,ys1,xs2,ys2); 
  pen(5,132, 0, 66); 
  brush(1,0, 0, 255); 
  rectangle(x1,y1,z1,t1); 
  rectangle(x2,y2,z2,t2); 
  rectangle(x3,y3,z3,t3); 
  rectangle(x4,y4,z4,t4); 
  rectangle(x5,y5,z5,t5); 
  rectangle(x6,y6,z6,t6); 
  brush(0,0,0,0); 
  pen(6,255, 0,0); 
  ellipse(round(pxo-3),round(pyo-3),round(pxo+3),round(pyo+3)); 
  pen(6,255, 0, 0);
  ellipse(round(pxo-3),round(pyo-3),round(pxo+3),round(pyo+3)); 
  for i:=0 to 999999999 do 
    begin  
      t:=i/100000; 
      alpha:=arctan(vy/vx); 
      V:=sqrt (sqr(vx)+sqr(vy))-(tst+(a*t));
      if V-( a*(t))<0 then 
        begin
         pxo:=xb+5; 
         pyo:=yb; 
         goto 12;
       end;
      if (vx>0 ) and (vy>0)then 
        begin 
          xb:=pxo+(V*abs(cos(alpha))*t); 
          yb:=pyo+(V*abs(sin(alpha))*t); 
        end; 
      if (vx<0) and (vy>0)then 
        begin 
          xb:=pxo-(V*abs(cos(alpha))*t); 
          yb:=pyo+(V*abs(sin(alpha))*t); 
        end; 
      if (vx>0) and (vy<0)then 
        begin 
          xb:=pxo+(V*abs(cos(alpha))*t); 
          yb:=pyo-(V*abs(sin(alpha))*t); 
        end; 
      if (vx<0) and (vy<0)then 
        begin 
          xb:=pxo-(V*abs(cos(alpha))*t); 
          yb:=pyo-(V*abs(sin(alpha))*t); 
        end;  
      brush(2,0,0,0); 
      pen(1,84, 168, 0); 
      ellipse(round(xb-r),round(yb-r),round(xb+r),round(yb+r)); 
      moveto(round(xb-4),round(yb-8)); 
      textcolor(255, 255, 89); 
      writeln('8'); 
      if xb-r<xs1 then 
        begin 
          vx:=-vx; 
          pxo:=xb+5; 
          pyo:=yb; 
          goto 11; 
        end; 
      if xb+r>xs2 then 
        begin 
          vx:=-vx; 
          pxo:=xb-5; 
          pyo:=yb; 
          goto 11; 
        end;
        if yb-r<ys1 then 
        begin 
          vy:=-vy; 
          pxo:=xb; 
          pyo:=yb+5; 
          goto 11; 
        end;  
        if yb+r>ys2 then 
        begin 
          vy:=-vy; 
          pxo:=xb; 
          pyo:=yb-5; 
          goto 11; 
        end;
      if((xb<xs1+al)and(yb<ys1+al))then goto 13; 
      if((xb<(xs2+xs1+al)/2)and(xb>(xs2+xs1-al)/2)and(yb<ys1+al)) then goto 13;
      if((xb<(xs2+xs1+al)/2)and(xb>(xs2+xs1-al)/2)and(yb>ys2-al)) then goto 13; 
      if((yb<ys1+al)and(xb>xs2-al)) then goto 13; 
      if((xb<xs1+al)and(yb>ys2-al)) then goto 13; 
      if((yb>ys2-al)and(xb>xs2-al))then goto 13;   
    end; 
end.
