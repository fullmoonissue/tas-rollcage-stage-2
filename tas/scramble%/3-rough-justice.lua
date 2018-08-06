local input = require('tas/input')()
local macroCollection = require('tas/macro-collection')()

-- Time : 05:96

-- Turbo start between 7884 / 7897 (included)
local cf = 7884
input:cross(cf, 290)
cf = input:right(cf + 54, 7)
cf = input:right(cf + 20, 7)
cf = input:right(cf + 20, 7)
cf = input:left(cf + 20, 3)
cf = input:left(cf + 40, 12)
cf = input:right(cf + 20, 6)
cf = input:right(cf + 10, 12)
cf = input:square(cf + 51, 69)

macroCollection.goToNextTrack(cf + 6)

return input:all()