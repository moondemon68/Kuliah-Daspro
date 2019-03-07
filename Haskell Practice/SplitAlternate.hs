-- DEFINISI DAN SPESIFIKASI LIST
{- type List of Int: [ ] atau [e o List] atau [List o e]  
    Definisi type List of Int
    Basis: List of Int kosong adalah list of Int 
    Rekurens: 
    List tidak kosong dibuat dengan menambahkan sebuah elemen bertype Int di awal 
    sebuah list atau
    dibuat dengan menambahkan sebuah elemen bertype Int di akhir sebuah list -}

-- DEFINISI DAN SPESIFIKASI KONSTRUKTOR
konso :: Char -> [Char] -> [Char]
{- konso e li menghasilkan sebuah list of integer dari e (sebuah integer) dan li 
    (list of integer), dengan e sebagai elemen pertama: e o li -> li' -}
-- REALISASI
konso e li = [e] ++ li

konsdot :: [Char] -> Char -> [Char]
{- konsDot li e menghasilkan sebuah list of integer dari li (list of integer) dan 
    e (sebuah integer), dengan e sebagai elemen terakhir: li o e -> li' -}
-- REALISASI
konsdot li e = li ++ [e]

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
isEmpty :: [Char] -> Bool
-- isEmpty l  true jika list of integer l kosong
-- REALISASI
isEmpty l = null l

isOneElmt :: [Char] -> Bool
-- isOneElmt l true jika list of integer l hanya mempunyai satu elemen
-- REALISASI
isOneElmt l = (length l) == 1 

splitAlternate::[Char]->([Char],[Char])
oddSplit::[Char]->[Char]->[Char]->([Char],[Char])
evenSplit::[Char]->[Char]->[Char]->([Char],[Char])

splitAlternate l=
    oddSplit [] [] l

oddSplit o e l=
    if (isEmpty l) then
        (o,e)
    else
        evenSplit (konsdot o (head l)) e (tail l)

evenSplit o e l=
    if (isEmpty l) then
        (o,e)
    else 
        oddSplit o (konsdot e (head l)) (tail l)