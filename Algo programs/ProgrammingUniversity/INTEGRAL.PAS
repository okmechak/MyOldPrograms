program integral;
 uses crt;
 var  a,b,ss,st,sp:real;
      n:integer;

funcTION fun(x:real):real;
 begin
  fun:=x/sqr(1+X*X);
 end;

function PervFun(x:real):real;
 begin
   pervfun:=-1/2/(sqr(x)+1);
 end;

procedure inttrapeciji(a,b:real;n:integer; var s:real);
 var i:integer;
     xi,h:real;
 begin
    h:=(a-b)/n;
    s:=0;
    xi:=a+h/2;
    for i:=1 to n-1 do
      begin
       s:=s+fun(xi);
       xi:=xi+H;
       end;
    s:=h/2*(2*s+Fun(a)+fun(b));
 end;

procedure intsimpsona(a,b:real;n:integer; var s:real);
var xi,s1,s2,h:real;
    i:integer;

begin
    h:=(a-b)/n;
    s1:=0;
    S2:=0;
    xi:=a;
    for i:=0 to n-1 do
      begin
       s1:=s1+fun(xi+h/2);
       if i>0 then s2:=s2+fun(xi);
       xi:=xi+h ;
       end;
    s:=h/6*(fun(a)+fun(b)+4*s1+2*s2);

end;

procedure intpriamkyt(a,b:real;n:integer; var s:real);
var xi,h,t:real;
    i:integer;
begin
writeln('t=0 livi priamkyt');
writeln('t=0.5 centralni priamkyt');
writeln('t=1 pravi priamkyt');
readln(t);
h:=abs(a-b)/n;
s:=0;
xi:=a+h*t;
for i:=1 to n do
begin
s:=s+fun(xi);
xi:=xi+h;
end;
s:=h*s;
end;



begin
 clrscr;
 writeln('f(x)=x/sqr(x^2+1)');
 writeln('vvedit  mezhi integraly [a,b] - ');
 readln(a,b);
 write('vvedit n - '); readln(n);
 intsimpsona(a,b,n,ss);
 inttrapeciji(a,b,n,st);
 intpriamkyt(a,b,n,sp);
 writeln('metod priamkyt  F(x) - ',sp:1:19);
 writeln('metod trapeciji F(x) - ',st:1:19);
 writeln('metod simpsona  F(x) - ',ss:1:19);
 writeln('metod analit    F(x) - ',pervfun(b)-pervfun(a):1:19);
 readln;







end.