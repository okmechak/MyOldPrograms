PROGRAM aROUND;

VAR
   x,y,r,xp,k:integer;
   yp:real;
   i:integer;

begin
  write('x=');
  readln(x);
  write('y=');
  readln(y);
  write('R=');
  readln(r);
  for i:=0 to r do 
    begin
      pen(1,128, 128, 0);
      ellipse((x-r),(y-r),(x+r),(y+r));
      brush(560,87, 223, 107);
      {IVchcert"}
      yp:=(sqrt(sqr(r)-sqr(i)));
      moveto(90,(100+(r*20))-(i*20));
      writeln('vid y=',round(y-(yp)));
      moveto(0,100+i*20);
      writeln('x=',x+i);
      {IIIchvert"}
      moveto(90,((120)+(r*20))+(i*20));
      writeln('vid y=',round(y-yp));
      moveto(0,120+(r*20)+(i*20));
      writeln('x=',x+r+i);
      {IIchvert"}
      moveto(190,(100+(r*20))-(i*20));
      writeln('do y=',round(y+(yp)));
      {Ichvert"}
      moveto(190,((120)+(r*20))+(i*20));
      writeln('do y=',round(y+yp));
    end;
end.
