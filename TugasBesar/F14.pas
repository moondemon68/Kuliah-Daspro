// Designer : 
// Coder    : Morgen Sudyanto (16518380)
// Tester   : 
unit F14;
// Load file
interface
    uses typeList,tools;
    procedure simpanData(var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);

implementation
    procedure simpanData(var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);
    var
        stream:text;
        filename:string;
        i:integer;

    begin
        write('Masukkan nama File Buku: ');
        readln(filename);
        assign(stream,filename);
        rewrite(stream);
        for i:=1 to lBuku.neff do
        begin
            write(stream,lBuku.list[i].id_buku);
            write(stream,',');
            write(stream,lBuku.list[i].judul_buku);
            write(stream,',');
            write(stream,lBuku.list[i].author);
            write(stream,',');
            write(stream,lBuku.list[i].jumlah_buku);
            write(stream,',');
            write(stream,lBuku.list[i].tahun_penerbit);
            write(stream,',');
            write(stream,lBuku.list[i].kategori);
            writeln(stream,'');
        end;
        close(stream);

        write('Masukkan nama File User: ');
        readln(filename);
        assign(stream,filename);
        rewrite(stream);
        for i:=1 to lAkun.neff do
        begin
            write(stream,lAkun.list[i].nama);
            write(stream,',');
            write(stream,lAkun.list[i].alamat);
            write(stream,',');
            write(stream,lAkun.list[i].username);
            write(stream,',');
            write(stream,lAkun.list[i].password);
            write(stream,',');
            if (lAkun.list[i].role=true) then
            begin
                write(stream,'TRUE');
            end
            else
            begin
                write(stream,'FALSE');
            end;
            writeln(stream,'');
        end;
        close(stream);

        write('Masukkan nama File Peminjaman: ');
        readln(filename);
        assign(stream,filename);
        rewrite(stream);
        for i:=1 to lPinjam.neff do
        begin
            write(stream,lPinjam.list[i].username);
            write(stream,',');
            write(stream,lPinjam.list[i].id_buku);
            write(stream,',');
            write(stream,tanggalToString(lPinjam.list[i].tanggal_peminjaman));
            write(stream,',');
            write(stream,tanggalToString(lPinjam.list[i].tanggal_batas_pengembalian));
            write(stream,',');
            write(stream,lPinjam.list[i].status_pengembalian);
            writeln(stream,'');
        end;
        close(stream);

        write('Masukkan nama File Pengembalian: ');
        readln(filename);
        assign(stream,filename);
        rewrite(stream);
        for i:=1 to lKembali.neff do
        begin
            write(stream,lKembali.list[i].username);
            write(stream,',');
            write(stream,lKembali.list[i].id_buku);
            write(stream,',');
            write(stream,tanggalToString(lKembali.list[i].tanggal_pengembalian));
            writeln(stream,'');
        end;
        close(stream);

        write('Masukkan nama File Buku Hilang: ');
        readln(filename);
        assign(stream,filename);
        rewrite(stream);
        for i:=1 to lHilang.neff do
        begin
            write(stream,lHilang.list[i].username);
            write(stream,',');
            write(stream,lHilang.list[i].id_buku);
            write(stream,',');
            write(stream,tanggalToString(lHilang.list[i].tanggal_laporan));
            writeln(stream,'');
        end;
        close(stream);
    end;
end.