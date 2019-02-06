-- Nama				: Morgen Sudyanto
-- NIM				: 16518380
-- Tanggal			: 6 Februari 2019
-- Topik Praktikum	: Fungsi dan Ekspresi
-- Deskripsi		: mengubah suhu dalam derajat celcius menjadi derajat yang diinginkan
module KonversiSuhu where
-- KonversiSuhu - KonversiSuhu(t,k)
-- Definisi dan Spesifikasi
konversiSuhu::Float->Char->Float
	-- konversiSuhu(t,k) mengkonversikan suhu dalam derajat Celcius menjadi suhu dalam derajat Fahrenheit, Reamur atau Kelvin.
	-- t bertipe integer, dan k bertipe character
-- Realisasi
konversiSuhu t k = 
	if (k=='F') then
		(9/5*t)+32
	else if (k=='R') then
		(4/5*t)
	else
		(t+273.15)

-- Contoh Aplikasi
-- konversiSuhu 25 'R'
