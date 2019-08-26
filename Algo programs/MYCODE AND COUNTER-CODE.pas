Program MYCODE; 
Const 
   n=100; 
Var 
   i,b,xm,ym,km:integer; 
   c:string; 
   l:integer; 
   a:array[1..n] of string; 
   CHOIS:integer; 
   Label 11,12; 
Begin 
  Font(10,10,20); 
  l:=0; 
  c:=''; 
  xm:=0; 
  MoveTo(10,90);
  For i:=1 to n do 
    Begin 
      Event(km,xm,ym); 
      c:=chr(90-xm+65); 
      l:=Length(c)+l; 
      If(XM>90)or(XM<65)and(XM<>32) then
        GoTo 11; 
      Write(chr(xm)); 
      a[i]:=c; 
    end; 
  11: MoveTo(10,110); 
  WriteLn(''); 
  For i:=L downto 1 do 
    Write(a[i]); 
end.
