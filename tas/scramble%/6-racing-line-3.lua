local input = require('tas/input')()
local macroCollection = require('tas/macro-collection')()

-- Time : ???

-- Turbo start between ??? / ??? (included)
local cf = 2000
input:cross(cf, 100)
cf = input:right(cf + 54, 7)

--macroCollection.goToNextTrack(cf)

return input:all()