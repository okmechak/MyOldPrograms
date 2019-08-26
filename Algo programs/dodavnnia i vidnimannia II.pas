program generator_zavdan{'}; 

var 
   balu,x,y,a,i,level,N,s,k,bl:integer; 
   z,g:integer; 
   f:real; 

   label 12,13,14; 

begin 
  writeln('Dodavnnia i vidnimannia'); 
  write('enter level  1 to N  ='); 
  readln(level); 
  write('enter cil"cist zavdn"='); 
  readln(N); 
  balu:=0; 
  K:=7; 
  for i:=1 to N do 
    begin 
      brush(1,255,255,255); 
      s:=random(3); 
      if s=0 then 
        begin 
          x:=random(level); 
          y:=random(level); 
          write(i,') ',x,'+',y,'=?'); 
          z:=x+y; 
        end; 
      if s=1 then 
        begin 
          12: x:=random(level); 
          y:=random(level); 
          z:=x-y; 
          if x<y then 
            goto 12; 
          write(i,') ',x,'-',y,'=?'); 
        end; 
      if s=2 then 
        begin 
          x:=random(level); 
          y:=random(level); 
          write(i,') ',x,'*',y,'=?'); 
          z:=x*y; 
        end; 
      write('  ?='); 
      read(k); 
      if k=z then 
        begin 
          balu:=balu+1; 
          bl:=round(balu*(12/n)); 
        end 
      else 
        writeln('   !Hi!'); 
      writeln('  '); 
    end; 
  brush(1,255, 128, 0); 
  writeln('  ',bl); 
end.
