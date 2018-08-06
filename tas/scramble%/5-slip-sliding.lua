local input = require('tas/input')()
local macroCollection = require('tas/macro-collection')()

-- Time : 16:70

-- Turbo start between 12213 / 12226 (included)
local cf = 12213
input:cross(cf, 870)
cf = input:left(cf + 30, 2)
cf = input:left(cf + 50, 1)
cf = input:right(cf + 300, 3)
cf = input:right(cf + 50, 6)
cf = input:right(cf + 20, 10)
cf = input:right(cf + 117, 8)
cf = input:right(cf + 45, 8)
cf = input:right(cf + 25, 18)
cf = input:square(cf + 194, 114)

macroCollection.goToNextTrack(cf + 8)

return input:all()