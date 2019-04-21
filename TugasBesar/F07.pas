// Designer : 
// Coder    : Morgen Sudyanto (16518380)
// Tester   : 
unit F07;
// Melaporkan buku hilang
interface
    uses typeList,tools;
    procedure laporHilang(username: string; var lHilang: listHilang);

implementation
    procedure laporHilang(username: string; var lHilang: listHilang);
    var
        id_buku:integer;
        judul_buku:string;
        inputStr:string;
        inputDate:tanggal;
    begin
        write('Masukkan id buku: ');
        readln(id_buku);
        write('Masukkan judul buku: ');
        readln(judul_buku);
        write('Masukkan tanggal pelaporan: ');
        readln(inputStr);
        inputDate:=stringToTanggal(inputStr);
        lHilang.neff:=lHilang.neff+1;
        lHilang.list[lHilang.neff].username:=username;
        lHilang.list[lHilang.neff].id_buku:=id_buku;
        lHilang.list[lHilang.neff].tanggal_laporan:=inputDate;
        writeln('Laporan berhasil diterima.');
    end;
end.