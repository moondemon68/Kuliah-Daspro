//Nama:Morgen Sudyanto
//NIM:16518380

Program ipmahasiswa;
var
    tot:real;
    mahasiswa:integer;
    lulus:integer;
    ip:real;

function IsWithinRange (X : real; min, max : real) : boolean;
{ Menghasilkan true jika min <= X <= max, menghasilkan false jika tidak }
begin
    if (X>=min) and (X<=max) then
    begin
        IsWithinRange:=true;
    end
    else 
    begin
        IsWithinRange:=false;
    end;
end;

begin
    mahasiswa:=0;
    lulus:=0;
    ip:=123;
    tot:=0;
    while (ip<>-999) do
    begin
        readln(ip);
        if (IsWithinRange(ip,0,4)) then
        begin
            mahasiswa:=mahasiswa+1;
            tot:=tot+ip;
            if (ip>=2.75) then
            begin
                lulus:=lulus+1;
            end;
        end;
    end;
    if (mahasiswa=0) then
    begin
        writeln('Tidak ada data');
    end
    else
    begin
        writeln(mahasiswa);
        writeln(lulus);
        writeln(mahasiswa-lulus);
        writeln((tot/mahasiswa):0:2);
    end;
end.