-- Nama/NIM: Morgen Sudyanto/16518380
-- Tanggal: 1 Maret 2019
-- Deskripsi: melakukan offset terhadap sebuah list

module OffsetList where
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
    offsetList::[Int]->(Int->Int)->[Int]
    -- offsetList menerima masukan sebuah list of integer yang melakukan “offset” atau perubahan nilai terhadap elemen 
    -- list sesuai dengan aturan tertentu (yang ditentukan oleh sebuah fungsi offset) dan menghasilkan list baru dengan 
    -- elemen hasil offset.
    plus2::Int->Int
    -- plus2 a menghasilkan a + 2
    minus1::Int->Int
    -- minus1 a menghasilkan a - 1
    offKond::Int->Int
    -- offKond a:
    -- jika a >= 0 dan a <= 40 maka menghasilkan 10
    -- jika a < 0 maka menghasilkan 0
    -- jika a > 40 maka menghasilkan 20
    --REALISASI
    offsetList l f=
        if isEmpty l==True then
            []
        else
            konso (f (head l)) (offsetList (tail l) f)
    
    plus2 a=
        a+2
    minus1 a=
        a-1
    offKond a=
        if (a>=0 && a<=40) then
            10
        else if (a<0) then 
            0
        else 
            20
                
    --Contoh aplikasi
    --offsetList [-9,-1,4] plus2
    