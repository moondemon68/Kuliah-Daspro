// Designer : 
// Coder    : 
// Tester   : 
unit F13;
// Load file
interface
    uses typeList,tools,sysutils;
    procedure loadData(var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);

implementation
    procedure loadData(var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);
    var
        filename:string;
        i:integer;
        p:integer; //pointer
        s:string;
        tmp:string;
        stream:TextFile;
    begin
        //Load Buku
        write('Masukkan nama File Buku: ');
        readln(filename);
        assign(stream,filename);
        reset(stream);
        i:=0;
        while not(eof(stream)) do
        begin
            i:=i+1;
            lBuku.neff:=lBuku.neff+1;
            readln(stream,s);
            p:=0;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lBuku.list[i].id_buku:=stringToInt(tmp);
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lBuku.list[i].judul_buku:=tmp;
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lBuku.list[i].author:=tmp;
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lBuku.list[i].jumlah_buku:=stringToInt(tmp);
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lBuku.list[i].tahun_penerbit:=stringToInt(tmp);
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lBuku.list[i].kategori:=tmp;
        end;
        close(stream);

        //Load Akun
        write('Masukkan nama File User: ');
        readln(filename);
        assign(stream,filename);
        reset(stream);
        i:=0;
        while not(eof(stream)) do
        begin
            i:=i+1;
            lAkun.neff:=lAkun.neff+1;
            readln(stream,s);
            p:=0;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lAkun.list[i].nama:=tmp;
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lAkun.list[i].alamat:=tmp;
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lAkun.list[i].username:=tmp;
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lAkun.list[i].password:=tmp;
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lAkun.list[i].role:=stringToBool(tmp);
        end;
        close(stream);

        //Load Peminjaman
        write('Masukkan nama File Peminjaman: ');
        readln(filename);
        assign(stream,filename);
        reset(stream);
        i:=0;
        while not(eof(stream)) do
        begin
            i:=i+1;
            lPinjam.neff:=lPinjam.neff+1;
            readln(stream,s);
            p:=0;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lPinjam.list[i].username:=tmp;
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lPinjam.list[i].id_buku:=stringToInt(tmp);
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lPinjam.list[i].tanggal_peminjaman:=stringToTanggal(tmp);
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lPinjam.list[i].tanggal_batas_pengembalian:=stringToTanggal(tmp);
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lPinjam.list[i].status_pengembalian:=stringToBool(tmp);
        end;
        close(stream);

        //Load Pengembalian
        write('Masukkan nama File Pengembalian: ');
        readln(filename);
        assign(stream,filename);
        reset(stream);
        i:=0;
        while not(eof(stream)) do
        begin
            i:=i+1;
            lKembali.neff:=lKembali.neff+1;
            readln(stream,s);
            p:=0;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lKembali.list[i].username:=tmp;
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lKembali.list[i].id_buku:=stringToInt(tmp);
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lKembali.list[i].tanggal_pengembalian:=stringToTanggal(tmp);
        end;
        close(stream);

        //Load Kehilangan
        write('Masukkan nama File Kehilangan: ');
        readln(filename);
        assign(stream,filename);
        reset(stream);
        i:=0;
        while not(eof(stream)) do
        begin
            i:=i+1;
            lHilang.neff:=lHilang.neff+1;
            readln(stream,s);
            p:=0;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lHilang.list[i].username:=tmp;
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lHilang.list[i].id_buku:=stringToInt(tmp);
            p:=p+1;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            lHilang.list[i].tanggal_laporan:=stringToTanggal(tmp);
        end;
        close(stream);
    end;
end.