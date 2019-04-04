// Designer : 
// Coder    : 
// Tester   : 
unit F03;
// Pencarian buku berdasarkan kategori
interface
    uses typeList;
    procedure search(var lBuku: listBuku);

implementation
    procedure search(var lBuku: listBuku);
    var
        i:integer;
        ada:boolean;
        inputStr:string;
    begin
        write('Masukkan kategori: ');
        readln(inputStr);
        ada:=false;
        writeln('Hasil pencarian:');
        for i:=1 to lBuku.neff do
        begin
            if (inputStr=lBuku.list[i].kategori) then
            begin
                write(lBuku.list[i].id_buku,' | ');
                write(lBuku.list[i].judul_buku,' | ');
                write(lBuku.list[i].author);
                writeln();
                ada:=true;
            end;
        end;
        if (ada=false) then
        begin
            writeln('Tidak ada buku dalam kategori ini.');
        end;
    end;
end.