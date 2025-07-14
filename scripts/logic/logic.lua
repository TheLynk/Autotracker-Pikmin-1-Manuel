ScriptHost:LoadScript("scripts/autotracking/archipelago.lua")

function has(item, amount)
    local count = Tracker:ProviderCountForCode(item)
    if not amount then
        return count > 0
    else
        amount = tonumber(amount)
        return count >= amount
    end
end

function hasnot(item)
    local count2 = Tracker:ProviderCountForCode(item)
    if count2 > 0 then
        return false
    else return true
    end
end

function skip_box_FoH()
    if has("final_trial") then
        return AccessibilityLevel.SequenceBreak
    else
        return false
    end
end
