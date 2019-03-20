// Nama: Morgen Sudyanto
// NIM : 16518380

Program hargaMakanan;
// Menentukan harga makanan

//KAMUS
var
	i,n,sum:integer;

//ALGORITMA
begin
	sum:=0;
	readln(n);
	for i:=1 to n do
	begin
		readln(n);
		if ((i mod 2)=0) then
			sum:=sum+2*n
		else
			sum:=sum+n;
	end;
	write(sum*100);
	writeln(' rupiah');
end.
