unit udatajual;

interface
const
    NMadata : integer = 100;
type
    dataJual = record
        KdKategori:string;{ Kode kategori produk }
        KdProduk:string;{ Kode produk }
        Hasil:integer; { Hasil Penjualan } 
    end;

    tabPenjualan = record
        TJual : array [1..101] of dataJual;
        Neff  : integer; { 0..100, nilai efektif, 0 jika tabel kosong }
    end;
function EOP (rek : dataJual) : boolean;
{ Menghasilkan true jika rek = mark }
procedure LoadDataJual (filename : string; var T : tabPenjualan);
{ I.S. : filename terdefinisi, T sembarang }
{ F.S. : Tabel T terisi data hasil penjualan dengan data yang dibaca
            dari file dg nama = filename
            T.Neff = 0 jika tidak ada file kosong;
            T diisi dengan seluruh isi file atau sampai T penuh. }
procedure UrutKategoriAsc (var T : tabPenjualan);
{ I.S. : T terdefinisi; T mungkin kosong }
{ F.S. : Isi tabel T terurut membesar menurut KdKategori. T tetap jika T kosong. }
{ Proses : Gunakan salah satu algoritma sorting yang diajarkan di kelas.
            Tuliskan nama algoritmanya dalam bentuk komentar. }
    procedure HitungRataRata (T : tabPenjualan);
{ I.S. : T terdefinisi; T mungkin kosong }
{ F.S. : Menampilkan KdKategori dan hasil penjualan rata-rata per KdKategori
            yang ada dalam tabel dengan format: <KdKategori>=<rata-rata>
            Nilai rata-rata dibulatkan ke integer terdekat. Gunakan fungsi round. }
{ Proses : Menggunakan ide algoritma konsolidasi tanpa separator pada file
            eksternal, hanya saja diberlakukan pada tabel. }
procedure SaveDataJual (filename : string; T : tabPenjualan);
{ I.S. : T dan filename terdefinisi; T mungkin kosong }
{ F.S. : Isi tabel T dituliskan pada file dg nama = filename }

implementation
function EOP (rek : dataJual) : boolean;
begin
    if (rek.KdKategori='99999999') and (rek.KdProduk='datadata9999') and (rek.Hasil=-999) then
        EOP:=true
    else 
        EOP:=false;
end;
procedure LoadDataJual (filename : string; var T : tabPenjualan);
var
    stream:file of dataJual;
    data:dataJual;
begin
    assign(stream,filename);
    reset(stream);
    read(stream,data);
    T.Neff:=0;
    while (not(EOP(data))) do
    begin
        T.Neff:=T.Neff+1;
        T.TJual[T.Neff]:=data;
        read(stream,data);
    end;
    close(stream);
end;
procedure UrutKategoriAsc (var T : tabPenjualan);
//bubble
var
    i,j:integer;
    temp:dataJual;
begin
    if (T.Neff>=2) then
    begin
        for i:=T.Neff downto 2 do
        begin
            for j:=1 to i-1 do
            begin
                if T.TJual[j].KdKategori>T.TJual[j+1].KdKategori then
                begin
                    temp          := T.TJual[j+1];
                    T.TJual[j+1]  :=T.TJual[j];
                    T.TJual[j]    :=temp;
                end;
            end;
        end;
    end;
end;
procedure HitungRataRata (T : tabPenjualan);
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
        T.TJual[T.Neff+1].KdKategori:='99999999';
        T.TJual[T.Neff+1].KdProduk:='datadata9999';
        T.TJual[T.Neff+1].Hasil:=-999;
        for i:= 1 to T.Neff do
        begin
            sum:=sum+T.TJual[i].hasil;
            cnt:=cnt+1;
            if (T.TJual[i].KdKategori<>T.TJual[i+1].KdKategori) then
            begin
                writeln(T.TJual[i].KdKategori,'=',round(sum/cnt));
                sum:=0;
                cnt:=0;
            end
        end;
    end;
end;
procedure SaveDataJual (filename : string; T : tabPenjualan);
var
    stream:file of dataJual;
    i:integer;
    data:dataJual;
begin
    assign(stream,filename);
    rewrite(stream);
    for i:=1 to T.Neff do
    begin
        write(stream,T.TJual[i]);
    end;
    data.KdKategori:='99999999';
    data.KdProduk:='datadata9999';
    data.Hasil:=-999;
    write(stream,data);
    close(stream);
end;
end.