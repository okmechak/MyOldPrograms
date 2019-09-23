program d_3_2; 

var 
   x,y,xm,ym,km,i,pxc,pyc,pxb,pyb:integer; 
   Fv,z,r:real; 

begin 
  for i:=1 to 999999 do 
    begin
      pen(1,0, 255, 0);
      fv:=1; 
      pxc:=660; 
      pyc:=320; 
      pxb:=0; 
      pyb:=0; 
      r:=100; 
      event(km,xm,ym);brush(1,0,0,0);
      xm:=xm-pxc;
      ym:=600-ym; 
      rectangle(-1,-1,40000,10000); 
      z:=((ym/30))*fv; 
      x:=round((xm/z)+pxc); 
      y:=round((pyb/z)+pyc); 
      r:=r/z; 
      ellipse(x-round(r),y-round(r),x+round(r),y+round(r)); 
      moveto(10,10); 
      writeln('R=',r:10:10,'  X=',x,'  Y=',y); 
      point(pxc,pyc); 
      line(0,600,999999,600);
    end; 
end.
