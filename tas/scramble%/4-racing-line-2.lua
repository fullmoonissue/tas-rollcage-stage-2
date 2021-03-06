local tracksStarts = require('tracks-starts')
local input = require('tas/input')()
local macroCollection = require('tas/macro-collection')()

-- Time : 10:90

local cf = tracksStarts['4-racing-line-2']
input:cross(cf, 420)
cf = input:left(cf + 100, 2)
cf = input:right(cf + 20, 1)
cf = input:left(cf + 50, 2)
cf = input:left(cf + 90, 2)
cf = input:right(cf + 229, 18)
cf = input:square(cf + 103, 44)

macroCollection.goToNextTrack(cf)

return input:all()