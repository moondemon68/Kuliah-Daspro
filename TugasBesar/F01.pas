// Designer : Arief Darmawan Tantriady (16518058)
// Coder    : Arief Darmawan Tantriady (16518058)
// Tester   : Morgen Sudyanto (16518380)
unit F01;
//fungsi register 

interface
	//kita panggil typeList yang berisi type yang akan digunakan pada program
	uses typeList,tools;
	procedure register(var a:listAkun);
	
implementation
	procedure register(var a:listAkun);
	begin
		a.neff := a.neff + 1;
		write('Masukkan nama pengunjung: ');
		readln(a.list[a.neff].nama);
		write('Masukkan alamat pengunjung: ');
		readln(a.list[a.neff].alamat);
		write('Masukkan username pengunjung: ');
		readln(a.list[a.neff].username);
		write('Masukkan password pengunjung: ');
		readln(a.list[a.neff].password);
		a.list[a.neff].password:=encrypt(a.list[a.neff].username,a.list[a.neff].password);
		writeln;
		writeln('Pengunjung '+a.list[a.neff].nama+' berhasil terdaftar sebagai user.');
	end;
end.