module EliudsEggs exposing (eggCount)


toBinary: Int -> String
toBinary n = 
    if n < 2 then
        n
        |> String.fromInt
    else
        toBinary(n // 2) ++ String.fromInt (remainderBy(2) n)

isOne: Char -> Bool
isOne c = 
    c
    |> String.fromChar
    |> (==) "1"
-- isOne c = String.fromChar(c) == "1"


eggCount : Int -> Int
eggCount n =
    n
    |> toBinary
    |> String.filter isOne
    |> String.length
    
