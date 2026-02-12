module Secrets exposing (clearBits, decrypt, flipBits, setBits, shiftBack)

import Bitwise


shiftBack amount value =
    Bitwise.shiftRightZfBy amount value


setBits mask value =
    Bitwise.or value mask


flipBits mask value =
    value
        |> Bitwise.xor mask


clearBits mask value =
    value
        |> Bitwise.and (Bitwise.complement mask)


decrypt secret =
    secret
        |> setBits 1996
        |> flipBits 2009
        |> shiftBack 5
        |> clearBits 17
