// BUGGY
unit F04a;
//pencarian buku berdasarkan tahun terbit

interface
uses typeList;

var
	ketemu:boolean;
	tahun,i:integer;
	ktg:char;//kategori
procedure searchTahunTerbit(lBuku : listBuku);

implementation
procedure searchTahunTerbit(lBuku : listBuku);
begin
	ketemu:=false;
	writeln('Masukkan tahun: ');
	readln(tahun);
	writeln('Masukkan kategori: ');
	readln(ktg);
	//Asumsi input kategori selalu (= / < / > / >= / <=) selalu valid
	writeln;
	writeln('Buku yang terbit '+ktg+' ',tahun,':');
	for i:=1 to lBuku.neff do
	begin
		if (ktg='=') then
		begin
			if(lBuku.list[i].tahun_penerbit = tahun) then
			begin
				ketemu:=true;
				writeln(lBuku.list[i].id_buku,' | '+lBuku.list[i].judul_buku+' | '+lBuku.list[i].author);
			end;
		end else if (ktg='<') then
		begin
			if(lBuku.list[i].tahun_penerbit < tahun) then
			begin
				ketemu:=true;
				writeln(lBuku.list[i].id_buku,' | '+lBuku.list[i].judul_buku+' | '+lBuku.list[i].author);
			end;
		end else if (ktg='>') then
		begin
			if(lBuku.list[i].tahun_penerbit > tahun) then
			begin
				ketemu:=true;
				writeln(lBuku.list[i].id_buku,' | '+lBuku.list[i].judul_buku+' | '+lBuku.list[i].author);
			end;
		end else if (ktg='>=') then
		begin
			if(lBuku.list[i].tahun_penerbit >= tahun) then
			begin
				ketemu:=true;
				writeln(lBuku.list[i].id_buku,' | '+lBuku.list[i].judul_buku+' | '+lBuku.list[i].author);
			end;
		end else
			if(lBuku.list[i].tahun_penerbit <= tahun) then
			begin
				ketemu:=true;
				writeln(lBuku.list[i].id_buku,' | '+lBuku.list[i].judul_buku+' | '+lBuku.list[i].author);
			end;
		end;
	
	if(ketemu=false) then
	begin
		writeln('Tidak ada buku dalam kategori ini.');
	end;
end;
	

end.