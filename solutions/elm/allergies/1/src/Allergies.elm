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


allergenMap : List { value : Int, allergen : Allergy }
allergenMap =
    [ { value = 1
      , allergen = Eggs
      }
    , { value = 2
      , allergen = Peanuts
      }
    , { value = 4
      , allergen = Shellfish
      }
    , { value = 8
      , allergen = Strawberries
      }
    , { value = 16
      , allergen = Tomatoes
      }
    , { value = 32
      , allergen = Chocolate
      }
    , { value = 64
      , allergen = Pollen
      }
    , { value = 128
      , allergen = Cats
      }
    ]


isAllergicTo : Allergy -> Int -> Bool
isAllergicTo allergy score =
    allergenMap
        |> List.filter (\allergen -> Bitwise.and score allergen.value /= 0)
        |> List.any (\allergen -> allergen.allergen == allergy)



-- 11111111 - 255
-- 00100010 - 34


toList : Int -> List Allergy
toList score =
    allergenMap
        |> List.filter (\allergen -> Bitwise.and score allergen.value /= 0)
        |> List.map (\allergen -> allergen.allergen)
