
type Title = String
type Size = (Int, Int)
type Point = (Int, Int)

openWindow ::Title->Size->IO Window
closeWindow ::Window->IO()
drawInWindow ::Window->Graphic ->IO()
runGraphics  ::IO()->IO()
text         :: Point -> String->Graphic 
getKey       :: Window -> IO Char

main = 
    runGraphics (
    do w<-openWindow "My prog"(300, 300)
        drawInWindow w(text(10, 20) "hello World")
        k<-getKey w 
        closeWindow)
    