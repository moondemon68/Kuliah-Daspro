// Nama: Morgen Sudyanto
// NIM : 16518380

Program segiempat;
// Menggambar segiempat

//KAMUS
var
	n,i,j:integer;
	c1,c2:char;

//ALGORITMA
begin
	readln(n);
	readln(c1);
	readln(c2);
	if ((c1=c2) or (n<=0)) then
		writeln('Masukan tidak valid')
	else 
	begin
	for i:=1 to n do
	begin
		for j:=1 to n do
		begin
			if ((i=1) or (i=n)) then
			begin
				write(c1);
			end
			else 
			begin
				if ((j=1) or (j=n)) then
				begin
					write(c1);
				end
				else 
				begin
					write(c2);
				end;
			end;
		end;
		writeln();
	end;
	end;
end.
