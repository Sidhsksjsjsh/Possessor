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

local T4 = Window:MakeTab({
Name = "NOTE",
Icon = "rbxassetid://13040484705",
PremiumOnly = false
})

local T5 = Window:MakeTab({
Name = "NOTE",
Icon = "rbxassetid://13040484705",
PremiumOnly = false
})

T5:AddParagraph("Possessor Label","The labels are not 100% accurate, because this depends on those who have respawned or reset their character.")
--T4:AddParagraph("","The labels are not 100% accurate, because this depends on those who have respawned or reset their character.")

local Psps = T1:AddParagraph("👿 Possessor 👿","No one is possessed!")

local excHandler = T1:AddDropdown({
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

local posHandler = T2:AddDropdown({
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

--HttpService:GenerateGUID(GUIDtoggle)

T4:AddTextbox({
  Name = "Use ur own code",
  Default = "input ur code",
  TextDisappear = false,
  Callback = function(Value)
     _G.OwnCode = Value
  end  
})

T4:AddToggle({
  Name = "Use GUID",
  Default = false,
  Callback = function(Value)
    _G.GUID = Value
  end    
})

T4:AddButton({
Name = "Sent Ur Code",
Callback = function()
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(_G.Possessed)
  end    
})

local function getPossessor(str)
str.CharacterAdded:Connect(function(character)
     Psps:Set(tostring(str.DisplayName) .. " is possessed!","")
end)
end

for _,v in pairs(game.Players:GetPlayers()) do
	getPossessor(v)
end

local function resetHandler()
      ExcorcistHandler = {}
      PossessorHandler = {}
      excHandler:Refresh({"Refreshing.."},true)
      posHandler:Refresh({"Refreshing.."},true)
      excHandler:Set("Refreshing..")
      posHandler:Set("Refreshing..")
      wait(0.1)
      OrionLib:AddTable(game.Players,ExcorcistHandler)
      OrionLib:AddTable(game.Players,PossessorHandler)
      wait(0.1)
      excHandler:Refresh(ExcorcistHandler,true)
      excHandler:Set(ExcorcistHandler[1])
      posHandler:Refresh(PossessorHandler,true)
      posHandler:Set(PossessorHandler[1])
end

game.Players.PlayerAdded:Connect(function(player)
	getPossessor(player)
	resetHandler()
end)

game.Players.PlayerRemoving:Connect(function(player)
	resetHandler()
end)
