// Designer : 
// Coder    : Elisabeth Levana (16518128)
// Tester   : 
unit F09e;
//tambahBuku

interface 
uses typeList,tools,sysutils;
	procedure tambahBuku(var lbuku:listbuku);
	{Buku baru ditambahkan ke dalam filebuku.csv}
	

	
implementation
	procedure tambahBuku(var lbuku:listbuku);
	var
		UserFile : text;
		{variabel yg akan ditulis}
		textline : string;
		
		

	begin
		system.Assign(UserFile,'buku.csv');
		lbuku.neff:= lbuku.neff+1;
		if (lbuku.neff=1) then //penambahan buku pertama kalinya
		begin
			system.rewrite(UserFile);
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
			textline := intToStr(lbuku.list[lbuku.neff].id_buku)+','+lbuku.list[lbuku.neff].judul_buku+','+lbuku.list[lbuku.neff].author+','+intToStr(lbuku.list[lbuku.neff].jumlah_buku)+','+intToStr(lbuku.list[lbuku.neff].tahun_penerbit)+','+lbuku.list[lbuku.neff].kategori;
			writeln(UserFile,textline);
			close(UserFile);
		end else //sudah ada data buku sebelumnya
		begin
			system.append(UserFile);
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
			textline := intToStr(lbuku.list[lbuku.neff].id_buku)+','+lbuku.list[lbuku.neff].judul_buku+','+lbuku.list[lbuku.neff].author+','+intToStr(lbuku.list[lbuku.neff].jumlah_buku)+','+intToStr(lbuku.list[lbuku.neff].tahun_penerbit)+','+lbuku.list[lbuku.neff].kategori;
			writeln(UserFile,textline);
			close(UserFile);

		end;
	end;
end.