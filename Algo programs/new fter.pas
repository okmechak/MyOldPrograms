program Sula_Tertia; 

var 
   a,b,c,d,a1,b1,c1,d1,a9,b9,c9,d9,a8,b8,c8,d8:real; 
   H1,L1,H2,L2,x,y,z,cs2,sn2,ap,bp,cp,cs1,sn1,AB,BC,AC,AE,ED,AD:real; 
   i:integer; 
   t,Vx,Vy,g,F1,F2,prus,step,m1,m2,u1,u2:real; 
   l,k,j,jh,xm,ym,jm,mnb,qw:integer; 
        
begin 
    for mnb:=0 to 100 do
    begin
    brush(1,mnb,mnb*2,mnb*2);
    Rectangle(50,80 ,50+mnb*4 ,100 );
    brush(1,255-mnb*2,255-mnb*2,255-mnb);
    rectangle(450,85,50+mnb*4,95);
    delay(round(mnb*1.5));
     moveto(50,63);
    brush(1,255, 128, 0);
    writeln('Loading...                               ',mnb,'%');
    end;
  for jh:=0 to 41 do 
    begin 
      {coordunatna ploschuna} 
      {39pixels=1sm}
      brush(1,255,255,255);
      line(0+jh*39,0,0+jh*39,15); 
      line(0,0+jh*39,10,0+jh*39);
      moveto(2+jh*39,5);
      writeln(jh);
      moveto(2,2+jh*39);
      writeln(jh);
    end;
  brush(1,255,255,255);
  pen(1,255,255,255);
  rectangle(35,45,484,125);
  brush(1,255,255,255);
   moveto(0,0);
  readln(qw);
  pen(1,0,0,0);
   moveto(30,20);
  write('x-position=');
  readln(x);                     
   moveto(30,40);
  write('y-position=');
  readln(y);
  writeln('       ');
   moveto(30,60);
  write('H1='); 
  read(h1); 
   moveto(30,80);
  write('L1='); 
  read(l1); 
   moveto(30,100);
  write('H2='); 
  readln(h2); 
   moveto(30,120);
  write('L2='); 
  readln(L2);
  writeln('        ');
   moveto(30,140);
  write('g=');
  readln(g);
   moveto(30,160);
  write('m1=');
  readln(m1);
   moveto(30,180);
  write('m2=');
  readln(m2);
   moveto(30,200);
  write('u1=');
  readln(u1);
  moveto(30,220);
  write('u2=');
  readln(u2);
  
  x:=x*39; 
  y:=y*39; 
  h1:=h1*39; 
  l1:=l1*39; 
  h2:=h2*39; 
  l2:=l2*39; 
  {9999999999} 
  begin 
    {t:=round(i/35000);} 
    {seredovusche i osnova iogo} 
    
     {trk 1} 
     line(round(x),round(y),round(x+l1),round(y+h1)); 
     line(round(x),round(y),round(x),round(y+h1)); 
     line(round(x),round(y+h1),round(x+l1),round(y+h1)); 
              AB:=sqrt(sqr(l1)+sqr(h1));
              BC:=L1;
              AC:=H1;
              cs1:=BC/AB;
              sn1:=1-sqr(cs1);
     {trk 2} 
     line(round(x),round(y),round(x-l2),round(y+h2)); 
     line(round(x),round(y),round(x),round(y+h2)); 
     line(round(x),round(y+h2),round(x-l2),round(y+h2)); 
              AE:=sqrt(sqr(l2)+sqr(H2));
              AD:=H2;
              ED:=L2;
              cs2:=ED/AE;
              sn2:=1-sqr(cs2);
    {formulu dlia I tila}
    a:=x+(AB/2)*cs1;
    b:=y+(AB/2)*sn1;
    moveto(257,70);
    writeln('');
    line(100,130,round(a),round(b));
    {formulu dlia II tila}
     
  end; 
end.
