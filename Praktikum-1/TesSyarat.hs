-- Nama				: Morgen Sudyanto
-- NIM				: 16518380
-- Tanggal			: 6 Februari 2019
-- Topik Praktikum	: Fungsi dan Ekspresi
-- Deskripsi		: mengeluarkan kategori beasiswa berdasarkan ip dan pendapatan orang tua
module TesSyarat where
-- TesSyarat - TesSyarat(ip,pot)
-- Definisi dan Spesifikasi
tesSyarat::Float->Float->Int
	-- tesSyarat(ip,pot) menerima nilai ip dan pendapatan orang tua, lalu mengeluarkan kategori beasiswa yang didapat. 
	-- ip dan pot bertipe float, dan kategori bertipe integer
-- Realisasi
tesSyarat ip pot =
	if (ip>=3.5) then
		4
	else if (pot<1) then
		1
	else if (pot<5) then
		if (ip>=2.0) then
			3
		else
			2
	else
		0

-- Contoh Aplikasi
-- tesSyarat 3.51 1.5
