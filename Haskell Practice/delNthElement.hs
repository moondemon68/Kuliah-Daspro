module DelNthElement where

    isEmpty::[Int]->Bool
    isEmpty l = null l

    konso::Int->[Int]->[Int]
    konso e l = [e] ++ l

    konsdot::Int->[Int]->[Int]
    konsdot e l = l ++ [e]

    delNthElement::Int->[Int]->[Int]
    getTail::Int->[Int]->[Int]
    getHead::Int->[Int]->[Int]->[Int]
    getTail x l=
        if (x==1) then
            tail l
        else
            getTail (x-1) (tail l)

    getHead x l ret=
        if (x==1) then
            ret
        else
            getHead (x-1) (tail l) (konsdot (head l) ret)

    delNthElement x l=
        (getHead x l []) ++ (getTail x l)