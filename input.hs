import System.Environment   
import Data.List  

main = do  
    args <- getArgs                  -- IO [String]
    progName <- getProgName          -- IO String
    putStrLn "The arguments are:"  
    mapM putStrLn args 
    putStrLn args[1] 
    putStrLn "The program name is:"  
    putStrLn progName
    --from learn you a haskell
