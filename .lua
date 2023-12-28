local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()
local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = false, ConfigFolder = "TurtleFi"})
local TextChatService = game:GetService("TextChatService")
local HttpService = game:GetService("HttpService")
local client = game.Players.LocalPlayer
local alls = 0
local titlelog = "Public"
local prevOutputPos = 0
local codeHandler = ""
local gtext = false
local confirmsent = true
local changedCode = false

--o.Selectable = true
--o.TextEditable = false

local ChatGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local LogPanel = Instance.new("ScrollingFrame")
local Close = Instance.new("TextButton")
local Mini = Instance.new("TextButton")
local Log = Instance.new("TextButton")
local title = Instance.new("TextLabel")
--Properties:
ChatGui.Name = "ChatGui"
ChatGui.Parent = game.Players.LocalPlayer.PlayerGui
ChatGui.ResetOnSpawn = false
ChatGui.Enabled = false

Frame.Parent = ChatGui
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.0278396439, 0, 0.565217376, 0)
Frame.Size = UDim2.new(0, 392, 0, 25)
Frame.Active = true
Frame.Draggable = true

LogPanel.Name = "LogPanel"
LogPanel.Parent = Frame
LogPanel.BackgroundColor3 = Color3.new(0, 0, 0)
LogPanel.BorderColor3 = Color3.new(0.223529, 0.223529, 0.223529)
LogPanel.Position = UDim2.new(-0.000221580267, 0, 0.968695641, 0)
LogPanel.Size = UDim2.new(0, 392, 0, 203)
LogPanel.ScrollBarThickness = 5
LogPanel.ScrollingEnabled = true
LogPanel.CanvasSize = UDim2.new(2,0,100,0)

Close.Name = "Close"
Close.Parent = Frame
Close.BackgroundColor3 = Color3.new(1, 1, 1)
Close.BackgroundTransparency = 1
Close.Position = UDim2.new(0.823979557, 0, 0.0399999991, 0)
Close.Size = UDim2.new(0, 69, 0, 24)
Close.Font = Enum.Font.SourceSans
Close.Text = "Hide"
Close.TextColor3 = Color3.new(1, 1, 1)
Close.TextSize = 14

Mini.Name = "Mini"
Mini.Parent = Frame
Mini.BackgroundColor3 = Color3.new(1, 1, 1)
Mini.BackgroundTransparency = 1
Mini.Position = UDim2.new(0.647959173, 0, 0, 0)
Mini.Size = UDim2.new(0, 69, 0, 24)
Mini.Font = Enum.Font.SourceSans
Mini.Text = "Minimize"
Mini.TextColor3 = Color3.new(1, 1, 1)
Mini.TextSize = 14

Log.Name = "Log"
Log.Parent = Frame
Log.BackgroundColor3 = Color3.new(1, 1, 1)
Log.BackgroundTransparency = 1
Log.Position = UDim2.new(0.293367326, 0, 0, 0)
Log.Size = UDim2.new(0, 69, 0, 24)
Log.Font = Enum.Font.SourceSans
Log.Text = "Clear"
Log.TextColor3 = Color3.new(1, 1, 1)
Log.TextSize = 14

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.new(1, 1, 1)
title.BackgroundTransparency = 1
title.Size = UDim2.new(0, 115, 0, 24)
title.Font = Enum.Font.SourceSans
title.Text = "Chatlogs"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 14
title.TextXAlignment = Enum.TextXAlignment.Left
-- Scripts:
local logging = true
local minimized = false
Log.MouseButton1Down:Connect(function()
for i,v in pairs(client["PlayerGui"]["ChatGui"]["Frame"]["LogPanel"]:GetChildren()) do
   LogPanel.CanvasSize = UDim2.new(2,0,100,0)
   alls = 0
   prevOutputPos = 0
   v:Destroy()
end
end)
Mini.MouseButton1Down:Connect(function()
	if minimized then
		LogPanel:TweenSize(UDim2.new(0, 392, 0, 203), "InOut", "Sine", 0.5, false, nil)
	else
		LogPanel:TweenSize(UDim2.new(0, 392, 0, 0), "InOut", "Sine", 0.5, false, nil)
	end
	minimized = not minimized
end)
Close.MouseButton1Down:Connect(function()
ChatGui.Enabled = false
end)

