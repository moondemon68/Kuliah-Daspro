-- Nama				: Morgen Sudyanto
-- NIM				: 16518380
-- Tanggal			: 6 Februari 2019
-- Topik Praktikum	: Fungsi dan Ekspresi
-- Deskripsi		: menghitung luas trapesium
module LuasTrapesium where
-- LuasTrapesium - luasTrapesium(t,s1,s2)
-- Definisi dan Spesifikasi
luasTrapesium::Float->Float->Float->Float
	-- luasTrapesium(t,s1,s2) menghitung luas trapesium yang memiliki tinggi t, dan panjang sisi s1 dan s2,
	-- t, s1 dan s2 adalah bilangan real
-- Realisasi
luasTrapesium t s1 s2=1/2*t*(s1+s2)
-- Contoh Aplikasi
-- luasTrapesium 2 4 3
