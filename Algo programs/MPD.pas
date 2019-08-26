program metod_pol_dilennia;

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


begin
 writeln('-------------------------');
 Writeln('F(x)=x^2-exp(x)+x^3+x-62.8');
 writeln('zadajte promizhok [a;b]:');
 readln(a,b);
 write('vvedit tochnist obchuslennia Eps=');
 read(eps);
 mpd(a,b,eps,x);
 writeln('Znajdenuj korin X=',x:3:8);
 writeln('F(x)=',fun(x):3:5);
readln;
end.
