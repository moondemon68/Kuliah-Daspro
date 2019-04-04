// Designer : 
// Coder    : 
// Tester   : 
unit F08;
// Melihat laporan buku yang hilang
interface
    uses typeList,tools;
    procedure lihatLaporan(var lHilang: listHilang; var lBuku: listBuku);

implementation
    procedure lihatLaporan(var lHilang: listHilang; var lBuku: listBuku);
    var
        i:integer;
    begin
        if (lHilang.neff>0) then
        begin
            writeln('Buku yang hilang: ');
            for i:=1 to lHilang.neff do
            begin
                write(lHilang.list[i].id_buku,' | ');
                write(findJudul(lHilang.list[i].id_buku,lBuku),' | ');
                write(tanggalToString(lHilang.list[i].tanggal_laporan));
                writeln();
            end;
        end
        else 
        begin
            writeln('Tidak ada buku yang hilang.');
        end;
    end;
end.