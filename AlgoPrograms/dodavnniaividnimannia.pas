program dodavannia_i_vidnimannia; 

var 
   s:char; 
   x,y,z,k,i:integer; 
   d,as,balu,dob,level,N,bl:integer; 
   ss,sa:char; 

   label 13,12,14; 

begin 
  12: clear; 
  writeln('Dodavannia i vidnimannia'); 
  balu:=0; 
  dob:=1; 
  brush(1,255, 128, 0); 
  writeln('+  press "1"'); 
  writeln('-  press "2"'); 
  readln(as); 
  if as=1 then 
    begin 
      brush(1,128, 255, 255); 
      write('enter level 1 - 100  ='); 
      readln(level); 
      write('vvedit" cil"cis"t zavdan"  ='); 
      readln(N); 
      for d:= 1 to N do 
        begin 
          x:=random(level); 
          y:=random(level); 
          write(d,') ',x,'+',y,'='); 
          z:=x+y; 
          readln(k); 
          if k=z then 
            begin 
              balu:=balu+1; 
              bl:=round(balu*(12/n)); 
              playsound(0,'C:\\windows\\media\\Windows XP Error.wav'); 
            end; 
          if (k>z) or (k<z) then 
            begin 
              writeln('Hi'); 
            end; 
        end; 
      writeln(round(bl),' baliv'); 
      if bl>=10 then 
        playsound(0,'C:\\windows\\media\\tada.wav'); 
      if (bl<=9) and (bl>=7) then 
        playsound(0,'C:\\windows\\media\\Windows XP Exclamation.wav'); 
      if (bl<=6) and (bl>=4) then 
        playsound(0,'C:\\windows\\media\\ding.wav'); 
      if bl<3 then 
        playsound(0,'C:\\windows\\media\\Windows XP Battery Critical.wav'); 
    end; 
  {____________________-------__________} 
  if as=2 then 
    begin 
      write('enter level 1 - 100  ='); 
      readln(level); 
      writeln('vvedit" cil"cis"t zavdan"  ='); 
      readln(N); 
      for d:= 1 to N do 
        begin 
          13: x:=random(level); 
          y:=random(level); 
          if x<y then 
            goto 13; 
          write(d,') ',x,'-',y,'='); 
          z:=x-y; 
          readln(k); 
          if k=z then 
            begin 
              balu:=balu+1; 
              bl:=round(balu*(12/n)); 
            end; 
          if (k>z) or (k<z) then 
            begin 
              writeln('Hi'); 
              playsound(0,'C:\\windows\\media\\Windows XP Critical Stop.wav'); 
            end; 
        end; 
      writeln(round(bl),' baliv'); 
      if bl>=10 then 
        playsound(0,'C:\\windows\\media\\tada.wav'); 
      if (bl<=9) and (bl>=7) then 
        playsound(0,'C:\\windows\\media\\Windows XP Exclamation.wav'); 
      if (bl<=6) and (bl>=4) then 
        playsound(0,'C:\\windows\\media\\ding.wav'); 
      if bl<3 then 
        playsound(0,'C:\\windows\\media\\Windows XP Battery Critical.wav'); 
    end; 
  if (as<1) and (as>2) then 
    goto 12; 
  write('try a gain press Y/N '); 
  readln(ss); 
  if (ss='y') or (ss='Y') then 
    goto 12; 
end.