local function copyText(v,frm)
    if frm:IsA("TextButton") then
        local success,error = pcall(function()
            setclipboard(v)
        end)

        if not success then
            OrionLib:MakeNotification({Name = "🦠👾",Content = "Failed to copy text: " .. error,Image = "rbxassetid://",Time = 5})
        end
    end
end

local GlitchText = {
    A = "Ä̸̦̣́̾",
    B = "B̴͈̯̆̔",
    C = "C̵̭̘̆̏",
    D = "D̷͔́̑",
    E = "E̶̖͒̕",
    F = "F̶̗̓̀͜",
    G = "G̵͉͑",
    H = "H̶̠͂",
    I = "I̶̗̳͛",
    J = "J̴̤̈",
    K = "K̴͇̪̿",
    L = "L̸̨̗̂",
    M = "M̸̛̰͘",
    N = "N̴̖͆",
    O = "O̷̥͛",
    P = "P̸͉̀͠",
    Q = "Q̴͉̬̊",
    R = "R̶̺̀̄",
    S = "S̴̬̏͝",
    T = "T̶̙̻͘",
    U = "Ü̴̺",
    V = "V̶̭͑",
    W = "W̷̯̽ͅ",
    X = "X̶̯͐́",
    Y = "Ẏ̵̠̹̚",
    Z = "Z̴͕̻̏̿",
    a = "ä̸̦̣́̾",
    b = "b̴͈̯̆̔",
    c = "c̵̭̘̆̏",
    d = "d̷͔́̑",
    e = "e̶̖͒̕",
    f = "f̶̗̓̀͜",
    g = "g̵͉͑",
    h = "h̶̠͂",
    i = "i̶̗̳͛",
    j = "j̴̤̈",
    k = "k̴͇̪̿",
    l = "l̸̨̗̂",
    m = "m̸̛̰͘",
    n = "n̴̖͆",
    o = "o̷̥͛",
    p = "p̸͉̀͠",
    q = "q̴͉̬̊",
    r = "r̶̺̀̄",
    s = "s̴̬̏͝",
    t = "t̶̙̻͘",
    u = "ü̴̺",
    v = "v̶̭͑",
    w = "w̷̯̽ͅ",
    x = "x̶̯͐́",
    y = "ẏ̵̠̹̚",
    z = "z̴͕̻̏̿",
    [" "] = " "
}

local function Convert(str)
    return str:gsub(".",function(ArrayMeta) 
	return tostring(GlitchText[ArrayMeta]) or tostring(ArrayMeta)
    end)
end

local selfForCode = {
	"A",
	"B",
	"C",
	"D",
	"E",
	"F",
	"G",
	"H",
	"I",
	"J",
	"K",
	"L",
	"M",
	"O",
	"P",
	"Q",
	"R",
	"S",
	"T",
	"U",
	"V",
	"W",
	"X",
	"Y",
	"Z"
}

local function selfCodeScript(str)
	if gtext == true then
		TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. Convert(str) .. " | �")
	else
		TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(str) .. " | �")
	end
end

