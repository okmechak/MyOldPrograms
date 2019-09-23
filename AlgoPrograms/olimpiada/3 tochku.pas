program tru_tochku; 

var 
   x1,y1,x2,y2,x3,y3,w:integer; 
   ab,bc,ac:real; 

begin 
  write('x1='); 
  readln(x1); 
  write('y1='); 
  readln(y1); 
  write('x2='); 
  readln(x2); 
  write('y2='); 
  readln(y2); 
  write('x3='); 
  readln(x3); 
  write('y3='); 
  readln(y3); 
  ab:=sqrt(sqr(x1-x2)+sqr(y1-y2)); 
  bc:=sqrt(sqr(x2-x3)+sqr(y2-y3)); 
  ac:=sqrt(sqr(x3-x1)+sqr(y3-y1)); 
  if (ab=bc+ac) or (bc=ac+ab) or (ac=ab+bc) then 
    writeln('tochku lezhat na odnij priamij') 
  else 
    writeln('tochku ne lezhat na odmij priamij'); 
end.
