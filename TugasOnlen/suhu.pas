//Nama:Morgen Sudyanto
//NIM:16518380

Program suhu;
var
    i,s,min,max:integer;

begin
    min:=10000;
    max:=0;
    for i:=1 to 20 do
    begin
        readln(s);
        if (s<min) then
        begin
            min:=s; 
        end;
        if (s>max) then
        begin
            max:=s;
        end;
        writeln('[H',i,']',s);
    end;
    writeln('Tertinggi = ',max);
    writeln('Terendah = ',min);
end.