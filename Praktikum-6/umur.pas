//Nama		: Morgen Sudyanto
//NIM		: 16518380
//Tanggal	: 10 April 2019

program umur;

var
	maxi,mini,x,i:integer;
begin
	maxi:=-999;
	mini:=999;
	for i:=1 to 20 do
	begin
		readln(x);
		if (x>maxi) then
		begin
			maxi:=x;
		end;
		if (x<mini) then
		begin
			mini:=x;
		end;
		writeln('[P',i,']',x);
	end;
	writeln('Tertinggi = ',maxi);
	writeln('Terendah = ',mini);
end.
