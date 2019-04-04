//Nama:Morgen Sudyanto
//NIM:16518380

Program bilangan;
var
    i,x,n:integer;
    a:array[1..100] of integer;
    ada:boolean;

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
    if (x=-1) then
    begin
        i:=0;
        ada:=false;
        while (i<n) and (not(ada)) do
        begin
            i:=i+1;
            if (a[i]<0) then
            begin
                ada:=true;
                writeln(i,' ',a[i]);
            end;
        end;
        if (not(ada)) then
        begin
            writeln('Tidak ada negatif');
        end;
    end
    else if (x=1) then
    begin
        i:=0;
        ada:=false;
        while (i<n) and (not(ada)) do
        begin
            i:=i+1;
            if (a[i]>0) then
            begin
                ada:=true;
                writeln(i,' ',a[i]);
            end;
        end;
        if (not(ada)) then
        begin
            writeln('Tidak ada positif');
        end;
    end
    else if (x=0) then
    begin
        i:=0;
        ada:=false;
        while (i<n) and (not(ada)) do
        begin
            i:=i+1;
            if (a[i]=0) then
            begin
                ada:=true;
                writeln(i);
            end;
        end;
        if (not(ada)) then
        begin
            writeln('Tidak ada 0');
        end;
    end
    else
    begin
        writeln('Tidak diproses');
    end;
end.