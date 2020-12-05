program abs;
var
  i, a, s,f, min, max:integer;
begin
  min:=32000;
  max:=-32000;
  i:=0;
  f:=0;
  read(a);
    while(a<>0) do
      begin
        f:=1;
        if a < min then
          min:=a;
        if a > max then
          max:=a;
        s:=s+a;
        i:=i+1;
        read(a);
      end;
  i:=i-2;
  s:=s -(min+max);
  if f=0 then
    write('Первым введён ноль')
  else
    if s mod i = 0 then
      write(s div i)
    else
      write(s div i,'+(',s mod i,'/',i,')');
end.