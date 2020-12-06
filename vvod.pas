unit vvod;
interface
uses type1;
function input:real;
function output:real;
implementation
function input:real;
begin
  var j:integer;
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