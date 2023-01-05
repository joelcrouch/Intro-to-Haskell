--sum []=0
--sum (x:xs) =x + sum xs
--module Main where 



--fac n = --if n<=1 then 1 else n* fac (n-1)  Use haskell guards |
 --   if n <= 1 then 1
 --   else n * fac(n-1)
module Main where
--fac n = aux n 1
  --where
    --aux n acc
    --    if  n <=1  then acc
     --   else  aux (n-1)(n * acc)

factorial n = if n == 0 then 1 else n * factorial (n - 1)

in_range :: Integer -> Integer -> Integer -> Bool

in_range min max x = x >= min && x <=max

sum1 :: [Integer] -> Integer
sum1 [] = 0
sum1(x:xs) = x + sum1 xs

drop1 :: Integer -> [a] -> [a] 
drop1 0 [] = []
drop1 0 (x:xs) = x:xs
drop1 n [] = []
drop1 n (x:xs) = drop1 (n-1) xs

droplast :: [a] -> [a]
droplast [x]=[]
droplast (x:xs) = x : droplast xs


sieve :: [Integer] -> [Integer]
sieve [] = []
sieve (x:xs)
  | x < 2     = sieve xs
  | otherwise = x : sieve (filter (\n -> n `mod` x /= 0) xs)

qsort [] = []
qsort(x:xs) =  qsort ys ++ [x] ++  qsort zs
    where
        ys = [a | a <- xs, a<=x]
        zs = [b |b <- xs, b> x]

asc :: Integer -> Integer -> [Integer]
asc n m = 
   if (m < n ) then []--putStrLn "LOW!"
   else if( m == n ) then [m] --putStrLn "equal!"
   else  ( n : asc (n+1) m)

main :: IO ()
main = do putStrLn "What is 6! ?"
          x <- readLn
          if x == factorial 6
           then putStrLn "You're right!"
           else putStrLn "You're wrong!"
          if in_range 0 150 x
              then putStrLn "in range!"
              else putStrLn "out of range!"
          let a = [13,1,4,2]
          putStrLn $ show $ (a)
          putStrLn $ show $ qsort (a)
          putStrLn $ show $ qsort ("haskell")
          let primes = sieve[2..100]
          putStrLn $ show $ take 5 $ primes
          putStrLn $ show $ sum1   primes
          putStrLn $ show $ primes
          putStrLn $ show $ droplast   primes
          putStrLn $ show $  sum1  $ drop1 23 primes
          putStrLn (show (not True))
          --asc 1 5

              
          

--main = do
       -- putStrLn "Hello, World!"
       -- putStrLn "Second Line"
       -- x= fac 3
 --   in_range 0 5 3
 --   in_range 4 5 3

