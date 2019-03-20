// Nama: Morgen Sudyanto
// NIM : 16518380

Program array1;
// Mengeluarkan bilangan positif negatif dan nol

//KAMUS
var
	i,n,k,pos,neg,zero : integer;
	a : array [1..105] of integer; 

//ALGORITMA
begin
	readln(n);
	if (n=0) then
	begin
		writeln('Tidak ada bilangan');
	end
	else 
	begin
	pos:=0;
	neg:=0;
	zero:=0;
	for i:=1 to n do
	begin
		readln(a[i]);
		if (a[i]>0) then
			pos:=pos+1
		else if (a[i]=0) then
			zero:=zero+1
		else
			neg:=neg+1;
	end;
	readln(k);
	if (k=1) then
	begin
		writeln(pos);
		for i:=1 to n do
		begin
			if (a[i]>0) then
				writeln(a[i]);
		end;
	end
	else if (k=-1) then
	begin
		writeln(neg);
		for i:=1 to n do
		begin
			if (a[i]<0) then
				writeln(a[i]);
		end;
	end
	else if (k=0) then
		writeln(zero);
	end;
end.
