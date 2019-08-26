Program Square_3D; 
const mn=100;
Var 
   prus,gamac,fvxy,deg,balpha,bbeta,bgama,lb,chx,chy,chz,p1,bhx,bhy,bhz,ab,bb,cb,alphab,betab,gamab,ctp1,p2,k,r1,g1,b1,r2,g2,b2,shx,shy,shz,croc,at,bt,ct,ato,cto,Vox,voy,voz,tgy,csy,sny,fv,lu,beta,alphar,betar,gamar,alphac,betac,szx,fvgra:real; 
   b1y,b2y,b3y,b4y,b1x,b2x,b3x,b4x,b5x,b6x,b7x,b8x,b5y,b6y,b7y,b8y,qw,rr1,gr1,br1,rr2,gr2,br2,p1y,p2y,p3y,p4y,p1x,p2x,p3x,p4x,i,pxc,pyc,q,sd,n1,n2,kl,j,u,l,del:integer; 
   pcx,pcy,pcz,psx,psy,psz,pox,poy,poz,ig,mx1,my1,mx2,my2,mx3,my3,mx4,my4,mx5,my5,mx6,my6,mx7,my7,mx8,my8,ng,lg,hg,cg,nv,lv,hv,cv,xm,ym,km:integer; 
   key,key2:char; 
   cox:array[1..mn] of integer;
   coy:array[1..mn] of integer;
   coz:array[1..mn] of integer;
   Label 11,15,17,51; 

