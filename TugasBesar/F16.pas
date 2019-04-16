// Designer : 
// Coder    : 
// Tester   : 
unit F16;
// Exit
interface
    uses typeList,tools,F14;
    procedure exitProgram(var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);

implementation
    procedure exitProgram(var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);
    var
        save:boolean;
        inputStr:string;
    begin
        write('Apakah Anda mau melakukan penyimpanan file yang sudah dilakukan (Y/N) ?');
        readln(inputStr);
        save:=false;
        if (inputStr='Y') then
        begin
            save:=true;
        end;
        if (save=true) then
        begin
            simpanData(lBuku,lAkun,lPinjam,lKembali,lHilang);
        end;
    end;
end.