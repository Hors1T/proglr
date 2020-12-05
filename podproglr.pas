const
  N = 25;
type
  students = record
    surname: string;
    name: string;
    midname: string;
    year: integer;
    number: string;
    math: real;
    phys: real;
    prog: real;
    ob: string;
    razd:char;
  end;
  aa = array[1..N] of students;
  bb = array[1..N] of real;

var
  list, good, bad: aa;
  x: students;
  sr: bb;
  i,g, b: integer;
  procedure otl(var g:integer; list:aa; x:students; var good:aa);
  begin 
    var k,l,i:integer;
    for i := 1 to N do
  begin
    if (list[i].math = 5) and (list[i].phys = 5) and (list[i].prog = 5) then
    begin
      good[g] := list[i];
      g := g + 1;  
    end;
  end;
   for k := 1 to g - 1 do
  begin
    for l := 1 to g - 1 do
    begin
      if (good[k].surname > good[l].surname) and (k < l) then begin
        x := good[k];
        good[k] := good[l];
        good[l] := x;
      end;
    end;
  end;
  end;
  function dolg:real;
  begin
    var i:integer;
    for i := 1 to N do
  begin
    if (list[i].prog = 2) then
    begin
      bad[b] := list[i];
      b := b + 1;  
    end;
  end;
  for i := 1 to b - 1 do
    sr[i] := (bad[i].math + bad[i].phys + bad[i].prog) / 3;
  end;
  begin
    g := 1;
  b := 1;
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
  otl(g,list,x,good);
  dolg;
  writeln;
  writeln('a)');
  for i := 1 to g - 1 do
    writeln(good[i]);
  writeln;
  writeln('б)');
  for i := 1 to b - 1 do
    writeln(bad[i], ' средний балл: ', sr[i]);  
  end.