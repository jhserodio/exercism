module LuciansLusciousLasagna exposing (elapsedTimeInMinutes, expectedMinutesInOven, preparationTimeInMinutes)

-- TODO: define the expectedMinutesInOven constant
-- TODO: define the preparationTimeInMinutes function
-- TODO: define the elapsedTimeInMinutes function

preparationMunitesPerLayer =
    2

expectedMinutesInOven =
    40

preparationTimeInMinutes layers =
    preparationMunitesPerLayer * layers

elapsedTimeInMinutes layers minutes =
    (preparationTimeInMinutes layers) + minutes