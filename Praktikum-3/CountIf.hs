-- Nama/NIM: Morgen Sudyanto/16518380
-- Tanggal: 1 Maret 2019
-- Deskripsi: menghitung jumlah bilangan yang memenuhi persyaratan

module CountIf where
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
    countIf::[Int]->(Int->Bool)->Int
    --countIf l f menerima 1 buah list of integer dan 1 buah fungsi dan mengembalikan sebuah bilangan integer, yaitu jumlah
    --bilangan dalam list yang memenuhi persyaratan pada fungsi.
    isLebih5::Int->Bool
    -- isLebih5(x) true jika x > 5
    isBetween::Int->Bool
    -- isBetween(x) true jika 0 <= x <= 100
    isEqual10::Int->Bool
    -- isEqual10(x) true jika x = 10  
    --REALISASI
    countIf l f=
        if isEmpty l==True then
            0
        else
            (if (f (head l)==True) then 1 else 0) + countIf (tail l) f
    
    isLebih5 x=
        (x>5)
    isBetween x=
        (x>=0&&x<=100)
    isEqual10 x=
        (x==10)
                
    --Contoh aplikasi
    --countIf [-9,-1,4] isEqual10
    