// Designer : 
// Coder    : 
// Tester   : 
unit F03;
// Pencarian buku berdasarkan kategori
interface
    uses typeList,tools;
    procedure search(var lBuku: listBuku);

implementation
    procedure search(var lBuku: listBuku);
    var
        i,j:integer;
        ada:boolean;
        inputStr:string;
        sortArray:listBuku;
        tmp:buku;
    begin
        sortArray.neff:=0;
        write('Masukkan kategori: ');
        readln(inputStr);
        ada:=false;
        writeln('Hasil pencarian:');
        for i:=1 to lBuku.neff do
        begin
            if (inputStr=lBuku.list[i].kategori) then
            begin
                sortArray.neff:=sortArray.neff+1;
                sortArray.list[sortArray.neff]:=lBuku.list[i];
                ada:=true;
            end;
        end;
        if (ada=false) then
        begin
            writeln('Tidak ada buku dalam kategori ini.');
        end;
        for i:=1 to sortArray.neff-1 do
        begin
            for j:=1 to sortArray.neff-i-1 do
            begin
                if not(stringCompare(sortArray.list[j].judul_buku,sortArray.list[j+1].judul_buku)) then
                begin
                    tmp:=sortArray.list[j];
                    sortArray.list[j]:=sortArray.list[j+1];
                    sortArray.list[j+1]:=tmp;
                end;
            end;
        end;
        for i:=1 to sortArray.neff do 
        begin
            write(sortArray.list[i].id_buku,' | ');
            write(sortArray.list[i].judul_buku,' | ');
            write(sortArray.list[i].author);
            writeln();
        end;
    end;
end.