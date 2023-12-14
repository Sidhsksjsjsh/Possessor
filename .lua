--[[ Beta!
soon ill added Possessor label!
]]

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()
local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = false, ConfigFolder = "TurtleFi"})
local TextChatService = game:GetService("TextChatService")
local HttpService = game:GetService("HttpService")
local client = game.Players.LocalPlayer

local ExcorcistHandler = {}
local PossessorHandler = {}

OrionLib:AddTable(game.Players,ExcorcistHandler)
OrionLib:AddTable(game.Players,PossessorHandler)

local function addPARTESP(path,name)
for i,v in pairs(game.Workspace:GetDescendants()) do
    if v.Name:lower() == path and v:IsA("BasePart") then
        local BillboardGui = Instance.new('BillboardGui')
        local TextLabel = Instance.new('TextLabel')
        
        BillboardGui.Parent = v.Parent
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 50, 0, 50)
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.Text = name
        TextLabel.TextColor3 = Color3.new(1, 0, 0)
        TextLabel.TextScaled = false
    end
end
end

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
Name = "Code",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T6 = Window:MakeTab({
Name = "Reminder!",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T9 = Window:MakeTab({
Name = "Ability",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T5 = Window:MakeTab({
Name = "NOTE",
Icon = "rbxassetid://13030062874",
PremiumOnly = false
})

local T7 = Window:MakeTab({
Name = "Whats new?",
Icon = "rbxassetid://13040484705",
PremiumOnly = false
})

local T8 = Window:MakeTab({
Name = "Credit",
Icon = "rbxassetid://13040484705",
PremiumOnly = false
})

local function getRoundTimer()
	return client["PlayerGui"]["MainUi"]["Frame"]["TimeLeft"].Text
end

T7:AddParagraph("Whats New? [ 14/12/2023 ]","[ + ] Added 'Auto sent code every round'!\n[ + ] Added 'Reminder' Tab\n[ + ] Added 'Ability' Tab - Beta")
T7:AddParagraph("Whats New? [ 13/12/2023 ]","[ - ] Removed 'Ritual Mode' Tab")
T7:AddParagraph("Whats New? [ 11/12/2023 ]","<!----- Exorcist Tab ----->\n[ + ] Vote Exorcist\n[ + ] Skip Vote\n<!----- Possessor Tab ----->\n[ ? ] nil\n<!----- game mode voting ----->\n[ + ] 'Ritual' Auto Voting\n<!----- Part/Item ESP ----->\n[ + ] Candle ESP\n[ + ] Mirror ESP\n[ + ] Key ESP")

T8:AddParagraph("Developer","Fahri -> Toggle System, Trigger function, game system, Code System generator\nAkbar -> Possessor Label\nFirman -> Item ESP in ritual mode & Dropdown reset (sadly i remove 'Ritual Mode')")

T5:AddParagraph("Possessor Label","The labels are not 100% accurate, because this depends on those who have respawned or reset their character.")
T5:AddParagraph("Reminder Tab","The reminder tab is a tab where they can know which one is real and which one is possessed, for example: the real one can fly, and the fake one can't, they will know who is fake.")

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
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[_G.Exorcist],true)
  end    
})

T1:AddButton({
Name = "Vote Exorcist [Ritual Mode]",
Callback = function()
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[_G.Exorcist])
  end    
})

T1:AddButton({
Name = "Skip Vote",
Callback = function()
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer("ConfirmSkip",true)
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
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[_G.Possessed])
  end    
})

local function mode(str)
  return str:gsub("Classic","1"):gsub("Roles","2"):gsub("Ritual","3")
end

T3:AddDropdown({
  Name = "Select game mode",
  Default = "Classic",
  Options = {"Classic","Roles","Ritual"},
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

local RandomSaveGUID = T4:AddParagraph("Random Code using GUID","You haven't pressed 'Generate Random GUID', press it to generate a random number.")
local GUIDsaver = ""

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

T4:AddToggle({
  Name = "Use {} Symbol",
  Default = false,
  Callback = function(Value)
    _G.sym = Value
  end    
})

T4:AddToggle({
  Name = "Remove '-' Symbol",
  Default = false,
  Callback = function(Value)
    _G.sym_strip = Value
  end    
})

T4:AddButton({
Name = "Generate Random GUID",
Callback = function()
      GUIDsaver = HttpService:GenerateGUID(_G.sym)
      if _G.sym_strip == true then
           RandomSaveGUID:Set("Your Current GUID: " .. tostring(GUIDsaver),"")
	else
	   RandomSaveGUID:Set("Your Current GUID: " .. tostring(GUIDsaver:gsub("-","")),"")
      end
  end    
})

T4:AddButton({
Name = "Sent Ur Code",
Callback = function()
if GUIDsaver ~= "" or GUIDsaver ~= nil then
   if _G.GUID == true then
	TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(GUIDsaver) .. " | �")
   elseif _G.GUID == true and _G.sym_strip == true then
	TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � |" .. tostring(GUIDsaver:gsub("-","")) .. " | �")
   else
	TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(_G.OwnCode) .. " | �")
    end
else
	OrionLib:MakeNotification({Name = "Cannot Find GUID",Content = "Press 'Generate Random GUID'.",Image = "rbxassetid://",Time = 5})
end
  end    
})