local function autoChangeCode(str,plr)
	if str:find(codeHandler) and plr.Name ~= client.Name then
		if changedCode == true then
			local rawAlpCode = selfForCode[math.random(1,#selfForCode)] .. selfForCode[math.random(1,#selfForCode)] .. selfForCode[math.random(1,#selfForCode)] .. selfForCode[math.random(1,#selfForCode)] .. selfForCode[math.random(1,#selfForCode)] .. selfForCode[math.random(1,#selfForCode)]
			OrionLib:MakeNotification({Name = "Same code has been detected.",Content = "Same code has been detected, changing the code into a random code...",Image = "rbxassetid://",Time = 5})
			wait(0.5)
			selfCodeScript(rawAlpCode)
			codeHandler = rawAlpCode
		else
			OrionLib:MakeNotification({Name = "Same code has been detected.",Content = "Same code has been detected, please enabled 'Auto generate random code' to generate a random code (anti-copy)",Image = "rbxassetid://",Time = 5})
		end
	end
end

local function output(plr,msg)
	if not logging then return end
	local colour = Color3.fromRGB(255,255,255)
	
if string.sub(msg,1,1) == ":" or string.sub(msg,1,1) == ";" or string.sub(msg,1,1) == "/" then 
   colour = Color3.fromRGB(255,0,0)
   titlelog = "Admin"
elseif string.sub(msg,1,2) == "/w" or string.sub(msg,1,7) ==  "/whisper" then
   colour = Color3.fromRGB(0,0,255)
   titlelog = "Private Chat"
elseif string.sub(msg,1,5) == "/team" or string.sub(msg,1,2) == "/t" then
   colour = Color3.fromRGB(0,0,255)
   titlelog = "Team Chat"
     else
    colour = Color3.fromRGB(255,255,255)
    titlelog = "Public"
end
	
 	local o = Instance.new("TextButton",LogPanel)
 	o.Text = tostring(titlelog) .. " -- " .. plr .. ": " .. msg
 	o.Size = UDim2.new(0.5,0,.006,0)
 	o.Position = UDim2.new(0,0,.007 + prevOutputPos ,0)
 	o.Font = Enum.Font.SourceSansSemibold
 	o.TextColor3 = colour
 	o.TextStrokeTransparency = 0
 	o.BackgroundTransparency = 0
	o.BackgroundColor3 = Color3.new(0,0,0)
 	o.BorderSizePixel = 0
	o.BorderColor3 = Color3.new(0,0,0)
 	o.FontSize = "Size14"
	o.TextXAlignment = Enum.TextXAlignment.Left
 	o.ClipsDescendants = true
        o.TextTransparency = 1
	o.Selectable = true
        --o.TextEditable = false
	prevOutputPos = prevOutputPos + 0.007
        LogPanel.CanvasSize = UDim2.new(2,0,100,alls + o.TextBounds.Y)
	LogPanel.CanvasPosition = Vector2.new(0,LogPanel.CanvasPosition.Y + o.TextBounds.Y)
	o.MouseButton1Click:Connect(function() --  k
		local ableCopied = o.Text:gsub(titlelog,""):gsub(plr,""):gsub("--",""):gsub(":","")
		if ableCopied:sub(1,4) == "--  " then
		    copyText(ableCopied:sub(5),o)
		elseif ableCopied:sub(1,5) == " --  " then
		    copyText(ableCopied:sub(6),o)
		end
	end)
		for i,v in pairs(game.Players.LocalPlayer.PlayerGui.ChatGui.Frame.LogPanel:GetChildren()) do
			if v then
				alls = v.Size.Y.Offset + alls
			end
			if not v then
				alls = 0
			end
		end
      for i = 0,50 do wait(0.05)
			o.TextTransparency = o.TextTransparency - 0.05
		end
		o.TextTransparency = 0
	end

game.Players.ChildAdded:Connect(function(plr)
	if plr:IsA("Player") then
		plr.Chatted:Connect(function(msg)
			--output(plr.DisplayName,msg)
			if msg == "Hi fahri!" then
				TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Hi my fans!")
			elseif msg:find("Code") or msg:find("cod") or msg:find("Cod") or msg:find("code") or msg:find("CODE") and plr.Name ~= client.Name then
				if confirmsent == true then
					if gtext == true then
						TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. Convert(codeHandler) .. " | �")
					else
						TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(codeHandler) .. " | �")
					end
				else
					OrionLib:MakeNotification({Name = "🤖",Content = "Auto sent disabled",Image = "rbxassetid://",Time = 5})
				end
			elseif msg:find(codeHandler) and plr.Name ~= client.Name then
				autoChangeCode(msg,plr)
			end
			output(plr.DisplayName,msg)
		end)
	end
end)

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

