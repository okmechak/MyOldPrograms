program d3game; 

var 
   mx,my,k:integer; 
   x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4:integer; 
   fv,V,t,c1:real; 
   i,pxc,pyc,pxb,pyb,z:integer; 
   a1,b1,a2,b2,c2,a3,b3,c3,a4,b4,c4:integer; 
   a1l,b1l,a2l,b2l,c2l,a3l,b3l,c3l,a4l,b4l,c4l:integer; 
   points,j,u,l:integer; 
   key:char; 
   shx,shy,shz,crocz,crocy,crocx,at,bt,ct:real; 
   xm1,ym1,zm,xm2,ym2,at1,bt1,ct1,at2,bt2,ct2:integer; 

   label 15,17; 

begin 
  brush(1,0,0,0); 
  rectangle(-1,-1,99999,99999); 
  pxc:=627; 
  pyc:=325; 
  shy:=pyc; 
  shx:=pxc; 
  shz:=1; 
  crocx:=20; 
  crocy:=20; 
  crocz:=0.06; 
  points:=0; 
  17: j:=100; 
  fv:=1; 
  z:=60; 
  V:=3; 
  pxb:=pxc-random(2*pxc); 
  pyb:=pyc-random(2*pyc); 
  a1:=70+random(50); 
  b1:=40+random(50); 
  c1:=0.01+random(10)/10; 
  brush(1,0,0,0); 
  rectangle(-1,-1,99999,99999); 
  for i:=0 to 9999999999 do 
    begin 
      t:=i/100; 
      if isevent then 
        begin 
          event(u,j,l); 
          if (u=1) then 
            begin 
              key:=chr(j); 
              textcolor(244,244,34); 
              writeln(key); 
              if (key='W') or (key='w') then 
                shz:=shz+crocz; 
              if (key='S')or (key='s') then 
                shz:=shz-crocz; 
              if (key='D')or(key='d') then 
                shx:=shx+crocx; 
              if (key='A')or(key='a') then 
                shx:=shx-crocx; 
              if (key='Q')or(key='q') then 
                shy:=shy-crocy; 
              if (key='E')or(key='e') then 
                shy:=shy+crocy; 
             if J=27 then goto 15;  
            end;
            if u=3 then 
              begin
            shy:=l-pyc;
            shx:=j-pxc;
            end;
        end; 
      brush(1,0,0,0); 
      {rectangle(-1,-1,99999,99999);} 
      ct:=0.5; 
      at:=190; 
      bt:=50; 
      at1:=round(at/(shz*fv)); 
      bt1:=round(bt/(shz*fv)); 
      at2:=round(at/((shz+ct)*fv)); 
      bt2:=round(bt/((shz+ct)*fv)); 
      xm1:=round(shx/(shz*fv))+pxc; 
      ym1:=round(shy/(shz*fv))+pyc; 
      xm2:=round(shx/((shz+ct)*fv))+pxc; 
      ym2:=round(shy/((shz+ct)*fv))+pyc; 
      pen(1,255,255,0); 
      x1:=round(pxb/((z*fv-(V*t))+0.00001)+pxc); 
      y1:=round(pyb/((z*fv-(v*t))+0.00001)+pyc); 
      x2:=round(pxb/(((z+c1)*fv-(v*t))+0.00001)+pxc); 
      y2:=round(pyb/(((z+c1)*fv-(v*t))+0.00001)+pyc); 
      a2l:=round(a1/((z+c1)*fv-(v*t))); 
      b2l:=round(b1/((z+c1)*fv-(v*t))); 
      A1l:=round(a1/(z*fv-(v*t))); 
      b1l:=round(b1/(z*fv-(v*t)));
      {pereshcoda-------body-------------------------} 
      pen(1,255,0,0); 
      line(x2-a2l,y2-b2l,x2+a2l,y2-b2l); 
      line(x2+a2l,y2-b2l,x2+a2l,y2+b2l); 
      line(x2+a2l,y2+b2l,x2-a2l,y2+b2l); 
      line(x2-a2l,y2-b2l,x2-a2l,y2+b2l); 
      pen(1,0,255,0); 
      line(x1-a1l,y1-b1l,x2-a2l,y2-b2l); 
      line(x1+a1l,y1-b1l,x2+a2l,y2-b2l); 
      line(x1+a1l,y1+b1l,x2+a2l,Y2+b2l); 
      line(x1-a1l,y1+b1l,x2-a2l,y2+b2l); 
      pen(1,0, 0, 255); 
      line(x1-a1l,y1-b1l,x1+a1l,y1-b1l); 
      line(x1+a1l,y1-b1l,x1+a1l,y1+b1l); 
      line(x1-a1l,y1+b1l,x1+a1l,y1+b1l); 
      line(x1-a1l,y1-b1l,x1-a1l,y1+b1l); 
      {shutle-------body-----------------------------} 
      pen(1,0, 255, 0); 
      line(xm1-at1,ym1-bt1,xm1+at1,ym1-bt1); 
      line(xm1+at1,ym1-bt1,xm1+at1,ym1+bt1); 
      line(xm1+at1,ym1+bt1,xm1-at1,ym1+bt1); 
      line(xm1-at1,ym1+bt1,xm1-at1,ym1-bt1); 
      line(xm2-at2,ym2-bt2,xm2+at2,ym2-bt2); 
      line(xm2+at2,ym2-bt2,xm2+at2,ym2+bt2); 
      line(xm2+at2,ym2+bt2,xm2-at2,ym2+bt2); 
      line(xm2-at2,ym2+bt2,xm2-at2,ym2-bt2); 
      line(xm1-at1,ym1-bt1,xm2-at2,ym2-bt2); 
      line(xm1+at1,ym1-bt1,xm2+at2,ym2-bt2); 
      line(xm1+at1,ym1+bt1,xm2+at2,ym2+bt2); 
      line(xm1-at1,ym1+bt1,xm2-at2,ym2+bt2); 
      if (shx<pxb+a1l) and (shx>pxb-a1l) and (pxb<shx+at1) and (pxb>shx-at1) and (z-v*t=shz+ct) and (shy<pyb+b1l) and (shy>pyb-b1l) and(pyb<shy+bt2) and (pyb>shy-bt2) then 
        points:=points+1;
      if z*fv<(v*t)+0.2 then 
        goto 17; 
      {writeln dani-----------------------------} 
      moveto(10,10); 
      writeln('time=',t:2:3); 
      writeln('for shutle'); 
      writeln('X=',shx:2:3,'  Y=',shy:2:3,'  Z=',(shz+ct)*fv:2:3); 
      writeln('for object'); 
      writeln('X=',pxb,'  Y=',pyb,'  Z=',(Z-V*t)*fv:2:3); 
      writeln('score ',points); 
    end; 
  15: 
end.
