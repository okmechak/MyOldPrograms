program MNK;
uses graph, crt;
var
   D:array[1..10,1..2] of real;
   i,j,k:integer;
   A:array[1..5,1..4] of real;
   kp:array[1..4] of real;
   sum:real;
   n,m:integer;
   p,ne:integer;
   grdriver: integer;
   drMode: integer;
   Nq,iq:integer;
   h,aq,bq,xmax,ymax,xq,yq,r:real;
   s:string;
   t2:text;

   function Xscr(x,xmax:real):integer;
begin
     Xscr:=round(320+x*320/xmax);
end;
function Yscr(y,ymax:real):integer;

begin
      Yscr:=round(240-y*240/ymax);
end;

function f(x:real):real;
 var S:real;
               a,i:integer;
begin
          s:=kp[1];
          a:=1;
          for i:=1 to p do
                          begin
                          if (x<0)and(i mod 2<>0) then a:=-1;
                          s:=S+a*kp[i+1]*exp(i*ln(abs(x)));
                          a:=1;
                          end;
          f:=S;

end;

    function Sum1(p:integer):real;
    var S:real;

               q,a:integer;
        begin
          s:=0;
          a:=1;
          for q:=1 to ne do
          begin
          if (d[q,1]<0) and (p mod 2<>0) then a:=-1;
          S:=S+a*exp(p*ln( abs (D[q,1]) ));
          a:=1;
          end;
          sum1:=S;
        end;
    function Sum2(p:integer):real;
    var S:real;
       q,a:integer;
              begin
                s:=0;
                 a:=1;
                for q:=1 to ne do
                begin
                if (d[q,1]<0) and (p mod 2<>0) then a:=-1;
                S:=S+a*exp(p*ln( abs( D[q,1])))*D[q,2];
                a:=1;
                end;
                Sum2:=S;
              end;
BEGIN
 { Assign(F, 'd:/a');
  Reset(F); }

{clrscr;
d[1,1]:=1;       d[1,2]:=1;
d[2,1]:=2;       d[2,2]:=4;
d[3,1]:=3;       d[3,2]:=9;
d[4,1]:=4;       d[4,2]:=16;
d[5,1]:=5;       d[5,2]:=25;}

begin
clrscr;
Assign(T2,'d:\student\FzF-12\Julia\data.txt');
reset(T2);
i:=1;
while not eof (t2) do
begin
Read (t2,d[i,1]);
Read (t2,d[i,2]);
i:=i+1;
end;

  p:=3;
  ne:=i-1;
 for i:=1 to p+1 do A[i,1]:=Sum1(i-1);
 for j:=2 to p+1 do A[p+1,j]:=Sum1(j+p-1);
 for j:=2 to p+1 do
  for j:=2 to p+1 do
   for i:=1 to p do
 A[i,j]:=A[i+1,j-1];
 for j:=1 to p+1 do A[p+2,j]:=Sum2(j-1);
n:=p+2;
m:=p+1;
for j:=1 to m do
 begin
    for i:=1 to n do write('A[',i, ',',j,']=',A[i,j]:2:2,'');
    writeln;
 end;
          begin
             for k:=1 to n-2 do
                begin
                     for j:=k+1 to m do
                     begin
                        for i:=n downto k do
                        begin
                             A[i,j]:=A[i,j]-A[i,k]/A[k,k]*A[k,j];
                        end;
                     end;
                end;



for j:=1 to m do  begin for i:=1 to n do write('A[',i,',',j,']=',A[i,j]:2:2,'  '); writeln; end;




    for i:=m downto 1 do
    begin
    sum:=0;
    for k:=i to m do sum:=sum+kp[k]*A[k,i];
    A[n,i]:=A[n,i]-sum;
    kp[i]:=A[n,i]/A[i,i];
    end;

    writeln;
    for i:=1 to m do writeln('kp[',i,']=',kp[i]:2:2);
   { F(x)=(x[i]+x[i+1]+x[i+2]+x[i+3]+x[i+4]);}

    readln;
    end;


                 begin
     aq:=-6;
     bq:=6;
     if abs(aq)>abs(bq) then xmax:=abs(aq) else xmax:=abs(bq);
     nq:=10000;
     h:=(bq-aq)/nq;
     xq:=aq;
     ymax:=abs(f(xq));
     while xq<bq do
           begin
           xq:=xq+h;
           if ymax<abs(f(xq)) then ymax:=abs(f(xq));
           end;
     grdriver:=Detect;
     InitGraph(grDriver, DrMode,'d:\bp\bgi');
     setcolor(9);
     Line(0,240,640,240);
     Line(320,0,320,480);
     xq:=aq;
     Moveto(Xscr(xq,xmax),Yscr(f(xq),ymax));
     while xq<bq do
           begin
           Lineto(Xscr(xq,xmax),yscr(F(xq),ymax));
           xq:=xq+h;
           end;
        settextjustify(centertext,centertext);
    for i:=1 to 10 do
         begin
         line (64*i,237,64*i,243);
         line (317,48*i,323,48*i);
         str(xmax/5*(i-5):3:1,s);

         outtextxy(64*i,260,s);
         str(ymax/5*(i-5):3:1,s);
         outtextxy(290,48*i,s);
         end;
         for i:=1 to ne do
begin
circle(Xscr(d[i,1],xmax),Yscr(d[i,2],ymax),5);
end;
     readln;
     CloseGraph;
end;





end;
END.