local T7 = Window:MakeTab({ -- T1
Name = "Update Log",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T1 = Window:MakeTab({ --T2
Name = "Exorcist",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T2 = Window:MakeTab({ --T3
Name = "Possessor",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T3 = Window:MakeTab({ --T4
Name = "Gamemode vote",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T4 = Window:MakeTab({ --T6
Name = "code",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T6 = Window:MakeTab({ --T9
Name = "Reminder",
Icon = "rbxassetid://",
PremiumOnly = false
})

local T9 = Window:MakeTab({ --T10
Name = "Ability",
Icon = "rbxassetid://",
PremiumOnly = false
})

--[[local T11 = Window:MakeTab({ --T11
Name = "Animation",
Icon = "rbxassetid://",
PremiumOnly = false
})
]]
local T10 = Window:MakeTab({ --T5
Name = "Possessed Log",
Icon = "rbxassetid://13030062874",
PremiumOnly = false
})

local T5 = Window:MakeTab({ --T7
Name = "NOTE",
Icon = "rbxassetid://13040484705",
PremiumOnly = false
})

local T8 = Window:MakeTab({ --T8
Name = "Credit",
Icon = "rbxassetid://13040484705",
PremiumOnly = false
})

local function getRoundTimer()
	return client["PlayerGui"]["MainUi"]["Frame"]["TimeLeft"].Text
end

T7:AddParagraph("Update 10 [ 28/12/2023 ]","[ +/- ] Fixed Code bug (including 'auto generate random code' and 'auto sent when player says code')")
T7:AddParagraph("Update 9 [ 27/12/2023 ]","[ +/- ] Fixed all bugs (including animation, possessor label & auto sent code) | Ty rafa for telling me this bug.\n[ + ] Added 'Generate random code' feature - check NOTE!\n[ - ] Moved 'animation' Tab to Developer Mode (testing feature)")
T7:AddParagraph("Update 8 [ 26/12/2023 ]","[ + ] Added 'Animation' Tab - Beta feature | Ty Alya for requesting this feature.\n[ +/- ] Fixed Possessor label again x26!\n[ + ] Auto sent code when player says 'Code' is back!\n[ + ] Added toggle for 'auto sent code when player say code'\n[ 🤝 ] Partnered with vortex admin and Genta X Script")
T7:AddParagraph("Update 7 [ 25/12/2023 ]","[ +/- ] Fixed Chatlog bug when u tried to copied player message\n[ +/- ] Fixed 'Failed to run chatlog' message on some exploit.")
T7:AddParagraph("Update 6 [ 23/12/2023 ]","[ + ] Added Chatlog ( Can copy text from players )\n[ +/- ] Fixed chatlog bugs - doesnt show player chat\n[ +/- ] Fixed copy function bugs when u click the chat/log\n[ +/- ] Fixed text copied when u copy the message\n[ +/- ] Reduced delay when clearing chat logs\n[ +/- ] Increase the copied word to the word you want to copy")
T7:AddParagraph("Update 5 [ 20/12/2023 ]","[ + ] Added Possessed log\n[ +/- ] Improved Possessor Label\n[ + ] Improved chat bypass and glitched text in 'Code' Tab")
T7:AddParagraph("Update 4 [ 15/12/2023 ]","[ + ] Replaced GUID with Glitch Text\n[ + ] Added 2 new reminder\n[ + ] Your code can now be sent automatically when the player says 'code' - Beta")
T7:AddParagraph("Update 3 [ 14/12/2023 ]","[ + ] Added 'Auto sent code every round'!\n[ + ] Added 'Reminder' Tab\n[ + ] Added 'Ability' Tab - Beta\n[ +/- ] Fixed Ability Dropdown bugging when u use ur ability.\n[ +/- ] Fixed Not teleported to the area ( UserInput Bugging )\n[ + ] The possessor label is now only detected when the player resets or respawns their character. ( with Possessor MousePointer )")
T7:AddParagraph("Update 2 [ 13/12/2023 ]","[ - ] Removed 'Ritual Mode' Tab")
T7:AddParagraph("Update 1 [ 11/12/2023 ]","<!----- Exorcist Tab ----->\n[ + ] Vote Exorcist\n[ + ] Skip Vote\n<!----- Possessor Tab ----->\n[ ? ] nil\n<!----- game mode voting ----->\n[ + ] 'Ritual' Auto Voting\n<!----- Part/Item ESP ----->\n[ + ] Candle ESP\n[ + ] Mirror ESP\n[ + ] Key ESP")

T8:AddParagraph("Developer","Fahri -> Toggle System, Trigger function, game system, Code System generator\nAkbar -> Possessor Label\nFirman -> Item ESP in ritual mode & Dropdown reset (sadly i removed 'Ritual Mode')\nRaka -> Ability System & Tab\nRafa -> Reminder Text Idea & Bug Hunter")
T8:AddParagraph("Our Roblox account","Fahri -> TH_Alyaaa (Rivanda_Cheater)\nAkbar -> demon_luc28\nFirman -> secret\nRaka -> secret\nRafa -> secret\nAdinda -> AdindaFood\nAlya -> secret")
T8:AddParagraph("My tiktok (pls follow)","@capviktor")

T5:AddParagraph("Possessor Label","The labels are not 100% accurate, because this depends on those who have respawned or reset their character.")
T5:AddParagraph("Reminder Tab","The reminder tab is a tab where they can know which one is real and which one is possessed, for example: the real one can fly, and the fake one can't, they will know who is fake.")
T5:AddParagraph("Code system 'Generate random code'","This feature will replace your code with a random code if Possessed copies your code.")

local Psps = T1:AddParagraph("👿 Possessor 👿","No one is possessed!")
 
local Anim = Instance.new("Animation")
local track = nil
--[[
T11:AddToggle({
   Name = "Head Throw",
   Default = false,
   Callback = function(Value)
      _G.HT = Value
	Anim.AnimationId = "rbxassetid://35154961"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.HT == false then
		track:Stop()
	end

	while wait() do
		if _G.HT == false then break end
			track:Play(.1,1,1)
	end
   end    
})

T11:AddToggle({
   Name = "Floating Head",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://121572214"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Crouch",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://182724289"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Floor Crawl",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://282574440"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Dino Walk",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://204328711"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Jumping Jacks",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://429681631"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Loop Head",
   Default = false,
   Callback = function(Value)
      _G.LH = Value
	Anim.AnimationId = "rbxassetid://35154961"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.LH == false then
		track:Stop()
	end

	while wait() do
		if _G.LH == false then break end
			track:Play(.5,1,1e6)
	end
   end    
})

T11:AddToggle({
   Name = "Hero Jump",
   Default = false,
   Callback = function(Value)
      _G.HJ = Value
	Anim.AnimationId = "rbxassetid://184574340"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.HJ == false then
		track:Stop()
	end

	while wait() do
		if _G.HJ == false then break end
			track:Play(.1,1,1)
	end
   end    
})

T11:AddToggle({
   Name = "Faint",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://181526230"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Floor Faint",
   Default = false,
   Callback = function(Value)
      _G.FF = Value
	Anim.AnimationId = "rbxassetid://181525546"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.FF == false then
		track:Stop()
	end

	while wait() do
		if _G.FF == false then break end
			track:Play(.1,1,2)
	end
   end    
})

T11:AddToggle({
   Name = "Super Faint",
   Default = false,
   Callback = function(Value)
      _G.SF = Value
	Anim.AnimationId = "rbxassetid://181525546"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.SF == false then
		track:Stop()
	end

	while wait() do
		if _G.SF == false then break end
			track:Play(.1,0.5,40)
	end
   end    
})

T11:AddToggle({
   Name = "Levitate",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://313762630"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Dab",
   Default = false,
   Callback = function(Value)
      _G.D = Value
	Anim.AnimationId = "rbxassetid://183412246"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.D == false then
		track:Stop()
	end

	while wait() do
		if _G.D == false then break end
			track:Play(.1,1,2)
	end
   end    
})

T11:AddToggle({
   Name = "Spinner",
   Default = false,
   Callback = function(Value)
      _G.S = Value
	Anim.AnimationId = "rbxassetid://188632011"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.S == false then
		track:Stop()
	end

	while wait() do
		if _G.S == false then break end
			track:Play(.1,1,2)
	end
   end    
})

T11:AddToggle({
   Name = "Float Sit",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://179224234"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Moving Dance",
   Default = false,
   Callback = function(Value)
      _G.MD = Value
	Anim.AnimationId = "rbxassetid://429703734"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.MD == false then
		track:Stop()
	end

	while wait() do
		if _G.MD == false then break end
			track:Play(.1,1,1)
	end
   end    
})
 
T11:AddToggle({
   Name = "Weird Move",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://215384594"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Clone Illusion",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://215384594"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.5,1,1e7)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Glitch Levitate",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://313762630"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.5,1,1e7)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Spin Dance",
   Default = false,
   Callback = function(Value)
      _G.SD = Value
	Anim.AnimationId = "rbxassetid://429730430"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.SD == false then
		track:Stop()
	end

	while wait() do
		if _G.SD == false then break end
			track:Play(.1,1,1)
	end
   end    
})

T11:AddToggle({
   Name = "Moon Dance",
   Default = false,
   Callback = function(Value)
      _G.MD2 = Value
	Anim.AnimationId = "rbxassetid://45834924"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.MD2 == false then
		track:Stop()
	end

	while wait() do
		if _G.MD2 == false then break end
			track:Play(.1,1,1)
	end
   end    
})

T11:AddToggle({
   Name = "Full Punch",
   Default = false,
   Callback = function(Value)
      _G.FP = Value
	Anim.AnimationId = "rbxassetid://204062532"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.FP == false then
		track:Stop()
	end

	while wait() do
		if _G.FP == false then break end
			track:Play(.1,1,1)
	end
   end    
})

T11:AddToggle({
   Name = "Spin Dance 2",
   Default = false,
   Callback = function(Value)
      _G.SD2 = Value
	Anim.AnimationId = "rbxassetid://186934910"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.SD2 == false then
		track:Stop()
	end

	while wait() do
		if _G.SD2 == false then break end
			track:Play(.1,1,1)
	end
   end    
})
 
T11:AddToggle({
   Name = "Bow Down",
   Default = false,
   Callback = function(Value)
      _G.BD = Value
	Anim.AnimationId = "rbxassetid://204292303"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.BD == false then
		track:Stop()
	end

	while wait() do
		if _G.BD == false then break end
			track:Play(.1,1,3)
	end
   end    
})

T11:AddToggle({
   Name = "Sword Slam",
   Default = false,
   Callback = function(Value)
      _G.SS = Value
	Anim.AnimationId = "rbxassetid://204295235"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.SS == false then
		track:Stop()
	end

	while wait() do
		if _G.SS == false then break end
			track:Play(.1,1,1)
	end
   end    
})

T11:AddToggle({
   Name = "Loop Slam",
   Default = false,
   Callback = function(Value)
      _G.LS = Value
	Anim.AnimationId = "rbxassetid://204295235"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.LS == false then
		track:Stop()
	end

	while wait() do
		if _G.LS == false then break end
			track:Play(.1,1,1e4)
	end
   end    
})

T11:AddToggle({
   Name = "Mega Insane",
   Default = false,
   Callback = function(Value)
      _G.MI = Value
	Anim.AnimationId = "rbxassetid://184574340"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.MI == false then
		track:Stop()
	end

	while wait() do
		if _G.MI == false then break end
			track:Play(.1,0.5,40)
	end
   end    
})

T11:AddToggle({
   Name = "Super Punch",
   Default = false,
   Callback = function(Value)
      _G.SP = Value
	Anim.AnimationId = "rbxassetid://126753849"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.SP == false then
		track:Stop()
	end

	while wait() do
		if _G.SP == false then break end
			track:Play(.1,1,3)
	end
   end    
})

T11:AddToggle({
   Name = "Full Swing",
   Default = false,
   Callback = function(Value)
      _G.FS2 = Value
	Anim.AnimationId = "rbxassetid://218504594"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.FS2 == false then
		track:Stop()
	end

	while wait() do
		if _G.FS2 == false then break end
			track:Play(.1,1,1)
	end
   end    
})

T11:AddToggle({
   Name = "Arm Turbine",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://259438880"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1e3)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Barrel Roll",
   Default = false,
   Callback = function(Value)
      _G.BR = Value
	Anim.AnimationId = "rbxassetid://136801964"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.BR == false then
		track:Stop()
	end

	while wait() do
		if _G.BR == false then break end
			track:Play(.1,1,1)
	end
   end    
})

T11:AddToggle({
   Name = "Scared",
   Default = false,
   Callback = function(Value)
      _G.BR = Value
	Anim.AnimationId = "rbxassetid://180612465"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.BR == false then
		track:Stop()
	end

	while wait() do
		if _G.BR == false then break end
			track:Play(.1,1,1)
	end
   end    
})

T11:AddToggle({
   Name = "Insane",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://33796059"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1e8)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Arm Detach",
   Default = false,
   Callback = function(Value)
      _G.AD = Value
	Anim.AnimationId = "rbxassetid://33169583"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.AD == false then
		track:Stop()
	end

	while wait() do
		if _G.AD == false then break end
			track:Play(.1,1,1e6)
	end
   end    
})

T11:AddToggle({
   Name = "Sword Slice",
   Default = false,
   Callback = function(Value)
	Anim.AnimationId = "rbxassetid://35978879"
	track = client.Character.Humanoid:LoadAnimation(Anim)
       if Value then
		track:Play(.1,1,1)
	else
		track:Stop()
	end
   end    
})

T11:AddToggle({
   Name = "Insane Arms",
   Default = false,
   Callback = function(Value)
      _G.ARMSI = Value
	Anim.AnimationId = "rbxassetid://27432691"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	if _G.ARMSI == false then
		track:Stop()
	end

	while wait() do
		if _G.ARMSI == false then break end
			track:Play(.1,1,1e4)
	end
   end    
})
]]
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

T1:AddToggle({
  Name = "Chatlog",
  Default = false,
  Callback = function(Value)
    ChatGui.Enabled = Value
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

--local RandomSaveGUID = T4:AddParagraph("Random Code using GUID","You haven't pressed 'Generate Random GUID', press it to generate a random number.")
local GUIDsaver = ""

T4:AddTextbox({
  Name = "Use ur own code",
  Default = "input ur code",
  TextDisappear = false,
  Callback = function(Value)
     _G.OwnCode = Value
     codeHandler = Value
  end  
})

--[[T4:AddToggle({
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
]]

T4:AddToggle({
  Name = "Use Glitch Text",
  Default = false,
  Callback = function(Value)
    _G.GlitchArray = Value
    gtext = Value
  end    
})

T4:AddButton({
Name = "Sent Ur Code",
Callback = function()
if _G.GlitchArray == true then
	TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. Convert(_G.OwnCode) .. " | �")
   else
	TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(_G.OwnCode) .. " | �")
    end
  end    
})

T4:AddToggle({
  Name = "Auto Sent ur code every round",
  Default = false,
  Callback = function(Value)
    _G.auth_sent_code_sys = Value
	while wait(1.5) do
	   if _G.auth_sent_code_sys == false then break end
		if getRoundTimer() ~= "0s" then
                   if _G.GlitchArray == true then
	              TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. Convert(_G.OwnCode) .. " | �")
                   else
	              TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(_G.OwnCode) .. " | �")
                   end
              end
	end
  end    
})

T4:AddToggle({
  Name = "Auto sent when player said 'code'",
  Default = true,
  Callback = function(Value)
    confirmsent = Value
  end    
})

T4:AddToggle({
  Name = "Auto generate random code",
  Default = true,
  Callback = function(Value)
    changedCode = Value
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
Name = "Reminder: u always use bad grammar ( 50% )",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " Always using bad grammar.")
  end    
})

T6:AddButton({
Name = "Reminder: u can fly? ( 5% )",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " can fly.")
  end    
})

T6:AddButton({
Name = "Reminder: u toxic? ( 50/75% )",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " is toxic.")
  end    
})

T6:AddButton({
Name = "Reminder: u always afk? ( 90% )",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " is always afk.")
  end    
})

T6:AddButton({
Name = "Reminder: u dont have emote? ( 50% )",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " has no emotes.")
  end    
})

T6:AddButton({
Name = "Reminder: u have admin permission? ( % = depends )",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Remember: The real " .. client.DisplayName .. " has admin permission.")
  end    
})

T6:AddButton({
Name = "BURN ISRAEL!",
Callback = function()
      TextChatService["TextChannels"]["RBXGeneral"]:SendAsync(Convert("BURN FUCKING ISRAEL"))
  end    
})

local AbilityHandleS = {
	A = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S1"]["TextLabel"].Text,
	B = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S2"]["TextLabel"].Text,
	C = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S3"]["TextLabel"].Text
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
	abilityHandler:Refresh({AbilityHandleS.A,AbilityHandleS.B,AbilityHandleS.C},true)
        abilityHandler:Set(AbilityHandleS.A)
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

client["PlayerGui"]["MainUi"]["Frame"]["State"]:GetPropertyChangedSignal("Text"):Connect(function()
	print(client["PlayerGui"]["MainUi"]["Frame"]["State"].Text)
end)

local function getPossessor(str)
str.CharacterAdded:Connect(function(character)
     Psps:Set(tostring(str.DisplayName) .. " is possessed!","")
     T10:AddParagraph("Possessor log [ " .. tostring(os.date("%X")) .. " ]",tostring(str.DisplayName) .. " is possessed!")
end)
end

for _,v in pairs(game.Players:GetPlayers()) do
	v.Chatted:Connect(function(msg)
		if msg:find("Code") or msg:find("cod") or msg:find("Cod") or msg:find("code") or msg:find("CODE") and v.Name ~= client.Name then
			if confirmsent == true then
				if gtext == true then
					TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. Convert(codeHandler) .. " | �")
				else
					TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(codeHandler) .. " | �")
				end
			else
				OrionLib:MakeNotification({Name = "🤖",Content = "Auto sent disabled",Image = "rbxassetid://",Time = 5})
			end
		elseif msg:find(codeHandler) and v.Name ~= client.Name then
			autoChangeCode(msg,v)
		end
		output(v.DisplayName,msg)
	end)
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
	if player.Name == "Rivanda_Cheater" then
		OrionLib:MakeNotification({Name = "Developer - " .. player.DisplayName,Content = "The developer of this script has joined this server.",Image = "rbxassetid://",Time = 5})
		TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Hi fahri!")
        end
	getPossessor(player)
	resetHandler()
end)

game.Players.PlayerRemoving:Connect(function(player)
	resetHandler()
end)

local args = {"Input"}

--game:GetService("ReplicatedStorage")["Remotes"]["LobbyRemote"]:FireServer(unpack(args))

--game:GetService("ReplicatedStorage")["Remotes"]["LobbyRemote"]:Destroy()
