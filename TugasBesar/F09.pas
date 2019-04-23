// Designer : Elisabeth Levana (16518128)
// Coder    : Elisabeth Levana (16518128)
// Tester   : Morgen Sudyanto (16518380)
unit F09;
//tambahBuku

interface 
	uses typeList,tools;
	procedure tambahBuku(var lbuku:listbuku);
	{Buku baru ditambahkan ke dalam filebuku.csv}
		
implementation
	procedure tambahBuku(var lbuku:listbuku);
	begin
		lbuku.neff:= lbuku.neff+1;
		if (lbuku.neff=1) then //penambahan buku pertama kalinya
		begin
			writeln('Masukkan Informasi buku yang ditambahkan: ');
			write('Masukkan id buku: ');
			readln(lbuku.list[lbuku.neff].id_buku);
			write('Masukkan judul buku: ');
			readln(lbuku.list[lbuku.neff].judul_buku);
			write('Masukkan pengarang buku: ');
			readln(lbuku.list[lbuku.neff].author);
			write('Masukkan jumlah buku: ');
			readln(lbuku.list[lbuku.neff].jumlah_buku);
			write('Masukkan tahun terbit buku: ');
			readln(lbuku.list[lbuku.neff].tahun_penerbit);
			write('Masukkan kategori buku: ');
			readln(lbuku.list[lbuku.neff].kategori);
			writeln('Buku berhasil ditambahkan ke dalam sistem!');
		end else //sudah ada data buku sebelumnya
		begin
			writeln('Masukkan Informasi buku yang ditambahkan: ');
			write('Masukkan id buku: ');
			readln(lbuku.list[lbuku.neff].id_buku);
			write('Masukkan judul buku: ');
			readln(lbuku.list[lbuku.neff].judul_buku);
			write('Masukkan pengarang buku: ');
			readln(lbuku.list[lbuku.neff].author);
			write('Masukkan jumlah buku: ');
			readln(lbuku.list[lbuku.neff].jumlah_buku);
			write('Masukkan tahun terbit buku: ');
			readln(lbuku.list[lbuku.neff].tahun_penerbit);
			write('Masukkan kategori buku: ');
			readln(lbuku.list[lbuku.neff].kategori);
			writeln('Buku berhasil ditambahkan ke dalam sistem!');
		end;
	end;
end.