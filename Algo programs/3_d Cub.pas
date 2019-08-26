Program d_3_Cub; 

Var 
   x,y,xm,ym,km,i,pxc,pyc,pxb,pyb,j,v,x2,y2,a2,a,ymp:integer; 
   Fv,z,r,b:real; 
   key:char; 

Begin 
  Z:=1; 
  For i:=1 to 999999 do 
    Begin 
      Pen(1,0, 255, 0); 
      fv:=0.5; 
      b:=0.5; 
      a:=50; 
      pxc:=660; 
      pyc:=320; 
      pxb:=0; 
      pyb:=0; 
      Event(km,xm,ym); 
      Brush(1,0, 44, 44); 
      xm:=xm-pxc; 
      ym:=600-ym; 
      Rectangle(-1,-1,40000,10000); 
      rectangle(10,10,70,600); 
      if (xm+pxc>10) and (xm+pxc<70) then 
        z:=((ym/30))*fv
        else pyb:=652-(ym+pyc);
      x:=round((xm/z)+pxc); 
      y:=round((pyb/z)+pyc); 
      x2:=round((xm/(z+(b*fv)))+pxc); 
      y2:=round((pyb/(z+(b*fv)))+pyc); 
      a2:=round(a/(z+(b*fv))); 
      a:=round(a/z); 
      Rectangle(x-a,y-a,x+a,y+a); 
      Line(x-a,y-a,x2-a2,y2-a2); 
      Line(x+A,y-a,x2+a2,y2-a2); 
      Line(x+a,y+a,x2+a2,y2+a2); 
      Line(x-a,y+a,x2-a2,y2+a2); 
      Line(x2-a2,y2-a2,x2+a2,y2-a2); 
      Line(x2-a2,y2-a2,x2-a2,y2+a2); 
      Line(x2-a2,y2+a2,x2+a2,y2+a2); 
      Line(x2+a2,y2-a2,x2+a2,y2+a2); 
      textcolor(255, 0, 0);
      MoveTo(10,10); 
      WriteLn('b=',B,'  A=',a,'  X=',x,'  Y=',y,'  Z=',z:10:10); 
      Point(pxc,pyc); 
      Line(0,600,999999,600); 
      Line(10,0,10,999999); 
    end; 
end.
