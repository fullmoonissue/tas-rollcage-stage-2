local tracksStarts = require('tracks-starts')
local input = require('tas/input')()
local macroCollection = require('tas/macro-collection')()

-- Time : 06:56

local cf = tracksStarts['8-cut-loose']
input:cross(cf, 250)
cf = input:right(cf + 150, 5)
cf = input:right(cf + 80, 6)
cf = input:square(cf + 70, 87)

macroCollection.goToNextTrack(cf)

return input:all()