module MariosMarvellousLasagna exposing (remainingTimeInMinutes)

-- TODO: define the remainingTimeInMinutes function


remainingTimeInMinutes : Int -> Int -> Int
remainingTimeInMinutes nLayersOf minutesSinceStart =
    let
        expectedMinutesInOven =
            40

        preparationTimeInMinutes layerCount =
            layerCount * 2
    in
    preparationTimeInMinutes nLayersOf + expectedMinutesInOven - minutesSinceStart
