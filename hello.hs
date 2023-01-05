--main = putStrLn "hello world"

main =
  do
    putStrLn "hello world"
    putStrLn ("hask" ++ "ell")

    putStrLn ("1+1 = " ++ show (1 + 1))

    putStrLn ("7.0/3.0 = " ++ show (7.0 / 3.0))

    putStrLn (show (True && False))
    putStrLn (show (True || False))
    putStrLn (show (not True))

    let x = 2
    putStrLn (show (x + x))
    let (b, c) = ("one", "two")
    putStrLn b
    putStrLn c
    let d =sum[1..10]
    putStrLn d