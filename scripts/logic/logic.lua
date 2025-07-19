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

function SB()
    return AccessibilityLevel.SequenceBreak
end
