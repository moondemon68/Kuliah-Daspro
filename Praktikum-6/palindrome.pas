//Nama		: Morgen Sudyanto
//NIM		: 16518380
//Tanggal	: 10 April 2019

program palindrom;

const
	NMax=100;
type
	TabChar=record
		Tab:array[1..NMax] of char;
		Neff:integer;
	end;

procedure BacaTabChar(var s:TabChar);
var
	i:integer;
begin
	readln(s.Neff);
	for i:=1 to s.Neff do
	begin
		readln(s.Tab[i]);
	end;
end;

function IsPalindrome(s:TabChar):boolean;
var
	i:integer;
	ans:boolean;
begin
	ans:=true;
	for i:=1 to s.Neff do
	begin
		if (s.Tab[i]<>s.Tab[s.Neff-i+1]) then
		begin
			ans:=false;
		end;
	end;
	IsPalindrome:=ans;
end;

procedure TulisTabChar(s:TabChar);
var
	i:integer;
begin
	for i:=1 to s.Neff do
	begin
		write(s.Tab[i]);
	end;
end;

var
	a:TabChar;

begin
	BacaTabChar(a);
	if (a.Neff=0) then
	begin
		writeln('Array kosong');
	end
	else
	begin	
		TulisTabChar(a);
		writeln();
		if (IsPalindrome(a)) then
		begin
			writeln('Palindrom');
		end
		else
		begin
			writeln('Bukan palindrom');
		end;
	end;
end.
