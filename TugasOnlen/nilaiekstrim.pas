//Nama:Morgen Sudyanto
//NIM:16518380

Program nilaiekstrim;
var
    n,i,min,max,x:integer;
    ada:boolean;
    a:array[1..100] of integer;

begin
    min:=32767;
    max:=-32768;
    ada:=false;
    readln(n);
    for i:=1 to n do
    begin
        readln(a[i]);
        if (a[i]<min) then min:=a[i];
        if (a[i]>max) then max:=a[i];
    end;
    readln(x);
    for i:=1 to n do
    begin
        if (a[i]=x) then ada:=true;
    end;
    if (x=max) and (x=min) then
    begin
        writeln('maksimum');
        writeln('minimum');
    end
    else if (x=max) then
    begin
        writeln('maksimum');
    end
    else if (x=min) then
    begin
        writeln('minimum');
    end
    else if (ada=true) then
    begin
        writeln('N#A');
    end
    else
    begin
        writeln(x,' tidak ada');
    end;
end.