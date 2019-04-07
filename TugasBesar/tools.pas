// Designer : 
// Coder    : 
// Tester   : 
unit tools;
// Tools untuk membantu program
interface
    uses typeList,sysutils;
    function tanggalToString(date: tanggal):string;
    function stringToTanggal(str: string):tanggal;
    function addOneWeek(date:tanggal):tanggal;
    function isLeapYear(year:integer):boolean;
    function dateSubstraction(date1:tanggal; date2:tanggal):integer;
    function numberOfDays(month:integer;year:integer):integer;
    function findJudul(inputInt:integer; var lBuku:listBuku):string;
    function stringToInt(str: string):integer;
    function stringToBool(str: string):boolean;
    function stringCompare(a:string; b:string):boolean;

implementation
    function tanggalToString(date: tanggal):string;
    // Mengubah tanggal menjadi string
    var
        ret:string;
    begin
        ret:='';
        if (date.hari<10) then
        begin
            ret:=ret+'0';
            ret:=ret+IntToStr(date.hari);
        end
        else 
        begin
            ret:=ret+IntToStr(date.hari);
        end;
        ret:=ret+'/';
        if (date.bulan<10) then
        begin
            ret:=ret+'0';
            ret:=ret+IntToStr(date.bulan);
        end
        else 
        begin
            ret:=ret+IntToStr(date.bulan);
        end;
        ret:=ret+'/';
        if (date.tahun<10) then
        begin
            ret:=ret+'000';
            ret:=ret+IntToStr(date.tahun);
        end
        else if (date.tahun<100) then
        begin
            ret:=ret+'00';
            ret:=ret+IntToStr(date.tahun);
        end
        else if (date.tahun<1000) then
        begin
            ret:=ret+'0';
            ret:=ret+IntToStr(date.tahun);
        end
        else 
        begin
            ret:=ret+IntToStr(date.tahun);
        end;
        tanggalToString:=ret;
    end;

    function stringToTanggal(str: string):tanggal;
    // Mengubah string menjadi tanggal
    begin
        stringToTanggal.hari:=(Integer(str[1])-48)*10+(Integer(str[2])-48);
        stringToTanggal.bulan:=(Integer(str[4])-48)*10+(Integer(str[5])-48);
        stringToTanggal.tahun:=(Integer(str[7])-48)*1000+(Integer(str[8])-48)*100+(Integer(str[9])-48)*10+(Integer(str[10])-48);
    end;

    function addOneWeek(date:tanggal):tanggal;
    // Menambahkan 1 minggu terhadap sebuah tanggal
    begin
        addOneWeek:=date;
        addOneWeek.hari:=addOneWeek.hari+7;
        if ((addOneWeek.hari>31) and ((addOneWeek.bulan=1) or (addOneWeek.bulan=3) or (addOneWeek.bulan=5) or (addOneWeek.bulan=7) or (addOneWeek.bulan=8) or (addOneWeek.bulan=10) or (addOneWeek.bulan=12))) then
        begin
            addOneWeek.hari:=addOneWeek.hari-31;
            addOneWeek.bulan:=addOneWeek.bulan+1;
            if (addOneWeek.bulan>12) then
            begin
                addOneWeek.bulan:=addOneWeek.bulan-12;
                addOneWeek.tahun:=addOneWeek.tahun+1;
            end;
        end
        else if ((addOneWeek.hari>30) and ((addOneWeek.bulan=4) or (addOneWeek.bulan=6) or (addOneWeek.bulan=9) or (addOneWeek.bulan=11))) then
        begin
            addOneWeek.hari:=addOneWeek.hari-30;
            addOneWeek.bulan:=addOneWeek.bulan+1;
        end
        else if ((addOneWeek.hari>29) and (addOneWeek.bulan=2) and (isLeapYear(addOneWeek.tahun)=true)) then
        begin
            addOneWeek.hari:=addOneWeek.hari-29;
            addOneWeek.bulan:=addOneWeek.bulan+1;
        end
        else if ((addOneWeek.hari>28) and (addOneWeek.bulan=2) and (isLeapYear(addOneWeek.tahun)=false)) then
        begin
            addOneWeek.hari:=addOneWeek.hari-28;
            addOneWeek.bulan:=addOneWeek.bulan+1;
        end;
    end;

    function isLeapYear(year:integer):boolean;
    // Menentukan apakah sebuah tahun merupakan kabisat atau tidak
    begin
        if ((year mod 400 = 0) or ((year mod 4 = 0) and not (year mod 100 = 0))) then
        begin
            isLeapYear:=true;
        end
        else
        begin
            isLeapYear:=false;
        end;
    end;

    function dateSubstraction(date1:tanggal; date2:tanggal):integer;
    // Mengembalikan hasil pengurangan antara date1 dan date2
    var
        ans:integer;
    begin
        ans:=0;
        // TO BE IMPLEMENTED
        dateSubstraction:=ans;
    end;

    function numberOfDays(month:integer; year:integer):integer;
    // Mengembalikan jumlah hari yang ada pada bulan tertentu dan pada tahun tertentu
    begin
        if (month=1) or (month=3) or (month=5) or (month=7) or (month=8) or (month=10) or (month=12) then
        begin
            numberOfDays:=31;
        end
        else if (month=4) or (month=6) or (month=9) or (month=11) then
        begin
            numberOfDays:=30;
        end
        else if (isLeapYear(year)) then
        begin
            numberOfDays:=29;
        end
        else
        begin
            numberOfDays:=28;
        end;
    end;

    function findJudul(inputInt:integer; var lBuku:listBuku):string;
    // Mencari judul buku berdasarkan id buku
    var
        i:integer;
        found:boolean;
    begin
        found:=false;
        i:=0;
        while (i<lBuku.neff) and (not(found)) do
        begin
            i:=i+1;
            if (inputInt=lBuku.list[i].id_buku) then
            begin
                found:=true;
                findJudul:=lBuku.list[i].judul_buku;
            end;
        end;
    end;

    function stringToInt(str: string):integer;
    // Mengubah string menjadi integer
    var
        ret:integer;
        i:integer;
    begin
        ret:=0;
        for i:=1 to length(str) do
        begin
            ret:=ret+ord(str[i])-48;
            if (i<length(str)) then
            begin
                ret:=ret*10;
            end;
        end;
        stringToInt:=ret;
    end;

    function stringToBool(str: string):boolean;
    // Mengubah string 'TRUE' dan 'FALSE' menjadi boolean
    begin
        if (str='FALSE') then
        begin
            stringToBool:=false;
        end
        else
        begin
            stringToBool:=true;
        end;
    end;

    function stringCompare(a:string; b:string):boolean;
    // Mengembalikan true bila a lebih kecil dari b secara leksikografis
    var
        i:integer;
        x:integer;
        ret:boolean;
        done:boolean;
    begin
        // kalau tidak ada huruf yang berbeda, maka string yang dianggap lebih kecil adalah string yang lebih pendek
        x:=0;
        done:=false;
        if (length(a)<length(b)) then
        begin
            x:=length(a);
            ret:=true;
        end
        else
        begin
            x:=length(b);
            ret:=false;
        end;
        // Mengecek tiap huruf pada string
        i:=0;
        while (i<x) and (done=false) do
        begin
            i:=i+1;
            if (a[i]<b[i]) then
            begin
                done:=true;
                ret:=true;
            end
            else if (a[i]>b[i]) then
            begin
                done:=true;
                ret:=false;
            end
            else // a[i]=b[i]
            begin
                done:=false;    // do nothing
            end;
        end;
        stringCompare:=ret;
    end;
end.