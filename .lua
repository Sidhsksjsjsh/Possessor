--[[ Beta!
soon ill added Possessor label!
]]

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()
local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = false, ConfigFolder = "TurtleFi"})

local ExcorcistHandler = {}
local PossessorHandler = {}

OrionLib:AddTable(game.Players,ExcorcistHandler)
OrionLib:AddTable(game.Players,PossessorHandler)

local T1 = Window:MakeTab({
Name = "Exorcist",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T2 = Window:MakeTab({
Name = "Possessor",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T3 = Window:MakeTab({
Name = "Game Mode Vote",
Icon = "rbxassetid://",
PremiumOnly = false
})

T1:AddDropdown({
  Name = "Select player to Exorcist",
  Default = ExcorcistHandler[1],
  Options = ExcorcistHandler,
  Callback = function(Value)
     _G.Exorcist = Value
  end    
})

T1:AddButton({
Name = "Exorcist",
Callback = function()
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(_G.Exorcist,true)
  end    
})

T2:AddDropdown({
  Name = "Select player to Possessor",
  Default = ExcorcistHandler[1],
  Options = ExcorcistHandler,
  Callback = function(Value)
     _G.Possessed = Value
  end    
})

T2:AddButton({
Name = "Possessed",
Callback = function()
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(_G.Possessed)
  end    
})

local function mode(str)
  return str:gsub("Classic","1"):gsub("Roles","2")
end

T3:AddDropdown({
  Name = "Select game mode",
  Default = "Classic",
  Options = {"Classic","Roles"},
  Callback = function(Value)
     _G.gamemode = mode(Value)
  end    
})

T3:AddToggle({
  Name = "Vote Game mode",
  Default = false,
  Callback = function(Value)
    _G.Voted = Value
      while wait() do
        if _G.Voted == false then break end
        game:GetService("ReplicatedStorage")["Remotes"]["VoteRemote"]:FireServer(tonumber(_G.gamemode))
      end
  end    
})

game.Players.PlayerAdded:Connect(function(player)
	k
end)

game.Players.PlayerRemoving:Connect(function(player)
	k
end)
