program skdf; 

var 
   xr,yr,xm,ym,k,a,b,i,p1y,p2y,p3y,p4y,p1x,p2x,p3x,p4x:integer;
   cs,sn,tg,ctg,c,alpha:real; 

begin 
  for i:=1 to 999999999 do 
    begin 
      event(k,xm,ym);
      clear; 
      xr:=300; 
      yr:=300; 
      a:=500; 
      b:=50;
      c:=sqrt(sqr(a/2)+sqr(b/2));
      alpha:=arctan(b/a);
      p1y:=round(c*cos(xm*0.0099+(alpha))); 
      p2y:=round(c*cos(xm*0.0099+(pi-alpha))); 
      p3y:=round(c*cos(xm*0.0099+(pi+alpha))); 
      p4y:=round(c*cos(xm*0.0099+((2*pi)-alpha))); 
      p1x:=round(c*sin(xm*0.0099+(alpha))); 
      p2x:=round(c*sin(xm*0.0099+(pi-alpha))); 
      p3x:=round(c*sin(xm*0.0099+(pi+alpha))); 
      p4x:=round(c*sin(xm*0.0099+((2*pi)-alpha)));
      pen(1,2,04,0); 
      line(xr+p1x,yr+p1y,xr+p2x,yr+p2y);
      pen(1,244,27,244); 
      line(xr+p2x,yr+p2y,xr+p3x,yr+p3y); 
      line(xr+p3x,yr+p3y,xr+p4x,yr+p4y); 
      line(xr+p4x,yr+p4y,xr+p1x,yr+p1y); 
    end; 
end.
