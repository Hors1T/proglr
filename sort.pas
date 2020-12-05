unit sort;
interface
uses type1;
procedure otl(var g:integer; list:aa; x:students; var good:aa);
function dolg:real;
implementation
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
end.
