//Nama:Morgen Sudyanto
//NIM:16518380

Program lingkaran;
var
    r:real;
begin
    readln(r);
    if (r<=0) then
    begin
        writeln('Jari-jari harus > 0');
    end
    else
    begin
        r:=3.1415*r*r;
        writeln(r:0:2);
    end;
end.