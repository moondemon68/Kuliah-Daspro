// Designer : 
// Coder    : Elisabeth Levana (16518128)
// Tester   : 
unit F06e;
//kembalikanBuku

interface 
uses typeList,sysutils,tools;
	procedure kembalikanBuku(var currentUser : akun ;var lPinjam : listpinjam; var lBuku: listbuku; var lKembali: listkembali);
	 
implementation
	procedure kembalikanBuku(var currentUser : akun ;var lPinjam : listpinjam; var lBuku: listbuku; var lKembali: listkembali);
	var	
		i,idbuku,lamapinjam,buku_found,indexjudul : integer;
		UserFile : text;
		{variabel yg akan ditulis}
		textline : string;
		today : string;
		
	begin
		system.Assign(UserFile,'pengembalian.csv');
		lkembali.neff:= lkembali.neff+1;
		if (lkembali.neff=1) then
		begin
			system.rewrite(UserFile);
			write('Masukkan id buku yang dikembalikan: ');
			readln(idbuku);
			for i:=1 to lPinjam.neff do
			begin
				if idbuku=lPinjam.list[i].id_buku then
				begin
					buku_found:=i;
				end;
			end;
			for i:=1 to lbuku.neff do
			begin
				if idbuku=lbuku.list[i].id_buku then
				begin
					indexjudul:=i;
				end;
			end;
			writeln('Data peminjaman');
			writeln('Username: ',lPinjam.list[buku_found].username);
			writeln('Judul buku: ',lbuku.list[indexjudul].judul_buku);
			writeln('Tanggal peminjaman: ',tanggalToString(lPinjam.list[buku_found].tanggal_peminjaman));
			writeln('Tanggal batas pengembalian: ',tanggalToString(lPinjam.list[buku_found].tanggal_batas_pengembalian));
			writeln();
			write('Masukkan tanggal hari ini: ');
			readln(today);
			lpinjam.list[buku_found].status_pengembalian:=True;
			lkembali.list[lkembali.neff].username:=lPinjam.list[buku_found].username;
			lkembali.list[lkembali.neff].id_buku:=idbuku;
			lkembali.list[lkembali.neff].tanggal_pengembalian:=stringToTanggal(today);
			textline := lPinjam.list[buku_found].username+','+intToStr(idbuku)+','+today;
			lamapinjam:= dateSubstraction(stringToTanggal(today),lPinjam.list[buku_found].tanggal_batas_pengembalian);
			if (lamapinjam>0) then
			begin
				writeln('Anda terlambat mengembalikan buku');
			end else
			begin
				writeln('Terima kasih sudah meminjam');
			end;
		end else
		begin
			system.append(UserFile);
			write('Masukkan id buku yang dikembalikan: ');
			readln(idbuku);
			for i:=1 to lPinjam.neff do
			begin
				if idbuku=lPinjam.list[i].id_buku then
				begin
					buku_found:=i;
				end;
			end;
			for i:=1 to lbuku.neff do
			begin
				if idbuku=lbuku.list[i].id_buku then
				begin
					indexjudul:=i;
				end;
			end;
			writeln('Data peminjaman');
			writeln('Username: ',lPinjam.list[buku_found].username);
			writeln('Judul buku: ',lbuku.list[indexjudul].judul_buku);
			writeln('Tanggal peminjaman: ',tanggalToString(lPinjam.list[buku_found].tanggal_peminjaman));
			writeln('Tanggal batas pengembalian: ',tanggalToString(lPinjam.list[buku_found].tanggal_batas_pengembalian));
			writeln();
			write('Masukkan tanggal hari ini: ');
			readln(today);
			lpinjam.list[buku_found].status_pengembalian:=True;
			lkembali.list[lkembali.neff].username:=lPinjam.list[buku_found].username;
			lkembali.list[lkembali.neff].id_buku:=idbuku;
			lkembali.list[lkembali.neff].tanggal_pengembalian:=stringToTanggal(today);
			textline := lPinjam.list[buku_found].username+','+intToStr(idbuku)+','+today;
			lamapinjam:= dateSubstraction(stringToTanggal(today),lPinjam.list[buku_found].tanggal_batas_pengembalian);
			if (lamapinjam>0) then
			begin
				writeln('Anda terlambat mengembalikan buku');
			end else
			begin
				writeln('Terima kasih sudah meminjam');
			end;
		end;
		writeln(UserFile,textline);
		close(UserFile);
	end;
end.