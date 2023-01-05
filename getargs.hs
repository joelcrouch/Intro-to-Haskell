import System.IO
import System.Environment
--takes in a file name and "cats" out to stdout the contents of said file
--compile: ghc -o getargs getargs.hs
--usage: ./getargs <name of file> ex: ./getargs getargs.hs 
processArgs::[String]->String 
processArgs[a]=a
processArgs_ =""

echo::String->IO()
echo ""=putStrLn"Bad Args"
echo fileName = do
  s<-readFile fileName
  putStrLn "Filename:"
  putStrLn "***********"
  putStrLn s
  putStrLn "***********"

sum :: [Int] -> Int
sum [] = 0
sum(x:xs) = x + sum xs

main::IO()
main=do
  args <-getArgs
  let fileName =processArgs args
  echo fileName

