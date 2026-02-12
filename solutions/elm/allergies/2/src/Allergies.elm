module Allergies exposing (Allergy(..), isAllergicTo, toList)

import Bitwise


type Allergy
    = Eggs
    | Peanuts
    | Shellfish
    | Strawberries
    | Tomatoes
    | Chocolate
    | Pollen
    | Cats

possibleAllergies: List Allergy
possibleAllergies = [Eggs, Peanuts, Shellfish, Strawberries, Tomatoes, Chocolate, Pollen, Cats]
-- allergenMap : List { value : Int, allergen : Allergy }
-- allergenMap =
--     [ { value = 1
--       , allergen = Eggs
--       }
--     , { value = 2
--       , allergen = Peanuts
--       }
--     , { value = 4
--       , allergen = Shellfish
--       }
--     , { value = 8
--       , allergen = Strawberries
--       }
--     , { value = 16
--       , allergen = Tomatoes
--       }
--     , { value = 32
--       , allergen = Chocolate
--       }
--     , { value = 64
--       , allergen = Pollen
--       }
--     , { value = 128
--       , allergen = Cats
--       }
--     ]


isAllergicTo : Allergy -> Int -> Bool
isAllergicTo allergy score =
    case allergy of 
        Eggs -> score |> Bitwise.and 1 |> (/=) 0
        Peanuts -> score |> Bitwise.and 2 |> (/=) 0
        Shellfish -> score |> Bitwise.and 4 |> (/=) 0
        Strawberries -> score |> Bitwise.and 8 |> (/=) 0
        Tomatoes -> score |> Bitwise.and 16 |> (/=) 0
        Chocolate -> score |> Bitwise.and 32 |> (/=) 0
        Pollen -> score |> Bitwise.and 64 |> (/=) 0
        Cats -> score |> Bitwise.and 128 |> (/=) 0


-- 11111111 - 255
-- 00100010 - 34


toList : Int -> List Allergy
toList score =
    possibleAllergies
        |> List.filter (\allergen -> isAllergicTo allergen score)
