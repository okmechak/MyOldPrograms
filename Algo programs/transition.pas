program gfdsfdg; 

var 
   i,rr1,gr1,br1,rr2,gr2,br2,km,x,y:integer; 
   p1,p2,k,r1,g1,b1,r2,g2,b2:real; 
label 12;
begin 
12:
clear;
  p1:=0.00; 
  p2:=1; 
  k:=0.005; 
  rr1:=random(255);
      gr1:=random(255);
      br1:=random(255);
      
      rr2:=random(255);
      gr2:=random(255);
      br2:=random(255);
      brush(1,rr1,gr1,br1);
      rectangle(10,300,400,350);
      brush(1,rr2,gr2,br2);
      rectangle(10,360,400,410);
  for i:=0 to 99999 do 
    begin 
    if i=301 then goto 12;
      p1:=i/300; 
      p2:=(100-(i/6))/300; 
      
      
      r1:=rr1*p1; 
      g1:=gr1*p1; 
      b1:=br1*p1;
       
      r2:=rr2*p2; 
      g2:=gr2*p2; 
      b2:=br2*p2; 
      
      pen(1,round((r1+r2)),round((g1+g2)),round((b1+b2))); 
      moveto(10,10);
      writeln('i=',i,'   ',p1*100:1:0,'%','   R',r1+r2:1:0,'  G',g1+g2:1:0,'  B',b1+b2:1:0);
      line(0+i,123,0+i,159);
      delay(1); 
      pen(1,255-round((r1+r2)),255-round((g1+g2)),255-round((b1+b2)));
      line(0+i,50,0+i,100);
    end; 
end.
