local tracksStarts = require('tracks-starts')
local input = require('tas/input')()
local macroCollection = require('tas/macro-collection')()

-- Time : 24:70

local cf = tracksStarts['6-racing-line-3']
input:cross(cf, 1425)
cf = input:left(cf + 100, 2)
cf = input:left(cf + 80, 2)
cf = input:left(cf + 80, 2)
cf = input:right(cf + 110, 4)
cf = input:right(cf + 20, 3)
cf = input:right(cf + 130, 2)
cf = input:left(cf + 40, 1)
cf = input:left(cf + 50, 2)
cf = input:right(cf + 130, 1)
cf = input:right(cf + 40, 1)
cf = input:square(cf + 145, 8)
cf = input:right(cf + 12, 33)
cf = input:left(cf + 150, 8)
cf = input:left(cf + 6, 4)
cf = input:left(cf + 10, 10)
cf = input:square(cf + 30, 15)
cf = input:right(cf + 35, 22)
cf = input:right(cf + 40, 8)
cf = input:left(cf + 2, 2)
cf = input:square(cf + 102, 60)

macroCollection.goToNextTrack(cf)

return input:all()