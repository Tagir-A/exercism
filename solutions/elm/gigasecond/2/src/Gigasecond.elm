module Gigasecond exposing (add)

import Time


add : Time.Posix -> Time.Posix



-- add timestamp =
--     Time.millisToPosix (Time.posixToMillis timestamp + (10 ^ 12))


add timestamp =
    timestamp
        |> Time.posixToMillis
        |> (+) (10 ^ 12)
        |> Time.millisToPosix
