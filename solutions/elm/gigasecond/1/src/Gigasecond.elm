module Gigasecond exposing (add)

import Time


gigasecond : Int
gigasecond =
    1000000000


gigasecondInMillis : Int
gigasecondInMillis =
    gigasecond * 1000


add : Time.Posix -> Time.Posix
add timestamp =
    Time.posixToMillis timestamp
        + gigasecondInMillis
        |> Time.millisToPosix