Begin 
  17: Brush(1,0,0,0); 
  Rectangle(-1,-1,1700,700); 
  Font(8,1,1); 
  deg:=0.007; 
  gamar:=0; 
  alphar:=0; 
  betar:=0; 
  gamab:=0; 
  alphab:=0; 
  betab:=0; 
  fv:=0.0015; 
  pxc:=round(1254/2); 
  pyc:=round(652/2); 
  shy:=0; 
  shx:=0; 
  shz:=0; 
  bhy:=0; 
  bhx:=0; 
  bhz:=0; 
  chy:=00; 
  chx:=0; 
  chz:=-1000; 
  ct:=200; 
  at:=200; 
  bt:=200; 
  cb:=100; 
  ab:=100; 
  bb:=100; 
  croc:=2.5; 
  j:=100; 
  n1:=10; 
  n2:=10; 
  voy:=0.002; 
  alphac:=0; 
  betac:=0; 
  gamac:=0; 
  rr1:=random(255); 
  gr1:=random(255); 
  br1:=random(255); 
  rr2:=255-rr1; 
  gr2:=255-gr1; 
  br2:=255-br1; 
  del:=1; 
  qw:=1; 
  For i:=0 to 300 do 
    Begin 
      p1:=i/300; 
      p2:=(100-(i/6))/300; 
      r1:=rr1*p1; 
      g1:=gr1*p1; 
      b1:=br1*p1; 
      r2:=rr2*p2; 
      g2:=gr2*p2; 
      b2:=br2*p2; 
      u:=5; 
      If i>200+random(100) then 
        del:=random(1); 
      TextColor(255-round((r1+r2)),255-round((g1+g2)),255-round((b1+b2))); 
      MoveTo(10,133); 
      WriteLn(round((i-random(6))/3),'%'); 
      TextColor(255-round((r1+r2)),round((g1+g2)),255-round((b1+b2))); 
      MoveTo(133,120); 
      WriteLn('Loading...'); 
      Delay(del); 
      Pen(3,round((r1+r2)),round((g1+g2)),round((b1+b2))); 
      Line(133+i,137,133+i,185); 
    end;
  For i:=0 to 9999999999 do 
    Begin 
      If (IsEvent) or (i=0) then 
        Begin 
          Brush(1,10,10,10); 
          Pen(1,0,255,255); 
          Rectangle(-1,-1,1500,700); 
          If IsEvent then 
            begin 
              Event(u,j,l); 
            end; 
          If (u=1) then 
            Begin 
              key:=chr(j);
              if key='1' then qw:=1;
              if key='2' then qw:=2;
              if key='3' then qw:=3; 
              If qw=3 then 
                Begin 
                  If ((key='W') or (key='w'))and(shz<1000) then 
                    shz:=shz+croc; 
                  If ((key='S')or (key='s'))and(shz>-1000) then 
                    shz:=shz-croc; 
                  If ((key='D')or(key='d'))and(shx<1000) then 
                    shx:=shx+croc; 
                  If ((key='A')or(key='a'))and(shx>-1000) then 
                    shx:=shx-croc; 
                  If ((key='Q')or(key='q'))and(shy>-1000) then 
                    shy:=shy-croc; 
                  If ((key='E')or(key='e'))and(shy<1000) then 
                    shy:=shy+croc; 
                  If (key='Z')or(key='z') then 
                    alphar:=alphar-deg; 
                  If (key='X')or(key='x') then 
                    alphar:=alphar+deg; 
                  If (key='C')or(key='c') then 
                    betar:=betar-deg; 
                  If (key='V')or(key='v') then 
                    betar:=betar+deg; 
                  if(key='b')or(key='B') then 
                    gamar:=gamar-deg; 
                  if(key='n')or(key='N') then 
                    gamar:=gamar+deg; 
                  if(key='h')or(key='H') then 
                    goto 51; 
                  If J=27 then 
                    GoTo 15; 
                end; 
              If qw=2 then 
                Begin 
                  If ((key='W') or (key='w'))and(bhz<1000) then 
                    bhz:=bhz+croc; 
                  If ((key='S')or (key='s'))and(bhz>-1000) then 
                    bhz:=bhz-croc; 
                  If ((key='D')or(key='d'))and(bhx<1000) then 
                    bhx:=bhx+croc; 
                  If ((key='A')or(key='a'))and(bhx>-1000) then 
                    bhx:=bhx-croc; 
                  If ((key='Q')or(key='q'))and(bhy>-1000) then 
                    bhy:=bhy-croc; 
                  If ((key='E')or(key='e'))and(bhy<1000) then 
                    bhy:=bhy+croc; 
                  If (key='Z')or(key='z') then 
                    alphab:=alphab-deg; 
                  If (key='X')or(key='x') then 
                    alphab:=alphab+deg; 
                  If (key='C')or(key='c') then 
                    betab:=betab-deg; 
                  If (key='V')or(key='v') then 
                    betab:=betab+deg; 
                  if(key='b')or(key='B') then 
                    gamab:=gamab-deg; 
                  if(key='n')or(key='N') then 
                    gamab:=gamab+deg; 
                  if(key='h')or(key='H') then 
                    goto 51; 
                  If J=27 then 
                    GoTo 15; 
                end; 
              If qw=1 then 
                Begin 
                  If ((key='W') or (key='w'))and(chz<1000) then 
                    chz:=chz+croc; 
                  If ((key='S')or (key='s'))and(chz>-1000) then 
                    chz:=chz-croc; 
                  If ((key='D')or(key='d'))and(chx<1000) then 
                    chx:=chx+croc; 
                  If ((key='A')or(key='a'))and(chx>-1000) then 
                    chx:=chx-croc; 
                  If ((key='Q')or(key='q'))and(chy>-1000) then 
                    chy:=chy-croc; 
                  If ((key='E')or(key='e'))and(chy<1000) then 
                    chy:=chy+croc; 
                  If (key='Z')or(key='z') then 
                    alphac:=alphac-deg; 
                  If (key='X')or(key='x') then 
                    alphac:=alphac+deg; 
                  If (key='C')or(key='c') then 
                    betac:=betac-deg; 
                  If (key='V')or(key='v') then 
                    betac:=betac+deg; 
                  if(key='b')or(key='B') then 
                    gamac:=gamac-deg; 
                  if(key='n')or(key='N') then 
                    gamac:=gamac+deg; 
                  if(key='h')or(key='H') then 
                    goto 51; 
                  If J=27 then 
                    GoTo 15; 
                end; 
            end; 
          If u=3 then 
            Begin 
              If QW=3 then 
                Begin 
                  If (j>=0) and (j<=201) and (l<=650) and (l>=630) then 
                    at:=j; 
                  If (j>=0) and (j<=201) and (l<=600) and (l>=580) then 
                    ct:=j; 
                  If (j<=800) and (l<=50) and (l>=30) then 
                    shx:=(j-400)*croc; 
                  If (j<=800) and (l>=55) and (l<=75) then 
                    shy:=(j-400)*croc; 
                  If (j<=800) and (l>=80) and (l<=100) then 
                    shz:=(j-400)*croc; 
                  If (j<=202) and (l>=530) and (l<=550) then 
                    gamar:=(j-100)*0.031416; 
                  If (j<=202) and (l>=505) and (l<=525) then 
                    betar:=(j-100)*0.031416; 
                  If (j<202) and (l>=480) and (l<=500) then 
                    alphar:=(j-100)*0.031416; 
                  If (j<=1245) and (j>=1045) and (l<=230) and (l>=30) then 
                    Begin 
                      shy:=(l-130)*10; 
                      shx:=(j-1145)*10; 
                    end; 
                  If (j<=1245) and (j>=1045) and (l<=435) and (l>=235) then 
                    Begin 
                      shy:=(l-335)*10; 
                      shz:=(j-1145)*10; 
                    end; 
                  If (j<=1245) and (j>=1045) and (l<=640) and (l>=440) then 
                    Begin 
                      shx:=(l-540)*10; 
                      shz:=(j-1145)*10; 
                    end; 
                end; 
              If QW=2 then 
                Begin 
                  If (j>=1) and (j<=202) and (l<=650) and (l>=630) then 
                    cb:=j; 
                  If (j>=1) and (j<=202) and (l<=625) and (l>=605)then 
                    bb:=j; 
                  If (j>=1) and (j<=202) and (l<=600) and (l>=580) then 
                    ab:=j; 
                  If (j<=800) and (l<=50) and (l>=30) then 
                    bhx:=(j-400)*croc; 
                  If (j<=800) and (l>=55) and (l<=75) then 
                    bhy:=(j-400)*croc; 
                  If (j<=800) and (l>=80) and (l<=100) then 
                    bhz:=(j-400)*croc; 
                  If (j<=202) and (l>=530) and (l<=550) then 
                    gamab:=(j-100)*0.031416; 
                  If (j<=202) and (l>=505) and (l<=525) then 
                    betab:=(j-100)*0.031416; 
                  If (j<202) and (l>=480) and (l<=500) then 
                    alphab:=(j-100)*0.031416; 
                  If (j<=1245) and (j>=1045) and (l<=230) and (l>=30) then 
                    Begin 
                      bhy:=(l-130)*10; 
                      bhx:=(j-1145)*10; 
                    end; 
                  If (j<=1245) and (j>=1045) and (l<=435) and (l>=235) then 
                    Begin 
                      bhy:=(l-335)*10; 
                      bhz:=(j-1145)*10; 
                    end; 
                  If (j<=1245) and (j>=1045) and (l<=640) and (l>=440) then 
                    Begin 
                      bhx:=(l-540)*10; 
                      bhz:=(j-1145)*10; 
                    end; 
                end; 
              If QW=1 then 
                Begin 
                  If (j<=800) and (l<=50) and (l>=30) then 
                    chx:=(j-400)*croc; 
                  If (j<=800) and (l>=55) and (l<=75) then 
                    chy:=(j-400)*croc; 
                  If (j<=800) and (l>=80) and (l<=100) then 
                    chz:=(j-400)*croc; 
                  If (j<=202) and (l>=480) and (l<=500) then 
                    alphac:=(j-100)*0.031416; 
                  If (j<=202) and (l>=505) and (l<=525) then 
                    betac:=(j-100)*0.031416; 
                  If (j<=202) and (l>=530) and (l<=550) then 
                    gamac:=(j-100)*0.031416; 
                  If (j<=1245) and (j>=1045) and (l<=230) and (l>=30) then 
                    Begin 
                      chy:=(l-130)*10; 
                      chx:=(j-1145)*10; 
                    end; 
                  If (j<=1245) and (j>=1045) and (l<=435) and (l>=235) then 
                    Begin 
                      chy:=(l-335)*10; 
                      chz:=(j-1145)*10; 
                    end; 
                  If (j<=1245) and (j>=1045) and (l<=640) and (l>=440) then 
                    Begin 
                      chx:=(l-540)*10; 
                      chz:=(j-1145)*10; 
                    end; 
                end; 
              If (j<=200) and (l<350) and (l>330) then 
                n1:=round((j)/5)+1;  
              If (j>300) and (j<=800) and (l>=630) then 
                fv:=(j-290)/110000; 
            end; 
          {rectangelu-------------------------------------------} 
          Brush(1,20, 0, 0); 
          Rectangle(1045,30,1245,230); 
          Rectangle(1045,235,1245,435); 
          Rectangle(1045,440,1245,640); 
          Pen(1,0,255,255); 
          {63.333333333333} 
          Brush(1,0, 15, 0); 
          Rectangle(0,30,800,50); 
          Rectangle(0,55,800,75); 
          Rectangle(0,80,800,100); 
          Rectangle(300,630,800,650); 
          Rectangle(0,530,200,550); 
          Rectangle(0,525,200,505); 
          Rectangle(0,500,200,480); 
          Rectangle(0,330,200,350);  
          Rectangle(0,630,200,650); 
          Rectangle(0,625,200,605); 
          Rectangle(0,600,200,580);
          
          rectangle(0,450,200,430);
          rectangle(0,425,200,405); 
          rectangle(0,400,200,380);
          {lines-----------0.01745329252---------------------------------} 
          Pen(1,122, 122, 61); 
          Line(1145,30,1145,230); 
          Line(1145,235,1145,435); 
          Line(1145,440,1145,640); 
          Line(1045,130,1245,130); 
          Line(1045,335,1245,335); 
          Line(1045,540,1245,540); 
          Brush(1,0,0,0); 
          Pen(2,255, 0, 0); 
          Line(round((fv*110000)+290),630,round((fv*110000)+290),649); 
          Line((n1*5)-1,330,(n1*5)-1,349); 
          If qw=3 then 
            Begin 
              Line(round(at),630,round(at),650); 
              Line(round(ct),599,round(ct),580); 
              If not (400+round(shx/croc)>800) then 
                Line(400+round(shx/croc),30,400+round(shx/croc),50); 
              If not (400+round(shy/croc)>800) then 
                Line(400+round(shy/croc),55,400+round(shy/croc),75); 
              If not (400+round(shz/croc)>800) then 
                Line(400+round(shz/croc),80,round(shz/croc)+400,100); 
              If gamar/0.031416<100 then 
                Line(100+round(gamar/0.031416),530,100+round(gamar/0.031416),550); 
              If betar/0.031416<100 then 
                Line(100+round(betar/0.031416),505,100+round(betar/0.031416),525); 
              If alphar/0.031416<100 then 
                Line(100+round(alphar/0.031416),480,100+round(alphar/0.031416),500); 
            end; 
          If qw=2 then 
            Begin 
              Line(round(cb),630,round(cb),650); 
              Line(round(bb),624,round(bb),605); 
              Line(round(ab),599,round(ab),580); 
              If not (400+round(bhx/croc)>800) then 
                Line(400+round(bhx/croc),30,400+round(bhx/croc),50); 
              If not (400+round(bhy/croc)>800) then 
                Line(400+round(bhy/croc),55,400+round(bhy/croc),75); 
              If not (400+round(bhz/croc)>800) then 
                Line(400+round(bhz/croc)+1,80,400+round(bhz/croc)+1,100); 
              If gamab/0.031416<100 then 
                Line(100+round(gamab/0.031416),530,100+round(gamab/0.031416),550); 
              If betab/0.031416<100 then 
                Line(100+round(betab/0.031416),505,100+round(betab/0.031416),525); 
              If alphab/0.031416<100 then 
                Line(100+round(alphab/0.031416),480,100+round(alphab/0.031416),500); 
            end; 
          If qw=1 then 
            Begin 
              If not (400+round(chx/croc)>800) then 
                Line(400+round(chx/croc),30,400+round(chx/croc),50); 
              If not (400+round(chy/croc)>800) then 
                Line(400+round(chy/croc),55,400+round(chy/croc),75); 
              If not (400+round(chz/croc)>800) then 
                Line(400+round(chz/croc),80,400+round(chz/croc),100); 
              If gamac/0.031416<100 then 
                Line(100+round(gamac/0.031416),530,100+round(gamac/0.031416),550); 
              If betac/0.031416<100 then 
                Line(100+round(betac/0.031416),505,100+round(betac/0.031416),525); 
              If alphac/0.031416<100 then 
                Line(100+round(alphac/0.031416),480,100+round(alphac/0.031416),500); 
            end; 
          {--zagolovku--------------------------------------} 
          TextColor(128, 128, 0);
          moveto(10,355); 
          writeln('Pivot point');
          MoveTo(10,559); 
          WriteLn('Scale'); 
          MoveTo(10,5); 
          WriteLn('Position'); 
          MoveTo(10,460); 
          WriteLn('Rotation      degrees'); 
          MoveTo(10,310); 
          WriteLn('Rozbuttia'); 
          MoveTo(320,610); 
          WriteLn('field viev'); 
          MoveTo(1055,10); 
          WriteLn('Radar'); 
          {danni--------------------------------------------} 
          If qw=3then 
            Begin 
              TextColor(128, 128, 0); 
              MoveTo(204,581); 
              WriteLn('X=',trunc(at)); 
              MoveTo(204,606); 
              WriteLn('Z=',trunc(ct)); 
              MoveTo(805,33); 
              WriteLn('X=',shx:2:0); 
              MoveTo(805,56); 
              WriteLn('Y=',shy:2:0); 
              MoveTo(805,80); 
              WriteLn('Z=',(shz):2:0); 
              MoveTo(205,535); 
              WriteLn('Z ',57.29577951307855*gamar:2:1,'"'); 
              MoveTo(205,510); 
              WriteLn('Y ',57.29577951307855*betar:2:1,'"'); 
              MoveTo(205,485); 
              WriteLn('X ',57.29577951307855*alphar:2:1,'"'); 
            end; 
          If qw=2then 
            Begin 
              TextColor(255, 0, 0); 
              MoveTo(204,581); 
              WriteLn('X=',trunc(ab)); 
              MoveTo(204,606); 
              WriteLn('Y=',trunc(bb)); 
              MoveTo(204,631); 
              WriteLn('Z=',trunc(cb)); 
              MoveTo(805,33); 
              WriteLn('X=',bhx:2:0); 
              MoveTo(805,56); 
              WriteLn('Y=',bhy:2:0); 
              MoveTo(805,80); 
              WriteLn('Z=',(bhz):2:0); 
              MoveTo(205,535); 
              WriteLn('Z ',57.29577951307855*gamab:2:1,'"'); 
              MoveTo(205,510); 
              WriteLn('Y ',57.29577951307855*betab:2:1,'"'); 
              MoveTo(205,485); 
              WriteLn('X ',57.29577951307855*alphab:2:1,'"'); 
            end; 
          If qw=1then 
            Begin 
              TextColor(56, 180, 254); 
              MoveTo(805,33); 
              WriteLn('X=',chx:2:0); 
              MoveTo(805,56); 
              WriteLn('Y=',chy:2:0); 
              MoveTo(805,80); 
              WriteLn('Z=',chz:2:0); 
              MoveTo(205,510); 
              WriteLn('Y ',57.29577951307855*betac:2:1,'"'); 
              MoveTo(205,485); 
              WriteLn('X ',57.29577951307855*alphac:2:1,'"'); 
              MoveTo(205,535); 
              WriteLn('Z ',57.29577951307855*gamac:2:1,'"'); 
            end;  
          TextColor( 255, 128, 0); 
          MoveTo(810,632); 
          WriteLn('field viev=',57.295779513078549*(pxc/sqrt(sqr(pxc)+sqr(1/fv))):4:3); 
          MoveTo(205,332); 
          WriteLn(n1);
          MoveTo(1145,31); 
          WriteLn('y'); 
          MoveTo(1145,236); 
          WriteLn('y'); 
          MoveTo(1046,335); 
          WriteLn('z'); 
          MoveTo(1046,540); 
          WriteLn('z'); 
          MoveTo(1145,130); 
          WriteLn('0'); 
          MoveTo(1145,335); 
          WriteLn('0'); 
          MoveTo(1145,441); 
          WriteLn('x'); 
          MoveTo(1046,131); 
          WriteLn('x'); 
          MoveTo(1145,131); 
          WriteLn('0'); 
          MoveTo(1145,541); 
          WriteLn('0'); 
          TextColor(56, 180, 254); 
          MoveTo(25,122); 
          WriteLn('camera'); 
          TextColor(255, 0, 0); 
          MoveTo(140,122); 
          WriteLn('body'); 
          MoveTo(255,122); 
          TextColor(128, 128, 0); 
          WriteLn('Square'); 
          szx:=sqrt(sqr(shx)+sqr(shz)); 
          {for radar------------------------------------------------------------------------------------} 
          Pen(9,255,0,0); 
          Ellipse(1144+round(bhx/10),129+round(bhy/10),1146+round(bhx/10),131+round(bhy/10)); 
          Ellipse(1144+round(bhz/10),334+round(bhy/10),1146+round(bhz/10),336+round(bhy/10)); 
          Ellipse(1144+round(bhz/10),539+round(bhx/10),1146+round(bhz/10),541+round(bhx/10)); 
          Pen(6,0,255,0); 
          Ellipse(1144+round(shx/10),129+round(shy/10),1146+round(shx/10),131+round(shy/10)); 
          Ellipse(1144+round(shz/10),334+round(shy/10),1146+round(shz/10),336+round(shy/10)); 
          Ellipse(1144+round(shz/10),539+round(shx/10),1146+round(shz/10),541+round(shx/10)); 
          {camera------------------} 
          Pen(1,0, 10, 255); 
          Line(1145+round(chz/10),335+round(chy/10),1145+round(chz/10)+round(60*cos(pyc/sqrt(sqr(pyc)+sqr(1/fv)))),335+round(chy/10)+round(60*sin(pyc/sqrt(sqr(pyc)+sqr(1/fv))))); 
          Line(1145+round(chz/10),335+round(chy/10),1145+round(chz/10)+round(60*cos(-pyc/sqrt(sqr(pyc)+sqr(1/fv)))),335+round(chy/10)+round(60*sin(-pyc/sqrt(sqr(pyc)+sqr(1/fv))))); 
          Line(1145+round(chz/10),540+round(chx/10),1145+round(chz/10)+round(60*cos(pxc/sqrt(sqr(pxc)+sqr(1/fv)))),540+round(chx/10)+round(60*sin(pxc/sqrt(sqr(pxc)+sqr(1/fv))))); 
          Line(1145+round(chz/10),540+round(chx/10),1145+round(chz/10)+round(60*cos(-pxc/sqrt(sqr(pxc)+sqr(1/fv)))),540+round(chx/10)+round(60*sin(-pxc/sqrt(sqr(pxc)+sqr(1/fv))))); 
          Pen(4,56, 180, 254); 
          Ellipse(1144+round(chx/10),129+round(chy/10),1146+round(chx/10),131+round(chy/10)); 
          Ellipse(1144+round(chz/10),334+round(chy/10),1146+round(chz/10),336+round(chy/10)); 
          Ellipse(1144+round(chz/10),539+round(chx/10),1146+round(chz/10),541+round(chx/10)); 
        end; 
      Pen(2,0,255,255); 
      Brush(190,0, 20, 0); 
      Rectangle(0,120,20,140); 
      Rectangle(115,120,135,140); 
      Rectangle(230,120,250,140); 
      If ((j<20) and (l<140) and (l>120)) or (qw=1)then 
        Begin 
          qw:=1; 
          Brush(1,190, 0, 0); 
          Rectangle(0,120,20,140); 
        end; 
      If ((j>115)and(j<135) and (l<140) and (l>120)) or (qw=2)then 
        Begin 
          qw:=2; 
          Brush(1,190, 0, 0); 
          Rectangle(115,120,135,140); 
        end; 
      If ((j>230)and(j<250) and (l<140) and (l>120)) or (qw=3) then 
        Begin 
          qw:=3; 
          Brush(1,190, 0, 0); 
          Rectangle(230,120,250,140); 
        end; 
      {mezhi-------------------------------------------------} 
      cg:=1003; 
      mx1:=pxc+round((-chx+1000)/((cg-chz+0.0003)*fv)); 
      my1:=pyc+round((-chy+1000)/((cg-chz+0.0003)*fv)); 
      mx2:=pxc+round((-chx+1000)/((cg-chz+0.0003)*fv)); 
      my2:=pyc+round((-chy-1000)/((cg-chz+0.0003)*fv)); 
      mx3:=pxc+round((-chx-1000)/((cg-chz+0.0003)*fv)); 
      my3:=pyc+round((-chy+1000)/((cg-chz+0.0003)*fv)); 
      mx4:=pxc+round((-chx-1000)/((cg-chz+0.0003)*fv)); 
      my4:=pyc+round((-chy-1000)/((cg-chz+0.0003)*fv)); 
      mx5:=pxc+round((-chx+1000)/fv); 
      my5:=pyc+round((-chy+1000)/fv); 
      mx6:=pxc+round((-chx+1000)/fv); 
      my6:=pyc+round((-chy-1000)/fv); 
      mx7:=pxc+round((-chx-1000)/fv); 
      my7:=pyc+round((-chy+1000)/fv); 
      mx8:=pxc+round((-chx-1000)/fv); 
      my8:=pyc+round((-chy-1000)/fv); 
      Pen(0,128, 128, 128); 
      Line(mx1,my1,mx2,my2); 
      Line(mx2,my2,mx4,my4); 
      Line(mx3,my3,mx4,my4); 
      Line(mx3,my3,mx1,my1); 
      Line(mx1,my1,mx5,my5); 
      Line(mx2,my2,mx6,my6); 
      Line(mx3,my3,mx7,my7); 
      Line(mx4,my4,mx8,my8); 
      {-------------------------------------------------------} 
      ato:=at/n1; 
      cto:=ct/n1; 
      fvxy:=0.0001; 
      For q:=0 to n1*2 do 
        Begin 
          If q<=n1 then 
            at:=ato*q; 
          If q=n1 then 
            ct:=0.0000000001; 
          If q>n1 then 
            ct:=cto*(q-n1); 
          lu:=sqrt(sqr(at)+sqr(ct)); 
          beta:=arctan(at/ct); 
          If (shz-chz+(lu*sin(betar+beta+alphac)*cos(alphar-betac))>3) and (shz-chz+(lu*sin(betar+pi-beta+alphac)*cos(alphar-betac))>3) and (shz-chz+(lu*sin(betar-beta+alphac)*cos(alphar-betac))>3) and
           (shz-chz+(lu*sin(betar+pi+beta+alphac)*cos(alphar-betac))>3) then 
            Begin 
              {A----------------------------------------------------} 
              p1x:=pxc+round(((shx-chx)+(lu*cos(betar+beta)))/(((shz-chz)+(lu*sin(betar+beta)*cos(alphar)))*fv)); 
              p1y:=pyc+round(((shy-chy)+(lu*sin(betar+beta)*sin(alphar)))/(((shz-chz)+(lu*sin(betar+beta)*cos(alphar)))*fv)); 
              {B----------------------------------------------------} 
              p2x:=pxc+round(((shx-chx)+(lu*cos(betar+pi-beta)))/(((shz-chz)+(lu*sin(betar+pi-beta)*cos(alphar)))*fv)); 
              p2y:=pyc+round(((shy-chy)+(lu*sin(betar+pi-beta)*sin(alphar)))/(((shz-chz)+(lu*sin(betar+pi-beta)*cos(alphar)))*fv)); 
              {A'---------------------------------------------------} 
              p3x:=pxc+round(((shx-chx)+(lu*cos(betar-beta)))/(((shz-chz)+(lu*sin(betar-beta)*cos(alphar)))*fv)); 
              p3y:=pyc+round(((shy-chy)+(lu*sin(betar-beta)*sin(alphar)))/(((shz-chz)+(lu*sin(betar-beta)*cos(alphar)))*fv)); 
              {B'---------------------------------------------------} 
              p4x:=pxc+round(((shx-chx)+(lu*cos(betar+pi+beta)))/(((shz-chz)+(lu*sin(betar+pi+beta)*cos(alphar)))*fv)); 
              p4y:=pyc+round(((shy-chy)+(lu*sin(betar+pi+beta)*sin(alphar)))/(((shz-chz)+(lu*sin(betar+pi+beta)*cos(alphar)))*fv)); 
              Pen(0, 50, 150, 0); 
              {square--------------} 
              Line(p1x,p1y,p2x,p2y); 
              Line(p2x,p2y,p4x,p4y); 
              Line(p3x,p3y,p4x,p4y); 
              Line(p3x,p3y,p1x,p1y); 
            end; 
        end; 
      lb:=sqrt(sqr(ab/2)+sqr(bb/2)+sqr(cb/2)); 
      balpha:=arctan(bb/ab); 
      bbeta:=arctan(cb/bb); 
      bgama:=arctan(ab/cb); 
      {a} 
      b1x:=pxc+round(((bhx-chx)+(lb*cos(alphab+balpha)*cos(gamab+pi-bgama)))/(((bhz-chz)+(lb*sin(gamab+pi-bgama)*cos(betab+pi-bbeta)))*fv)); 
      b1y:=pyc+round(((bhy-chy)+(lb*sin(alphab+balpha)*sin(betab+pi-bbeta)))/(((bhz-chz)+(lb*sin(gamab+pi-bgama)*cos(betab+pi-bbeta)))*fv)); 
      {b}                                
      b2x:=pxc+round(((bhx-chx)+(lb*cos(alphab+pi-balpha)*cos(gamab+bgama)))/(((bhz-chz)+(lb*sin(gamab+bgama)*cos(betab+pi-bbeta)))*fv)); 
      b2y:=pyc+round(((bhy-chy)+(lb*sin(alphab+pi-balpha)*sin(betab+pi-bbeta)))/(((bhz-chz)+(lb*sin(gamab+bgama)*cos(betab+pi-bbeta)))*fv)); 
      {c}                                     
      b3x:=pxc+round(((bhx-chx)+(lb*cos(alphab+pi+balpha)*cos(gamab+pi-bgama)))/(((bhz-chz)+(lb*sin(gamab+pi-bgama)*cos(betab+bbeta)))*fv)); 
      b3y:=pyc+round(((bhy-chy)+(lb*sin(alphab+pi+balpha)*sin(betab+bbeta)))/(((bhz-chz)+(lb*sin(gamab+pi-bgama)*cos(betab+bbeta)))*fv)); 
      {d} 
      b4x:=pxc+round(((bhx-chx)+(lb*cos(alphab-balpha)*cos(gamab+bgama)))/(((bhz-chz)+(lb*sin(gamab+bgama)*cos(betab+bbeta)))*fv)); 
      b4y:=pyc+round(((bhy-chy)+(lb*sin(alphab-balpha)*sin(betab+bbeta)))/(((bhz-chz)+(lb*sin(gamab+bgama)*cos(betab+bbeta)))*fv)); 
      {a'} 
      b5x:=pxc+round(((bhx-chx)+(lb*cos(alphab+balpha)*cos(gamab+pi+bgama)))/(((bhz-chz)+(lb*sin(gamab+pi+bgama)*cos(betab+pi+bbeta)))*fv)); 
      b5y:=pyc+round(((bhy-chy)+(lb*sin(alphab+balpha)*sin(betab+pi+bbeta)))/(((bhz-chz)+(lb*sin(gamab+pi+bgama)*cos(betab+pi+bbeta)))*fv)); 
      {b'} 
      b6x:=pxc+round(((bhx-chx)+(lb*cos(alphab+pi-balpha)*cos(gamab-bgama)))/(((bhz-chz)+(lb*sin(gamab-bgama)*cos(betab+pi+bbeta)))*fv)); 
      b6y:=pyc+round(((bhy-chy)+(lb*sin(alphab+pi-balpha)*sin(betab+pi+bbeta)))/(((bhz-chz)+(lb*sin(gamab-bgama)*cos(betab+pi+bbeta)))*fv)); 
      {c'} 
      b7x:=pxc+round(((bhx-chx)+(lb*cos(alphab+pi+balpha)*cos(gamab+pi+bgama)))/(((bhz-chz)+(lb*sin(gamab+pi+bgama)*cos(betab-bbeta)))*fv)); 
      b7y:=pyc+round(((bhy-chy)+(lb*sin(alphab+pi+balpha)*sin(betab-bbeta)))/(((bhz-chz)+(lb*sin(gamab+pi+bgama)*cos(betab-bbeta)))*fv)); 
      {d'} 
      b8x:=pxc+round(((bhx-chx)+(lb*cos(alphab-balpha)*cos(gamab-bgama)))/(((bhz-chz)+(lb*sin(gamab-bgama)*cos(betab-bbeta)))*fv)); 
      b8y:=pyc+round(((bhy-chy)+(lb*sin(alphab-balpha)*sin(betab-bbeta)))/(((bhz-chz)+(lb*sin(gamab-bgama)*cos(betab-bbeta)))*fv)); 
      Pen(1,255, 0, 0); 
      {front rectangle             } 
      Line(b1x,b1y,b2x,b2y); 
      Line(b2x,b2y,b3x,b3y); 
      Line(b3x,b3y,b4x,b4y); 
      Line(b4x,b4y,b1x,b1y); 
      {back  rectangle} 
      Line(b5x,b5y,b6x,b6y); 
      Line(b6x,b6y,b7x,b7y); 
      Line(b7x,b7y,b8x,b8y); 
      Line(b8x,b8y,b5x,b5y); 
      {bevel     lines} 
      Line(b1x,b1y,b5x,b5y); 
      Line(b2x,b2y,b6x,b6y); 
      Line(b3x,b3y,b7x,b7y); 
      Line(b4x,b4y,b8x,b8y); 
    end; 
  51: for i:=0 to 200000 do 
    begin
      TEXTCOLOR(64, 128, 128); 
      moveto(10,10); 
      writeln('  "W" - move object forward'); 
      moveto(10,25); 
      writeln('  "S" - move object backward'); 
      moveto(10,40); 
      writeln('  "D" - move object right'); 
      moveto(10,55); 
      writeln('  "A" - move object left'); 
      moveto(10,70); 
      writeln('  "Q" - move object up'); 
      moveto(10,85); 
      writeln('  "E" - move object down'); 
      textcolor(255, 128, 0);
      moveto(400,10); 
      writeln(' "Z" or "X" - rotate object navkolo osi -X-'); 
      moveto(400,25); 
      writeln(' "C" or "V" - rotate object navkolo osi -Y-'); 
      moveto(400,40); 
      writeln(' "B" or "N" - rotate object navkolo osi -Z-');
      textcolor(0, 255, 0);
      moveto(10,200);
      writeln(' press "H" to EXIT from help');
      moveto(10,215);
      writeln(' press "ESC" to EXIT from Program'); 
      moveto(10,400);
      writeln(((200000-i)/20000):3:1);
      
      textcolor(128, 0, 255);
      moveto(900,10);
      writeln(' "1" - camera');
      moveto(900,25);
      writeln(' "2" - body');
      moveto(900,40);
      writeln(' "3" - square');
      moveto(900,55);
      writeln(' "<" or ">" - change geometric bodyes');
      if isevent then 
        begin 
          event(km,xm,ym); 
          if km=1 then 
            begin 
              key2:=chr(xm); 
              if (key2='H')or (key2='h')then 
                goto 17; 
              if xm=27 then 
                goto 15;
                end; 
            end;
        if i=200000  then goto 17;  
        end; 
          15: Brush(1,40, 40, 40); 
      Rectangle(-1,-1,99999,99999); 
      Font(25,25,25); 
      MoveTo(20,200); 
      WriteLn('are you sure to quit     y/n'); 
      ReadLn(key); 
      If (key='Y') or (key='y') then ;
      end.
