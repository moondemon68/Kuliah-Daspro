// Designer : 
// Coder    : 
// Tester   : 
unit F04;
// Pencarian buku berdasarkan tahun terbit
interface
    uses typeList;
    procedure searchTahunTerbit(var lBuku: listBuku);

implementation
    procedure searchTahunTerbit(var lBuku: listBuku);
    var
        i:integer;
        ada:boolean;
        inputInt:integer;
        inputStr:string;
    begin
        write('Masukkan tahun: ');
        readln(inputInt);
        write('Masukkan kategori (<,<=,>,>=,=): ');
        readln(inputStr);
        ada:=false;
        writeln('Buku yang terbit ',inputStr,' ',inputInt,':');
        for i:=1 to lBuku.neff do
        begin
            if (inputStr='<') then
            begin
                if (inputInt<lBuku.list[i].tahun_penerbit) then
                begin
                    write(lBuku.list[i].id_buku,' | ');
                    write(lBuku.list[i].judul_buku,' | ');
                    write(lBuku.list[i].author);
                    writeln();
                    ada:=true;
                end;
            end
            else if (inputStr='>') then
            begin
                if (inputInt>lBuku.list[i].tahun_penerbit) then
                begin
                    write(lBuku.list[i].id_buku,' | ');
                    write(lBuku.list[i].judul_buku,' | ');
                    write(lBuku.list[i].author);
                    writeln();
                    ada:=true;
                end;
            end
            else if (inputStr='<=') then
            begin
                if (inputInt<=lBuku.list[i].tahun_penerbit) then
                begin
                    write(lBuku.list[i].id_buku,' | ');
                    write(lBuku.list[i].judul_buku,' | ');
                    write(lBuku.list[i].author);
                    writeln();
                    ada:=true;
                end;
            end
            else if (inputStr='>=') then
            begin
                if (inputInt>=lBuku.list[i].tahun_penerbit) then
                begin
                    write(lBuku.list[i].id_buku,' | ');
                    write(lBuku.list[i].judul_buku,' | ');
                    write(lBuku.list[i].author);
                    writeln();
                    ada:=true;
                end;
            end
            else // inputStr='='
            begin
                if (inputInt=lBuku.list[i].tahun_penerbit) then
                begin
                    write(lBuku.list[i].id_buku,' | ');
                    write(lBuku.list[i].judul_buku,' | ');
                    write(lBuku.list[i].author);
                    writeln();
                    ada:=true;
                end;
            end;
        end;
        if (ada=false) then
        begin
            writeln('Tidak ada buku dalam kategori ini.');
        end;
    end;
end.