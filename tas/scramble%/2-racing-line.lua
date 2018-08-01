local input = require('tas/input')()

-- Time : 08:76
-- Track frames : 1279

-- Turbo start between 5713 / 5726 (included)
local cf = 5713
input:cross(cf, 424)
cf = input:right(cf + 248, 14)
cf = input:right(cf + 110, 3)
cf = input:left(cf + 70, 15)
cf = input:square(cf + 40, 29)

-- Quit track
cf = input:cross(cf + 6)

-- Enter intials
cf = input:cross(cf + 676)

-- Continue to next track
cf = input:cross(cf + 36)

-- Begin next track
cf = input:cross(cf + 36)

return input:all()