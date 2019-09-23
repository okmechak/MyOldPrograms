PROGRAM JSG; 

var 
   mh,nh,t,r1,r2,r3,r4,x,y,p1x,p2x,p1y,p2y,p1xr,p1yr,p2xl,p2yl,p3xr,p3yr,p3x,p3y,p3xl,p3yl:real; 
   rx3,ry3,m,n,i,rx1,ry1,rx2,ry2,rxr,ryr,rxl,ryl,xm,ym,km:integer;
   label 11;
begin
n:=0; 
m:=70;
  p1x:=100; 
  p1y:=80; 
  p2x:=800; 
  p2y:=500; 
  p1xr:=150; 
  p1yr:=400; 
  p2xl:=641; 
  p2yl:=50;
  p3x:=600;
  p3y:=600;
  rx1:=round(p1x);
  ry1:=round(p1y);
  rx2:=round(p2x);
  ry2:=round(p2y);
  rx3:=round(p3x);
  ry3:=round(p3y);
  rxr:=round(p1xr);
  ryr:=round(p1yr);
  rxl:=round(p2xl);
  ryl:=round(p2yl);
  xm:=1;ym:=1;
  11:
 if isevent then begin
 event(km,xm,ym);
  if (xm<=rx1+10) and (xm>=rx1-10) and (ym<=ry1+10)and(ym>=ry1-10) then begin
  rx1:=xm;
  ry1:=ym;
  p1x:=xm;
  p1y:=ym;
  end;
   if (xm<=rx2+10) and (xm>=rx2-10) and (ym<=ry2+10)and(ym>=ry2-10) then begin
  rx2:=xm;
  ry2:=ym;
   p2x:=xm;
  p2y:=ym;
  end;
  if (xm<=rxr+10) and (xm>=rxr-10) and (ym<=ryr+10)and(ym>=ryr-10) then begin
  rxr:=xm;
  ryr:=ym;
   p1xr:=xm;
  p1yr:=ym;
  end;
   if (xm<=rxl+10) and (xm>=rxl-10) and (ym<=ryl+10)and(ym>=ryl-10) then begin
  rxl:=xm;
  ryl:=ym;
   p2xl:=xm;
  p2yl:=ym;
  end;
   if (xm<=rx3+10) and (xm>=rx3-10) and (ym<=ry3+10)and(ym>=ry3-10) then begin
  rx3:=xm;
  ry3:=ym;
  p3x:=xm;
  p3y:=ym;
  end;
  end;
  brush(1,0,0,0);
  rectangle(-1,-1,1300,750);
   n:=n+1;
   m:=m-1;
   nh:=n/200;
   mh:=m/370;
   if n=200 then n:=0;
   if m=0 then m:=370;
   r1:= 1-nh*(3-nh*(3-nh)); 
      r2:= 3*nh*(1-nh*(2-nh)); 
      r3:= 3*nh*nh*(1-nh); 
      r4:= nh*nh*nh; 
      X:= r1*P1X+r2*P1Xr+r3*p2xl+r4*p2x; 
      Y:= r1*p1y+r2*p1yr+r3*p2yl+r4*p2y; 
      pen(1,255,255,255);
      ellipse(round(x)-5,round(y)-5,round(x)+5,round(y)+5);
       r1:= 1-mh*(3-mh*(3-mh)); 
      r2:= 3*mh*(1-mh*(2-mh)); 
      r3:= 3*mh*mh*(1-mh); 
      r4:= mh*mh*mh; 
      X:= r1*P1X+r2*P1Xr+r3*p2xl+r4*p2x; 
      Y:= r1*p1y+r2*p1yr+r3*p2yl+r4*p2y; 
      pen(1,255,0,25);
      ellipse(round(x)-5,round(y)-5,round(x)+5,round(y)+5);
  for i:= 0 to 100 do 
    begin 
      t:=i/100; 
      r1:= 1-t*(3-t*(3-t)); 
      r2:= 3*t*(1-t*(2-t)); 
      r3:= 3*t*t*(1-t); 
      r4:= t*t*t; 
      X:= r1*P1X+r2*P1Xr+r3*p2xl+r4*p2x; 
      Y:= r1*p1y+r2*p1yr+r3*p2yl+r4*p2y; 
      pen(1,255,round(255*t),round(255*t));
      ellipse(round(x)-3,round(y)-3,round(x)+3,round(y)+3);
      
       pen(2,12,164,16);
       brush(1,66,66,66);
      rectangle(6+rxr,ryr+6,rxr-6,ryr-6);
       pen(2,0, 193, 193);
      rectangle(6+rxl,ryl+6,rxl-6,ryl-6); 
      pen(1,244,244,200);
      line(rx1,ry1,rxr,ryr);
      line(rx2,ry2,rxl,ryl);
      if (xm<=x+4) and (xm>=x-4) and (ym<=y+4) and (ym>=y-4)then 
      begin 
      brush(1,140,255,255);
      pen(1,round(255*t), round(255*t), 160);
      ellipse(round(x)+5,round(y)+5,round(x)-5,round(y)-5);
      end;
    end;
     
    goto 11;
end.
