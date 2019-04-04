// Designer : 
// Coder    : 
// Tester   : 
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
    inputStr    :string;
    inputStr2   :string;
    inputStr3   :string;
    inputStr4   :string;
    inputInt    :integer;

begin
    // Greeting Message + Inisialisasi
    sudahLogin:=false;
    option:='';
    currentUser.nama:='';
    currentUser.alamat:='';
    currentUser.username:='';
    currentUser.password:='';
    currentUser.role:=false;
    inputStr:='';
    inputStr2:='';
    inputStr3:='';
    inputStr4:='';
    inputInt:=0;
    writeln('Welcome :)');
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
            login(acc,lAkun,sudahLogin);    //F02
            if (sudahLogin=false) then
            begin
                writeln('Username/Password salah! Silahkan coba lagi.');
            end
            else 
            begin
                currentUser:=acc;
                writeln('Welcome, ',currentUser.username);
            end;
        end
        else if (option='exit') then
        begin
            writeln('Bye');
            exitProgram(false,lBuku,lAkun,lPinjam,lKembali,lHilang);    //F16
            exit;
        end
        else 
        begin
            writeln('Opsi tidak ditemukan!');
            writeln('Ketik "help" untuk melihat daftar opsi yang dapat dipilih.');
        end;
    end;

    // Greeting Message for non-admin

    while (currentUser.role=false) do
    begin
        readln(option);
        if (option='cari') then
        begin
            write('Masukkan kategori: ');
            readln(inputStr);
            search(inputStr,lBuku);     // F03
        end
        else if (option='cari_tahun_terbit') then
        begin
            write('Masukkan tahun: ');
            readln(inputInt);
            write('Masukkan kategori: ');
            readln(inputStr);
            searchTahunTerbit(inputInt,inputStr,lBuku);     // F04
        end 
        else if (option='pinjam_buku') then
        begin
            write('Masukkan id buku yang ingin dipinjam: ');
            readln(inputInt);
            write('Masukkan tanggal hari ini: ');
            readln(inputStr);
            pinjamBuku(currentUser.username,inputInt,stringToTanggal(inputStr),lBuku,lPinjam);    // F05
        end
        else if (option='kembalikan_buku') then
        begin
            write('Masukkan id buku yang ingin dikembalikan: ');
            readln(inputInt);
            kembalikanBuku(currentUser.username,inputInt,lPinjam,lBuku,lKembali);     // F06
        end
        else if (option='lapor_hilang') then
        begin
            write('Masukkan id buku: ');
            readln(inputInt);
            write('Masukkan judul buku: ');
            readln(inputStr);
            write('Masukkan tanggal pelaporan: ');
            readln(inputStr2);
            laporHilang(currentUser.username,inputInt,inputStr,stringToTanggal(inputStr2),lHilang);      // F07
        end 
        else if (option='save') then
        begin
            simpanData(lBuku,lAkun,lPinjam,lKembali,lHilang);   // F13
        end
        else if (option='exit') then
        begin
            writeln('Apakah Anda mau melakukan penyimpanan file yang sudah dilakukan (Y/N) ?');
            readln(inputStr);
            if (inputStr='Y') then
            begin
                exitProgram(true,lBuku,lAkun,lPinjam,lKembali,lHilang);     // F16
            end
            else
            begin
                exitProgram(false,lBuku,lAkun,lPinjam,lKembali,lHilang);    // F16
            end;
            exit;
        end;
    end;

    // Greeting Message for admin

    while (currentUser.role=true) do
    begin
        readln(option);
        if (option='register') then
        begin
            writeln('Masukkan nama pengunjung: ');
            readln(inputStr);
            writeln('Masukkan alamat pengunjung: ');
            readln(inputStr2);
            writeln('Masukkan username pengunjung: ');
            readln(inputStr3);
            writeln('Masukkan password pengunjung: ');
            readln(inputStr4);
            register(inputStr,inputStr2,inputStr3,inputStr4,lAkun);     // F01
        end 
        else if (option='cari') then
        begin
            write('Masukkan kategori: ');
            readln(inputStr);
            search(inputStr,lBuku);     // F03
        end
        else if (option='cari_tahun_terbit') then
        begin
            write('Masukkan tahun: ');
            readln(inputInt);
            write('Masukkan kategori: ');
            readln(inputStr);
            searchTahunTerbit(inputInt,inputStr,lBuku);     // F04
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
        end;
    end;
end.