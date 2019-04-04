//Nama:Morgen Sudyanto
//NIM:16518380

Program bilangan;
var
    i,n:integer;
    a:array[1..100] of char;
    ada:boolean;
    x:char;

begin
    n:=-4321;
    while (n<=0) or (n>100) do
    begin
        if (n<>-4321) then writeln('Masukan salah. Ulangi!');
        readln(n);
    end;
    for i:=1 to n do
    begin
        readln(a[i]);
    end;
    readln(x);
    if (x='s') or (x='S') then
    begin
        i:=0;
        ada:=false;
        while (i<n) and (not(ada)) do
        begin
            i:=i+1;
            if (a[i]>='a') and (a[i]<='z') then
            begin
                ada:=true;
                writeln(i,' ',a[i]);
            end;
        end;
        if (not(ada)) then
        begin
            writeln('Tidak ada huruf kecil');
        end;
    end
    else if (x='L') or (x='l') then
    begin
        i:=0;
        ada:=false;
        while (i<n) and (not(ada)) do
        begin
            i:=i+1;
            if (a[i]>='A') and (a[i]<='Z') then
            begin
                ada:=true;
                writeln(i,' ',a[i]);
            end;
        end;
        if (not(ada)) then
        begin
            writeln('Tidak ada huruf besar');
        end;
    end
    else if (x='X') or (x='x') then
    begin
        i:=0;
        ada:=false;
        while (i<n) and (not(ada)) do
        begin
            i:=i+1;
            if not(((a[i]>='A') and (a[i]<='Z')) or ((a[i]>='a') and (a[i]<='z'))) then
            begin
                ada:=true;
                writeln(i,' ',a[i]);
            end;
        end;
        if (not(ada)) then
        begin
            writeln('Semua huruf');
        end;
    end
    else
    begin
        writeln('Tidak diproses');
    end;
end.