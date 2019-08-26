program hiperCub;

type tochku=record
         x,y,z,t:real;
  end;
var Ap,Bp,Cp,Dp,Ep,Fp,Gp,Hp,Am,Bm,Cm,Dm,Em,Fm,Gm,Hm:tochku;         
    a,b,c,d,c3x,c3y,c3z,c2x,c2y:real;
    coord,Cpos:tochku;
    k,x,y:integer;
        
procedure Re1(py:integer; var xz:tochku);
  begin
  textcolor(0, 255, 255);
  pen(1,128, 128, 255);
   rectangle(0,py,1000,20+py);
   rectangle(0,20+py,1000,40+py);
   rectangle(0,40+py,1000,60+py);
   rectangle(0,60+py,1000,80+py);
   line(500,py,500,80+py);
    if(y>py)and(y<=20+py)then xz.x:=(x-500);
    if(y>20+py)and(y<=40+py)then xz.y:=(x-500);
    if(y>40+py)and(y<=60+py)then xz.z:=(x-500);
    if(y>60+py)and(y<=80+py)then xz.t:=(x-500);   
   moveto(1005,3+py);
   write(xz.x:3:3);
   moveto(1005,23+py);
   write(xz.y:3:3);
   moveto(1005,43+py);
   write(xz.z:3:3);
   moveto(1005,63+py);
   write(xz.t:3:3);
 end;
 procedure Re2(py:integer; var xz:tochku);
  begin
  textcolor(0, 255, 255);
  pen(1,128, 128, 255);
   rectangle(0,py,1000,20+py);
   rectangle(0,20+py,1000,40+py);
   rectangle(0,40+py,1000,60+py);
   rectangle(0,60+py,1000,80+py);
   rectangle(0,80+py,1000,100+py);
   line(500,py,500,100+py);
    if(y>py)and(y<=20+py)then xz.x:=(x-500)/50;
    if(y>20+py)and(y<=40+py)then xz.y:=(x-500)/50;
    if(y>40+py)and(y<=60+py)then xz.z:=(x-500)/50;
    if(y>60+py)and(y<=80+py)then xz.t:=(x-500);   
    if(y>80+py)and(y<=100+py)then d:=(x);
   moveto(1005,3+py);
   write(xz.x:3:3);
   moveto(1005,23+py);
   write(xz.y:3:3);
   moveto(1005,43+py);
   write(xz.z:3:3);
   moveto(1005,63+py);
   write(xz.t:3:3);
 end;            
{procedure HyperLine(a,b:tochku);
  var p2x1,p2y1,p2x2,p2y2:integer;
  begin
  if (a.z+a.t*cpos.z)*cpos.t<>0 then begin
   p2x1:=round((a.x+a.t*Cpos.x)/(a.z+a.t*cpos.z)*cpos.t*20+c2x);
   p2y1:=round((a.y+a.t*cpos.y)/(a.z+a.t*cpos.z)*cpos.t*20+c2y); end;
   IF (b.z+b.t*cpos.z)*cpos.t<>0 THEN BEGIN
   p2x2:=round((b.x+b.t*cpos.x)/(b.z+b.t*cpos.z)*cpos.t*20+c2x);
   p2y2:=round((b.y+b.t*cpos.y)/(b.z+b.t*Cpos.z)*cpos.t*20+c2y);
   end;
     
  if ((a.z+a.t*cpos.z)*cpos.t<>0)and((b.z+b.t*cpos.z)*cpos.t<>0)then                 
   line(p2x1,p2y1,p2x2,p2y2);               
  end;                       }
  
procedure hyperline(a,b:tochku); 

var 
   d1,d2,R:real; 
   i,k,X,Y,Z,F,J:integer; 
begin 
  k:=20;
   RANDOMIZE;
   F:=0;
    J:=0;
  for i:=1 to k do 
    begin 
    
     R:=4;
      X:=round(a.x+((b.x-a.x)/k)*i); 
      Y:=round(a.y+((b.y-a.y)/k)*i); 
      Z:=round(a.z+((b.z-a.z)/k)*i); 
      d1:=sqrt(sqr(x/406)+sqr(y/406)+sqr(z/360));
      D2:=SQR(SQR(D1-0.8)*SQR(D1-0.8)*SQR(D1-0.8)); 
      IF D2>=1 THEN BEGIN
       pen(1,ROUND(175/D2),ROUND(175/D2),ROUND(175/D2)); BRUSH(1,ROUND(175/D1),ROUND(175/D1),ROUND(175/D1));END
       ELSE BEGIN pen(1,255,255,255); BRUSH(1,255,255,255); END;
       
      ELLIPSE(600+round((x+R+F)/d1),300+round((y+R+J)/d1),600+round((x-R+F)/d1),300+round((y-R+J)/d1)); 
    end; 
