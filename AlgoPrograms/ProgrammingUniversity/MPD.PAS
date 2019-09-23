program metod_pol_dilennia;

uses crt;

var x,eps,a,b,y:real;
c:integer;


function fun(x:real):real;

  begin
   fun:=x*x+exp(x)+x*x*x+x-62.8;
  end;


procedure mpd(a,b,eps:real; var x:real);

 begin
  while abs(b-a)>eps do
   begin
    x:=(b+a)/2;
    if fun(a)*fun(x)<=0 then b:=x
                        else a:=x
   end;
 end;

procedure metodNjutona(a,b,eps:real; var x:real);
  var fundt,xo,x1,dx:real;
 begin
   randomize;
   writeln('Enter eps for dy/dx');
   readln(dx);
   x:=a;
   repeat
    fundt:=(fun(x+dx)-fun(x))/dx;
    x:=x-fun(x)/fundt;
   until fun(x)/fundt<eps;
 end;

begin
 clrscr;
 writeln('-------------------------');
 Writeln('F(x)=x^2-exp(x)+x^3+x-62.8');
 writeln('zadajte promizhok [a;b]:');
 readln(a,b);
 write('vvedit tochnist obchuslennia Eps=');
 read(eps);
 writeln('press 1 for Metod Polovunnogo Dilennia , 2: Metod Njytona');
 readln(c);
 case c of
 1: mpd(a,b,eps,x);
 2:  metodNjutona(a,b,eps,x);
 end;
 writeln('Znajdenuj korin X=',x:3:5);
 writeln('F(x)=',fun(x):3:5);
 readkey;
end.
