program sjef; 

var 
   m,vs,v,mr:real; 

begin 
  vs:=300000000; 
  v:=vs-0.0000001; 
  m:=1; 
  mr:=m/sqrt(1-(v/vs)); 
  writeln(mr:4:10); 
end.
