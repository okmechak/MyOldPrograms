program dsfg; 

var 
   H,L:integer; 
   x1,y1,x2,y2,x3,y3:integer; 
   cs,sn,ab,bc,ac,k,k2,g,Vx,Vy,V,t,e,r,z:real; 
   a,b,c,d,a1,b1,c1,d1,a3,b3,c3,d3,vxr,vyr,vxy:integer; 
   i:integer; 

begin 
brush(1,213, 170, 255);
  write('H='); 
  readln(H); 
  write('L='); 
  readln(L); 
  write('g='); 
  readln(g); 
  for i:=1 to 55000 do 
    begin 
      {-------------------seredovushche-----------------} 
      x1:=20; 
      x2:=20+L; 
      y1:=70; 
      y2:=70+H; 
      pen(1,91, 219, 120); 
      line 
      {gipotenyza ab}(x1,y1,x2,y2); 
      line 
      {catet1 ac vertukal'}(x1,y1,x1,y2); 
      line 
      {catet2 bc goruzontal'}(x2,y2,x1,y2); 
      bc:=x2-x1; 
      ac:=y2-y1; 
      ab:=(sqrt(sqr(ac)+sqr(bc))); 
      cs:=(ac/ab); 
      sn:=(bc/ab); 
      {---------------------tilo------------------------} 
      pen(1,62, 2, 219); 
      brush(1,255, 255, 25); 
      k:=(sqr((i*g)/3000))*cs; 
      a:=round(x1+(10+k)*sn); 
      b:=round(y1+(10+k)*cs); 
      c:=round((x1+25*cs)+(10+k)*sn); 
      d:=round((y1-25*sn)+(10+k)*cs); 
      line(a,b,c,d); 
      a1:=round(((x1)+25*cs)+(55+k)*sn); 
      b1:=round(((y1)-25*sn)+(55+k)*cs); 
      c1:=round(x1+(55+k)*sn); 
      d1:=round(y1+(55+k)*cs); 
      line(a1,b1,c1,d1); 
      line(c,d,a1,b1); 
      line(a,b,c1,d1); 
      line(x1,y1,round(a+(100000*sn)),round(b+(100000*cs))); 
      {-------------------vectoru-----------------------} 
      b3:=round((b+b1)/2); 
      a3:=round((a+a1)/2); 
      line(a3,round(b3+(b-70)/3),a3,b3); 
      line(a3,b3,round(a3+(a-20)/3),b3); 
      line(a3,b3,round(a3+(a-20)/3),round(b3+(b-70)/3)); 
      Vx:=a3+(a-20); 
      Vy:=b3+(b-70); 
      brush(0,255,255,255); 
      textcolor(128, 128, 0); 
      writeln('V'); 
      moveto(a,round(b3+(b-70)/3)); 
      writeln('Vy'); 
      moveto(round(a3+(a-20)/3),b3-20); 
      writeln('Vx'); 
      {-----------------datchuku------------------------}
      t:=i/1000;
      vyr:=round(((x1+(10+k)*sn)-(x1+(10+((sqr((1*g)/3000))*cs))*sn))/2);
      vxr:=round(((y1+(10+k)*cs)-(y1+(10+((sqr((1*g)/3000))*cs))*cs))/2);
      vxy:=round(sqrt(sqr(vyr)+sqr(vxr)));
      e:=vyr/t;
      r:=vxr/t;
      z:=vxy/t;
      moveto(10,200);
      writeln('t=',t:2:2);
      brush(1,170, 255, 170);
      writeln('Sy=',vxr);
      writeln('Sx=',vyr);
      writeln('S= ',vxy);
      brush(1,255, 225, 225);
      writeln('Vx=',e:2:3);
      writeln('Vy=',r:2:3);
      writeln('V= ',z:2:3);
      {-----------------sturachka-----------------------} 
      brush(1,255,255,255);
      pen(0,255,255,255); 
      line(a,b,c,d); 
      line(a1,b1,c1,d1); 
      line(c,d,a1,b1); 
      line(a,b,c1,d1); 
      line(a3,round(b3+(b-70)),a3,b3); 
      line(a3,b3,round(a3+(a-20)),b3); 
      line(a3,b3,round(a3+(a-20)/3),round(b3+(b-70)/3)); 
      textcolor(255, 255, 255); 
      moveto(round(a3+(a-20)/3),round(b3+(b-70)/3)); 
      writeln('V'); 
      moveto(a,round(b3+(b-70)/3)); 
      writeln('Vy'); 
      moveto(round(a3+(a-20)/3),b3-20); 
      writeln('Vx'); 
    end; 
end.
