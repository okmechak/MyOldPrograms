program vilne_padinia; 
var 
   Vy,Vx,V,Sx,Sy,S,t,g,gr,Vox,Voy,step,h,l,voyv:real; 
   x,y,goruzontal,vertukal:integer; 
   i,k,n:integer; 
begin 
  write('Vx='); 
  readln(Vox); 
  write('Vy='); 
  readln(Voy); 
  write('g='); 
  readln(g); 
  write('step(0.0 to 1.0)='); 
  readln(step); 
  write('H(1 to 580)='); 
  readln(h); 
  for i:=0 to 9000000 do 
    begin
    
      {---------seredovushche-------------} 
      vertukal:=1230;
      goruzontal:=625;
      line(0,goruzontal,vertukal,goruzontal); 
      line(vertukal,0,vertukal,goruzontal); 
      line(vertukal-i*10,goruzontal,vertukal+9-i*10,goruzontal+9); 
      line(vertukal+9,goruzontal+9-i*10,vertukal,goruzontal-i*10); 
      {*********start___from*********} 
      line(0,round(goruzontal-h),40,round(goruzontal-h)); 
      line(40-i*10,round(goruzontal-h),40+9-i*10,round(goruzontal-h+9)); 

      {-----------------------------------} 
      t:=(i/15000)*step; 
      gr:=(sqr(t)*g); 
      
      {---------tilo----------------------}
      Vy:=-(Voy*t)+gr;
      Vx:=(Vox)*t;
      x:=round(Vx);
      y:=round(goruzontal-h+vy);
      brush(1,0+round(t), 255, 0);
      ellipse(x,y,x+20,y-20);
      if y=goruzontal then
      begin
      for k:=0 to 1000000000 do
      begin
      
      t:=((k/15000)*0.6)*step; 
      gr:=sqr(t)*g;
      Voyv:=sqrt(4*g*h+(voy*Voy));
      {---------tilo----------------------}
      Vy:=-(voyv*t)+gr;
      Vx:=(Vox)*(t+((i/15000)*step));
      x:=round(Vx);
      y:=round(goruzontal+vy);
      brush(1,0, 255, 0);
      ellipse(x,y,x+20,y-20);
      end;
      end;
    end; 
end.
