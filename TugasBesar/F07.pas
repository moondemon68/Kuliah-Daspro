// Designer : 
// Coder    : 
// Tester   : 
unit F07;
// Melaporkan buku hilang
interface
    uses typeList,tools;
    procedure laporHilang(username: string; id_buku: integer; judul_buku: string; inputDate: tanggal; var lHilang: listHilang);

implementation
    procedure laporHilang(username: string; id_buku: integer; judul_buku: string; inputDate: tanggal; var lHilang: listHilang);
    begin
        lHilang.neff:=lHilang.neff+1;
        lHilang.list[lHilang.neff].username:=username;
        lHilang.list[lHilang.neff].id_buku:=id_buku;
        lHilang.list[lHilang.neff].tanggal_laporan:=inputDate;
        writeln('Laporan berhasil diterima.');
    end;
end.