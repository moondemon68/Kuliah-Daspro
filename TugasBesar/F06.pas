// Designer : Morgen Sudyanto (16518380)
// Coder    : Morgen Sudyanto (16518380)
// Tester   : Arief Darmawan Tantriady (16518058)
unit F06;
// Pengembalian buku
interface
    uses typeList,tools;
    procedure kembalikanBuku(username:string; var lPinjam: listPinjam; var lBuku: listBuku; var lKembali: listKembali);

implementation
    procedure kembalikanBuku(username:string; var lPinjam: listPinjam; var lBuku: listBuku; var lKembali: listKembali);
    var 
        i:integer;
        ada:boolean;
        inputDate:string;
        inputInt:integer;
        x:integer;
    begin
        write('Masukkan id buku yang ingin dikembalikan: ');
        readln(inputInt);
        // Update list pinjam
        i:=0;
        x:=0;
        ada:=false;
        while (i<lPinjam.neff) and (not(ada)) do
        begin
            i:=i+1;
            if (username=lPinjam.list[i].username) and (inputInt=lPinjam.list[i].id_buku) and (lPinjam.list[i].status_pengembalian=false) then
            begin
                ada:=true;
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
                    writeln('Anda harus membayar denda sebesar ',-1*x*2000);
                end;
                lPinjam.list[i].status_pengembalian:=true;
            end;
        end;
        // Update list buku
        i:=0;
        ada:=false;
        while (i<lBuku.neff) and (not(ada)) do
        begin
            i:=i+1;
            if (lBuku.list[i].id_buku=inputInt) then
            begin
                ada:=true;
                lBuku.list[i].jumlah_buku:=lBuku.list[i].jumlah_buku+1;
            end;
        end;
        // Update list kembali
        lKembali.neff:=lKembali.neff+1;
        lKembali.list[lKembali.neff].username:=username;
        lKembali.list[lKembali.neff].id_buku:=inputInt;
        lKembali.list[lKembali.neff].tanggal_pengembalian:=stringToTanggal(inputDate);
    end;
end.