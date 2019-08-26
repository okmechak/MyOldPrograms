program zdkjf; 

var 
   tst,g,alpha,V,xt,yt,Vx,Vy,K,a,t:real; 
   xl1,yl1,xl2,yl2,x1l1,y1l1,x1l2,y1l2,score,xl,yl,al,xm,ym,km,x1,y1,x2,y2,i,pyo,pxo,R:integer; 

   label 11,12; 

begin 
  score:=0; 
  xt:=1; 
  yt:=1; 
  t:=0; 
  x1:=20; 
  y1:=40; 
  x2:=1240; 
  y2:=640; 
  g:=90; 
  r:=10; 
  vx:=3; 
  vy:=1; 
  km:=1; 
  tst:=0; 
  al:=25; 
  xl:=x1+al; 
  yl:=y1+al; 
  pyo:=round((y2+y1)/2); 
  pxo:=round((x2+x1)/2); 
  xm:=pxo; 
  ym:=pyo; 
  k:=1.00; 
  xl1:=x1+random(x2-x1); 
  xl2:=xl1; 
  yl1:=y1+random(y2-y1); 
  yl2:=yl1+random(400); 
  y1l1:=y1+random(y2-y1); 
  y1l2:=y1l1; 
  x1l1:=x1+random(x2-x1); 
  x1l2:=x1l1-random(400); 
  12: if t>0 then 
    begin 
      pxo:=round(xt); 
      pyo:=round(yt); 
      ellipse(round(xt+r),round(yt+r),round(xt-r),round(yt-r)); 
    end; 
  rectangle(x1,y1,x2,y2); 
  rectangle(xl-al,yl-al,xl+al,yl+al); 
  line(xl1,yl1,xl2,yl2); 
  line(x1l1,y1l1,x1l2,y1l2); 
  for i:=0 to 999999 do 
    begin 
      {line(pxo,pyo,xm,ym);} 
      ellipse(round(xt+r),round(yt+r),round(xt-r),round(yt-r)); 
      vx:=(xm-pxo); 
      vy:=(ym-pyo); 
      moveto(100,10); 
      writeln('                            Vx=',Vx:2:0,'     Vy=',Vy:2:0,'   V',(sqrt(sqr(vx)+sqr(vy)))/29:3:0); 
      event(km,xm,ym); 
      if (km=1) then 
        goto 11; 
    end; 
  t:=0; 
  tst:=0; 
  11: tst:=0;
  for i:=0 to 999999999 do 
    begin 
      pen(8,255,0,0); 
      line(xl1,yl1,xl2,yl2); 
      line(x1l1,y1l1,x1l2,y1l2); 
      rectangle(xl-al,yl-al,xl+al,yl+al); 
      textcolor(234,54,123); 
      t:=i/900; 
      V:=(sqrt(sqr(vx)+sqr(vy)))-(g*(t+tst)); 
      if v<abs(g*t) then 
        goto 12; 
      alpha:=arctan(vy/vx); 
      if (vy>0)and(vx>0) then 
        begin 
          xt:=pxo+(V*cos(alpha)*t); 
          yt:=pyo+(V*sin(alpha)*t); 
        end; 
      if (vy<0)and(vx>0) then 
        begin 
          xt:=pxo+(V*abs(cos(alpha))*t); 
          yt:=pyo+(-V*abs(sin(alpha))*t); 
        end; 
      if (vy>0)and(vx<0) then 
        begin 
          xt:=pxo+(-V*abs(cos(alpha))*t); 
          yt:=pyo+(V*abs(sin(alpha))*t); 
        end; 
      if (vy<0)and(vx<0) then 
        begin 
          xt:=pxo+(-V*abs(cos(alpha))*t); 
          yt:=pyo+(-V*abs(sin(alpha))*t); 
        end; 
      brush(1,255,255,255); 
      ellipse(round(xt+r),round(yt+r),round(xt-r),round(yt-r)); 
      moveto(100,10); 
      writeln('                            Vx=',Vx:2:0,'     Vy=',Vy:2:0,'   V',(V)/29:3:1,'         tst',tst:2:5); 
      if (xt<x1) or (xt>x2) or ((xt>xl1-3)and(xt<xl1+3)and (yt>yl1) and (yt<yl2)) then 
        begin 
          rectangle(x1,y1,x2,y2); 
          vx:=-vx; 
          pxo:=round(xt); 
          pyo:=round(yt); 
          tst:=tst; 
          goto 11; 
        end; 
      if (yt<y1) or (yt>y2)or((yt>y1l1-4)and(yt<y1l2+4)and(xt>x1l1)and(xt<x1l2))then 
        begin 
          rectangle(x1,y1,x2,y2); 
          vy:=-vy; 
          pxo:=round(xt); 
          pyo:=round(yt); 
          tst:=t+tst; 
          goto 11; 
        end; 
      if (xt<xl+(al)) and(xt>xl-(al))and(yt<yl+(al)) and(yt>yl-(al)) then 
        begin 
          score:=score+200; 
          xt:=300; 
          yt:=xt; 
          goto 12; 
        end; 
      pen(10,255,255,255); 
      ellipse(round(xt+r),round(yt+r),round(xt-r),round(yt-r)); 
    end; 
end.
