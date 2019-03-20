// Nama: Morgen Sudyanto
// NIM : 16518380

Program jumlahderet;
// Menentukan jumlah deret

//KAMUS
var
	i,n,sum:integer;

//ALGORITMA
begin
	sum:=0;
	i:=1;
	readln(n);
	while (i<=n) do
	begin
		sum:=sum+i;
		i:=i+2;
	end;
	writeln(sum);
end.
