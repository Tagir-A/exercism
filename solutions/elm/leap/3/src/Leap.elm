module Leap exposing (isLeapYear)


isDivBy : Int -> Int -> Bool
isDivBy x y =
    modBy x y == 0


isLeapYear : Int -> Bool
isLeapYear year =
    isDivBy 4 year && (not (isDivBy 100 year) || isDivBy 400 year)
