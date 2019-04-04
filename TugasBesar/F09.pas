// Designer : 
// Coder    : 
// Tester   : 
unit F09;
// Menambahkan buku baru ke sistem
interface
    uses typeList;
    procedure tambahBuku(var lBuku:listBuku);

implementation
    procedure tambahBuku(var lBuku:listBuku);
    begin
        lBuku.neff:=lBuku.neff+1;
        writeln('Masukkan informasi buku yang ditambahkan:');
        write('Masukkan id buku: ');
        readln(lBuku.list[lBuku.neff].id_buku);
        write('Masukkan judul buku: ');
        readln(lBuku.list[lBuku.neff].judul_buku);
        write('Masukkan pengarang buku: ');
        readln(lBuku.list[lBuku.neff].author);
        write('Masukkan jumlah buku: ');
        readln(lBuku.list[lBuku.neff].jumlah_buku);
        write('Masukkan tahun terbit buku: ');
        readln(lBuku.list[lBuku.neff].tahun_penerbit);
        write('Masukkan kategori buku: ');
        readln(lBuku.list[lBuku.neff].kategori);
        writeln();
        writeln('Buku berhasil ditambahkan ke dalam sistem!');
    end;
end.