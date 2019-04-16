// Designer : 
// Coder    : Andre Subagja Manurung (16518254)
// Tester   : 
unit B02;
// Statistik
interface
    uses typeList,tools;
    procedure kembalikanBuku(var usrname: string; var lPinjam: listPinjam; var lBuku: listBuku; var lKembali: listKembali);

implementation
    procedure kembalikanBuku(var usrname: string; var lPinjam: listPinjam; var lBuku: listBuku; var lKembali: listKembali);
	var idbuku, idx, i, rentanghari: integer;
		tanggal : string;
		
    begin
		writeln('Masukkan id buku yang dikembalikan: ');
		readln(idbuku);
		for i:=1 to lPinjam.neff do
		begin
			if idbuku=lPinjam.list[i].id_buku then
			begin
				idx:=i;
			end;
		end;
		
		writeln('Data peminjaman:');
		writeln('Username: ', lPinjam.list[idx].username);
		writeln('Tanggal peminjaman: ', tanggalToString(lPinjam.list[idx].tanggal_peminjaman));
		writeln('Tanggal batas pengembalian: ', tanggalToString(lPinjam.list[idx].tanggal_batas_pengembalian)); 
		
		write('Masukkan tanggal hari ini: ');
		readln(tanggal);
		
		rentanghari := dateSubstraction(stringToTanggal(tanggal),lPinjam.list[idx].tanggal_batas_pengembalian);
		
		if rentanghari > 0 then
		begin
			writeln('Anda terlambat mengembalikan buku.');
			writeln('Anda terkena denda ', rentanghari*2000);
		end else
		begin
			writeln('Buku telah dikembalikan');
		end;
    end;
end.