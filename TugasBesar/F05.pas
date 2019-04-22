// Designer : Elisabeth Levana (16518128)
// Coder    : Elisabeth Levana (16518128)
// Tester   : Arief Darmawan Tantriady (16518058)
unit F05;
//pinjamBuku

interface 
uses typeList,tools;
	procedure pinjamBuku(var currentUser : akun ; var lBuku: listbuku; var lPinjam : listpinjam);
	 
implementation
	procedure pinjamBuku(var currentUser : akun ; var lBuku: listbuku; var lPinjam : listpinjam);
	var	
		i,idbuku,buku_found,stock : integer;
		today : string;
		
	begin
		lpinjam.neff:= lpinjam.neff+1;
		if (lpinjam.neff=1) then
		begin
			write('Masukkan id buku yang ingin dipinjam: ');
			readln(idbuku);
			for i:=1 to lbuku.neff do
			begin
				if idbuku=lbuku.list[i].id_buku then
				begin
					buku_found:=i;
				end;
			end;
			write('Masukkan tanggal hari ini: ');
			readln(today);
			
			stock:=lbuku.list[buku_found].jumlah_buku;
			if (stock>0) then
			begin
				writeln('Buku ',lbuku.list[buku_found].judul_buku,' berhasil dipinjam!');
				writeln('Tersisa ',stock-1,' buku ',lbuku.list[buku_found].judul_buku);
				lbuku.list[buku_found].jumlah_buku:=stock-1;
				writeln('Terima kasih sudah meminjam');
				lpinjam.list[lpinjam.neff].status_pengembalian:=False;
				lpinjam.list[lpinjam.neff].username:=currentUser.username;
				lpinjam.list[lpinjam.neff].id_buku:=idbuku;
				lpinjam.list[lpinjam.neff].tanggal_peminjaman:=stringToTanggal(today);
				lpinjam.list[lpinjam.neff].tanggal_batas_pengembalian:=addOneWeek(stringToTanggal(today));
			end else 
			begin
				writeln('Buku ',lbuku.list[buku_found].judul_buku,' sedang habis!');
				writeln('Coba lain kali.');				
			end;				
		end else
		begin
			write('Masukkan id buku yang ingin dipinjam: ');
			readln(idbuku);
			for i:=1 to lbuku.neff do
			begin
				if idbuku=lbuku.list[i].id_buku then
				begin
					buku_found:=i;
				end;
			end;
			write('Masukkan tanggal hari ini: ');
			readln(today);
			
			stock:=lbuku.list[buku_found].jumlah_buku;
			if (stock>0) then
			begin
				writeln('Buku ',lbuku.list[buku_found].judul_buku,' berhasil dipinjam!');
				writeln('Tersisa ',stock-1,' buku ',lbuku.list[buku_found].judul_buku);
				lbuku.list[buku_found].jumlah_buku:=stock-1;
				writeln('Terima kasih sudah meminjam');
				lpinjam.list[lpinjam.neff].status_pengembalian:=False;
				lpinjam.list[lpinjam.neff].username:=currentUser.username;
				lpinjam.list[lpinjam.neff].id_buku:=idbuku;
				lpinjam.list[lpinjam.neff].tanggal_peminjaman:=stringToTanggal(today);
				lpinjam.list[lpinjam.neff].tanggal_batas_pengembalian:=addOneWeek(stringToTanggal(today));
			end else 
			begin
				writeln('Buku ',lbuku.list[buku_found].judul_buku,' sedang habis!');
				writeln('Coba lain kali.');				
			end;
		end;
	end;
end.