T4:AddToggle({
  Name = "Auto Sent ur code every round",
  Default = false,
  Callback = function(Value)
    _G.auth_sent_code_sys = Value
	while wait(3) do
	   if _G.auth_sent_code_sys == false then break end
		if getRoundTimer() == "0s" then
                   if _G.GUID == true then
	              TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(GUIDsaver) .. " | �")
                   elseif _G.GUID == true and _G.sym_strip == true then
	              TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � |" .. tostring(GUIDsaver:gsub("-","")) .. " | �")
                   else
	              TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(_G.OwnCode) .. " | �")
                   end
              end
	end
  end    
})

T6:AddTextbox({
  Name = "Your own reminder",
  Default = "input ur reminder",
  TextDisappear = false,
  Callback = function(Value)
     _G.OwnReminder = Value
  end  
})

T6:AddButton({
Name = "Reminder: custom",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: " .. tostring(_G.OwnReminder))
  end    
})

T6:AddButton({
Name = "Reminder: u always use bad grammar",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " Always using bad grammar.")
  end    
})

T6:AddButton({
Name = "Reminder: u can fly?",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " can fly.")
  end    
})

T6:AddButton({
Name = "Reminder: u toxic?",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " is toxic.")
  end    
})

T6:AddButton({
Name = "Reminder: u always afk?",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " is always afk.")
  end    
})

local AbilityHandleS = {
	A = "",
	B = "",
	C = ""
}

local abilityHandler = T9:AddDropdown({
  Name = "Select Ability",
  Default = AbilityHandleS.A,
  Options = {AbilityHandleS.A,AbilityHandleS.B,AbilityHandleS.C},
  Callback = function(Value)
     _G.AbilitySystem = Value
  end    
})

T9:AddButton({
Name = "Use Ability ( random player )",
Callback = function()
      game:GetService("ReplicatedStorage")["Remotes"]["AbilityRemote"]:FireServer(_G.AbilitySystem:gsub(AbilityHandleS.A,1):gsub(AbilityHandleS.B,2):gsub(AbilityHandleS.C,3))
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players"):GetChildren()[math.random(1,#game:GetService("Players"):GetChildren())])
  end    
})

local function AbilityChanged()
	AbilityHandleS.A = ""
	AbilityHandleS.B = ""
	AbilityHandleS.C = ""
	abilityHandler:Refresh({"Refreshing.."},true)
        abilityHandler:Set("Refreshing..")
	wait(0.1)
	AbilityHandleS.A = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S1"]["TextLabel"].Text
	AbilityHandleS.B = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S2"]["TextLabel"].Text
	AbilityHandleS.C = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S3"]["TextLabel"].Text
	wait(0.1)
	excHandler:Refresh({AbilityHandleS.A,AbilityHandleS.B,AbilityHandleS.C},true)
        excHandler:Set(AbilityHandleS.A)
end

client["PlayerGui"]["StickUi"]["AbilityFrame"]["S1"]["TextLabel"]:GetPropertyChangedSignal("Text"):Connect(function()
	AbilityHandleS.A = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S1"]["TextLabel"].Text
	AbilityChanged()
end)

client["PlayerGui"]["StickUi"]["AbilityFrame"]["S2"]["TextLabel"]:GetPropertyChangedSignal("Text"):Connect(function()
	AbilityHandleS.B = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S2"]["TextLabel"].Text
	AbilityChanged()
end)

client["PlayerGui"]["StickUi"]["AbilityFrame"]["S3"]["TextLabel"]:GetPropertyChangedSignal("Text"):Connect(function()
	AbilityHandleS.C = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S3"]["TextLabel"].Text
	AbilityChanged()
end)

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

game:GetService("ReplicatedStorage")["Remotes"]["LobbyRemote"]:Destroy()
