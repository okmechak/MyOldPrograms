program Koch10;
const
  p=5;
var
  gd, gm: Integer;
  i: Integer;
  x, y, l: Real;
  a: Real;
  n, m, k: Integer;
begin
  x:=0;
  y:=240;
  l:=640/(exp(p*ln(4)));
  MoveTo(Round(x), Round(y));
  for i:=0 to Round(exp(p*ln(8)))-1 do begin
    a:=0;
    n:=i;
    k:=0;
    repeat
      m:=n mod 8;
      n:=n div 8;
      case m of
        0: a:=a+0;
        1: a:=a-pi/2;
        2: a:=a+0;
        3: a:=a+pi/2;
        4: a:=a+pi/2;
        5: a:=a+0;
        6: a:=a-pi/2;
        7: a:=a+0;
      end;
     k:=K+1;
    until k>=p;
    x:=x + l*cos(a);
    y:=y + l*sin(a);
    LineTo(Round(x), Round(y));
  end;
end.
