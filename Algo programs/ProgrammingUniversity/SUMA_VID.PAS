program Suma_Vid;
uses crt;
const n=10;
var Mas:integer;
    i,s:integer;

begin
clrscr;
s:=0;
writeln('Vvedit 10-tj  dovilnuh ciluh chusel');
for i:=1 to n do
begin
read(mas);
if mas<0 then s:=s+mas;
end;
writeln('syma vidjemnuh chusel iz cijeji mnozhunu  -  ',s);
read;
end.