program trk; 

var 
   a,b:real; 
   x,y:integer; 

begin 
  write('a='); 
  readln(a); 
  write('b='); 
  readln(b); 
  x:=1; y:=round(((a*x)+b)); 
      {a--crutut' po osi y} 
      {b--sovgaie po osi y} 
      if (a>0) and (b>0) then 
        writeln('I-chvert'); 
      if (a<0) and (b>0) then 
        writeln('II-chvert'); 
      if (a>0) and (b<0) then 
        writeln('III-chvert'); 
      if (a<0) and (b<0) then 
        writeln('IV-chvert');
end.
