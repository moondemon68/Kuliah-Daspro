//Nama:Morgen Sudyanto
//NIM:16518380

Program barang;
var
    x,n,t,i:integer;
begin
    readln(n);
    t:=0;
    for i:=1 to n do
    begin
        readln(x);
        t:=t+x;
    end;
    writeln(t);
end.