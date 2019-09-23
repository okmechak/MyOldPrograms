program sula_tertia; 

var 
   H,L:integer; 
   x1,y1,x2,y2,x3,y3:integer; 
   cs,sn,ab,bc,ac,k,k2,g,Vx,Vy,V,t,e,r,z,Ft,u,m,step,masa,fter,pvp,truvalosti,apruscor:real; 
   a,b,c,d,a1,b1,c1,d1,a3,b3,c3,d3,vxr,vyr,vxy:integer; 
   i:integer;
   label 30,31; 

begin 
writeln('1(pixel)=1(cm)');
  brush(1,213, 170, 255); 
  write('H(cm)   ='); 
  readln(H); 
  write('L(cm)   ='); 
  readln(L); 
  write('g(cm/c2)='); 
  readln(g);
  moveto(170,16); 
  write('m(kg)                          ='); 
  readln(masa); 
  moveto(170,32); 
  write('koeficient tertia (0.0 to 1.0) ='); 
  readln(u); 
  moveto(170,48); 
  write('step (0.0 to 1.0)              ='); 
  readln(step);
  write('position of Start object(x)');
  readln(x1);
  for i:=1 to  9999999999 do 
    begin 
      {-------------------seredovushche-----------------} 
      t:=(i/1000)*step;  
      x2:=x1+L; 
      y1:=150; 
      y2:=y1+H; 
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
      Fter:=u*(masa*g);
      pvp:=(g)*cs;{pruscorennia vil'nogo padinnia pvp}
      if pvp>fter then
      begin 
      {-----------Sula tertia---------------} 
      {---------------------tilo------------------------} 
      pen(1,62, 2, 219); 
      brush(1,255, 255, 25);
      k:=((sqr(t)*(pvp-fter))); 
      a:=round(x1+(masa+k)*sn); 
      b:=round(y1+(masa+k)*cs); 
      c:=round((x1+(0.5*masa)*cs)+(masa+k)*sn); 
      d:=round((y1-(0.5*masa)*sn)+(masa+k)*cs); 
      line(a,b,c,d); 
      a1:=round(((x1)+(0.5*masa)*cs)+(2*masa+k)*sn); 
      b1:=round(((y1)-(0.5*masa)*sn)+(2*masa+k)*cs); 
      c1:=round(x1+(2*masa+k)*sn); 
      d1:=round(y1+(2*masa+k)*cs); 
      line(a1,b1,c1,d1); 
      line(c,d,a1,b1); 
      line(a,b,c1,d1); 
      line(x1,y1,round(a+(100000*sn)),round(b+(100000*cs))); 
      
      {-----------------datchuku------------------------} 
      vyr:=round((((x1+(10+k)*sn)-(x1+(10+((sqr((1*g)/3000))*cs))*sn))/2)); 
      vxr:=round((((y1+(10+k)*cs)-(y1+(10+((sqr((1*g)/3000))*cs))*cs))/2)); 
      vxy:=round(sqrt(sqr(vyr)+sqr(vxr))); 
      e:=(vyr/t); 
      r:=(vxr/t); 
      z:=(vxy/t);
      apruscor:=k/sqr(t); 
      textcolor(64, 0, 64); 
      moveto(10,200); 
      writeln('t=',t:2:2); 
      brush(1,170, 255, 170); 
      writeln('Sy=',vxr,'cm'); 
      writeln('Sx=',vyr,'cm'); 
      writeln('S= ',vxy,'cm'); 
      brush(1,255, 225, 225); 
      writeln('Vx=',e:2:2,'cm/c'); 
      writeln('Vy=',r:2:2,'cm/c'); 
      writeln('V= ',z:2:2,'cm/c');
      writeln('a=',apruscor:2:3,'cm/c2'); 
      {-------------------vectoru-----------------------} 
      b3:=round((b+b1)/2); 
      a3:=round((a+a1)/2); 
      line(a3,round(b3+(b-y1)/3),a3,b3); 
      line(a3,b3,round(a3+(a-x1)/3),b3); 
      line(a3,b3,round(a3+(a-x1)/3),round(b3+(b-y1)/3)); 
      Vx:=a3+(a-x1); 
      Vy:=b3+(b-y1); 
      brush(0,255,255,255); 
      textcolor(128, 128, 0); 
      writeln('V'); 
      moveto(a,round(b3+(b-y1)/3)); 
      writeln('Vy'); 
      moveto(round(a3+(a-x1)/3),b3-x1); 
      writeln('Vx'); 
      {-----------------sturachka-----------------------} 
      brush(1,255,255,255); 
      pen(0,255,255,255); 
      line(a,b,c,d); 
      line(a1,b1,c1,d1); 
      line(c,d,a1,b1); 
      line(a,b,c1,d1); 
      line(a3,round(b3+(b-y1)),a3,b3); 
      line(a3,b3,round(a3+(a-x1)),b3); 
      line(a3,b3,round(a3+(a-x1)/3),round(b3+(b-y1)/3)); 
      textcolor(255, 255, 255); 
      moveto(round(a3+(a-x1)/3),round(b3+(b-y1)/3)); 
      writeln('V'); 
      moveto(a,round(b3+(b-y1)/3)); 
      writeln('Vy'); 
      moveto(round(a3+(a-x1)/3),b3-x1); 
      writeln('Vx');
      if (a=1260) or (b=660) or (a=0) or (b=0) then goto 30;
      
      end;
      if pvp<fter then
      begin
       {-------------------seredovushche-----------------} 
      t:=(i/1000)*step;  
      x2:=x1+L; 
      y1:=150; 
      y2:=y1+H; 
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
      {-----------Sula tertia---------------} 
      {---------------------tilo------------------------} 
      pen(1,62, 2, 219); 
      brush(1,255, 255, 25);
      Fter:=(u*masa*g);
      pvp:=(masa*g)*cs;{pruscorennia vil'nogo padinnia pvp} 
      k:=0; 
      a:=round(x1+(masa+k)*sn); 
      b:=round(y1+(masa+k)*cs); 
      c:=round((x1+(0.5*masa)*cs)+(masa+k)*sn); 
      d:=round((y1-(0.5*masa)*sn)+(masa+k)*cs); 
      line(a,b,c,d); 
      a1:=round(((x1)+(0.5*masa)*cs)+(2*masa+k)*sn); 
      b1:=round(((y1)-(0.5*masa)*sn)+(2*masa+k)*cs); 
      c1:=round(x1+(2*masa+k)*sn); 
      d1:=round(y1+(2*masa+k)*cs); 
      line(a1,b1,c1,d1); 
      line(c,d,a1,b1); 
      line(a,b,c1,d1); 
      line(x1,y1,round(a+(100000*sn)),round(b+(100000*cs))); 
      {-----------------vectoru-------------------------}
      b3:=round((b+b1)/2); 
      a3:=round((a+a1)/2); 
      line(a3,b3,a3,b3); 
      line(a3,b3,a3,b3); 
      line(a3,b3,a3,b3); 
      Vx:=a3+(a-x1);
      Vy:=b3+(b-y1); 
      apruscor:=0;
      brush(0,255,255,255); 
      textcolor(128, 128, 0); 
      writeln('V'); 
      moveto(a,round(b3+(b-x1)/3)); 
      writeln('Vy'); 
      moveto(round(a3+(a-y1)/3),b3-x1); 
      writeln('Vx'); 
      {-----------------datchuku------------------------} 
      vyr:=round(((x1+(10+k)*sn)-(x1+(10+((sqr((1*g)/3000))*cs))*sn))/2); 
      vxr:=round(((y1+(10+k)*cs)-(y1+(10+((sqr((1*g)/3000))*cs))*cs))/2); 
      vxy:=round(sqrt(sqr(vyr)+sqr(vxr))); 
      e:=vyr/t; 
      r:=vxr/t; 
      z:=vxy/t; 
      textcolor(64, 0, 64); 
      moveto(10,200); 
      writeln('t=',t:2:2); 
      brush(1,170, 255, 170); 
      writeln('Sy=',vxr,'cm'); 
      writeln('Sx=',vyr,'cm'); 
      writeln('S= ',vxy,'cm'); 
      brush(1,255, 225, 225); 
      writeln('Vx=',e:2:2,'cm/c'); 
      writeln('Vy=',r:2:2,'cm/c'); 
      writeln('V= ',z:2:2,'cm/c');
      writeln('a=',apruscor:2:3,'cm/c2'); 
      if t>8 then goto 30; 
    end;
    end;
    begin
    30:
    moveto(0,600);
    writeln('The End--------vukonav ?Kmechak<O+leg?Volodumuruvuch?');
    end; 
end.
