unit type1;
interface
const
  N = 2;
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
implementation
end.