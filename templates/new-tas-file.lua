local tracksStarts = require('tracks-starts')
local input = require('tas/input')()
local macroCollection = require('tas/macro-collection')()

-- Time : ???

local cf = tracksStarts['']
input:cross(cf, 100)
--cf = input:right(cf + 54, 7)

--macroCollection.goToNextTrack(cf)

return input:all()