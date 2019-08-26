program MNK;
uses graph, crt;
var
   t1:text;
   D:array[1..10,1..2] of real;
   i,j,k:integer;
   A:array[1..5,1..4] of real;
   kp:array[1..4] of real;
   xe:array[1..5] of real;
   ye:array [1..5] of real;
   sum:real;
   n,m:integer;
   p,ne:integer;
   grdriver: integer;
   drMode: integer;
   Nq,iq:integer;
   h,aq,bq,xmax,ymax,xq,yq,r:real;
   s:string;

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
               i:integer;
begin
          s:=0;
          for i:=0 to p do S:=S+kp[i+1]*exp(i*ln(x));
          f:=S;

end;

    function Sum1(p:integer):real;
    var S:real;
               q:integer;
        begin
          s:=0;
          for q:=1 to ne do S:=S+exp(p*ln(D[q,1]));
          sum1:=S;
        end;
    function Sum2(p:integer):real;
    var S:real;
       q:integer;
              begin
                s:=0;
                for q:=1 to ne do S:=S+exp(p*ln(D[q,1]))*D[q,2];
                Sum2:=S;
              end;
BEGIN

clrscr;
begin
assign(t1,'d:\abityra.txt');
reset(t1);
i:=1;
     while not eof (t1) do
     begin
     read(t1,d[i,1]);
     read(t1,d[i,2]);
     i:=i+1;
     end;
  p:=3;
  ne:=5;
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

    for i:=m downto 1 do
    begin
    sum:=0;
    for k:=i to m do sum:=sum+kp[k]*A[k,i];
    A[n,i]:=A[n,i]-sum;
    kp[i]:=A[n,i]/A[i,i];
    end;

    end;


                 begin
     aq:=1;
     bq:=7;
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


         for i:=0 to ne-1 do
begin
circle(Xscr(d[i,1],xmax),Yscr(d[i,2],ymax),10);
end;
for i:=1 to 9 do

         begin
         line (64*i,237,64*i,243);
         line (317,48*i,323,48*i);
         str((5-i)*xmax/5:3:2,s);
         str(-ymax*(5-i)/5:3:1,s);
         outtextxy(64*i,260,s);
         outtextxy(290,48*i,s);

         end;
     readln;
     CloseGraph;
end;






END;
end.

