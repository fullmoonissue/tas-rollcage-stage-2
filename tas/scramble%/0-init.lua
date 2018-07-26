local input = require('tas/input')()

-- Skip Psygnosis
input:cross(1092, 3)
-- Skip ATD
input:cross(1207, 4)
-- Skip main cutscene
input:cross(1313, 3)

-- The "Press Start" waiting
input:start(2068)
-- Choose "1 Player Games"
input:cross(2088)
-- Go to "Scramble" and select it
input:down(2138)
input:down(2142)
input:down(2146)
input:down(2150)
input:cross(2154)
-- Select the first track, "Introduction"
input:cross(2188)
-- Begin it
input:cross(2228)

return input:all()