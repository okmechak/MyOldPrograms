program FracTree; 

var j,l,c,n:integer;
procedure Tree(x, y: Integer; a: Real; l: Integer;k:integer); 

var 
   x1, y1: Integer; 
   p, s : Integer; 
   i : Integer; 
   a1 : Real; 

   label 11; 
begin 
  
  if l<8 then 
    goto 11; 
  x1 := Round(x + l*cos(a)); 
  y1 := Round(y + l*sin(a)); 
  if l > 100 then 
    p:=100 
  else 
    p:=l; 
  if p < 40 then 
    begin 
      {Генерация листьев} 
      if Random > 0.5 then 
        pen(1,45+k, 45, 0) 
      else 
        pen(1,0, 128-k, 0); 
      {4, 14} 
      for i:=0 To 3 do 
        Line(x+i, y, x1, y1) 
    end 
  else 
    begin 
      {Генерация веток} 
      pen(1,0,0,0); 
      for i:=0 to (p div 6) do 
        Line(x+i-(p div 12), y, x1, y1); 
    end; 
  {Следующие ветки} 
  for i:=0 to 9-Random(9) do 
    begin 
      s := Random(l-l div 6) + (l div 6); 
      a1:= a + 1.6*(0.5-Random); 
      {Угол наклона веток} 
      x1:= Round(x + s*cos(a)); 
      y1:= Round(y + s*sin(a)); 
      Tree(x1, y1, a1, p-5-Random(33),l); 
      {Чем меньше вычетаем, 
                                         тем пышнее дерево} 
    end; 
  11: 
end; 

var 
   gd, gm,detect: Integer; 

begin 
Randomize;
 brush(1,  0, 64, 128);
  rectangle(-1,-1,2000,2000);
  for j:=0 to 580 do begin
  pen(1,0,0,0+round(j/8));
 line(0,j ,1300,j); 
 
 pen(1,   30-round(j/10), 30-round(j/10), 10);
 line(0,580+round(j/10),2000,580+round(j/10));
 end;
 for j:=1 to 50 do begin
 
 
 pen(1,255,255,255);
 point(1200-random(1200),580-random(580));
 point(1200-random(1200),180-random(180));
 point(1200-random(600),380-random(280))
 end;
  brush(1,  128, 255, 255);
  c:=random(1200);
  n:=random(400);
  ELLIPSE(c,j,90+c,j+90);
  gm:=3; 
   
  {InitGraph(gd, gm, 'c:\bp\bgi');} 
  for j:=0 to 5 do begin
  l:=random(j*j*j);
  Tree(random(1200), 580, 3*pi/2, 150-random(150),l);
  Tree(random(1200), 580, 3*pi/2, random(30),l); 
  
  end;
  {CloseGraph;} 
end.
