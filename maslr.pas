const
N=6;
M=9;
type aa=array[1..N,1..M] of real;
var a:aa; i,j,im,jm:integer; max,s,sr,k:real;
begin
  max:=-32000;
  k:=0;
  im:=0;
  for i:=1 to N do 
    for j:=1 to M do
      read(a[i,j]);
 // поиск максимума
 for i:=1 to N do
    for j:=1 to M do begin
      if(a[i,j]> max) then
       begin
        max:=a[i,j];
        im:=i;
        jm:=j;
       end;
    end;
 // обработка
 for i:=1 to N do
   for j:=jm+1 to M do begin
     s:=s+a[i,j];
   end;
 for i:=im+1 to N do
   for j:=1 to M do begin
     sr:=sr+a[i,j];
     k:=k+1;
   end; 
   sr:=sr/2;
   writeln;
   writeln(s);
   writeln(sr);
end.
