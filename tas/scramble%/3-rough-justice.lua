local input = require('tas/input')()

-- Time : ???
-- Track frames : ???

-- Turbo start between 7884 / 7897 (included)
local cf = 7884
input:cross(cf, 424)
cf = input:right(cf + 54, 7)
cf = input:right(cf + 20, 7)
cf = input:right(cf + 20, 7)
cf = input:left(cf + 20, 3)

-- Quit track
cf = input:cross(cf + 6)

-- Enter intials
cf = input:cross(cf + 676)

-- Continue to next track
cf = input:cross(cf + 36)

-- Begin next track
cf = input:cross(cf + 36)

return input:all()