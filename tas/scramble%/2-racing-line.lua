local input = require('tas/input')()
local macroCollection = require('tas/macro-collection')()

-- Time : 08:76
-- Track frames : 1279

-- Turbo start between 5713 / 5726 (included)
local cf = 5713
input:cross(cf, 424)
cf = input:right(cf + 248, 14)
cf = input:right(cf + 110, 3)
cf = input:left(cf + 70, 15)
cf = input:square(cf + 40, 29)

macroCollection.goToNextTrack(cf)

return input:all()