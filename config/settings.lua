-- Delta Injector Scripts Configuration

local Config = {}

-- Autofarm Configuration
Config.Autofarm = {
    -- Coin farming specific
    CoinFarm = {
        TeleportOffset = Vector3.new(0, 2.5, 0),
        RotationAngle = 180,
        CoinWaitTime = 1.8,
        CheckInterval = 1.5
    },
    
    -- XP farming specific
    XPFarm = {
        FarmPosition = CFrame.new(-121.12338256836, 138.27394104004, 38.946128845215)
    }
}

-- Sheriff Aim Configuration
Config.SheriffAim = {
    DefaultAccuracy = 25,
    MinAccuracy = 0,
    MaxAccuracy = 100
}

-- General Configuration
Config.General = {
    UseTaskWait = true,  -- Use task.wait() instead of wait()
    SafeChecks = true    -- Enable safety checks for object existence
}

return Config
