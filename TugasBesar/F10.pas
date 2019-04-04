// Designer : 
// Coder    : 
// Tester   : 
unit F10;
// Melakukan penambahan jumlah buku ke sistem
interface
    uses typeList;
    procedure tambahJumlahBuku(var lBuku:listBuku);

implementation
    procedure tambahJumlahBuku(var lBuku:listBuku);
    var
        i:integer;
        id:integer;
        add:integer;
        ada:boolean;

    begin
        write('Masukkan ID buku: ');
        readln(id);
        write('Masukkan jumlah buku yang ditambahkan: ');
        readln(add);
        ada:=false;
        i:=0;
        while (i<lBuku.neff) and (not(ada)) do
        begin
            i:=i+1;
            if (lBuku.list[i].id_buku=id) then
            begin
                ada:=true;
                lBuku.list[i].jumlah_buku:=lBuku.list[i].jumlah_buku+add;
                writeln('Pembaharuan jumlah buku berhasil dilakukan, total buku ',lBuku.list[i].judul_buku,' di perpustakaan menjadi ',lBuku.list[i].jumlah_buku);
            end;
        end;
    end;
end.