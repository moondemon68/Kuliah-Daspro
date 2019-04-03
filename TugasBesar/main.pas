// Designer : 
// Coder    : 
// Tester   : 
Program main;
// Main Program
uses F01,F02,F03,F04,F05,F06,F07,F08,F09,F10,F11,F12,F13,F14,F15,F16,typeList;

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
    writeln('Ketik "help" untuk melihat daftar opsi yang dapat dipilih.');
    // Input opsi
    while ((sudahLogin=false)) do
    begin
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

    end;

    // Greeting Message for admin

    while (currentUser.role=true) do
    begin

    end;
end.