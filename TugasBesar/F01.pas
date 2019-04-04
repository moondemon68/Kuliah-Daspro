// Designer : 
// Coder    : 
// Tester   : 
unit F01;
// Registrasi akun
interface
    uses typeList,tools;   
    procedure register(nama: string; alamat:string; username:string; password:string; var lAkun:listAkun);

implementation
    procedure register(nama: string; alamat:string; username:string; password:string; var lAkun:listAkun);
    begin
        lAkun.neff:=lAkun.neff+1;
        lAkun.list[lAkun.neff].nama:=nama;
        lAkun.list[lAkun.neff].alamat:=alamat;
        lAkun.list[lAkun.neff].username:=username;
        lAkun.list[lAkun.neff].password:=password;
        lAkun.list[lAkun.neff].role:=false;
        writeln();
        writeln('Pengunjung ',nama,' berhasil terdaftar sebagai user.');
    end;
end.