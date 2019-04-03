// Designer : 
// Coder    : 
// Tester   : 
unit F02;
// Login
interface
    uses typeList;
    procedure login(var acc:akun; var lAkun:listAkun; var sudahLogin:boolean);

implementation
    procedure login(var acc:akun; var lAkun:listAkun; var sudahLogin:boolean);
    var
        i :integer;
    begin
        i:=0;
        while ((i<lAkun.neff) and not(sudahLogin)) do
        begin
            i:=i+1;
            if ((acc.username=lAkun.list[i].username) and (acc.password=lAkun.list[i].password)) then
            begin
                sudahLogin:=true;
            end;
        end;
    end;
end.