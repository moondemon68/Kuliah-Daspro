unit F02a;
//fungsi login

interface
uses typeList;

var 
	i : integer;
procedure login(var currentUser,acc : akun ;var lAkun:listAkun;var sudahLogin : boolean);

implementation
procedure login(var currentUser,acc : akun;var lAkun:listAkun; var sudahLogin : boolean); 	
begin
	//cek username
	for i:=1 to lAkun.neff do
	begin
		if(acc.username=lAkun.list[i].username) then
		begin
			if(acc.password = lAkun.list[i].password) then
			begin
				currentUser:=lAkun.list[i];
				sudahLogin:= True;
			end;
		end;
	end;
end;

end.
	