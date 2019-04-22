// Designer : Elisabeth Levana (16518128)
// Coder    : Elisabeth Levana (16518128)
// Tester   : Andre Subagja Manurung (16518254)
unit F10;
//tambahJumlahBuku

interface 
uses typeList,tools;
	procedure tambahJumlahBuku(var lbuku:listbuku);
	{Buku yang sudah ada ditambahkan jumlahnya dalam file buku.csv}

	 
implementation
	procedure tambahJumlahBuku(var lbuku:listbuku);
	var	
		i,buku_found,idbuku,jumlahbuku : integer;
		
	begin
		write('Masukkan id buku: ');
		readln(idbuku);
		write('Masukkan jumlah buku yang ditambahkan: ');
		readln(jumlahbuku);
		for i:=1 to lbuku.neff do
		begin			
			if (idbuku=lbuku.list[i].id_buku) then
			begin
				buku_found:=i;
				lbuku.list[buku_found].jumlah_buku := lbuku.list[buku_found].jumlah_buku + jumlahbuku;				
			end;			
		end;
		writeln('Pembaharuan jumlah buku berhasil dilakukan, total buku ',lbuku.list[buku_found].judul_buku,' di perpustakaan menjadi ',lbuku.list[buku_found].jumlah_buku);
	end;
end.