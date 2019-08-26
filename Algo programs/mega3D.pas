program d3game; 
var 
   mx,my,k:integer; 
   x1,y1,z1,x2,y2,z2,x3,y3,z3,x4,y4,z4,p1y,p2y,p3y,p4y,p1x,p2x,p3x,p4x,p5y,p6y,p7y,p8y,p5x,p6x,p7x,p8x:integer; 
   fv,V,t,c1,csz,snz,csx,snx,csy,sny,tgy,tgz,tgx,lf,lu,lb,alpha,beta,gama,alphar,betar,gamar:real; 
   i,pxc,pyc,pxb,pyb,z:integer; 
   a1,b1,a2,b2,c2,a3,b3,c3,a4,b4,c4:integer; 
   a1l,b1l,a2l,b2l,c2l,a3l,b3l,c3l,a4l,b4l,c4l:integer; 
   points,j,u,l:integer; 
   key:char; 
   shx,shy,shz,crocz,crocy,crocx,at,bt,ct:real; 
   xm1,ym1,zm,xm2,ym2,at1,bt1,ct1,at2,bt2,ct2:integer; 
   label 15,17;
begin 
  brush(1,0,0,0); 
  rectangle(-1,-1,99999,99999);
  gamar:=0;
  alphar:=0;
  betar:=0; 
  fv:=0.002; 
  pxc:=627; 
  pyc:=325; 
  shy:=0; 
  shx:=0; 
  shz:=1/fv; 
  ct:=200; 
  at:=190; 
  bt:=50; 
  crocx:=20; 
  crocy:=20; 
  crocz:=15; 
  j:=100; 
  for i:=0 to 9999999999 do 
    begin 
      if isevent then 
        begin 
          event(u,j,l); 
          if (u=1) then 
            begin 
              key:=chr(j); 
              textcolor(244,24,34); 
              if (key='W') or (key='w') then 
                shz:=shz+crocz; 
              if (key='S')or (key='s') then 
                shz:=shz-crocz; 
              if (key='D')or(key='d') then 
                shx:=shx+crocx; 
              if (key='A')or(key='a') then 
                shx:=shx-crocx; 
              if (key='Q')or(key='q') then 
                shy:=shy-crocy; 
              if (key='E')or(key='e') then 
                shy:=shy+crocy; 
              if J=27 then 
                goto 15;  
            end; 
          if u=3 then 
            begin 
              if (j>0) and (j<=200) and (l<=650) and (l>=630) then 
                ct:=j*4; 
              if (j>0) and (j<=200) and (l<=625) and (l>=605) then 
                bt:=j*4; 
              if (j>0) and (j<=200) and (l<=600) and (l>=580) then 
                at:=j*4; 
              if (j>=300) and (j<=800) and (l>=630) and (l<=650) then 
                fv:=(j-300)/10000; 
              if (j<=800) and (l<=50) and (l>=30) then 
                shx:=(j-400)*crocx; 
              if (j<=800) and (l>=55) and (l<=75) then 
                shy:=(j-400)*crocy; 
              if (j<=800) and (l>=90) and (l<=110) then 
                shz:=(j+0.5)*crocz;
              if (j<=200) and (l>=530) and (l<=550) then
              gamar:=j/30;
              if (j<=200) and (l>=505) and (l<=525) then
              betar:=j/30;
              if (j<=200) and (l>=480) and (l<=500) then
              alphar:=j/30;
              pen(1,255, 0, 255);
              line(xm1,ym1,xm2,ym2);  
            end;
          brush(1,0,0,0); 
          rectangle(-1,-1,99999,99999);  
          pen(1,0, 255, 255);
          {rotation-------X--Y--Z------------------------------------}
          pen(1,0,255,255); 
          rectangle(0,530,200,550);
          rectangle(0,525,200,505);
          rectangle(0,500,200,480);
          pen(1,255, 0, 255);
          if (j<=200) and (l>=530) and (l<=550) then
          line(xm1,ym1,xm2,ym2);
          pen(1,255, 255, 0); 
          line(round(gamar*30),530,round(gamar*30),550);
          line(round(betar*30),505,round(betar*30),525);
          line(round(alphar*30),480,round(alphar*30),500);
          textcolor(128, 128, 0);
          moveto(10,460);
          writeln('Rotation      degrees');
          moveto(205,535);
          textcolor( 255, 128, 0);
          writeln('Z ',57.29577951307854999853275233034*gamar:2:2,'"');
          moveto(205,510);
          writeln('Y ',57.29577951307854999853275233034*betar:2:2,'"');
          moveto(205,485); 
          writeln('X ',57.29577951307854999853275233034*alphar:2:2,'"');
          {position-----------------------------------------------}
          line(400,25,400,85);
          textcolor( 0, 255, 255);
          moveto(395,15);
          writeln('0');
          moveto(10,5);
          textcolor(128, 128, 0); 
          writeln('Position'); 
          pen(1,0,255,255); 
          rectangle(0,30,800,50); 
          rectangle(0,55,800,75); 
          rectangle(0,90,800,110); 
          pen(1,255, 255, 0); 
          if not (400+round(shx/crocx)>800) then 
            line(400+round(shx/crocx),30,400+round(shx/crocx),50); 
          if not (400+round(shy/crocy)>800) then 
            line(400+round(shy/crocy),55,400+round(shy/crocy),75); 
          if not (round(shz/crocz)>800) then 
            line(round(shz/crocz)+1,90,round(shz/crocz)+1,110); 
          textcolor( 255, 128, 0); 
          moveto(805,33); 
          writeln('X=',shx:2:3); 
          moveto(805,56); 
          writeln('Y=',shy:2:3); 
          moveto(805,90); 
          writeln('Z=',(shz/10):2:3); 
          {field---viev-------------------------------------------} 
          moveto(320,610); 
          textcolor(128, 128, 0); 
          writeln('field viev'); 
          rectangle(300,630,800,650); 
          line(round((fv*10000)+300),630,round((fv*10000)+300),649); 
          pen(1,255,0,0); 
          line(320,630,320,649); 
          pen(1,0, 255, 255); 
          moveto(810,632); 
          textcolor( 255, 128, 0); 
          writeln('field viev=',fv:2:6); 
          {------------scale--------------------------------------} 
          rectangle(0,630,200,650); 
          rectangle(0,625,200,605); 
          rectangle(0,600,200,580); 
          moveto(10,559); 
          textcolor(128, 128, 0); 
          writeln('Scale'); 
          textcolor( 255, 128, 0); 
          moveto(204,581); 
          writeln('X=',at:2:3); 
          moveto(204,581+20+5); 
          writeln('Y=',bt:2:3); 
          moveto(204,631); 
          writeln('Z=',ct:2:3); 
          pen(1,255, 255, 0); 
          line(round(ct/4),630,round(ct/4),650); 
          line(round(bt/4),624,round(bt/4),605); 
          line(round(at/4),599,round(at/4),580); 
        end; 
      {----------------------------program----algoryphm-----------------------------}
      lf:=sqrt(sqr(at/2)+sqr(bt/2))*2;
      csz:=(at/2)/lf;
      snz:=(bt/2)/lf;
      tgz:=snz/csz;
      gama:=arctan(tgz);
      
      lu:=sqrt(sqr(at/2)+sqr(ct/2))*2;
      csy:=(at/2)/lu;
      sny:=(ct/2)/lu;
      tgy:=sny/csy;
      beta:=arctan(tgy);
      {A----------------------------------------------------}
      p1x:=round((lf/((shz-(ct/2))*fv))*cos(gamar+gama));
      p1y:=round((lf/((shz-(ct/2))*fv))*sin(gamar+gama));
      {B----------------------------------------------------}
      p2x:=round((lf/((shz-(ct/2))*fv))*cos(gamar+(pi-gama)));
      p2y:=round((lf/((shz-(ct/2))*fv))*sin(gamar+(pi-gama)));
      {C----------------------------------------------------}
      p3x:=round((lf/((shz-(ct/2))*fv))*cos(gamar+(pi+gama)));
      p3y:=round((lf/((shz-(ct/2))*fv))*sin(gamar+(pi+gama)));
      {D----------------------------------------------------}
      p4x:=round((lf/((shz-(ct/2))*fv))*cos(gamar+(2*pi)-gama));
      p4y:=round((lf/((shz-(ct/2))*fv))*sin(gamar+(2*pi)-gama));
      {A'---------------------------------------------------}
      p5x:=round((lf/((shz+(ct/2))*fv))*cos(gamar+gama));
      p5y:=round((lf/((shz+(ct/2))*fv))*sin(gamar+gama));
      {B'---------------------------------------------------}
      p6x:=round((lf/((shz+(ct/2))*fv))*cos(gamar+(pi-gama)));
      p6y:=round((lf/((shz+(ct/2))*fv))*sin(gamar+(pi-gama)));
      {C'---------------------------------------------------}
      p7x:=round((lf/((shz+(ct/2))*fv))*cos(gamar+(pi+gama)));
      p7y:=round((lf/((shz+(ct/2))*fv))*sin(gamar+(pi+gama)));
      {D'---------------------------------------------------}
      p8x:=round((lf/((shz+(ct/2))*fv))*cos(gamar+((2*pi)-gama)));
      p8y:=round((lf/((shz+(ct/2))*fv))*sin(gamar+((2*pi)-gama))); 
                                                                 
      xm1:=round(shx/((shz-(ct/2))*fv))+pxc; 
      ym1:=round(shy/((shz-(ct/2))*fv))+pyc; 
      xm2:=round(shx/((shz+(ct/2))*fv))+pxc; 
      ym2:=round(shy/((shz+(ct/2))*fv))+pyc;
      {-----------------------------------body--------------------------------------}
      pen(1,64, 128, 128);  
      point(round(shx/(shz*fv))+pxc,round(shy/(shz*fv))+pyc);
      pen(1,255, 0, 0);
      {front rectangle} 
      line(xm1+p1x,ym1+p1y,xm1+p2x,ym1+p2y); 
      line(xm1+p2x,ym1+p2y,xm1+p3x,ym1+p3y); 
      line(xm1+p3x,ym1+p3y,xm1+p4x,ym1+p4y); 
      line(xm1+p4x,ym1+p4y,xm1+p1x,ym1+p1y);
      {back  rectangle} 
      line(xm2+p5x,ym2+p5y,xm2+p6x,ym2+p6y); 
      line(xm2+p6x,ym2+p6y,xm2+p7x,ym2+p7y); 
      line(xm2+p7x,ym2+p7y,xm2+p8x,ym2+p8y); 
      line(xm2+p8x,ym2+p8y,xm2+p5x,ym2+p5y);
      {bevel} 
      line(xm1+p1x,ym1+p1y,xm2+p5x,ym2+p5y); 
      line(xm1+p2x,ym1+p2y,xm2+p6x,ym2+p6y); 
      line(xm1+p3x,ym1+p3y,xm2+p7x,ym2+p7y); 
      line(xm1+p4x,ym1+p4y,xm2+p8x,ym2+p8y);
    end; 
  15: 
end.
