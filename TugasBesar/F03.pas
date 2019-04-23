// Designer : Arief Darmawan Tantriady (16518058)
// Coder    : Arief Darmawan Tantriady (16518058)
// Tester   : Morgen Sudyanto (16518380)
unit F03;
//fungsi search buku berdasarkan kategori dan leksikografis

interface
	uses typeList;
	var
		ktg : string; //kategori
		bukucari : listBuku;
		i,j : integer;
		temp : buku;
	procedure search(lBuku : listBuku);

implementation

	procedure search(lBuku : listBuku);
	begin
	bukucari.neff:=0;
	write('Masukkan kategori: ');
		repeat
		readln(ktg);
		if(ktg='sastra') or (ktg='sains') or (ktg='manga') or (ktg='sejarah') or (ktg='programming') then
		begin
			for i:=1 to lBuku.neff do
			begin
				if(lBuku.list[i].kategori=ktg) then
				begin
					bukucari.neff:=bukucari.neff+1;
					bukucari.list[bukucari.neff]:=lBuku.list[i];			
				end;
			end;
			if(bukucari.neff=0) then
			begin
				writeln;
				writeln('Hasil pencarian:');
				writeln('Tidak ada buku dalam kategori ini.');
			end else
			begin
				writeln;
				writeln('Hasil pencarian:');
				//algoritma pengurutan leksikografis
				for i:=bukucari.neff downto 2 do
				begin
					for j:=1 to i-1 do
					if bukucari.list[j].judul_buku> bukucari.list[j+1].judul_buku then
					begin
					temp          := bukucari.list[j+1];
					bukucari.list[j+1]:=bukucari.list[j];
					bukucari.list[j]  :=temp;
					end;
				end;
				//array bukucari sudah terurut
				//print hasil pengurutan leksikografis
				for i:=1 to bukucari.neff do
				begin
					writeln(bukucari.list[i].id_buku,' | '+bukucari.list[i].judul_buku+' | '+bukucari.list[i].author);
				end;
			end;
		end else
		begin
			writeln('Kategori '+ktg+' tidak valid.');
		end;
		until (ktg='sastra') or (ktg='sains') or (ktg='manga') or (ktg='sejarah') or (ktg='programming');
	end;
end.