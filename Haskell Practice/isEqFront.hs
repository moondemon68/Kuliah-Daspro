module IsEqFront where

isEmpty::[Char]->Bool
isEmpty l = null l

isEqFront::[Char]->[Char]->Bool
isEqFront l1 l2=
    if (isEmpty l1 == True) then
        True
    else
        if (head l1 == head l2) then
            isEqFront (tail l1) (tail l2)
        else 
            False