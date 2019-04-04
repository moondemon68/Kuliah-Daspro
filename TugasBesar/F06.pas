// Designer : 
// Coder    : 
// Tester   : 
unit F06;
// Pengembalian buku
interface
    uses typeList,tools;
    procedure kembalikanBuku(username:string; inputInt: integer; var lPinjam: listPinjam; var lBuku: listBuku);

implementation
    procedure kembalikanBuku(username:string; inputInt: integer; var lPinjam: listPinjam; var lBuku: listBuku);
    var 
        i:integer;
        ada:boolean;
        inputDate:string;
        x:integer;
    begin
        i:=0;
        x:=0;
        ada:=false;
        while (i<lPinjam.neff) and (not(ada)) do
        begin
            i:=i+1;
            if (username=lPinjam.list[i].username) and (inputInt=lPinjam.list[i].id_buku) then
            begin
                writeln('Data peminjaman: ');
                writeln('Username: ',username);
                writeln('Judul buku: ',findJudul(inputInt,lBuku));
                writeln('Tanggal peminjaman: ',tanggalToString(lPinjam.list[i].tanggal_peminjaman));
                writeln('Tanggal batas pengembalian: ',tanggalToString(lPinjam.list[i].tanggal_batas_pengembalian));
                writeln();
                write('Masukkan tanggal hari ini: ');
                readln(inputDate);
                x:=dateSubstraction(lPinjam.list[i].tanggal_batas_pengembalian,stringToTanggal(inputDate));
                if (x>=0) then
                begin
                    writeln('Terima kasih sudah meminjam.');
                end else
                begin
                    writeln('Anda terlambat mengembalikan buku.');
                end;
                lPinjam.list[i].status_pengembalian:=true;
            end;
        end;
    end;
end.