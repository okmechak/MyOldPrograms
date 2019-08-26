program erdfg;
var i,x,y,k:integer;
f:char;
begin
x:=100;
for i:=0to 9999999999 do
begin
if isevent then begin
event(k,x,y);
writeln(k,'  ',x,'   ',y);
end;
event(k,x,y);
f:=chr(x);
writeln(k,'  ',x,'   ',y,'   ',f);
end;
end.
