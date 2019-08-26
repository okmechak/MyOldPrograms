PROGRAM MONEY;
VAR S:integer;
begin
writeln('please enter what  place: ');
playsound(2,'c:\\windows\\media\\Windows XP Exclmation');
readln(s);
if s=1 then writeln('40-grn');
if s=2 then 
begin
writeln('60-grn');
playsound(0,'C:\\documents and settings\\My stuff\\My documents\\Dig.wav');
end;
if s=3 then writeln('20-grn');
if s>3 then writeln('Luzer  0-grn');
end.

