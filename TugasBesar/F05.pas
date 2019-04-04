// Designer : 
// Coder    : 
// Tester   : 
unit F05;
// Peminjaman buku
interface
    uses typeList,tools;
    procedure pinjamBuku(user:string; var lBuku: listBuku; var lPinjam: listPinjam);

implementation
    procedure pinjamBuku(user:string; var lBuku: listBuku; var lPinjam: listPinjam);
    var
        ada:boolean;
        i:integer;
        inputInt:integer;
        inputStr:string;
        currentDate:tanggal;
    begin
        write('Masukkan id buku yang ingin dipinjam: ');
        readln(inputInt);
        write('Masukkan tanggal hari ini: ');
        readln(inputStr);
        currentDate:=stringToTanggal(inputStr);
        ada:=false;
        i:=0;
        while ((i<=lBuku.neff) and (ada=false)) do 
        begin
            i:=i+1;
            if (inputInt=lBuku.list[i].id_buku) then
            begin
                ada:=true;
                if (lBuku.list[i].jumlah_buku>=1) then
                begin
                    lBuku.list[i].jumlah_buku:=lBuku.list[i].jumlah_buku-1;
                    lPinjam.neff:=lPinjam.neff+1;
                    lPinjam.list[lPinjam.neff].username:=user;
                    lPinjam.list[lPinjam.neff].id_buku:=lBuku.list[i].id_buku;
                    lPinjam.list[lPinjam.neff].tanggal_peminjaman:=currentDate;
                    lPinjam.list[lPinjam.neff].tanggal_batas_pengembalian:=addOneWeek(currentDate);
                    lPinjam.list[lPinjam.neff].status_pengembalian:=false;
                end
                else
                begin
                    writeln('Buku ',lBuku.list[i].judul_buku,' sedang habis!');
                    writeln('Coba lain kali.');
                end;
            end;
        end;
    end;

    
end.