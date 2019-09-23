program dgh; 

var 
   cosunus,cut,k,a,b,dL0,csa,csb,R,L0,L1,L2,L3,L4,L5:real; 
   i:integer; 

begin 
  csa:=sqrt(3)/2; 
  csb:=0.8; 
  a:=30; 
  b:=37; 
  r:=50; 
  L0:=477; 
  L1:=435; 
  L2:=373; 
  L3:=328; 
  L4:=298; 
  L5:=246; 
  for i:=0 to 5 do 
    begin 
      if i=0 then 
        k:=l0; 
      if i=1 then 
        k:=l1; 
      if i=2 then 
        k:=l2; 
      if i=3 then 
        k:=l3; 
      if i=4 then 
        k:=l4; 
      if i=5 then 
        k:=l5; 
      if i<=1 then 
        cosunus:=csb 
      else 
        cosunus:=csa; 
      if i<=1 then 
        cut:=b 
      else 
        cut:=a; 
      dl0:=((2*pi*r)/360)*cut; 
      dL0:=k-(r-r*cosunus)+dL0; 
      writeln(i,') ',round(dl0)); 
    end; 
end.


