Program aerocrulo_Fp; 

Var 
   L1zn,L2zn,beta,alpha,L1zv,L2zv,h,p,V,po,m,g,S,s1,s2,h1,h2,f:real;
   i:integer; 

Begin 
  {---------------------Eskiz krula -----------------------} 
  Ellipse(38,235,38+30,235+30); 
  Line(38+15,235,238,235+30); 
  Line(38+15,235+30,238,235+30); 
  Ellipse(238,500,238+10,510); 
  Line(238+5,500,280,510); 
  Line(242,510,280,510);
  Line(355,250,355,505); 
  Line(238,265,280,511); 
  Line(40,256,238,505); 
  Line(52,227,52,270); 
  Line(241,493,241,515); 
  Line(52,235,241,499); 
  Line(61,275,61,375); 
  MoveTo(58,290); 
  WriteLn('beta'); 
  MoveTo(37,223); 
  WriteLn('h1'); 
  MoveTo(220,487); 
  WriteLn('h1'); 
  MoveTo(340,346); 
  WriteLn('h'); 
  MoveTo(88,266); 
  WriteLn('L1znuzy'); 
  MoveTo(85,223); 
  WriteLn('L1zverhy'); 
  MoveTo(246,484); 
  WriteLn('L2zverhy'); 
  MoveTo(246,511); 
  WriteLn('L2znuzy'); 
  MoveTo(0,0); 
  {---------------------Dano-------------------------------} 
  WriteLn('gabarutu krula vvodutu v systemi "Ci"'); 
  Write('L1zverhy='); 
  ReadLn(l1zv); 
  Write('L1znuzy='); 
  ReadLn(l1zn); 
  Write('L2zverhy='); 
  ReadLn(l2zv); 
  Write('L2znuzy='); 
  ReadLn(l2zn); 
  Write('H='); 
  ReadLn(h); 
  Write('h1='); 
  ReadLn(h1); 
  Write('h2='); 
  ReadLn(h2); 
  Write('V='); 
  ReadLn(v); 
  Write('m='); 
  ReadLn(m); 
  Write('sin_beta='); 
  ReadLn(beta); 
  Write('sin_alpha='); 
  ReadLn(alpha);  
  {---------------------Stali------------------------------} 
  po:=1.25;
  {kg/m3} 
  g:=9.81 ;
  {m/s2}
  {------------------vukonannia----------------------------}
  for i:=round(V) to round(V)+50 do
  begin 
  P{znuzy i zverhy}:=(1/3)*po*sqr(i); 
  F{pidiomna  sula}:=(((L1zv+L2zv)/2)*h*p)-(((L1zn+L2zn)/2)*h*p); 
  F:=(f*2)-m*g;
  s:=(((l1zn+l2zn)/2)*h)*2;
  writeln('V=',i);
  WriteLn('f=',f:1:3);
  writeln('S=',S:3:3,'m2'); 
  If f>0 then 
    WriteLn('{:) ura-a-a-a-a-a')
  else 
    WriteLn('>:( fuu-u-u-u-u-u');
    end;
end.
