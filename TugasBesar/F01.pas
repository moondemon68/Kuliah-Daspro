// Designer : 
// Coder    : 
// Tester   : 
unit F01;
// Registrasi akun
interface
    uses typeList,tools;   
    procedure register(var lAkun:listAkun);

implementation
    procedure register(var lAkun:listAkun);
    begin
        lAkun.neff:=lAkun.neff+1;
        write('Masukkan nama pengunjung: ');
        readln(lAkun.list[lAkun.neff].nama);
        write('Masukkan alamat pengunjung: ');
        readln(lAkun.list[lAkun.neff].alamat);
        write('Masukkan username pengunjung: ');
        readln(lAkun.list[lAkun.neff].username);
        write('Masukkan password pengunjung: ');
        readln(lAkun.list[lAkun.neff].password);
        lAkun.list[lAkun.neff].role:=false;
        writeln();
        writeln('Pengunjung ',lAkun.list[lAkun.neff].nama,' berhasil terdaftar sebagai user.');
    end;
end.