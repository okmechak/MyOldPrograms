program jhrf; 

var 
   pxc,pyc,i,xm,ym,km,n,chois:integer; 
   xp,yp,zp,fv,croc:real; 
   xl1,yl1,zl1:array[1..999] of integer; 
   xl2,yl2,zl2:array[1..999] of integer; 
   alpha,beta,gama,kgrad:real; 
   key:char; 

   label 14,12; 

begin 
  croc:=1.5; 
  zp:=100; 
  yp:=0; 
  xp:=0;
  n:=0;
  pxc:=600;
  pyc:=350;
  fv:=0.04;
  for i:=1 to 999 do begin
  write('x1=');
  read(xl1[i]);
  write('y1=');
  read(yl1[i]);
  write('z1=');
  read(zl1[i]);
  write('x2=');
  read(xl2[i]);
  write('y2=');
  read(yl2[i]);
  write('z2=');
  read(zl2[i]);
  n:=n+1;
  clear;
  writeln(n);
  writeln('bla-bla-bla');
  readln(chois);
  if chois=1 then  goto 12;
  end;
  12:
  for i:=0 to 99999 do 
    begin 
    
      event(km,xm,ym); 
      pen(2,20, 255, 0);
    brush(1,0,0,0);
    rectangle(-1,-1,1300,750);
      if (km=1) then 
        begin 
          key:=chr(xm); 
          if (key='W') or (key='w') then 
            zp:=zp+croc; 
          if (key='S')or (key='s') then 
            zp:=zp-croc; 
          if (key='D')or(key='d') then 
            xp:=xp+croc; 
          if (key='A')or(key='a') then 
            xp:=xp-croc; 
          if (key='Q')or(key='q') then 
            yp:=yp-croc; 
          if (key='E')or(key='e') then 
            yp:=yp+croc; 
        end; 
        for i:=1 to n do begin
        pen(1,23,255,255);
      line(pxc+round((xp+xl1[i])/((zp+zl1[i])*fv)),pyc+round((yp+yl1[i])/((zp+zl1[i])*fv)),pxc+round((xp+xl2[i])/((zp+zl2[i])*fv)),pyc+round((yp+yl2[i])/((zp+zl2[i])*fv))); 
      end;
    end; 
end.
