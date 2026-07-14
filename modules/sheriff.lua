-- Sheriff Aim Module
local SheriffAim = {}

local Config = require(script.Parent.Parent.config.settings)

-- Initialize sheriff aim
function SheriffAim:Init(SheriffSection)
    -- Silent aim toggle
    getgenv().SheriffAim = false
    SheriffSection:CreateToggle({
        Title = "Silent aim",
        Default = false,
        Callback = function(state)
            getgenv().SheriffAim = state
        end
    })
    
    -- Accuracy slider
    getgenv().GunAccuracy = Config.SheriffAim.DefaultAccuracy
    SheriffSection:CreateSlider({
        Title = "Accuracy",
        Min = Config.SheriffAim.MinAccuracy,
        Max = Config.SheriffAim.MaxAccuracy,
        Default = Config.SheriffAim.DefaultAccuracy,
        Callback = function(val)
            getgenv().GunAccuracy = tonumber(val) or Config.SheriffAim.DefaultAccuracy
        end
    })
end

return SheriffAim
