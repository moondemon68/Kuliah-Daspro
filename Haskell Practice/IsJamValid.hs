module IsJamValid where

    isJamValid::Int->Int->Int->Bool

    isJamValid h m s= h>=0&&h<=23&&m>=0&&m<=59&&s>=0&&s<=59