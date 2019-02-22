-- Nama/NIM: Morgen Sudyanto/16518380
-- Tanggal: 20 Februari 2019
-- Deskripsi: mencari bilangan ganjil yang paling sering muncul

module MaxOdd where
-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
   Definisi type List of Int
   Basis: List of Int kosong adalah list of Int 
   Rekurens: 
   List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
   sebuah list atau
   dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: (Int,Int) -> [(Int,Int)] -> [(Int,Int)]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
   (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso (e,f) li = [(e,f)] ++ li

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

isEmptyTup::[(Int,Int)]->Bool
isEmptyTup l = null l

isOneElmt :: [Int] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

--DEFINISI DAN SPESIFIKASI
maxOdd :: [Int] -> (Int,Int)
-- maxOdd menerima input list of integer dan menghasilkan sebuah tuple
-- (pasangan nilai) dari bilangan ganjil yang paling sering muncul dan 
-- frekuensi kemunculannya (bilangan,frekuensi). Akan menampilkan
-- bilangan pertama yang paling sering muncul bila ada lebih dari 1
-- hasil
-- PREKONDISI: List tidak mungkin kosong
findMax::(Int,Int)->[(Int,Int)]->(Int,Int)
-- findMax menerima input list of tuples dan mengembalikan tuple yang
-- merupakan bilangan dengan frekuensi paling besar.
insertNum::Int->[(Int,Int)]->[(Int,Int)]
-- insertNum menerima masukan berupa integer x dan list of tuples, dan
-- mengembalikan list of tuples dengan x yang sudah dimasukkan
maxOddHelper::[Int]->[(Int,Int)]->(Int,Int)
-- maxOddHelper merupakan fungsi maxOdd yang sudah ditambahkan
-- parameternya
cekSama::Int->(Int,Int)->Bool
tambahFreq::(Int,Int)->(Int,Int)
cekBesar::(Int,Int)->(Int,Int)->Bool

maxOdd l=
	maxOddHelper l []

maxOddHelper l1 lans=
	if (isEmpty l1==True) then
		findMax (-1,0) lans
	else
		maxOddHelper (tail l1) (insertNum (head l1) lans)
		
insertNum x l=
	if (isEmptyTup(l)) then
		[(x,1)]
	else
		if (cekSama x (head l)==True) then
			konso (tambahFreq(head l)) (tail l)
		else
			konso (head l) (insertNum x (tail l))

cekSama x (a,b)=
	if (x==a) then
		True
	else 
		False

tambahFreq (a,b)=
	(a,b+1)

findMax (curnum,curfreq) l=
	if (isEmptyTup l) then
		(curnum,curfreq)
	else
		if (cekBesar (curnum,curfreq) (head l)==True) then
			findMax (head l) (tail l)
		else
			findMax (curnum,curfreq) (tail l)

cekBesar (x,y) (a,b)=
	if (mod a 2==0) then
		False
	else if (b>y) then
		True
	else 
		False

--Contoh aplikasi
--maxOdd [1,1,3,4,5]
--NGEBUG WKWKKW