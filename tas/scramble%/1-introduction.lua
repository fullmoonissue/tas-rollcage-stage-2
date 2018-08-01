local input = require('tas/input')()

-- Time : 00:14:43
-- Track frames : 1692

-- Turbo start between 3128 / 3141 (included)
local cf = 3128
input:cross(cf, 805)
cf = input:left(3350, 26)
cf = input:left(cf + 25, 24)
cf = input:left(cf + 25, 32)
cf = input:left(cf + 34, 8)
cf = input:left(cf + 18, 8)
cf = input:right(cf + 25, 3)
cf = input:right(cf + 210, 24)
cf = input:right(cf + 30, 6)
cf = input:right(cf + 30, 6)
cf = input:right(cf + 30, 12)
cf = input:square(cf + 15, 64)

-- Quit track
cf = input:cross(cf + 6)

-- Enter intials (will be made only once)
-- F
cf = input:up(cf + 676)
cf = input:up(cf + 4)
cf = input:up(cf + 4)
cf = input:up(cf + 4)
cf = input:up(cf + 4)
cf = input:cross(cf + 4)
-- M
cf = input:up(cf + 4)
cf = input:up(cf + 4)
cf = input:up(cf + 4)
cf = input:up(cf + 4)
cf = input:up(cf + 4)
cf = input:up(cf + 4)
cf = input:up(cf + 4)
cf = input:cross(cf + 4)
-- I
cf = input:down(cf + 4)
cf = input:down(cf + 4)
cf = input:down(cf + 4)
cf = input:down(cf + 4)
cf = input:cross(cf + 4)

-- Continue to next track
cf = input:cross(cf + 36)

-- Begin next track
cf = input:cross(cf + 36)

return input:all()