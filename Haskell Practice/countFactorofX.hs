module CountFactorofX where

    isEmpty::[Int]->Bool
    isEmpty l = null l

    countFactorofX::Int->[Int]->Int
    countFactorofX x l=
        if (isEmpty l == True) then
            0
        else
            if (mod x (head l) == 0) then
                countFactorofX x (tail l)+1
            else 
                countFactorofX x (tail l)