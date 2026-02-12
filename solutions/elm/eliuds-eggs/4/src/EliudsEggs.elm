module EliudsEggs exposing (eggCount)

eggCount : Int -> Int
eggCount n =
    case n of 
     0 -> 0
     1 -> 1
     _ -> n
         |> (\num -> (num |> modBy 2, num // 2))
         |> (\(bit, shifted) -> bit + (shifted |> eggCount))
    
