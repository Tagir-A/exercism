module EliudsEggs exposing (eggCount)

eggCount : Int -> Int
eggCount n =
    case n of 
     0 -> 0
     1 -> 1
     _ -> n
         |> modBy 2
         |> (\x -> x + ((n//2) |> eggCount))
    
