unit F01a;
//fungsi register 

interface
//kita panggil typeList yang berisi type yang akan digunakan pada program
uses typeList;
	

var
	//variable untuk menulis
	textline: string;
	UserFile : Text;

procedure register(var a:listAkun);
	
implementation
procedure register(var a:listAkun);
begin
	a.neff := a.neff + 1;
	if(a.neff=1) then//register pertama
	begin
		system.Assign(UserFile,'user.csv');
		system.Rewrite(UserFile);//Untuk keadaan file register belom ada
		
		//algo baca
			write('Masukkan nama pengunjung: ');
			readln(a.list[a.neff].nama);
			write('Masukkan alamat pengunjung: ');
			readln(a.list[a.neff].alamat);
			write('Masukkan username pengunjung: ');
			readln(a.list[a.neff].username);
			write('Masukkan password pengunjung: ');
			readln(a.list[a.neff].password);

		
		//algo concatenate buat diinput ke csv	
			textline :=a.list[a.neff].nama + ',' + a.list[a.neff].alamat + ',' + a.list[a.neff].username + ',' + a.list[a.neff].password+',FALSE';
		//memasukkan baris berisi textline ke csv
			write(UserFile,textline);
			
			writeln;
			writeln('Pengunjung '+a.list[a.neff].nama+' berhasil terdaftar sebagai user.');
			
		
		close(UserFile);
	end else//register kedua dan seterusnya
	begin
		system.Assign(UserFile,'user.csv');
		system.Append(UserFile);//Untuk keadaan file sudah ada
		
		//algo baca
			write('Masukkan nama pengunjung: ');
			readln(a.list[a.neff].nama);
			write('Masukkan alamat pengunjung: ');
			readln(a.list[a.neff].alamat);
			write('Masukkan username pengunjung: ');
			readln(a.list[a.neff].username);
			write('Masukkan password pengunjung: ');
			readln(a.list[a.neff].password);

		
		//algo concatenate buat diinput ke csv	
			textline :=','+ a.list[a.neff].nama + ',' + a.list[a.neff].alamat + ',' + a.list[a.neff].username + ',' + a.list[a.neff].password+',FALSE';
		//memasukkan baris berisi textline ke csv
			write(UserFile,textline);
			
			writeln;
			writeln('Pengunjung '+a.list[a.neff].nama+' berhasil terdaftar sebagai user.');
			
		
		close(UserFile);
	end;
end;
end.