program rozmiru_lat; 
var 
   x,y,s,l,a,b,c:real; 
   i,f:integer; 
begin 
  y:=5730/2; 
  L:=5730/1.1547005383792515290182975610052; 
  b:=0.019284712482468443197755960729313; 
  brush(1,255,0,255); 
  writeln('lata number  0 lenght     53.454 cm'); 
  for f:=1 to 2 do 
    begin 
      if f=2 then 
        begin 
          y:=5704/2; 
          L:=5704/1.1547005383792515290182975610052; 
          b:=0.019284712482468443197755960729313; 
          brush(1,255,0,255); 
          writeln('lata number  0 lenght     53.454 cm'); 
        end; 
      for i:=0 to 4 do 
        begin 
          if i=0 then 
            a:=-220; 
          if i=1 then 
            a:=-100; 
          if i=2 then 
            a:=120; 
          if i=3 then 
            a:=420; 
          if i=4 then 
            a:=700; 
          S:=l-(400+800*i); 
          X:=(y*s/l)+a; 
          brush(1,255,30+i*30,255-i*30-3); 
          textcolor(i*30,100+i*20,30+i*30); 
          writeln('lata number  ',i+1,' lenght ',(x*b)+1:10:3,' cm');
        end; 
    end; 
end.
