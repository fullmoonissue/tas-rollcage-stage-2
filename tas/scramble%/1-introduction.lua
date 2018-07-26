local input = require('tas/input')()
--local macro = require('tas/macro-collection')()

--local cf = 3128
local cf = 3141
cf = input:cross(cf, 300)

return input:all()