// Designer : 
// Coder    : 
// Tester   : 
unit F13;
// Load file
interface
    uses typeList,tools,sysutils;
    procedure loadData(var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);

implementation
    procedure loadData(var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);
    var
        filename:string;
        i:integer;
        p:integer; //pointer
        s:string;
        tmp:string;
        stream:TextFile;
    begin
        //Load Akun
        write('Masukkan nama File User: ');
        readln(filename);
        assign(stream,filename);
        reset(stream);
        i:=0;
        while not(eof(stream)) do
        begin
            i:=i+1;
            lAkun.neff:=lAkun.neff+1;
            readln(stream,s);
            p:=0;
            lAkun.list[i].nama:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                lAkun.list[i].nama:=lAkun.list[i].nama+s[p];
            end;
            p:=p+1;
            lAkun.list[i].alamat:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                lAkun.list[i].alamat:=lAkun.list[i].alamat+s[p];
            end;
            p:=p+1;
            lAkun.list[i].username:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                lAkun.list[i].username:=lAkun.list[i].username+s[p];
            end;
            p:=p+1;
            lAkun.list[i].password:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                lAkun.list[i].password:=lAkun.list[i].password+s[p];
            end;
            p:=p+1;
            lAkun.list[i].role:=false;
            tmp:='';
            while (p<length(s)) and (s[p+1]<>',') do
            begin
                p:=p+1;
                tmp:=tmp+s[p];
            end;
            if (tmp='true') then
            begin
                lAkun.list[i].role:=true;
            end;
        end;
    end;
end.