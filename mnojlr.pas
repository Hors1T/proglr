uses crt;
type a = set of char;
var slovo1:a; slovo2:a;
ch:char; s1,s2,f,g:integer;
begin
  slovo1:=[];
  slovo2:=[];
  g:=0;
  f:=0;
  ch:=readkey;
  while ch<>' ' do begin
    f:=1;
    write(ch);
    if(ch in slovo1)=false then
      begin
    slovo1:=slovo1+[ch];
    s1:=s1+1;
    end;
    ch:=readkey;
  end;
  write(' ');
  ch:=readkey;
  while ch<>' ' do begin
     g:=1;
    write(ch);
    if(ch in slovo2)=false then
      begin
    slovo2:=slovo2+[ch];
    s2:=s2+1;
    end;
     ch:=readkey;
  end;
  writeln;
  if(f=0)then
    writeln('Первого слова нет')
  else if (g=0)then
    writeln('Второго слова нет')
  else
  if(s1>s2) then
    writeln('В первом слове больше букв')
  else
    if(s2>s1) then
    writeln('Во втором слове больше букв')
    else
      writeln('Одинакого букв');
    
end.