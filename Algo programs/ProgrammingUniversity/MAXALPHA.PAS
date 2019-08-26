program dsg;

 uses crt;

 const gama=0.18;
      g=9.81;

 var x,xm,y,m,vp,t,krokt,kroka,alpha,alpham1,alpham2:real;

 begin
 clrscr;
  krokt:=0.001;
  writeln('Vvedit shvudkist(Vo), masy(m) i krok tabyliaciji kyta postrila vidpovidno');
  readln(vp,m,kroka);
  t:=-krokt;
  alpha:=0*pi/180-kroka;
  repeat
   alpha:=alpha+kroka;
   repeat
    t:=t+krokt;
    x:=m*vp*cos(alpha)/gama*(1-exp(-gama*t/m));
    y:=m/gama*(vp*sin(alpha)+m*g/gama)*(1-exp(-gama*t/m))-m*g*t/gama;
   until y<0;
   if x>xm then begin xm:=x; alpham1:=alpha end;
  until alpha>pi/2;

  alpha:=-kroka;
  t:=-krokt;
   repeat
   alpha:=alpha+kroka;
   repeat
    t:=t+krokt;
    x:=vp*cos(alpha)*t;
    y:=vp*sin(alpha)*t-g*sqr(T)/2;
   until y<0;
   if x>xm then begin xm:=x; alpham2:=alpha end;
  until alpha>pi/2;

  writeln('kyt vrahovyjychu opir seredovushcha - ',alpham1*180/pi:4:4);
  writeln('kyt dlia idealnogo vupadky - ',alpham2*180/pi:4:4);
  readln;
 end.
