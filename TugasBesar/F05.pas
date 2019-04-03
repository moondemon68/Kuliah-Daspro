// Designer : 
// Coder    : 
// Tester   : 
unit F05;
// Peminjaman buku
interface
    uses typeList;
    procedure pinjamBuku(user:string; inputInt: integer; currentDate: tanggal; var lBuku: listBuku; var lPinjam: listPinjam);
    function addOneWeek(date:tanggal):tanggal;
    function isLeapYear(year:integer):boolean;

implementation
    procedure pinjamBuku(user:string; inputInt: integer; currentDate: tanggal; var lBuku: listBuku; var lPinjam: listPinjam);
    var
        ada:boolean;
        i:integer;
    begin
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

    function addOneWeek(date:tanggal):tanggal;
    begin
        addOneWeek:=date;
        addOneWeek.hari:=addOneWeek.hari+7;
        if ((addOneWeek.hari>31) and ((addOneWeek.bulan=1) or (addOneWeek.bulan=3) or (addOneWeek.bulan=5) or (addOneWeek.bulan=7) or (addOneWeek.bulan=8) or (addOneWeek.bulan=10) or (addOneWeek.bulan=12))) then
        begin
            addOneWeek.hari:=addOneWeek.hari-31;
            addOneWeek.bulan:=addOneWeek.bulan+1;
            if (addOneWeek.bulan>12) then
            begin
                addOneWeek.bulan:=addOneWeek.bulan-12;
                addOneWeek.tahun:=addOneWeek.tahun+1;
            end;
        end
        else if ((addOneWeek.hari>30) and ((addOneWeek.bulan=4) or (addOneWeek.bulan=6) or (addOneWeek.bulan=9) or (addOneWeek.bulan=11))) then
        begin
            addOneWeek.hari:=addOneWeek.hari-30;
            addOneWeek.bulan:=addOneWeek.bulan+1;
        end
        else if ((addOneWeek.hari>29) and (addOneWeek.bulan=2) and (isLeapYear(addOneWeek.tahun)=true)) then
        begin
            addOneWeek.hari:=addOneWeek.hari-29;
            addOneWeek.bulan:=addOneWeek.bulan+1;
        end
        else if ((addOneWeek.hari>28) and (addOneWeek.bulan=2) and (isLeapYear(addOneWeek.tahun)=false)) then
        begin
            addOneWeek.hari:=addOneWeek.hari-28;
            addOneWeek.bulan:=addOneWeek.bulan+1;
        end;
    end;

    function isLeapYear(year:integer):boolean;
    begin
        if ((year mod 400 = 0) or ((year mod 4 = 0) and not (year mod 100 = 0))) then
        begin
            isLeapYear:=true;
        end
        else
        begin
            isLeapYear:=false;
        end;
    end;
end.