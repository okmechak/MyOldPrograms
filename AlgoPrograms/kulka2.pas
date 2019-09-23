Program sf; 

Var 
   t,alpha,beta,gama,vx,vy,g,px,py,v,x,y,r,k1,k2:real; 
   xm,ym:integer;
   i:integer; 

Function f(x:real):real; 

Begin 
  f:=100+(x-220)*(x-900)/1000; 
end; 

Begin 
  Pen(4,40, 236, 19);
  g:=-9.81; 
  px:=800; 
  py:=60; 
  t:=-0.1; 
  vx:=-20; 
  vy:=0; 
  r:=3; 
  Repeat 
    Brush(1,0,0,0);
    Rectangle(-1,-1,1300,800);
    Brush(1,200,200,200);
    t:=t+0.1; 
    x:=px+vx*t; 
    y:=py+vy*t+g*t*t/2; 
    Ellipse(round(x-r),-round(y-r)+600,round(x+r),-round(y+r)+600); 
    Pen(1,255,0,0);
    Line(round(x)-1000,-round(f(x)+1000*0.01/(f(x+0.01)-f(x)))+600,round(x+1000),-round(f(x)-1000*0.01/(f(x+0.01)-f(x)))+600);
    Pen(4,0,255,255);
    MoveTo(0,round(f(0)));
    
    For i:=0 to 100 do  LineTo(13*i,-round(f(13*i))+600); 
    If f(x)>y then 
      Begin
       k1:=(f(x+0.0001)-f(x))/0.0001;
       k2:=((vy+g*t)/vx);
       alpha:=arctan(k1);
       beta:=arctan(k2);
       MoveTo(0,0);
       WriteLn(k1:4:4);
       gama:=random(pi);
       v:=sqrt(sqr(vy+g*t)+sqr(vx));
       vx:=v*cos(gama);
       vy:=v*sin(gama);
       px:=x;
       py:=y+2;
       t:=-0.01;   
       MoveTo(0,10);
       WriteLn(gama:2:2)     
      end; 
  until false
end.  
