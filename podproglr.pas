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
  end;
  aa = array[1..N] of students;
  bb = array[1..N] of real;

var
  list, good, bad: aa;
  x: students;
  sr: bb;
  i,g,j, b,r: integer;
  s,d:string;
  
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
 readln(s);
  for j := 1 to N do begin
    i:=1;
    while s[i]<>',' do begin list[j].surname :=list[j].surname+s[i]; i:=i+1; end;
    i:=i+1;
    while s[i]<>',' do begin list[j].name :=list[j].name+s[i]; i:=i+1; end;
    i:=i+1;
    while s[i]<>',' do begin list[j].midname :=list[j].midname+s[i]; i:=i+1; end;
    i:=i+1;
    while s[i]<>',' do begin d :=d+s[i]; i:=i+1; end;
    val(d,list[j].year,r);
    delete(d,1,length(d));
    i:=i+1;
    while s[i]<>',' do begin list[j].number :=list[j].number+s[i]; i:=i+1; end;
    i:=i+1;
    while s[i]<>',' do begin d :=d+s[i]; i:=i+1; end;
    val(d,list[j].math,r);
    delete(d,1,length(d));
    i:=i+1;
    while s[i]<>',' do begin d :=d+s[i]; i:=i+1; end;
    val(d,list[j].phys,r);
    delete(d,1,length(d));
    i:=i+1;
    while s[i]<>',' do begin d :=d+s[i]; i:=i+1; end;
    val(d,list[j].prog,r);
    delete(d,1,length(d));
    i:=i+1;
    while s[i]<>';' do begin list[j].ob :=list[j].ob+s[i]; i:=i+1; end;
    delete(s,1,i);
 
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