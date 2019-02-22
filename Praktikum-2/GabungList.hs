-- Nama/NIM: Morgen Sudyanto/16518380
-- Tanggal: 20 Februari 2019
-- Deskripsi: menggabungkan list 1 dan list 2, dan menghasilkan list yang terurut

module GabungList where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Int -> [Int] -> [Int]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsDot :: [Int] -> Int -> [Int]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
   e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsDot li e = li ++ [e]

-- DEFINISI DAN SPESIFIKASI SELEKTOR
-- head :: [Int] -> Int
-- head l menghasilkan elemen pertama list l, l tidak kosong

-- tail :: [Int] -> [Int]
-- tail l menghasilkan list tanpa elemen pertama list l, l tidak kosong

-- last :: [Int] -> Int
-- last l menghasilkan elemen terakhir list l, l tidak kosong

-- init :: [Int] -> [Int]
-- init l menghasilkan list tanpa elemen terakhir list l, l tidak kosong

-- DEFINISI DAN SPESIFIKASI PREDIKAT
isEmpty :: [Int] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

--DEFINISI DAN SPESIFIKASI
gabungList :: [Int] -> [Int] -> [Int]
-- gabungList menerima masukan dua buah list of integer l1 dan l2 dan mengembalikan
-- sebuah list of integer l3. l1 adalah list dengan bilangan sembarang dan l2 adalah
-- list yang sudah terurut serta l3 adalah gabungan dari kedua list dengan isi dari
-- list tersebut sudah terurut tidak mengecil (membesar atau sama).
masukList::Int->[Int]->[Int]
-- masukList menerima masukan 1 buah integer x dan 1 buah list of integer l, dan akan mengembalikan
-- list of integer yang merupakan gabungan antara elemen x dan l dalam kondisi terurut.

gabungList l1 l2=
	if (isEmpty l1==True) then	--basis
		l2
	else	
		gabungList (tail l1) (masukList (head l1) l2)	--rekurens
		
masukList x l=
	if (isEmpty l==True) then	--basis
		konso x l
	else
		if (x<=(head l)) then
			konso x l	
		else
			konso (head l) (masukList x (tail l))	--rekurens

--Contoh aplikasi
--gabungList [11,-44] [1,2,3,4,5]
