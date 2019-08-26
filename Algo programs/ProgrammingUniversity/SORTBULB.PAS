
program sortyvannia;
 uses crt;
 const n=10;

 type sch=1..n;
      massyv=array[sch] of integer;
 var A:massyv;
     i,j:sch;


 procedure readm(var a:massyv);
   begin
     for i:=1 to n do read(a[i]);
   end;

 procedure writem(a:massyv);
   begin
    for i:=1 to n do write(a[i],' ');
   end;

 procedure sortm(var A:massyv);
   var c:integer;
   begin
    for j:=1 to n-1 do
     begin
      for i:=1 to n-1 do
       begin
        if a[i]<a[i+1] then
         begin
          c:=a[i];
          a[i]:=a[i+1];
          a[i+1]:=c;
         end;
       end;
       writem(a);
       writeln('-');
     end;
   end;


 begin
  clrscr;
  readm(a);
  sortm(a);
  readln;
 end.
