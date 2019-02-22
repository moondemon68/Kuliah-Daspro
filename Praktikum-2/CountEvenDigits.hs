-- Nama/NIM: Morgen Sudyanto/16518380
-- Tanggal: 20 Februari 2019
-- Deskripsi: menghitung jumlah digit yang genap
module CountEvenDigits where
countEvenDigits::Int->Int
--nbKelipatanX(n) menerima 1 buah bilangan integer dan mengembalikan sebuah bilangan integer.
countEvenDigits n=
	if (n==0) then	--basis
		1
	else if (n<10) then	--basis
		if (mod n 2==0) then
			1
		else 
			0
	else
		if (mod n 2==0) then
			countEvenDigits (div n 10) +1	--rekurens
		else
			countEvenDigits (div n 10)		--rekurens
			
--Contoh aplikasi
--countEvenDigits 1234
