--with help from Git user schreiberbrett
import Prelude

nextPrime :: Int -> Int
nextPrime num = if isPrime (num + 1) then num + 1 else nextPrime (num + 1)

--num is prime when none of the interger in [2, num] divides num
isPrime :: Int -> Bool
isPrime num = num >= 2 && all (\x ->  num `rem` x /= 0) [2..ceiling(sqrt(fromIntegral num) - 1)] 

--Below is an even more declartive verion used functions we implemented
--However, we conceded to use the above for the benchmark 

--isPrime num = none (divides num) [2..ceiling(sqrt(fromInteger num) - 1)]

-- divides :: Integral a => a -> a -> Bool
-- divides a b = a `mod` b == 0

-- none :: (a -> Bool) -> [a] -> Bool 
-- none _ [] = True
-- none predicate (first:rest) = not (predicate first) && none predicate rest

main = print $ isPrime 10000000002065383

