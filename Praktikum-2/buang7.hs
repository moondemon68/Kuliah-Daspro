nbKelipatanX::Int->Int->Int->Int

nbKelipatanX m n x 
   | n < m = 0
   | otherwise = if mod n x == 0 then 
      (nbKelipatanX m (n-1) x) + 1
   else 
      nbKelipatanX m (n-1) x