end;   
begin
a:=50;
b:=50;
c:=50;
d:=550;
coord.x:=0;
coord.y:=0;
coord.z:=0;
coord.t:=0;
c2x:=1257/2;
c2y:=691/2;
cpos.x:=0;
cpos.y:=0;
cpos.z:=0;
cpos.t:=2;
repeat
event(k,x,y); 
BRUSH(1,19, 19, 19);
RECTANGLE(0,0,1300,700);
 re1(0,coord);
 
 re2(85,cpos);
ap.x:=-a+coord.x;
bp.x:=a+coord.x;
cp.x:=a+coord.x;
dp.x:=-a+coord.x;
ep.x:=-a+coord.x;
fp.x:=a+coord.x;
gp.x:=a+coord.x;
hp.x:=-a+coord.x;

ap.y:=-b+coord.y;
bp.y:=-b+coord.y;
cp.y:=-b+coord.y;
dp.y:=-b+coord.y;
ep.y:=b+coord.y;
fp.y:=b+coord.y;
gp.y:=b+coord.y;
hp.y:=b+coord.y;

ap.z:=-c+coord.z;
bp.z:=-c+coord.z;
cp.z:=c+coord.z;
dp.z:=c+coord.z;
ep.z:=-c+coord.z;
fp.z:=-c+coord.z;
gp.z:=c+coord.z;
hp.z:=c+coord.z;

ap.t:=d+coord.t;
bp.t:=d+coord.t;
cp.t:=d+coord.t;
dp.t:=d+coord.t;
ep.t:=d+coord.t;
fp.t:=d+coord.t;
gp.t:=d+coord.t;
hp.t:=d+coord.t;


am.x:=-a+coord.x;
bm.x:=a+coord.x;
cm.x:=a+coord.x;
dm.x:=-a+coord.x;
em.x:=-a+coord.x;
fm.x:=a+coord.x;
gm.x:=a+coord.x;
hm.x:=-a+coord.x;

am.y:=-b+coord.y;
bm.y:=-b+coord.y;
cm.y:=-b+coord.y;
dm.y:=-b+coord.y;
em.y:=b+coord.y;
fm.y:=b+coord.y;
gm.y:=b+coord.y;
hm.y:=b+coord.y;

am.z:=-c+coord.z;
bm.z:=-c+coord.z;
cm.z:=c+coord.z;
dm.z:=c+coord.z;
em.z:=-c+coord.z;
fm.z:=-c+coord.z;
gm.z:=c+coord.z;
hm.z:=c+coord.z;

am.t:=-d+coord.t;
bm.t:=-d+coord.t;
cm.t:=-d+coord.t;
dm.t:=-d+coord.t;
em.t:=-d+coord.t;
fm.t:=-d+coord.t;
gm.t:=-d+coord.t;
hm.t:=-d+coord.t;
hyperline(am,bm);
hyperline(bm,cm);
hyperline(cm,dm);
hyperline(dm,Am);
hyperline(Em,Fm);
hyperline(Fm,Gm);
hyperline(Gm,Hm);
hyperline(hm,em);
hyperline(Am,Em);
hyperline(Bm,Fm);
hyperline(Cm,Gm);
hyperline(Dm,Hm);

hyperline(ap,bp);
hyperline(bp,cp);
hyperline(cp,dp);
hyperline(dp,Ap);
hyperline(Ep,Fp);
hyperline(Fp,Gp);
hyperline(Gp,Hp);
hyperline(hp,ep);
hyperline(Ap,Ep);
hyperline(Bp,Fp);
hyperline(Cp,Gp);
hyperline(Dp,Hp);

hyperline(ap,am);
hyperline(bp,bm);
hyperline(cp,cm);
hyperline(dp,dm);
hyperline(Ep,em);
hyperline(Fp,fm);
hyperline(Gp,gm);
hyperline(hp,hm);


until false;
end.                                 
                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                                                                                                                                                                                                                                              


                                
