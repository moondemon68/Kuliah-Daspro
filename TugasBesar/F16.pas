// Designer : 
// Coder    : 
// Tester   : 
unit F16;
// Exit
interface
    uses typeList,tools,F13;
    procedure exitProgram(save: boolean; var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);

implementation
    procedure exitProgram(save: boolean; var lBuku: listBuku; var lAkun: listAkun; var lPinjam: listPinjam; var lKembali: listKembali; var lHilang: listHilang);
    begin
        if (save=True) then
        begin
            simpanData(lBuku,lAkun,lPinjam,lKembali,lHilang);
        end;
    end;
end.