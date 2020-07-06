-- Test with player movement detection

local InformMovement_EventFrame = CreateFrame("Frame")
InformMovement_EventFrame:RegisterEvent("PLAYER_STARTED_MOVING")
InformMovement_EventFrame:RegisterEvent("PLAYER_STOPPED_MOVING")
InformMovement_EventFrame:SetScript("OnEvent", 
    function (self, event, ...)
        if (event == "PLAYER_STARTED_MOVING")
        then
            print("HA! You have started moving, my friend!")
        end

        if (event == "PLAYER_STOPPED_MOVING")
        then
            print("You've stoppped moving just now.")
        end
    end)

-- Basic even-handling code would look like this
-- 1. Create new frame for event handlign
local Congrats_EventFrame = CreateFrame("Frame")
-- 2. Register function to run once the LEVEL_UP event fires
Congrats_EventFrame:RegisterEvent("PLAYER_LEVEL_UP")
Congrats_EventFrame:SetScript("OnEvent", 
    function(self, event, ...)
        print("Player level up event detected.")
        -- In case we registered for multiple events, here we would also need to check whether event
        -- is equal to specific event name (see above).
        -- X. Get additional parameters for event fired (PLAYER_LEVEL_UP has 9 additional parameters)
        -- See: https://wow.gamepedia.com/PLAYER_LEVEL_UP
        local arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = ...

    end)