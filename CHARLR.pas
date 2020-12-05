uses CRT;
var f,k,i,j:integer;
ch,ch1:char;
begin
f:=0;
k:=0;
i:=0;
ch1:=' ';
repeat
ch:=readkey;
while (ch <> #0)do begin
write(ch);
f:=1;
if ch='.' then
begin
  if i>0 then
    begin
    k:=k+1;
    i:=0;
    end;
end;
if (ch1=' ') and (ch<>' ') then
  i:=i+1;
if k=1 then
  j:=i;
ch1:=ch;
ch:=readkey;
end;
ch:=readkey;
until (ch=#113);
if (f=0) then writeln ('Tекста нет')
else 
  if(k<2)then writeln('Второго предложения нет')
else
begin
  writeln(' ');
  writeln(' ',j);
  end;
end.