// Designer : 
// Coder    : 
// Tester   : 
unit F16;
// Exit
interface
    uses typeList,tools;
    procedure exitProgram(save: boolean; var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);

implementation
    procedure exitProgram(save: boolean; var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);
    var
        stream: text;
        i: integer;
    begin
        if (save=True) then
        begin
            assign(stream,'Buku.csv');
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

            assign(stream,'User.csv');
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
                write(stream,lAkun.list[i].role);
                writeln(stream,'');
            end;
            close(stream);

            assign(stream,'HistoryPeminjaman.csv');
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

            assign(stream,'HistoryPengembalian.csv');
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

            assign(stream,'LaporanBukuHilang.csv');
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
    end;
end.