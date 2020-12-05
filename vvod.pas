unit vvod;
interface
uses type1;
function input:real;
function output:real;
implementation
function input:real;
begin
  var i:integer;
for i := 1 to N do 
  begin
    readln(list[i].surname);
    readln(list[i].name);
    readln(list[i].midname);
    readln(list[i].year);
    readln(list[i].number);
    readln(list[i].math);
    readln(list[i].phys);
    readln(list[i].prog);
   readln(list[i].ob);
    readln(list[i].razd);
  end;  
end;
function output:real;
begin
  var i:integer;
  writeln;
  writeln('a)');
  for i := 1 to g - 1 do
    writeln(good[i]);
  writeln;
  writeln('б)');
  for i := 1 to b - 1 do
    writeln(bad[i], ' средний балл: ', sr[i]);

end;
end.