local config = require('config')
local paths = require('paths')

-- Preload a savestate, if exists
local preloads = require(paths['preloads'])
if(preloads[config['currentTas']]) then
    savestate.load(paths['savestate'] .. '/' .. preloads[config['currentTas']])
end

-- Load the current savestate
if(config['loadSlot'] ~= nil) then
    savestate.loadslot(config['loadSlot'])
end

-- Add overlays
local mediator = require('mediator')()
require('tas/overlay-collection')().applySubscriptions(mediator)

-- Retrieve the inputs of the current tas
local joypadSet = require('tas/dump')().fromLuaFilesToLuaInputs(
    paths['tas'],
    require(paths['files']),
    config['currentTas']
)
while (true) do
    local fc = emu.framecount()

    mediator:publish({ 'frame.displayed' }, fc)

    if(joypadSet[fc]) then
        joypad.set(joypadSet[fc])
    end

    emu.frameadvance()
end