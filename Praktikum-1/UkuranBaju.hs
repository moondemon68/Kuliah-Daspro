-- Nama				: Morgen Sudyanto
-- NIM				: 16518380
-- Tanggal			: 6 Februari 2019
-- Topik Praktikum	: Fungsi dan Ekspresi
-- Deskripsi		: mengeluarkan ukuran baju berdasarkan tinggi dan berat badan
module UkuranBaju where
-- UkuranBaju - UkuranBaju(t,b)
-- Definisi dan Spesifikasi
ukuranBaju::Int->Int->Int
	-- ukuranBaju(t,b) menerima masukan berupa tinggi dan berat badan, lalu mengeluarkan tipe baju yang sesuai.
	-- t bertipe integer, dan b bertipe integer
-- Realisasi
ukuranBaju t b = 
	if (t<=150) then
		1	--M
	else if (t>170) then
		if (b<=60) then
			2	--L
		else if (b<=80) then
			3	--XL
		else 
			4	--Tidak dapat kaos
	else if (t>150&&t<=170) then
		if (b<=80) then
			2	--L 
		else
			3	--XL
	else if (t>170&&b<=60) then
		2	--L
	else 
		4	--Tidak dapat kaos

-- Contoh Aplikasi
-- ukuran
