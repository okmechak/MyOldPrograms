program sdfh;
var
   x,y,k:real;
begin
  readln(x);
  k:=0.019284712482468443197755960729313;
  y:=x*k;
  writeln(y:2:4);
  y:=1/k;
  writeln(y:2:4);
end.
