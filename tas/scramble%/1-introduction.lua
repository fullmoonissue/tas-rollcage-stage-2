local input = require('tas/input')()

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
cf = input:square(cf + 15, 75)

return input:all()