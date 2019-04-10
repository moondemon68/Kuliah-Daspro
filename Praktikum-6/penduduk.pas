//Nama		: Morgen Sudyanto
//NIM		: 16518380
//Tanggal	: 10 April 2019

program penduduk;

var
	i,n,x,ans:integer;
begin
	readln(n);
	for i:=1 to n do
	begin
		readln(x);
		ans:=x+ans;
	end;
	writeln(ans);
end.
