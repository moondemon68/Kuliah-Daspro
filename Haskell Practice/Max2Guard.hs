module Max2Guard where

    max2::Int->Int->Int

    max2 a b
        | (a>=b) = a
        | otherwise = b --(a<b)