local tracksStarts = require('tracks-starts')
local input = require('tas/input')()
local macroCollection = require('tas/macro-collection')()

-- Time : 16:50

local cf = tracksStarts['7-rodeo']
input:cross(cf, 900)
cf = input:left(cf + 75, 6)
cf = input:left(cf + 30, 5)
cf = input:right(cf + 30, 4)
input:square(cf + 40, 90)
cf = input:right(cf + 58, 10)
cf = input:right(cf + 20, 10)
cf = input:right(cf + 20, 10)
cf = input:left(cf + 50, 35)
cf = input:right(cf + 150, 7)
cf = input:left(cf + 60, 3)
cf = input:left(cf + 60, 10)
cf = input:left(cf + 60, 10)
cf = input:left(cf + 40, 10)
cf = input:left(cf + 40, 10)
cf = input:left(cf + 40, 5)
cf = input:square(cf + 80, 58)

macroCollection.goToNextTrack(cf + 1)

return input:all()