module MeanOlympique where

    meanOlympique::Float->Float->Float->Float->Float

    meanOlympique a b c d=
        let maxab=(a+b+abs(a-b))/2
            maxcd=(c+d+abs(c-d))/2
            minab=(a+b-abs(a-b))/2
            mincd=(c+d-abs(c-d))/2
        in
            let max=(maxab+maxcd+abs(maxab-maxcd))/2
                min=(minab+mincd-abs(minab-mincd))/2
            in
                (a+b+c+d-max-min)/2