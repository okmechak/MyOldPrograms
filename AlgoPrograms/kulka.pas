program sf; 

var 
   t,alpha,beta,gama,vx,vy,g,px,py,v,x,y,r,k1,k2:real; 
   i:integer; 

function f(x:real):real; 

begin 
  f:=200*sin(x/100)+400; 
end; 

begin 
  g:=9.81; 
  px:=102; 
  py:=380; 
  t:=-0.01; 
  vx:=0.9; 
  vy:=0; 
  r:=3; 
  repeat 
    t:=t+0.01; 
    x:=px+vx*t; 
    y:=py+vy*t+g*t*t/2; 
    ellipse(round(x-r),round(y-r),round(x+r),round(y+r)); 
    moveto(0,round(f(0))); 
    for i:=0 to 300 do  lineto(4*i,round(f(4*i))); 
    if y>=f(x) then 
      begin
      k1:=-(f(x+0.01)-f(x))/0.01;
      k2:=-((vy+g*t)/vx);
      alpha:=arctan(k1);
      beta:=arctan(k2);
      if (k1<=0) and (k2<=0) then gama:=pi-2*alpha+beta;
      if (k1<0) and (k2>0) then gama:=pi-2*alpha+beta;
      if (k1>0) and (k2<0) then gama:=pi-beta+2*alpha;
      if (k1>=0) and (k2>=0) then gama:=2*alpha-beta;
      v:=sqrt(sqr(vy+g*t)+sqr(vx));
      vx:=v*cos(gama);
      vy:=v*sin(gama);
      px:=x;
      py:=y-1;
      t:=-0.01;   
      moveto(0,10);
      writeln(gama:2:2)     
      end; 
  until false; 
end.
