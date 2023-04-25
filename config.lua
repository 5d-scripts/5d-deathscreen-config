_CONFIG = 
{
    locale = "en",
    bleedOutTimeSeconds = 900, -- Seconds until player is force-respawned.
    respawnTimeSeconds = 55,  -- Second at which player can manually respawn. Can't be higher than bleedOutTime. Set to 0 to disable.
    Keys = -- Don't forget to also change the displayed keys in the UI.
    {
        dispatchKey = 47,
        syncKey = 303,
        respawnKey = 38
    },
    RespawnPoints = -- Will choose the closest respawn point.
    {
        vector4(341.0, -1397.3, 32.5,48.5), -- Central Los Santos
        vector4(1836.03, 3670.99, 34.28,296.06) -- Sandy Shores
    }
}

if (not IsDuplicityVersion()) then
    -- Notify event. Can be replaced.
    ---@param message string Message to be displayed for the notify.
    ---@param type string Notify type. Either success or errror.
    RegisterNetEvent("5d-deathscreen:notify", function(message, type)
        ESX.ShowNotification(message)
    end)
end

_LOCALE = {} -- dont touch