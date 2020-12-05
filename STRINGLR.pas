uses
  crt;
var
  text,slovo:string;
  ch:char;
  f:integer;
  begin
    f:=0;
   ch:=readkey;
    repeat
      while ch<>#0 do begin
        f:=1;
        write(ch);
        if ch<>' ' then 
            slovo:=slovo+ch;  
        if (ch = ' ') then 
          begin
            if (length(slovo) mod 2) = 0 then
              begin
                text:=text+slovo;
                text:=text+' ';
                slovo:='';
              end;
              slovo:='';
         end;
          ch:=readkey;
      end;
      ch:=readkey;
      until ch=#112;
       if (length(slovo) mod 2) = 0 then
        begin
          text:=text+slovo;
          text:=text+' ';
          slovo:='';
        end;
      writeln;
      if(f=1)then
      writeln(text)
      else
        writeln('Текста нет');
  end.