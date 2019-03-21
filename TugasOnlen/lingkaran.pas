//Nama: Morgen Sudyanto
//NIM: 16518380
{ Lengkapi dengan identitas }
 
Program ProsesLingkaran;
{ Input: 2 buah Lingkaran }
{ Output: luas, keliling, dan hubungan lingkaran A dan B }
 
{ KAMUS }
const
        PI : real = 3.1415;
type
        { Definisi Type Koordinat }
        Koordinat = record
            x,y: real { lengkapi dengan komponen type Koordinat }
        end;
        { Definisi Type Lingkaran }
        Lingkaran = record
            c : Koordinat; { titik pusat lingkaran }
            r : real;      { jari-jari, > 0 }
        end;
var
        A, B : Lingkaran; { variabel untuk lingkaran A dan B }
        hubungan : integer; { lengkapi dengan variabel yang dibutuhkan }
 
{ FUNGSI DAN PROSEDUR }
function IsRValid (r:real):boolean;
begin
    IsRValid:=(r>0);
end;

procedure InputLingkaranA ();
{ I.S.: A sembarang }
{ F.S.: A terdefinisi sesuai dengan masukan pengguna. Pemasukan jari-jari diulangi 
        sampai didapatkan jari-jari yang benar yaitu r > 0. Pemeriksaan apakah jari-
        jari valid menggunakan fungsi IsRValid.
        Jika jari-jari tidak valid, dikeluarkan pesan kesalahan “Jari-jari harus > 0”. }
{ lengkapi kamus dan algoritma procedure InputLingkaran }
begin
    readln(A.c.x,A.c.y,A.r);
    while (not (IsRValid(A.r))) do begin
        writeln('Jari-jari harus > 0');
        readln(A.r);
    end;
end;

procedure InputLingkaranB ();
{ I.S.: A sembarang }
{ F.S.: A terdefinisi sesuai dengan masukan pengguna. Pemasukan jari-jari diulangi 
        sampai didapatkan jari-jari yang benar yaitu r > 0. Pemeriksaan apakah jari-
        jari valid menggunakan fungsi IsRValid.
        Jika jari-jari tidak valid, dikeluarkan pesan kesalahan “Jari-jari harus > 0”. }
{ lengkapi kamus dan algoritma procedure InputLingkaran }
begin
    readln(B.c.x,B.c.y,B.r);
    while (not (IsRValid(B.r))) do begin
        writeln('Jari-jari harus > 0');
        readln(B.r);
    end;
end;

function KelilingLingkaran (A:Lingkaran) : real; { lengkapi parameter dan type hasil }
{ Menghasilkan keliling lingkaran A = 2 * PI * A.r }
{ Lengkapi kamus lokal dan algoritma fungsi KelilingLingkaran }
begin
    KelilingLingkaran:=2*PI*A.r;
end;
 
function LuasLingkaran (A:Lingkaran) : real; { lengkapi parameter dan type hasil }
{ Menghasilkan luas lingkaran A = PI * A.r * A.r }
{ Lengkapi kamus lokal dan algoritma fungsi LuasLingkaran }
begin
    LuasLingkaran:=PI*A.r*A.r;
end;
 
function Jarak (A,B:Lingkaran) : real;
{ Menghasilkan jarak antara P1 dan P2 }
{ Lengkapi kamus lokal dan algoritma fungsi Jarak }
begin
    Jarak:=Sqrt((B.c.x-A.c.x)*(B.c.x-A.c.x)+(B.c.y-A.c.y)*(B.c.y-A.c.y));
end;

function HubunganLingkaran (A,B:Lingkaran) : integer;
{ Menghasilkan integer yang menyatakan hubungan lingkaran A dan B, yaitu:
  1 = A dan B sama;
  2 = A dan B berimpit; 
  3 = A dan B beririsan;
  4 = A dan B bersentuhan;
  5 = A dan B saling lepas }
{ Lengkapi kamus lokal dan algoritma fungsi HubunganLingkaran }
begin
    if ((A.c.x=B.c.x) and (A.c.y=B.c.y) and (A.r=B.r)) then begin
        HubunganLingkaran:=1;
    end else if ((A.c.x=B.c.x) and (A.c.y=B.c.y) and (A.r<>B.r)) then begin
        HubunganLingkaran:=2;
    end else if ((Jarak(A,B)<(A.r+B.r))) then begin
        HubunganLingkaran:=3;
    end else if ((Jarak(A,B)=(A.r+B.r))) then begin
        HubunganLingkaran:=4;
    end else begin
        HubunganLingkaran:=5;
    end;
end;
 
{ ALGORITMA PROGRAM UTAMA }
begin
        writeln('Masukkan lingkaran A:');
        A.c.x:=0;
        A.c.y:=0;
        A.r:=0;
        InputLingkaranA(); { Lengkapi dengan pemanggilan prosedur InputLingkaran untuk lingkaran A }
        writeln('Masukkan lingkaran B:');
        B.c.x:=0;
        B.c.y:=0;
        B.r:=0;
        InputLingkaranB(); { Lengkapi dengan pemanggilan prosedur InputLingkaran untuk lingkaran B }
        writeln('Keliling lingkaran A = ', KelilingLingkaran(A):0:2); { Lengkapi dengan pemanggilan fungsi 
                                                   KelilingLingkaran untuk A }
        writeln('Luas lingkaran A = ', LuasLingkaran(A):0:2); { Lengkapi dengan pemanggilan fungsi LuasLingkaran untuk A }
        writeln('Keliling lingkaran B = ', KelilingLingkaran(B):0:2); { Lengkapi dengan pemanggilan fungsi 
                                                   KelilingLingkaran untuk B }
        writeln('Luas lingkaran B = ', LuasLingkaran(B):0:2); { Lengkapi dengan pemanggilan fungsi LuasLingkaran untuk B }
        write('A dan B adalah ');
        hubungan:=HubunganLingkaran(A,B);
        if (hubungan=1) then begin
            writeln('sama');
        end else if (hubungan=2) then begin
            writeln('berimpit');
        end else if (hubungan=3) then begin
            writeln('beririsan');
        end else if (hubungan=4) then begin
            writeln('bersentuhan');
        end else begin
            writeln('saling lepas');
        end;
             { Lengkapi dengan pemanggilan fungsi HubunganLingkaran dan mengkonversi 
              integer hasil fungsi menjadi kata-kata sbb.:
              1 = ‘sama’
              2 = ‘berimpit’ 
              3 = ‘beririsan’
              4 = ‘bersentuhan’
              5 = ‘saling lepas’ }
end.