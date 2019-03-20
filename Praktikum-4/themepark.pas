// Nama: Morgen Sudyanto
// NIM : 16518380

Program themepark;
// Menentukan kategori orang tepat atau tidak

//KAMUS
var
	t,b,k:integer;

//ALGORITMA
begin
	readln(t,b,k);
	if ((k=2) and (t>100) and (b<=150)) then
		writeln('TRUE')
	else if ((k=3) and (t>100) and (b<=150)) then
		writeln('TRUE')
	else if ((k=4) and (t>100) and (b<=150)) then
		writeln('TRUE')
	else if ((k=0) and (t>100) and (b<=150)) then
		writeln('FALSE')
	else if ((k=1) and (t>100) and (b<=150)) then
		writeln('FALSE')
	//END OF 1
	else if ((k=2) and (t<=100) and (b>30) and (b<=150)) then
		writeln('TRUE')
	else if ((k=1) and (t<=100) and (b<=150)) then
		writeln('TRUE')
	//END OF 2
	else if ((k=2) and (b>150) and (t<=100)) then
		writeln('TRUE')
	else if ((k=3) and (b>150) and (t>100) and (t<=200)) then
		writeln('TRUE')
	else if ((k=2) and (b>150) and (t>100) and (t<=200)) then
		writeln('TRUE')
	//END OF 3
	else if (k=0) then
		writeln('TRUE')
	else if (k<>0) then
		writeln('FALSE');
	//END OF 4
	end.
			
end.
