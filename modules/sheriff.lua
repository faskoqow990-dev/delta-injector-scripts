-- Sheriff Aim Module
local SheriffAim = {}

-- Initialize sheriff aim
function SheriffAim:Init(SheriffSection)
    getgenv().SheriffAim = false
    SheriffSection:CreateToggle({
        Title = "Silent aim",
        Default = false,
        Callback = function(state)
            getgenv().SheriffAim = state
        end
    })

    getgenv().GunAccuracy = 25
    SheriffSection:CreateSlider({
        Title = "Accuracy",
        Min = 0,
        Max = 100,
        Default = 25,
        Callback = function(val)
            getgenv().GunAccuracy = tonumber(val) or 25
        end
    })
end

return SheriffAim
