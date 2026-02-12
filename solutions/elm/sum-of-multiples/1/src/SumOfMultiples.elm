module SumOfMultiples exposing (sumOfMultiples)

import Set


sumOfMultiples : List Int -> Int -> Int
sumOfMultiples divisors limit =
    let
        multiples =
            List.map (\x -> List.map (\y -> x * y) (List.range 1 ((limit - 1) // x))) divisors

        m =
            Debug.log ("ENTRY:" ++ Debug.toString multiples)

        combined =
            List.concat multiples

        uniq =
            combined |> Set.fromList |> Set.toList
    in
    Debug.log ("ENTRY:" ++ Debug.toString multiples)
        Debug.log
        (String.fromInt (15 // 3))
        List.sum
        uniq
