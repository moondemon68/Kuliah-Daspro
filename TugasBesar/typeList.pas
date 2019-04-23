// Designer : Morgen Sudyanto (16518380)
// Coder    : Morgen Sudyanto (16518380)
// Tester   : Yan Arie Motinggo (16518268)
unit typeList;
// Berisi tipe - tipe yang akan digunakan pada program
interface

const
    idmin=1;
    idmax=100;

type
    tanggal = record
        hari    :integer;
        bulan   :integer;
        tahun   :integer;
    end;
    
    akun = record
        nama    :string;
        alamat  :string;
        username:string;
        password:string;
        role    :boolean;
    end;

    buku = record
        id_buku         :integer;
        judul_buku      :string;
        author          :string;
        jumlah_buku     :integer;
        tahun_penerbit  :integer;
        kategori        :string;
    end;

    bukuPinjam = record
        username                     :string;
        id_buku                      :integer;
        tanggal_peminjaman           :tanggal;
        tanggal_batas_pengembalian   :tanggal;
        status_pengembalian          :boolean;
    end;

    bukuKembali = record
        username            :string;
        id_buku             :integer;
        tanggal_pengembalian:tanggal;
    end;

    bukuHilang = record
        username            :string;
        id_buku             :integer;
        tanggal_laporan     :tanggal;
    end;

    listAkun = record
        list    :array[idmin..idmax] of akun;
        neff    :integer;
    end;

    listBuku = record
        list    :array[idmin..idmax] of buku;
        neff    :integer;
    end;

    listPinjam = record
        list    :array[idmin..idmax] of bukuPinjam;
        neff    :integer;
    end;

    listHilang = record
        list    :array[idmin..idmax] of bukuHilang;
        neff    :integer;
    end;

    listKembali = record
        list    :array[idmin..idmax] of bukuKembali;
        neff    :integer;
    end;

implementation

end.
