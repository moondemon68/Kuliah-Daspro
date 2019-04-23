// Designer : Andre Subagja Manurung (16518254)
// Coder    : Andre Subagja Manurung (16518254)
// Tester   : Morgen Sudyanto (16518380)
unit F12;
// Statistik
interface
    uses typeList,tools;
    procedure statistik(var lAkun: listAkun; var lBuku: listBuku);

implementation
	procedure statistik(var lAkun: listAkun; var lBuku: listBuku);
		var
		jlh_adm, jlh_kunjung, jlh_sastra, jlh_sains, jlh_manga, jlh_sejarah, jlh_programming : integer;
		totalPengguna, totalBuku : integer;
		i : integer;
		begin
		totalPengguna:=0; jlh_adm:=0; jlh_kunjung:=0;
		totalBuku:=0; jlh_sastra:=0; jlh_sains:=0;
		jlh_manga:=0; jlh_sejarah:=0; jlh_programming:=0;

		for i:=1 to lAkun.neff do		//Membaca berapa banyak jumlah pengunjung dan admin berdasarkan role nya.
		begin
			if lAkun.list[i].role = TRUE then jlh_adm+=1;			//Jika role=true artinya admin
			if lAkun.list[i].role = FALSE then jlh_kunjung+=1;		//Jika role=flase artinya pengunjung
		end;

		for i:=1 to lBuku.neff do		//Membaca berapa banyak jumlah buku berdasarkan kategorinya yaitu sastra, sains, manga, sejarah, dan programming.
		begin
			if (lBuku.list[i].kategori='sastra') then begin jlh_sastra+=1; end;
			if (lBuku.list[i].kategori='sains') then begin jlh_sains+=1; end;
			if (lBuku.list[i].kategori='manga') then begin jlh_manga+=1; end;
			if (lBuku.list[i].kategori='sejarah') then begin jlh_sejarah+=1; end;
			if (lBuku.list[i].kategori='programming') then begin jlh_programming+=1; end;
		end;

		totalPengguna := jlh_adm+jlh_kunjung;		//Jumlah orang-orang yang terlibat
		totalBuku := jlh_sastra+jlh_sains+jlh_manga+jlh_sejarah+jlh_programming;	//Jumlah semua buku

		writeln('Pengguna :');
		writeln('Admin | ', jlh_adm);
		writeln('Pengunjung | ', jlh_kunjung);
		writeln('Total | ', totalPengguna);
		writeln('Buku :');
		writeln('sastra | ', jlh_sastra);
		writeln('sains | ', jlh_sains);
		writeln('manga | ', jlh_manga);
		writeln('sejarah | ', jlh_sejarah);
		writeln('programming | ', jlh_programming);
		writeln('Total | ', totalBuku);

    end;
end.