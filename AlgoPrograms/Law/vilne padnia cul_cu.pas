program sdfg; 

var 
   i,k:integer; 
   x,y,g,Vx,Vy,y1,y2,Yk,Yl,goruzont:integer; 
   pr:real; 

begin 
  for i:= 1 to 100000 do 
    begin 
      {seredovushche} 
      goruzont:=600; 
      line(0,goruzont,9999,goruzont); 
      line(0,goruzont-400,50,goruzont-400); 
      line((50-i*10),goruzont-400,53-i*10,goruzont-393); 
      line(0+i*10,goruzont+0,3+i*10,goruzont+7); 
      begin 
        {traectoria cul'cu} 
        g:=round(-sqr(i/2600)); 
        Vy:=round(i/100); 
        Vx:=round(i/270); 
        y1:=-((goruzont-200+Vy+g)-581); 
        y2:=-((goruzont-200+Vy+g)-601); 
        brush(1,73, 237, 82); 
        pen(1,0, 0, 0); 
        ellipse(10+Vx,y1,30+Vx,y2); 
        moveto(20,500); 
        writeln('y2=',y2); 
      end; 
    end; 
end.
