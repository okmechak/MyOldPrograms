program elma; 

var 
   l1x1,l1x2,l1y1,l1y2,l2x1,l2x2,l2y1,l2y2,Xm,Ym,Km,i,xo,yo,R:integer; 
   t,Vx,Vy,V,g,K1,K2,alpha,beta,gama,phx,phy:real; 

   label 19,91; 

begin 
  pen(2,0,0,0); 
  l1x1:=300; 
  l1y1:=0; 
  l1x2:=500; 
  l1y2:=620; 
  l2x1:=l1x2; 
  l2y1:=l1y2; 
  l2x2:=700; 
  l2y2:=0; 
  R:=5; 
  line(l1x1,l1y1,l1x2,l1y2); 
  line(l2x1,l2y1,l2x2,l2y2); 
  Vx:=-41; 
  Vy:=0; 
  xo:=600; 
  yo:=50; 
  g:=300; 
  k1:=(l1y2-l1y1)/(l1x2-l1x1); 
  beta:=arctan(k1); 
  k2:=(l2y2-l2y1)/(l2x2-l2x1); 
  gama:=arctan(k2);
  19: 
  for i:=0 to 99999999 do 
    begin
    pen(1,0,0,0);
      line(l1x1,l1y1,l1x2,l1y2); 
      line(l2x1,l2y1,l2x2,l2y2); 
      t:=i/18000; 
      moveto(10,10); 
      writeln('T=',t:3:3,' Beta=',beta:2:3,'  Gama=',gama:3:3,'  V=',sqrt(sqr(vy+g*t)+sqr(vx)):2:1); 
      phx:=xo+(vx*t); 
      phy:=yo+(Vy*t+((g*sqr(t))/2)); 
      brush(1,255, 128, 0);
      pen(1,255,255,255);
      ellipse(round(phx)+r,round(phy)+r,round(phx)-r,round(phy)-r); 
      if (phx<l1x2) and (phx>l1x1) and (((phx-l1x1)*k1)<=round(phy-l1y1)) then 
        begin
        xo:=round(phx)+2;
        yo:=round(phy)-2;
        alpha:=arctan((vy+g*t)/vx); 
        V:=sqrt(sqr(vy+g*t)+sqr(vx));
        Vx:=-V*cos(beta-alpha+pi);
        Vy:=V*sin(beta-alpha+pi);
        goto 19;
        end; 
        
      if (phx<l2x2) and (phx>l2x1) and (round((phx-l2x1)*k2)<=round(phy-l2y1)) then 
        begin
        xo:=round(phx)-10;
        yo:=round(phy)-5;
        alpha:=arctan((vy+g*t)/vx); 
        V:=sqrt(sqr(vy+g*t)+sqr(vx));
        Vx:=V*cos(gama-pi+alpha);
        Vy:=V*sin(gama-pi+alpha);
        goto 19; 
        end; 
    end; 
end.
