// Designer : Morgen Sudyanto (16518380)
// Coder    : Morgen Sudyanto (16518380)
// Tester   : Yan Arie Motinggo (16518268)
Program main;
// Main Program
uses F01,F02,F03,F04,F05,F06,F07,F08,F09,F10,F11,F12,F13,F14,F15,F16,typeList,tools;

// KAMUS
var
    option      :string;
    sudahLogin  :boolean; 
    currentUser :akun;
    acc         :akun;
    lAkun       :listAkun;
    lBuku       :listBuku;
    lPinjam     :listPinjam;
    lKembali    :listKembali;
    lHilang     :listHilang;

begin
    // Greeting Message + Inisialisasi
    sudahLogin:=false;
    option:='';
    currentUser.nama:='';
    currentUser.alamat:='';
    currentUser.username:='';
    currentUser.password:='';
    currentUser.role:=false;
    writeln('Welcome :)');
    writeln('Load database dulu yak!');
    loadData(lBuku,lAkun,lPinjam,lKembali,lHilang);     // F13
    writeln('Ketik "help" untuk melihat daftar opsi yang dapat dipilih.');
    // Input opsi
    while ((sudahLogin=false)) do
    begin
        readln(option);
        if (option='help') then
        begin
            writeln('login: Login ke sistem.');
            writeln('exit : Keluar dari sistem.');
        end
        else if (option='login') then
        begin
            write('Masukkan username: ');
            readln(acc.username);
            write('Masukkan password: ');
            readln(acc.password);
            login(currentUser,acc,lAkun,sudahLogin);    //F02
            if (sudahLogin=false) then
            begin
                writeln('Username/Password salah! Silahkan coba lagi.');
            end
            else 
            begin
                writeln('Welcome, ',currentUser.username);
            end;
        end
        else if (option='exit') then
        begin
            exitProgram(lBuku,lAkun,lPinjam,lKembali,lHilang);     // F16
            writeln('Bye');
            exit;
        end
        else 
        begin
            writeln('Opsi tidak ditemukan!');
            writeln('Ketik "help" untuk melihat daftar opsi yang dapat dipilih.');
        end;
    end;

    // Logged in as non-admin
    
    while (currentUser.role=false) do
    begin
        writeln('Ketik "help" untuk melihat daftar opsi yang dapat dipilih.');
        write('Masukkan pilihan: ');
        readln(option);
        if (option='help') then
        begin
            writeln('cari               : Mencari buku berdasarkan kategori');
            writeln('cari_tahun_terbit  : Mencari buku berdasarkan tahun terbit');
            writeln('pinjam_buku        : Meminjam buku');
            writeln('kembalikan_buku    : Mengembalikan buku');
            writeln('lapor_hilang       : Melapor buku yang hilang');
            writeln('save               : Menyimpan data ke format csv');
            writeln('exit               : Keluar dari sistem');
        end
        else if (option='cari') then
        begin
            search(lBuku);     // F03
        end
        else if (option='cari_tahun_terbit') then
        begin
            searchTahunTerbit(lBuku);     // F04
        end 
        else if (option='pinjam_buku') then
        begin
            pinjamBuku(currentUser,lBuku,lPinjam);    // F05
        end
        else if (option='kembalikan_buku') then
        begin
            kembalikanBuku(currentUser.username,lPinjam,lBuku,lKembali);     // F06
        end
        else if (option='lapor_hilang') then
        begin
            laporHilang(currentUser.username,lHilang);      // F07
        end 
        else if (option='save') then
        begin
            simpanData(lBuku,lAkun,lPinjam,lKembali,lHilang);   // F14
        end
        else if (option='exit') then
        begin
            exitProgram(lBuku,lAkun,lPinjam,lKembali,lHilang);     // F16
            writeln('Bye');
            exit;
        end
        else 
        begin
            writeln('Opsi tidak ditemukan!');
            writeln('Ketik "help" untuk melihat daftar opsi yang dapat dipilih.');
        end;
    end;

    // Logged in as admin

    while (currentUser.role=true) do
    begin
        writeln('Ketik "help" untuk melihat daftar opsi yang dapat dipilih.');
        write('Masukkan pilihan: ');
        readln(option);
        if (option='help') then
        begin
            writeln('register           : Meregistrasi pengunjung baru');
            writeln('cari               : Mencari buku berdasarkan kategori');
            writeln('cari_tahun_terbit  : Mencari buku berdasarkan tahun terbit');
            writeln('lihat_laporan      : Melihat laporan buku yang hilang');
            writeln('tambah_buku        : Menambah buku baru');
            writeln('tambah_jumlah_buku : Menambah jumlah buku yang sudah ada');
            writeln('riwayat            : Melihat riwayat peminjaman buku seorang pengunjung');
            writeln('statistik          : Melihat statistik pengunjung dan buku');
            writeln('save               : Menyimpan data ke format csv');
            writeln('exit               : Keluar dari sistem');
        end
        else if (option='register') then
        begin
            register(lAkun);     // F01
        end 
        else if (option='cari') then
        begin
            search(lBuku);     // F03
        end
        else if (option='cari_tahun_terbit') then
        begin
            searchTahunTerbit(lBuku);     // F04
        end 
        else if (option='lihat_laporan') then
        begin
            lihatLaporan(lHilang,lBuku);     // F08
        end
        else if (option='tambah_buku') then
        begin
            tambahBuku(lBuku);     // F09
        end
        else if (option='tambah_jumlah_buku') then
        begin
            tambahJumlahBuku(lBuku);       // F10;
        end
        else if (option='riwayat') then
        begin
            lihatRiwayat(lPinjam,lBuku);      // F11;
        end
        else if (option='statistik') then
        begin
            statistik(lAkun,lBuku);     // F12;
        end
        else if (option='cari_anggota') then
        begin
            cariAnggota(lAkun);     //  F15
        end
        else if (option='save') then
        begin
            simpanData(lBuku,lAkun,lPinjam,lKembali,lHilang);   // F14
        end
        else if (option='exit') then
        begin
            exitProgram(lBuku,lAkun,lPinjam,lKembali,lHilang);     // F16
            writeln('Bye');
            exit;
        end
        else 
        begin
            writeln('Opsi tidak ditemukan!');
            writeln('Ketik "help" untuk melihat daftar opsi yang dapat dipilih.');
        end;
    end;
end.