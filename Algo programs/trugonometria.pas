program rugonometria_nerivnosti; 

var 
   tg,ctg,sn,cs,a,b,c:real; 
   x,y,r,i,as,es:integer; 

   label 12; 

begin 
  12: x:=300; 
  y:=300; 
  r:=200; 
  writeln('press "1" for cosinus'); 
  writeln('press "2" for sinus'); 
  writeln('press "3" for tangens'); 
  writeln('press "4" for ??????'); 
  readln(as); 
  {---------------------seredovushche} 
  pen(1,30, 21, 106); 
  brush(1,255,255,255); 
  line(x,0,x,99999); 
  line(0,y,99999,y); 
  moveto(x,y+r); 
  writeln(' -1'); 
  moveto(x,y-r); 
  writeln(' 1'); 
  moveto(x-r,y); 
  writeln(' -1'); 
  moveto(x+r,y); 
  writeln(' 1'); 
  moveto(x+3,20); 
  writeln('sin     y'); 
  moveto(x+r*2,y+3); 
  writeln('cos     x'); 
  if as=1 then 
    begin 
      moveto(0,50); 
      write('enter cos a='); 
      readln(cs); 
      for i:=0 to 8000 do 
        begin 
          {--------------------------function  cosunusoida} 
          a:=r*cos(i*0.1); 
          b:=r*sin(i*0.1); 
          if round(x+a)=round(x+r*cs) then 
            begin 
              pen(1,0,0,100); 
              line(round(x+a),y+round(b),round(x+a),y-round(b)); 
              line(x,y,round(x+r*cs),y+round(b)); 
              brush(1,255, 0, 0); 
              ellipse(x+round(a)+3,y+round(b)+3,x+round(a)-3,y+round(b)-3); 
              ellipse(x+round(a)+3,y+3,x+round(a)-3,y-3); 
              moveto(x+round(a),y); 
              brush(1,255,255,255); 
              writeln(cs:1:5); 
            end; 
          if x+a<x+r*cs then 
            pen(1,255,255,0); 
          if x+a>x+r*cs then 
            pen(1,0,0,0); 
          point(x+round(a),y+round(b)); 
          point(round(r+x+i*10),round(y+a)); 
        end; 
    end; 
  if as=2 then 
    begin 
      moveto(0,50); 
      write('sin a='); 
      readln(sn); 
      for i:=0 to 8000 do 
        begin 
          {--------------------------function sinusoida} 
          a:=r*cos(i*0.1); 
          b:=r*sin(i*0.1); 
          if y+round(b)=round(y-r*sn) then 
            begin 
              line(x,y,round(x+a),round(y+b)); 
              line(round(x-a),round(y+b),round(x+a),round(y+b)); 
              brush(1,255,255,255); 
              moveto(x,y+round(b)); 
              writeln(sn:1:4); 
              brush(1,255, 0, 0); 
              ellipse(round(x+a)+3,round(y+b)+3,round(x+a)-3,round(y+b)-3); 
              ellipse(x-3,round(y+b)+3,x+3,round(y+b)-3); 
            end; 
          if y+b<y-r*sn then 
            pen(1,255,255,0); 
          if y+b>y-r*sn then 
            pen(1,0,0,0); 
          point(x+round(a),y+round(b)); 
          pen(1,0, 0, 100); 
          point(round(r+x+i*10),round(y+b)); 
        end; 
    end; 
  if as=3 then 
    begin 
      moveto(0,50); 
      write('tg a='); 
      readln(tg); 
      line((x+r),y-round(r*tg),x-r,y+round(r*tg)); 
      pen(1,255,0,0); 
      line((x-r),y+round(r*tg),(x-r),99999); 
      line((x+r),y-round(r*tg),(x+r),0); 
      pen(1,0,0,255); 
      line((x-r),y+round(r*tg),(x-r),-99999); 
      line((x+r),y-round(r*tg),(x+r),9999); 
      pen(1,0,0,0); 
      brush(1,255,0,0); 
      ellipse(x-r-3,round(y+r*tg-3),x-r+3,round(y+r*tg+3)); 
      ellipse(x+r-3,round(y-r*tg-3),x+r+3,round(y-r*tg+3)); 
      for i:=0 to 8000000 do 
        begin 
          {--------------------------function tangensoida} 
          a:=r*cos(i*0.1); 
          b:=r*sin(i*0.1); 
          if (b/a)=(tg) then 
            begin 
              brush(1,255,0,0); 
              ellipse(round(x+a)-3,round(y-b)-3,round(x+a)+3,round(y-b)+3); 
            end; 
          pen(1,0,0,0); 
          point(round(x+a),round(y+b)); 
        end; 
    end; 
  if as=4 then 
    begin 
      writeln('F.U :):):)'); 
    end 
  else 
    brush(1,253, 82, 0); 
  moveto(0,50); 
  writeln('try again press "3"'); 
  writeln('to Exit press   "4"'); 
  readln(es); 
  clear; 
  if es=3 then 
    goto 12; 
end.
