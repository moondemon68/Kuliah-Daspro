//Nama:Morgen Sudyanto
//NIM:16518380

Program nilaii;
var
    tot:real;
    mahasiswa:integer;
    lulus:integer;
    data:integer;
    nilai:real;

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
    nilai:=123;
    tot:=0;
    data:=0;
    while (nilai<>-9999) do
    begin
        readln(nilai);
        data:=data+1;
        if (IsWithinRange(nilai,0,100)) then
        begin
            mahasiswa:=mahasiswa+1;
            tot:=tot+nilai;
            if (nilai>=40) then
            begin
                lulus:=lulus+1;
            end;
        end;
    end;
    if (data=1) then
    begin
        writeln('Data nilai kosong');
    end
    else if (mahasiswa=0) then
    begin
        writeln('0'); 
    end
    else
    begin
        writeln(mahasiswa);
        writeln(lulus);
        writeln(mahasiswa-lulus);
        writeln((tot/mahasiswa):0:2);
    end;
end.