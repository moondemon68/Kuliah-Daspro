// Designer : 
// Coder    : 
// Tester   : 
unit F12;
// Statistik
interface
    uses typeList;
    procedure statistik(var lAkun:listAkun; var lBuku:listBuku);

implementation
    procedure statistik(var lAkun:listAkun; var lBuku:listBuku);
    var
        admin:integer;
        pengunjung:integer;
        sastra:integer;
        sains:integer;
        manga:integer;
        sejarah:integer;
        programming:integer;
        i:integer;
    begin
        admin:=0;
        pengunjung:=0;
        sastra:=0;
        sains:=0;
        manga:=0;
        sejarah:=0;
        programming:=0;
        for i:=1 to lAkun.neff do
        begin
            if (lAkun.list[i].role=true) then
            begin
                admin:=admin+1;
            end
            else
            begin
                pengunjung:=pengunjung+1;
            end;
        end;
        writeln('Pengguna:');
        writeln('Admin | ',admin);
        writeln('pengunjung | ',pengunjung);
        writeln('Total | ',(admin+pengunjung));
        for i:=1 to lBuku.neff do
        begin
            if (lBuku.list[i].kategori='sastra') then
            begin
                sastra:=sastra+1;
            end
            else if (lBuku.list[i].kategori='sains') then
            begin
                sains:=sains+1;
            end
            else if (lBuku.list[i].kategori='manga') then
            begin
                manga:=manga+1;
            end
            else if (lBuku.list[i].kategori='sejarah') then
            begin
                sejarah:=sejarah+1;
            end
            else if (lBuku.list[i].kategori='programming') then
            begin
                programming:=programming+1;
            end;
        end;
        writeln('Buku:');
        writeln('sastra | ',sastra);
        writeln('sains | ',sains);
        writeln('manga | ',manga);
        writeln('sejarah | ',sejarah);
        writeln('programming | ',programming);
        writeln('Total | ',(sastra+sains+manga+sejarah+programming));
    end;
end.