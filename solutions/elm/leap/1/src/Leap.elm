module Leap exposing (isLeapYear)


isLeapYear : Int -> Bool
isLeapYear year =
    (modBy year 4 == 0)
        && ((modBy year 100 /= 0) || (modBy year 400 == 0))
