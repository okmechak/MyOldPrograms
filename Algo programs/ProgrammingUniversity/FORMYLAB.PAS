program integral;
 uses crt;
 var a,b,s,t,l,fun2:real;
     n:integer;

procedure int(a,b:real; n:integer; var s:real);
 const h=6.62e-34;
       c=3e8;
       k=1.38e-23;
 var i:integer;
     xi,koe:real;
 begin
    s:=0;
    koe:=(b-a)/n;
    xi:=a;
    for i:=0 to n do
      begin
       s:=s+((2*h*c*c)/(xi*xi*xi*xi*xi*(exp(h*c/(xi*k*t))-1)));
       xi:=xi+koe;
       end;
    s:=((b-a)/n)*s;
 end;


begin
 clrscr;
 a:=0.00000001;
 b:=9999999;
 readln(n);
 readln(t);
 fun2:=5.67032e-8*sqr(sqr(t));
 int(a,b,n,s);
 writeln(fun2,'integral F(x) - ',s:1:5);
 writeln(abs(fun2-s):3:5);
 readln;
end.