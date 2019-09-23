program pereriz;
  uses crt;
  label 11,12;
  var       R1,R2,a1,a2,b:real;
     {storonu trk}m,alpha,cosa,sina:real;
      {korduna tochok}x1,y1,x2:real;
  begin
   clrscr;
   write('(R>0)   R1=');
   read(r1);
   write('R2=');
   readln(r2);
   write('a1=');
   readln(a1);
   write('a2=');
   readln(a2);
   write('b=');
   readln(b);
   m:=abs(a1-a2);
   if (m=0) and (r1-r2<>0) then goto 11;
   if (m=0)and(r1-r2=0)then
    begin
     writeln('Kola nakladajytsia');
     goto 12;
    end;
   if ((m+r1>=r2) and (r1+r2>=m) and (r2+m>=r1)) then
     begin
     cosa:=-(r1*r1-m*m-r2*r2)/(2*m*r2);
     sina:=sqrt(1-sqr(cosa));
      alpha:=pi/2-arctan(sina/cosa);
      y1:=a1-r2*sin(alpha);
      x1:=b+r2*cos(alpha);
      x2:=b-r2*cos(alpha);
      if x1=x2 then writeln('kola dotukajytsia  A(',X1:4:3,';',Y1:4:3,');')
      else          writeln('kola peretunajytsia   A(',X1:4:3,';',Y1:4:3,');','    B(',X2:4:3,';',Y1:4:3,');');
     end
   else
     begin
      11:
      writeln('kola ne peretunajytsia');
     end;
     12:
   readln;
end.