// Designer : Morgen Sudyanto (16518380)
// Coder    : Morgen Sudyanto (16518380)
// Tester   : Arief Darmawan Tantriady (16518058)
unit F11;
// Melihat riwayat peminjaman
interface
    uses typeList,tools;
    procedure lihatRiwayat(var lPinjam:listPinjam; var lBuku:listBuku);

implementation
    procedure lihatRiwayat(var lPinjam:listPinjam; var lBuku:listBuku);
    var
        username:string;
        i:integer;
    begin
        write('Masukkan username pengunjung: ');
        readln(username);
        for i:=1 to lPinjam.neff do
        begin
            if (lPinjam.list[i].username=username) then
            begin
                write(tanggalToString(lPinjam.list[i].tanggal_peminjaman),' | ');
                write(lPinjam.list[i].id_buku,' | ');
                write(findJudul(lPinjam.list[i].id_buku,lBuku));
                writeln();
            end;
        end;
    end;
end.