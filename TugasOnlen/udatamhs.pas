unit udatamhs;

interface
const
    NMadata : integer = 100;
type
    dataMhs = record
        NIM:string;{ Kode kategori produk }
        KdKul:string;{ Kode produk }
        Nilai:integer; { Hasil Penjualan } 
    end;

    tabNilaiMhs = record
        TMhs : array [1..101] of dataMhs;
        Neff  : integer; { 0..100, nilai efektif, 0 jika tabel kosong }
    end;
function EOP (rek : dataMhs) : boolean;

{ Menghasilkan true jika rek = mark }

procedure LoadDataNilai (filename : string; var T : tabNilaiMhs);

{ I.S. : filename terdefinisi, T sembarang }

{ F.S. : Tabel T terisi nilai mahasiswa dengan data yang dibaca

            dari file dg nama = filename

            T.Neff = 0 jika tidak ada file kosong;

            T diisi dengan seluruh isi file atau sampai T penuh. }

procedure UrutNIMAsc (var T : tabNilaiMhs);

{ I.S. : T terdefinisi; T mungkin kosong }

{ F.S. : Isi tabel T terurut membesar menurut NIM. T tetap jika T kosong. }

{ Proses : Gunakan salah satu algoritma sorting yang diajarkan di kelas.

            Tuliskan nama algoritmanya dalam bentuk komentar. }

procedure HitungRataRata (T : tabNilaiMhs);

{ I.S. : T terdefinisi; T mungkin kosong }

{ F.S. : Menampilkan nilai rata-rata setiap mahasiswa yang ada dalam tabel dengan format:

            <NIM>=<rata-rata>

            Nilai rata-rata dibulatkan ke integer terdekat. Gunakan fungsi round.

            Jika tabel kosong, tuliskan "Data kosong" }

{ Proses : Menggunakan ide algoritma konsolidasi tanpa separator pada file

            eksternal, hanya saja diberlakukan pada tabel. }

procedure SaveDataNilai (filename : string; T : tabNilaiMhs);

{ I.S. : T dan filename terdefinisi; T mungkin kosong }

{ F.S. : Isi tabel T dituliskan pada file dg nama = filename }

implementation
function EOP (rek : dataMhs) : boolean;
begin
    if (rek.NIM='99999999') and (rek.KdKul='datadata9999') and (rek.Nilai=-999) then
        EOP:=true
    else 
        EOP:=false;
end;

procedure LoadDataNilai (filename : string; var T : tabNilaiMhs);
var
    stream:file of dataMhs;
    data:dataMhs;
begin
    assign(stream,filename);
    reset(stream);
    read(stream,data);
    T.Neff:=0;
    while (not(EOP(data)) and (T.Neff < NMadata)) do
    begin
        T.Neff:=T.Neff+1;
        T.TMhs[T.Neff]:=data;
        read(stream,data);
    end;
    close(stream);
end;

procedure UrutNIMAsc (var T : tabNilaiMhs);
//bubble
var
    i,j:integer;
    temp:dataMhs;
begin
    if (T.Neff>=2) then
    begin
        for i:=T.Neff downto 2 do
        begin
            for j:=1 to i-1 do
            begin
                if T.TMhs[j].NIM>T.TMhs[j+1].NIM then
                begin
                    temp          := T.TMhs[j+1];
                    T.TMhs[j+1]  :=T.TMhs[j];
                    T.TMhs[j]    :=temp;
                end;
            end;
        end;
    end;
end;

procedure HitungRataRata (T : tabNilaiMhs);
var
    sum,cnt,i:integer;
begin
    if (T.Neff=0) then
    begin
        writeln('Data kosong');
    end
    else
    begin
        sum:=0;
        cnt:=0;
        T.TMhs[T.Neff+1].NIM:='99999999';
        T.TMhs[T.Neff+1].KdKul:='datadata9999';
        T.TMhs[T.Neff+1].Nilai:=-999;
        for i:= 1 to T.Neff do
        begin
            sum:=sum+T.TMhs[i].Nilai;
            cnt:=cnt+1;
            if (T.TMhs[i].NIM<>T.TMhs[i+1].NIM) then
            begin
                writeln(T.TMhs[i].NIM,'=',round(sum/cnt));
                sum:=0;
                cnt:=0;
            end
        end;
    end;
end;

procedure SaveDataNilai (filename : string; T : tabNilaiMhs);
var
    stream:file of dataMhs;
    i:integer;
    data:dataMhs;
begin
    assign(stream,filename);
    rewrite(stream);
    for i:=1 to T.Neff do
    begin
        write(stream,T.TMhs[i]);
    end;
    data.NIM:='99999999';
    data.KdKul:='datadata9999';
    data.Nilai:=-999;
    write(stream,data);
    close(stream);
end;
end.