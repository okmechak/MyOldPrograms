program metod_gaysa;
uses crt;
const n=4;
      m=n+1;
type vector=array[1..n]of Real;
     matrix=array[1..n,1..m]of Real;
var S:matrix;
    X:vector;
    i,j:1..m;

procedure readm(var s:matrix);
 begin
 randomize;
  for i:=1 to n do
   for j:=1 to m do s[i,j]:=random(10);
 end;

procedure writem(s:matrix);
  begin
  for i:=1 to n do begin
   for j:=1 to m do write(s[i,j]:2:5,'  ');
   writeln
   end
  end;

procedure perestm(var s:matrix);

var f:integer;
    c:real;
label 11;

begin
 f:=n+1;
 11:
 f:=f-1;
 if  s[1,1]=0 then
   begin
     for j:=1 to m do
      begin
       c:=s[n,j];
       s[n,j]:=s[1,j];
       s[1,j]:=c;
      end;
     writem(s);
     goto 11;
   end;

end;
procedure gaus(var s:matrix);
var k:real;
   f:integer;
 begin
 for f:=1 to n-1 do
  begin
  for I:=f+1 to n do
   begin
   k:=s[i,f]/s[f,f];
   for j:=1 to m do
    begin
    s[i,j]:=s[i,j]-k*s[f,j];
     end;
   writem(s);
   write('     -------');
   readln;
   end;





  end;


 end;


begin
clrscr;
readm(s);
perestm(s);
gaus(s);
writem(s);






readln;

end.


