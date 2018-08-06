local input = require('tas/input')()

local MacroCollection = setmetatable(
    {
        input = input,
    },
    {
        __call = function()
            return {
                goToNextTrack = function(currentFrame, fnInitials)
                    -- Quit track
                    currentFrame = input:cross(currentFrame + 6)

                    -- Enter or validate initials
                    if(fnInitials) then
                        currentFrame = fnInitials(currentFrame)
                    else
                        currentFrame = input:cross(currentFrame + 676)
                    end

                    -- Continue to next track
                    currentFrame = input:cross(currentFrame + 36)

                    -- Begin next track
                    currentFrame = input:cross(currentFrame + 36)

                    return currentFrame
                end
            }
        end
    }
)

return MacroCollection