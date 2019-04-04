// Designer : 
// Coder    : 
// Tester   : 
unit F15;
// Pencarian anggota
interface
    uses typeList;
    procedure cariAnggota(var lAkun:listAkun);

implementation
    procedure cariAnggota(var lAkun:listAkun);
    var
        i:integer;
        ada:boolean;
        username:string;
    begin
        write('Masukkan username: ');
        readln(username);
        i:=0;
        ada:=false;
        while (i<lAkun.neff) and (not(ada)) do
        begin
            i:=i+1;
            if (lAkun.list[i].username=username) then
            begin
                ada:=true;
                writeln('Nama Anggota: ',lAkun.list[i].nama);
                writeln('Alamat Anggota: ',lAkun.list[i].alamat);
            end;
        end;
    end;
end.