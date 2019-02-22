-- Nama/NIM: Morgen Sudyanto/16518380
-- Tanggal: 20 Februari 2019
-- Deskripsi: membuang angka yang mengandung digit 7 dalam list

module ElemenTengah where
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
elemenTengah :: [Int] -> Int
-- elemenTengah menerima masukan sebuah list of integer (l) dan mengembalikan
-- sebuah integer yang merupakan nilai elemen tengah dari l.
-- Jika banyaknya elemen pada list adalah genap, ambil dua elemen yang ada di tengah dan kembalikan elemen keduanya.
-- PREKONDISI: l tidak kosong.

elemenTengah l=
	if isOneElmt l==True then	--basis
		head l
	else	--rekurens
		let tempList=tail l
		in
			if (isOneElmt tempList==True) then	
				head tempList
			else 
				elemenTengah (init tempList)
--Contoh aplikasi
--elemenTengah [1,2,3,4,5]
