program shkalu_temperatur;
uses crt;
var tc,i:integer;
    tf,tr:real;

begin
clrscr;
 writeln('Tablucia  ekviavlentnosti  temperatur  O"C  do  100"C');
 writeln('');
 writeln('#   Celsij      Farengejt        Remjyr          Kelvin' );
  writeln('-----------------------------------------------------');
 i:=0;
 repeat
   tc:=i;
   writeln( i/10:1:0,')   ',i,'           ',1.4*tc+32:3:3,'           ',0.8*tc:3:3,'           ',tc+273);
   i:=i+10;
 until i>100;
 readln;
end.