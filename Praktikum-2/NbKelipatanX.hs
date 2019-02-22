-- Nama/NIM: Morgen Sudyanto/16518380
-- Tanggal: 20 Februari 2019
-- Deskripsi: menghitung jumlah bilangan kelipatan x dari m sampai n
module NbKelipatanX where
nbKelipatanX::Int->Int->Int->Int
--nbKelipatanX(m,n,x) menerima 3 buah bilangan integer dan mengembalikan sebuah bilangan integer.
nbKelipatanX m n x=
	if (m==n) then	--basis
		if (mod n x==0) then
			1
		else 	
			0
	else
		if (mod n x==0) then
			nbKelipatanX m (n-1) x +1	--rekurens
		else
			nbKelipatanX m (n-1) x		--rekurens
			
--Contoh aplikasi
--nbKelipatanX 1 10 2
