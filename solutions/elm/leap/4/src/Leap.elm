module Leap exposing (isLeapYear)

-- isDivBy : Int -> Int -> Bool
-- isDivBy x y =
--     modBy x y == 0
-- isLeapYear : Int -> Bool
-- isLeapYear year =
--     isDivBy 4 year && (not (isDivBy 100 year) || isDivBy 400 year)
--


isLeapYear : Int -> Bool
isLeapYear year =
    case ( modBy 4 year, modBy 100 year, modBy 400 year ) of
        ( _, _, 0 ) ->
            True

        ( _, 0, _ ) ->
            False

        ( 0, _, _ ) ->
            True

        _ ->
            False
