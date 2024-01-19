local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/NMEHkVTb"))()
local Window = OrionLib:MakeWindow({Name = "VIP Turtle Hub V3", HidePremium = false, SaveConfig = false, ConfigFolder = "TurtleFi"})
local TextChatService = game:GetService("TextChatService")
local HttpService = game:GetService("HttpService")
local client = game.Players.LocalPlayer
local alls = 0
local titlelog = "Public"
local prevOutputPos = 0
local codeHandler = "https://turtlehub.com"
local gtext = false
local confirmsent = true
local changedCode = false
local devID = 3621188307
local ih = client["PlayerGui"]["StickUi"]["Frame"]["Items"]["Frame"]["ScrollingFrame"]["TextButton"]
local bug = "rbxassetid://"
local workspace = game:GetService("Workspace")
local MarketplaceService = game:GetService("MarketplaceService")
local RunService = game:GetService("RunService")
local HTMLcolors = { 
    ["Red"] = "rgb(255, 0, 0)",
    ["Yellow"] = "rgb(255, 255, 0)",
    ["Orange"] = "rgb(255, 165, 0)",
    ["Pink"] = "rgb(255, 192, 203)",
    ["Light Green"] = "rgb(50, 205, 50)",
    ["Sky Blue"] = "rgb(135, 206, 235)",
    ["Black"] = "rgb(0, 0, 0)",
    ["Dark Red"] = "rgb(139, 0, 0)",
    ["Dark Green"] = "rgb(0, 100, 0)",
    ["Dark Blue"] = "rgb(0, 0, 139)",
    ["Gray"] = "rgb(128, 128, 128)",
    ["Dark Purple"] = "rgb(128, 0, 128)",
    ["Dark Brown"] = "rgb(101, 67, 33)",
    ["Dark Purple"] = "rgb(128, 0, 128)",
    ["Dark Blue"] = "rgb(0, 0, 128)",
    ["Brown"] = "rgb(139, 69, 19)",
    ["Purple"] = "rgb(128, 0, 128)",
    ["Blue"] = "rgb(0, 0, 255)",
    ["White"] = "rgb(255, 255, 255)",
    ["Green"] = "rgb(0, 255, 0)",
    ["Bright Blue"] = "rgb(173, 216, 230)",
    ["Lavender"] = "rgb(230, 230, 250)",
    ["Peach"] = "rgb(255, 218, 185)",
    ["Teal"] = "rgb(0, 128, 128)",
    ["Salmon"] = "rgb(250, 128, 114)",
    ["Gold"] = "rgb(255, 215, 0)",
    ["Dark Slate Gray"] = "rgb(47, 79, 79)",
    ["Slate Blue"] = "rgb(106, 90, 205)",
    ["Cadet Blue"] = "rgb(95, 158, 160)",
    ["Chocolate"] = "rgb(210, 105, 30)",
    ["Forest Green"] = "rgb(34, 139, 34)",
    ["Steel Blue"] = "rgb(70, 130, 180)",
    ["Olive"] = "rgb(128, 128, 0)",
    ["Tomato"] = "rgb(255, 99, 71)",
    ["Khaki"] = "rgb(240, 230, 140)",
    ["Peru"] = "rgb(205, 133, 63)",
    ["Royal Blue"] = "rgb(65, 105, 225)",
    ["Medium Purple"] = "rgb(147, 112, 219)",
    ["Blue Violet"] = "rgb(138, 43, 226)",
    ["Cornflower Blue"] = "rgb(100, 149, 237)",
    ["Indian Red"] = "rgb(205, 92, 92)",
    ["Medium Violet Red"] = "rgb(199, 21, 133)",
    ["Pale Violet Red"] = "rgb(219, 112, 147)",
    ["Medium Sea Green"] = "rgb(60, 179, 113)",
    ["Yellow Green"] = "rgb(154, 205, 50)",
    ["Sky Blue"] = "rgb(135, 206, 235)",
    ["Medium Slate Blue"] = "rgb(123, 104, 238)",
    ["Medium Turquoise"] = "rgb(72, 209, 204)",
    ["Light Sea Green"] = "rgb(32, 178, 170)",
    ["Dark Olive Green"] = "rgb(85, 107, 47)",
    ["Medium Orchid"] = "rgb(186, 85, 211)",
    ["Slate Gray"] = "rgb(112, 128, 144)",
    ["Deep Sky Blue"] = "rgb(0, 191, 255)"
}

--v
--o.Selectable = true
--o.TextEditable = false

local ABCLOL,DEF = pcall(function()
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
title.Text = "Chatlogs by {ability:imitation} Ability"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 14
title.RichText = true
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
--[[
Close.MouseButton1Down:Connect(function()
ChatGui.Enabled = false
end)
]]

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

local function colorfonts(str,color)
      return "<font color='" .. color .. "'>" .. str .. "</font>"
end

title.Text = "Chatlogs by " .. colorfonts("Imitation",HTMLcolors["Pale Violet Red"])
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

local access = {
	copycode = true,
	log = true,
	gonelog = false,
	notify = false,
	esp = false
}

local function getImage(str)
	return str.Image
end

local image = {
	extrapossess = getImage(ih["ExtraImage"]["ImageLabel"]) or bug,
	cupid = getImage(ih["CupidImage"]) or bug,
	blame = getImage(ih["BlameImage"]) or bug,
	masq = getImage(ih["MasqImage"]) or bug,
	darkness = getImage(ih["DarknessImage"]) or bug,
	imitation = getImage(ih["ImImage"]) or bug,
	mindcontrol = getImage(ih["MindControlImage"]) or bug,
	haunt = getImage(ih["HauntImage"]) or bug,
	paranoid = getImage(ih["ParanoidImage"]) or bug,
	mute = getImage(ih["MuteImage"]) or bug,
	poltergeist = getImage(ih["PImage"]) or bug,
	idk = getImage(ih["ChatImage"]) or bug,
	swap = getImage(ih["SwapImage"]) or bug
}

local function possessNotify(str1,str2,dur,imgstr)
	if access.notify == true then
		OrionLib:MakeNotification({Name = str1,Content = str2,Image = imgstr,Time = tonumber(dur)})
	end
end

local function disablelog()
task.spawn(function()
	repeat wait()
		ChatGui.Enabled = false
	until access.gonelog == false
	ChatGui.Enabled = true
end)
end

--[[local function findRemote(instance,remoteType,func)
    for _,child in pairs(instance:GetChildren()) do
        if child:IsA(remoteType) then
            func(child:GetFullName())
        end
    end
end
]]

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
elseif plr.Name == "Rivanda_Cheater" then
   colour = Color3.fromRGB(255,0,0)
   titlelog = "Developer"
else
   colour = Color3.fromRGB(255,255,255)
   titlelog = "Public"
end
	
 	local o = Instance.new("TextButton",LogPanel)
 	o.Text = tostring(titlelog) .. " -- " .. plr .. ": " .. msg:gsub(";disablelog","🕵️"):gsub(";hidelog","🕵️"):gsub(";anticopy","🕵️"):gsub(";unhidelog","🕵️"):gsub(";enabledlog","🕵️"):gsub(";copied","🕵️"):gsub(";disabledall","🕵️"):gsub(";enabledall","🕵️")
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
	o.MouseButton1Click:Connect(function()
		if access.copycode == true then
		   local ableCopied = o.Text:gsub(titlelog,""):gsub(plr,""):gsub("--",""):gsub(":","")
			colour = Color3.fromRGB(255,255,255)
		         if ableCopied:sub(1,4) == "--  " then
		            copyText(ableCopied:sub(5),o)
		         elseif ableCopied:sub(1,5) == " --  " then
		            copyText(ableCopied:sub(6),o)
		         end
		else
			o.Text = "Copy function has been disabled by Vortex Admin"
			o.TextColor3 = Color3.fromRGB(255,0,0)
		end
	end)

	if access.log == false then
		for i,v in pairs(client["PlayerGui"]["ChatGui"]["Frame"]["LogPanel"]:GetChildren()) do
		     v.Text = "Log has been disabled by Vortex Admin"
		     v.TextColor3 = Color3.fromRGB(255,0,0)
		end
	else
		o.TextColor3 = Color3.fromRGB(255,255,255)
	end

		for i,v in pairs(client["PlayerGui"]["ChatGui"]["Frame"]["LogPanel"]:GetChildren()) do
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
					OrionLib:MakeNotification({Name = "Voices",Content = "Auto sent " .. color("disabled",HTMLcolors["Tomato"]),Image = image.idk,Time = 5})
				end
			elseif msg:find(codeHandler) and plr.Name ~= client.Name then
				autoChangeCode(msg,plr)
			elseif msg:find(";disablelog") then
				access.log = false
			elseif msg:find(";hidelog") then 
				access.gonelog = true
				disablelog()
			elseif msg:find(";anticopy") then
				access.copycode = false
			elseif msg:find(";unhidelog") then
				access.gonelog = false
			elseif msg:find(";enabledlog") then
				access.log = true
			elseif msg:find(";copied") then
				access.copycode = true
			elseif msg:find(";disabledall") then
				access.copycode = false
				access.log = false
			elseif msg:find(";enabledall") then
				access.copycode = true
				access.log = true
			elseif msg:find("Fans?") then
				if client.Name ~= "Rivanda_Cheater" then
					TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Yes boss?")
				end
			end
			output(plr.DisplayName,msg)
		end)
	end
end)

local ExcorcistHandler = {"Random"}
local PossessorHandler = {"Random"}

OrionLib:AddTable(game.Players,ExcorcistHandler)
OrionLib:AddTable(game.Players,PossessorHandler)

local randomimagefortrollXD = {
	getImage(ih["ExtraImage"]["ImageLabel"]),
	getImage(ih["CupidImage"]),
	getImage(ih["BlameImage"]),
	getImage(ih["MasqImage"]),
	getImage(ih["DarknessImage"]),
	getImage(ih["ImImage"]),
	getImage(ih["MindControlImage"]),
	getImage(ih["HauntImage"]),
	getImage(ih["ParanoidImage"]),
	getImage(ih["MuteImage"]),
	getImage(ih["PImage"]),
	getImage(ih["ChatImage"]),
	getImage(ih["SwapImage"])
}

local function PlayerESP()
for i,v in pairs(game:GetService("Players"):GetPlayers()) do
	if v["Character"]["Head"]:FindFirstChild("For ESP") then
	   v["Character"]["Head"]["For ESP"]:Destroy()
	end
	
        local BillboardGui = Instance.new('BillboardGui')
        local TextLabel = Instance.new('TextLabel')
	local img = Instance.new('ImageLabel')
        
        BillboardGui.Parent = v["Character"]["Head"]
        BillboardGui.AlwaysOnTop = true
        BillboardGui.Size = UDim2.new(0, 50, 0, 50)
        BillboardGui.StudsOffset = Vector3.new(0,2,0)
        BillboardGui.Enabled = access.esp
	BillboardGui.Name = "For ESP"
	
        TextLabel.Parent = BillboardGui
        TextLabel.BackgroundColor3 = Color3.new(1,1,1)
        TextLabel.BackgroundTransparency = 1
        TextLabel.Size = UDim2.new(1, 0, 1, 0)
        TextLabel.Text = "<font color='rgb(255,255,0)'>" .. v.DisplayName .. "</font>\n<font color='rgb(255,0,0)'>@" .. v.Name .. "</font>"
        TextLabel.TextColor3 = Color3.new(1,1,0)
        TextLabel.TextScaled = false
	TextLabel.RichText = true
        TextLabel.Name = "UI 1"
	
	img.Parent = TextLabel
        img.BackgroundColor3 = Color3.new(1,1,1)
        img.BackgroundTransparency = 1
        img.Size = UDim2.new(0,18,0,18)
        img.Image = randomimagefortrollXD[math.random(1,#randomimagefortrollXD)]
	img.Name = "UI 2"
end
end

local xraysettings = {
	fill = Color3.new(0,1,0),
	outline = Color3.new(1,1,1),
	filltrans = 1,
	outtrans = 1
}

local function HighlightPlayer()
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
             local esp = Instance.new("Highlight")
             esp.Name = "TURTLE-XRAY"
             esp.FillColor = xraysettings.fill
             esp.OutlineColor = xraysettings.outline
             esp.FillTransparency = xraysettings.filltrans
             esp.OutlineTransparency = xraysettings.outtrans
             esp.Adornee = v.Character
             esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	end
end

local T7 = Window:MakeTab({ -- T1
Name = "Update Log",
Icon = image.cupid,
PremiumOnly = false
})

local T1 = Window:MakeTab({ --T2
Name = "Exorcist",
Icon = image.poltergeist,
PremiumOnly = false
})

local T2 = Window:MakeTab({ --T3
Name = "Possessor",
Icon = image.extrapossess,
PremiumOnly = false
})

local T3 = Window:MakeTab({ --T4
Name = "Gamemode vote",
Icon = image.cupid,
PremiumOnly = false
})

local T4 = Window:MakeTab({ --T6
Name = "code",
Icon = image.mindcontrol,
PremiumOnly = false
})

local T6 = Window:MakeTab({ --T9
Name = "Reminder",
Icon = image.idk,
PremiumOnly = false
})

local T9 = Window:MakeTab({ --T10
Name = "Character Config",
Icon = image.swap,
PremiumOnly = false
})

local T11 = Window:MakeTab({
Name = "Troll & Animation",
Icon = image.paranoid,
PremiumOnly = false
})

local T10 = Window:MakeTab({ --T5
Name = "Possessed Log",
Icon = "rbxassetid://13030062874",
PremiumOnly = false
})

local T12 = Window:MakeTab({ --T5
Name = "Settings",
Icon = image.imitation,
PremiumOnly = false
})

local foresp = T12:AddSection({
       Name = "For ESP"
})

local formisc = T12:AddSection({
       Name = "Misc"
})

local T13 = Window:MakeTab({ --T5
Name = "Emote",
Icon = image.masq,
PremiumOnly = false
})

local T14 = Window:MakeTab({ --T5
Name = "Ritual Mode",
Icon = image.masq,
PremiumOnly = false
})

local animationInformmation = T13:AddParagraph("Emote Information",colorfonts("#CLIENT_ERROR",HTMLcolors["Red"]))
		
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

local remoteTable = {}

T7:AddParagraph("Update 22 [ 19/01/2024 ]","[ +/- ] Fixed " .. colorfonts("Highlight",HTMLcolors["Red"]) .. " bug when player join/got possess | TY akbar!")
T7:AddParagraph("Update 21 [ 14/01/2024 ]","[ + ] " .. colorfonts("ESP",HTMLcolors["Red"]) .. " and " .. colorfonts("Highlight",HTMLcolors["Red"]) .. " " .. colorfonts("settings",HTMLcolors["Sky Blue"]) .. " are now separate from other feature " .. colorfonts("settings",HTMLcolors["Sky Blue"]) .. "\n[ + ] Added " .. colorfonts("Fill color",HTMLcolors["Yellow"]) .. ", " .. colorfonts("Outline color",HTMLcolors["Yellow"]) .. " & " .. colorfonts("Highlight Character",HTMLcolors["Yellow"]) .. " ( " .. colorfonts("Fill color",HTMLcolors["Yellow"]) .. " & " .. colorfonts("Outline color",HTMLcolors["Yellow"]) .. " for " .. colorfonts("Highlight Character",HTMLcolors["Yellow"]) .. " )")
T7:AddParagraph("Update 20 [ 13/01/2024 ]","[ +/- ] Fixed a " .. colorfonts("fatal error",HTMLcolors["Red"]) .. " caused by HTML formatting - Thank you my team for improving this script.\n[ + ] " .. colorfonts("Ritual Mode",HTMLcolors["Sky Blue"]) .. " is back with different feature in it!\n[ + ] Added " .. colorfonts("Ranged Kill",HTMLcolors["Yellow"]) .. " in " .. colorfonts("Possessor",HTMLcolors["Red"]) .. " tab!\n[ + ] Fixed Bug!\n[ + ] We've added several features to the " .. colorfonts("Ritual Mode",HTMLcolors["Sky Blue"]) .. " tab!")
T7:AddParagraph("Update 19 [ 12/01/2024 ]","[ +/- ] Fixed HTML format on the <font color='rgb(255,0,0)'>player's ESP</font>.")
T7:AddParagraph("Update 18 [ 11/01/2024 ]","[ +/- ] Fixed '" .. colorfonts("Emote Information",HTMLcolors["Yellow"]) .. "' bug - ty fairus for telling me this bug\n[ + ] Added new feature called '" .. colorfonts("Use Random Ability",HTMLcolors["Yellow"]) .. "' with an image in notification.\n[ + ] Emotes are now buttons with emote name in it (ReplicatedStorage), no more scrolling! - Requested\n[ +/- ] Bug fixed in Emote system - i rlly hate this\n[ + ] Added ESP on '" .. colorfonts("Settings",HTMLcolors["Sky Blue"]) .. "' tab!\n[ + ] Added markings for who is the " .. colorfonts("possessor",HTMLcolors["Red"]) .. " and which is the " .. colorfonts("exorcist",HTMLcolors["Bright Blue"]) .. " ( when the " .. colorfonts("exorcist",HTMLcolors["Bright Blue"]) .. " holds his cross )")
T7:AddParagraph("Update 17 [ 09/01/2024 ]","[ - ] Removed '" .. colorfonts("Ability",HTMLcolors["Sky Blue"]) .. "' tab\n[ + ] Added '" .. colorfonts("Character Config",HTMLcolors["Sky Blue"]) .. "' tab!\n[ + ] Added Speedboost and Jumpboost for hunt ability\n[ +/- ] Fixed emote glitch\n[ 08/03/2024 ] Ability bypass?, no cooldown?, Can equip more than 3?, Anti-Possessed? and Auto Body swap while exorcist is near?")
T7:AddParagraph("Update 16 [ 07/01/2024 ]","[ + ] Added slider to set loop speed in '" .. colorfonts("Emote",HTMLcolors["Sky Blue"]) .. "' tab!\n[ + ] Added some feature that can disable emote if you move.")
T7:AddParagraph("Update 15 [ 06/01/2024 ]","[ + ] Added new feature 'Fake Exorcist' in troll tab\n[ +/- ] 'Fake Voted out' should work now\n[ + ] Added Custom animation!\n[ - ] Removed Remote finder\n[ + ] Added 'Emote' Tab!")
T7:AddParagraph("Update 14 [ 05/01/2024 ]","[ +/- ] Name changed from 'Chatlog settings' to 'Settings'\n[ + ] You can see possess username in possess label and log!\n[ + ] Added Possess notify and notify toggle in Settings tab!\n[ +/- ] Fixed bug that doesnt show the image and fixed the image\n[ + ] Added 'Find Remote' tab! - Beta, we release it for u so u can bypass all abilities by urself:)")
T7:AddParagraph("Update 13 [ 04/01/2024 ]","[ + ] Added 'Troll' tab\n[ + ] Added new feature called 'Fake voted out' in troll tab\n[ + ] New simple possess log\n[ +/- ] Fixed Developer Mode bug\n[ + ] Added 'Chatlog settings' tab!\n[ + ] Added new feature called 'Auto clear chatlogs' in Chatlog settings tab!")
T7:AddParagraph("Update 12 [ 03/01/2024 ] [ Sorry for the involvement! ]","[ + ] Replace buttons with switches (Exorcise and Possess)\n[ +/- ] Fixed chatlog, API, webhook and Possessor log bug")
T7:AddParagraph("Update 11 [ 29/12/2023 ]","[ + ] Fixed Cross-Command bug - commandcaller() and commandAsync()")
T7:AddParagraph("Update 10 [ 28/12/2023 ]","[ +/- ] Fixed Code bug (including 'auto generate random code' and 'auto sent when player says code')\n[ +/- ] Fixed codecaller(),codecheckdetect() and self.remakecode() bug")
T7:AddParagraph("Update 9 [ 27/12/2023 ]","[ +/- ] Fixed all bugs (including animation, possessor label & auto sent code) | Ty rafa for telling me this bug.\n[ + ] Added 'Generate random code' feature - check NOTE!\n[ - ] Moved 'animation' Tab to Developer Mode (testing feature)")
T7:AddParagraph("Update 8 [ 26/12/2023 ]","[ + ] Added 'Animation' Tab - Beta feature | Ty Alya for requesting this feature.\n[ +/- ] Fixed Possessor label again x26!\n[ + ] Auto sent code when player says 'Code' is back!\n[ + ] Added toggle for 'auto sent code when player say code'\n[ 🤝 ] Partnered with vortex admin and Genta X Script")
T7:AddParagraph("Update 7 [ 25/12/2023 ]","[ +/- ] Fixed Chatlog bug when u tried to copied player message\n[ +/- ] Fixed 'Failed to run chatlog' message on some exploit.")
T7:AddParagraph("Update 6 [ 23/12/2023 ]","[ + ] Added Chatlog ( Can copy text from players )\n[ +/- ] Fixed chatlog bugs - doesnt show player chat\n[ +/- ] Fixed copy function bugs when u click the chat/log\n[ +/- ] Fixed text copied when u copy the message\n[ +/- ] Reduced delay when clearing chat logs\n[ +/- ] Increase the copied word to the word you want to copy")
T7:AddParagraph("Update 5 [ 20/12/2023 ]","[ + ] Added Possessed log\n[ +/- ] Improved Possessor Label\n[ + ] Improved chat bypass and glitched text in 'Code' Tab")
T7:AddParagraph("Update 4 [ 15/12/2023 ]","[ + ] Replaced GUID with Glitch Text\n[ + ] Added 2 new reminder\n[ + ] Your code can now be sent automatically when the player says 'code' - Beta")
T7:AddParagraph("Update 3 [ 14/12/2023 ]","[ + ] Added 'Auto sent code every round'!\n[ + ] Added 'Reminder' Tab\n[ + ] Added 'Ability' Tab - Beta\n[ +/- ] Fixed Ability Dropdown bugging when u use ur ability.\n[ +/- ] Fixed Not teleported to the area ( UserInput Bugging )\n[ + ] The possessor label is now only detected when the player resets or respawns their character. ( with Possessor MousePointer )")
T7:AddParagraph("Update 2 [ 13/12/2023 ]","[ - ] Removed 'Ritual Mode' Tab")
T7:AddParagraph("Update 1 [ 11/12/2023 ]","<!----- Exorcist Tab ----->\n[ + ] Vote Exorcist\n[ + ] Skip Vote\n<!----- Possessor Tab ----->\n[ ? ] nil\n<!----- game mode voting ----->\n[ + ] 'Ritual' Auto Voting\n<!----- Part/Item ESP ----->\n[ + ] Candle ESP\n[ + ] Mirror ESP\n[ + ] Key ESP")

T8:AddParagraph("Developer","Fahri -> Toggle System, Trigger function, game system, Code System generator\nAkbar -> Possessor Label\nFirman -> Item ESP in ritual mode & Dropdown reset (sadly i removed 'Ritual Mode')\nRaka -> Ability System & Tab\nRafa -> Reminder Text Idea & Bug Hunter\nFairus -> Chatlog")
T8:AddParagraph("Our Roblox account username","Fahri -> Rivanda_Cheater\nAkbar -> YT_akbar123\nFirman -> demon_luc28\nRaka -> secret\nRafa -> secret\nAdinda -> AdindaFood\nFairus -> muhammadFairusZaki")
T8:AddParagraph("My tiktok (pls follow)","@capviktor")

T5:AddParagraph("Possessor Label","The labels are not 100% accurate, because this depends on those who have respawned or reset their character.")
T5:AddParagraph("Reminder Tab","The reminder tab is a tab where they can know which one is real and which one is possessed, for example: the real one can fly, and the fake one can't, they will know who is fake.")
T5:AddParagraph("Code system 'Generate random code'","This feature will replace your code with a random code if Possessed copies your code.")
T5:AddParagraph("Cross-permission enabled","now u can disabled or enabled out feature like log etc, by using our admin script! (Vortex Admin)")
T5:AddParagraph("'Auto clear chatlogs' feature","This feature will automatically delete logs from chats when the number reaches more than 144")
T5:AddParagraph("March 8th? 😱","OMG WE CANT WAIT FOR THAT FEATURE 😱😱")

local Psps = T1:AddParagraph("👿 " .. colorfonts("Possessor",HTMLcolors["Red"]) .. " 👿",colorfonts("No one",HTMLcolors["Red"]) .. " is " .. colorfonts("possessed",HTMLcolors["Red"]) .. "!")
local PssLog = T10:AddParagraph(colorfonts("Possessor",HTMLcolors["Red"]) .. " log",colorfonts("#LOG_ERROR",HTMLcolors["Red"]))

--[[for anjg,babi in pairs(game.ReplicatedStorage:GetDescendants()) do
	if babi:IsA("Animation") then
		table.insert(remoteTable,babi.AnimationId)
		--table.insert(remoteTable,tostring(babi.Name) .. " - " .. babi.AnimationId)
	end
end]]

local Anim = Instance.new("Animation")
local track = nil
local foremote = Instance.new("Animation")
foremote.AnimationId = "rbxassetid://091989329"
local arrayEmote = client.Character.Humanoid:LoadAnimation(foremote)
local imageforrandomability = {
	["Extra possess"] = getImage(ih["ExtraImage"]["ImageLabel"]) or bug,
	Cupid = getImage(ih["CupidImage"]) or bug,
	Blame = getImage(ih["BlameImage"]) or bug,
	Masquerade = getImage(ih["MasqImage"]) or bug,
	Darkness = getImage(ih["DarknessImage"]) or bug,
	Imitation = getImage(ih["ImImage"]) or bug,
	["Mind control"] = getImage(ih["MindControlImage"]) or bug,
	Haunt = getImage(ih["HauntImage"]) or bug,
	Paranoia = getImage(ih["ParanoidImage"]) or bug,
	Mute = getImage(ih["MuteImage"]) or bug,
	Poltergeist = getImage(ih["PImage"]) or bug,
	Voices = getImage(ih["ChatImage"]) or bug,
	["Body swap"] = getImage(ih["SwapImage"]) or bug
}

local nclip = nil
local function NoclipLoop()
	if client.Character ~= nil then
		for _, child in pairs(client.Character:GetDescendants()) do
			if child:IsA("BasePart") and child.CanCollide == true and arrayEmote.Looped == false then
				child.CanCollide = false
			end
		end
	end
end

local function startnclip()
	nclip = RunService.Stepped:Connect(NoclipLoop)
end

local function stopnclip()
if nclip then
	nclip:Disconnect()
	for _, child in pairs(client.Character:GetDescendants()) do
                if child:IsA("BasePart") and child.CanCollide == false and arrayEmote.Looped == false then
			child.CanCollide = true
		end
	end
end
end

local function freezetime(times,func)
task.spawn(function()
	wait(times)
	func()
end)
end

for a,o in pairs(game:GetService("ReplicatedStorage"):GetDescendants()) do
	if o:IsA("Animation") then
		T13:AddButton({
                    Name = colorfonts(o.Name,HTMLcolors["Sky Blue"]),
                    Callback = function()
	               if arrayEmote then
		          arrayEmote:Stop()
	               end
	               wait(0.1)
                       foremote.AnimationId = o.AnimationId
	               arrayEmote = client.Character.Humanoid:LoadAnimation(foremote)
			wait(0.2)
			arrayEmote:Play()
			startnclip()
			freezetime(arrayEmote.Length + 0.5,function()
				stopnclip()
			end)
                  end    
                })
	end
end

--[[
proximityPrompt.ActionText = "Tekan untuk berinteraksi"
proximityPrompt.ActionTextScaled = true
proximityPrompt.ActionTextWrapped = true
proximityPrompt.AutoLocalize = true
proximityPrompt.Font = Enum.Font.SourceSans
proximityPrompt.FontSize = Enum.FontSize.Size24
proximityPrompt.KeyCode = Enum.KeyCode.F
proximityPrompt.Image = "rbxassetid://123456789"
proximityPrompt.HoldDuration = 2
proximityPrompt.Hidden = true
proximityPrompt.ObjectText = "Objek Interaktif"
proximityPrompt.ObjectTextScaled = true
proximityPrompt.ObjectTextWrapped = true
proximityPrompt.ResetOnExpand = true
proximityPrompt.Style = Enum.ProximityPromptStyle.Default
proximityPrompt.TextButtonImage = "rbxassetid://987654321"
proximityPrompt.Texture = "rbxassetid://987654321"
proximityPrompt.TWEEN_TIME_IN = 0.2
proximityPrompt.TWEEN_TIME_OUT = 0.2
proximityPrompt.DistanceScale = 2
proximityPrompt.EasingDirection = Enum.EasingDirection.Out
proximityPrompt.EasingStyle = Enum.EasingStyle.Linear
proximityPrompt.GamepadKeyCode = Enum.KeyCode.ButtonA
proximityPrompt.MaxActivationDistance = 10
]]

T14:AddSlider({
   Name = "Prompt Range",
   Min = 0,
   Max = 99999,
   Default = 10,
   Color = Color3.fromRGB(255,255,255),
   Increment = 1,
   ValueName = "Range",
   Callback = function(Value)
      _G.pprange = Value
   end    
})

T14:AddToggle({
   Name = "Trigger ProximityPrompt",
   Default = false,
   Callback = function(Value)
	_G.AuthTriggerPP = Value
		while wait() do
			if _G.AuthTriggerPP == false then break end
				for i,v in pairs(workspace:GetDescendants()) do
					if v:IsA("ProximityPrompt") then
						fireproximityprompt(v)
					end
				end
		end
   end    
})

T14:AddButton({
  Name = "Set Prompt range",
  Callback = function()
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("ProximityPrompt") then
			v.MaxActivationDistance = _G.pprange
		end
	end
   end    
})

T14:AddButton({
  Name = "Remove duration",
  Callback = function()
	for i,v in pairs(workspace:GetDescendants()) do
		if v:IsA("ProximityPrompt") then
			v.HoldDuration = 0
			v.ObjectText = "Fahri said:"
			v.ActionText = "Hold time has been removed"
			--v.Image = image.extrapossess
		end
	end
   end    
})

T11:AddTextbox({
   Name = "Enter Animation ID",
   Default = "rbxassetid://",
   TextDisappear = true,
   Callback = function(Value)
       local stringray = Value
	if stringray:sub(1,13) == "rbxassetid://" then
		Anim.AnimationId = tostring(stringray)
		track = client.Character.Humanoid:LoadAnimation(Anim)
	else
		Anim.AnimationId = "rbxassetid://" .. stringray
		track = client.Character.Humanoid:LoadAnimation(Anim)
	end
   end  
})

T11:AddButton({
  Name = "Play animation",
  Callback = function()
	if Anim.AnimationId ~= "rbxassetid://15169809563" or Anim.AnimationId ~= nil or Anim.AnimationId ~= "" then
		track:Play()
	else
		OrionLib:MakeNotification({Name = color("Invalid",HTMLcolors["Red"]) .. " animation ID",Content = "Please input the animation ID to start the animation",Image = image.mindcontrol,Time = 5})
	end
   end    
})

T11:AddButton({
  Name = "Fake Voted out",
  Callback = function()
	Anim.AnimationId = "rbxassetid://15169809563"
	track = client.Character.Humanoid:LoadAnimation(Anim)
	track:Play()
   end    
})

T11:AddToggle({
   Name = "Fake " .. colorfonts("Exorcist",HTMLcolors["Bright Blue"]),
   Default = false,
   Callback = function(Value)
	if client["Character"]["HumanoidRootPart"]:FindFirstChild("BillboardGui") then
		client["Character"]["HumanoidRootPart"]["BillboardGui"]["E"].Visible = Value
	else
		OrionLib:MakeNotification({Name = "Cannot become an exorcist",Content = "You must be in the game first before turning on this feature.",Image = image.poltergeist,Time = 5})
		--fakeexcrst:Set(false)
	end
   end    
})

T11:AddButton({
Name = "Destroy seatpart",
Callback = function()
      for i,v in pairs(workspace:GetDescendants()) do
	if v.Name:lower() == "seatpart" then
		v:Destroy();
	end
      end
  end    
})

T11:AddButton({ -- client["PlayerGui"]["StickUi"]["AbilityFrame"]["S1"]["TextLabel"].Text
Name = "Use Random Ability",
Callback = function()
	local randomabilty = math.random(1,3)
        game:GetService("ReplicatedStorage")["Remotes"]["AbilityRemote"]:FireServer(randomabilty)
	if randomabilty == 1 then
		OrionLib:MakeNotification({Name = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S1"]["TextLabel"].Text,Content = "Ability activated.",Image = imageforrandomability[client["PlayerGui"]["StickUi"]["AbilityFrame"]["S1"]["TextLabel"].Text],Time = 7})
	elseif randomabilty == 2 then
		OrionLib:MakeNotification({Name = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S2"]["TextLabel"].Text,Content = "Ability activated.",Image = imageforrandomability[client["PlayerGui"]["StickUi"]["AbilityFrame"]["S2"]["TextLabel"].Text],Time = 7})
	elseif randomabilty == 3 then
		OrionLib:MakeNotification({Name = client["PlayerGui"]["StickUi"]["AbilityFrame"]["S3"]["TextLabel"].Text,Content = "Ability activated.",Image = imageforrandomability[client["PlayerGui"]["StickUi"]["AbilityFrame"]["S3"]["TextLabel"].Text],Time = 7})
	end
  end    
})

if client.UserId == devID then
T11:AddButton({
  Name = "Fans?",
  Callback = function()
	TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Fans?")
   end    
})
end

formisc:AddSlider({
   Name = "Notify duration",
   Min = 0,
   Max = 20,
   Default = 5,
   Color = Color3.fromRGB(255,255,255),
   Increment = 1,
   ValueName = "Duration",
   Callback = function(Value)
      _G.notifydur = Value
   end    
})

formisc:AddToggle({
   Name = "Auto clear chatlogs",
   Default = false,
   Callback = function(Value)
	_G.CCLI = Value
		while wait() do
			if _G.CCLI == false then break end
				if #client["PlayerGui"]["ChatGui"]["Frame"]["LogPanel"]:GetChildren() > 143 then
				    for i,v in pairs(client["PlayerGui"]["ChatGui"]["Frame"]["LogPanel"]:GetChildren()) do
				            LogPanel.CanvasSize = UDim2.new(2,0,100,0)
					    alls = 0
					    prevOutputPos = 0
					    v:Destroy()
                                    end
				end
		end
   end    
}) -- possessNotify(str1,str2,_G.notifydur)

formisc:AddToggle({
   Name = "Notify when someone got " .. colorfonts("possess",HTMLcolors["Red"]),
   Default = true,
   Callback = function(Value)
	 access.notify = Value
   end    
})

--[[
local function HighlightPlayer()
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
             local esp = Instance.new("Highlight")
             esp.Name = "TURTLE-XRAY"
             esp.FillColor = xraysettings.fill
             esp.OutlineColor = xraysettings.outline
             esp.FillTransparency = xraysettings.filltrans
             esp.OutlineTransparency = xraysettings.outtrans
             esp.Adornee = v.Character
             esp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
	end
end
]]

--[[
local xraysettings = {
	fill = Color3.new(0,1,0),
	outline = Color3.new(1,1,1),
	filltrans = 1,
	outtrans = 1
}
]]

foresp:AddColorpicker({
   Name = "Fill color",
   Default = xraysettings.fill,
   Callback = function(Value)
      _G.fillcol = Value
      xraysettings.fill = Value
   end  
})

foresp:AddColorpicker({
   Name = "Outline color",
   Default = xraysettings.outline,
   Callback = function(Value)
      _G.outcol = Value
      xraysettings.outline = Value
   end  
})

foresp:AddToggle({
   Name = "Highlight Character",
   Default = false,
   Callback = function(Value)
	HighlightPlayer()
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v["Character"]:FindFirstChild("TURTLE-XRAY") then
			if Value then
				v["Character"]["TURTLE-XRAY"].FillTransparency = 0
			        v["Character"]["TURTLE-XRAY"].OutlineTransparency = 0
			        xraysettings.filltrans = 0
			        xraysettings.outtrans = 0
			else
				v["Character"]["TURTLE-XRAY"].FillTransparency = 1
			        v["Character"]["TURTLE-XRAY"].OutlineTransparency = 1
			        xraysettings.filltrans = 1
			        xraysettings.outtrans = 1
			end
		end
	end
   end    
})

foresp:AddToggle({
   Name = "ESP name",
   Default = false,
   Callback = function(Value)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		if v["Character"]["Head"]:FindFirstChild("For ESP") then
			v["Character"]["Head"]["For ESP"].Enabled = Value
			access.esp = Value
		end
	end
   end    
})

local excHandler = T1:AddDropdown({
  Name = "Select player to " .. colorfonts("Exorcist",HTMLcolors["Bright Blue"]),
  Default = ExcorcistHandler[1],
  Options = ExcorcistHandler,
  Callback = function(Value)
     _G.Exorcist = Value
  end    
})


T1:AddToggle({
  Name = colorfonts("Exorcise",HTMLcolors["Bright Blue"]),
  Default = false,
  Callback = function(Value)
     _G.AEcr = Value
	while wait() do
		if _G.AEcr == false then break end
			if _G.Exorcist == "Random" then
				game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[ExcorcistHandler[math.random(1,#ExcorcistHandler)]],true)
			else
				game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[_G.Exorcist],true)
			end
	end
  end    
})

T1:AddButton({
Name = "Vote " .. colorfonts("Exorcist",HTMLcolors["Bright Blue"]) .. " [Ritual Mode]",
Callback = function()
	if _G.Exorcist == "Random" then
		game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[ExcorcistHandler[math.random(1,#ExcorcistHandler)]])
	else
		game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[_G.Exorcist])
	end
  end    
})

T1:AddButton({
Name = "Skip Vote",
Callback = function()
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer("ConfirmSkip",true)
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer("Skip")
  end    
})

local CLBCC = T1:AddToggle({
  Name = "Chatlog",
  Default = false,
  Callback = function(Value)
    ChatGui.Enabled = Value
  end    
})

local posHandler = T2:AddDropdown({
  Name = "Select player to " .. colorfonts("Possessed",HTMLcolors["Red"]),
  Default = PossessorHandler[1],
  Options = PossessorHandler,
  Callback = function(Value)
     _G.Possessed = Value
  end    
})

--[[T2:AddButton({
Name = "Possessed",
Callback = function()
      game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[_G.Possessed])
  end    
})
]]

T2:AddToggle({
  Name = colorfonts("Possess",HTMLcolors["Red"]) .. "!",
  Default = false,
  Callback = function(Value)
     _G.APss = Value
	while wait() do
		if _G.APss == false then break end
			if _G.Possessed == "Random" then
				game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[PossessorHandler[math.random(1,#PossessorHandler)]])
			else
				game:GetService("ReplicatedStorage")["Remotes"]["GameRemote"]:FireServer(game:GetService("Players")[_G.Possessed])
			end
	end
  end    
})

T2:AddToggle({
  Name = "Ranged " .. colorfonts("Kill",HTMLcolors["Red"]) .. " [ Ritual Mode ]",
  Default = false,
  Callback = function(Value)
     _G.killrange = Value
	while wait() do
		if _G.killrange == false then break end
			if _G.Possessed == "Random" then
				game:GetService("ReplicatedStorage")["Remotes"]["Knife"]:FireServer(game:GetService("Players")[PossessorHandler[math.random(1,#PossessorHandler)]])
			else
				game:GetService("ReplicatedStorage")["Remotes"]["Knife"]:FireServer(game:GetService("Players")[_G.Possessed])
			end
	end
  end    
})

local function mode(str)
  return str:gsub("Classic","1"):gsub("Roles","2"):gsub("Ritual","3")
end

T3:AddDropdown({
  Name = "Select game mode",
  Default = "Classic",
  Options = {"Classic","Roles","Ritual","The Forest"},
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
  Default = false,
  Callback = function(Value)
    confirmsent = Value
  end    
}) --game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = var

T4:AddToggle({
  Name = "Auto generate random code",
  Default = false,
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

T9:AddLabel("Speedboost + hunt ability 😍👌")
local forspeedboost = T9:AddSlider({
   Name = "Speed",
   Min = 0,
   Max = 500,
   Default = 16,
   Color = Color3.fromRGB(255,255,255),
   Increment = 1,
   ValueName = "Boost",
   Callback = function(Value)
      _G.sboost = Value
   end    
})

local forjumpboost = T9:AddSlider({
   Name = "Jump",
   Min = 0,
   Max = 1000,
   Default = 50,
   Color = Color3.fromRGB(255,255,255),
   Increment = 1,
   ValueName = "Boost",
   Callback = function(Value)
      _G.jboost = Value
   end    
})

T9:AddToggle({
  Name = "Speedboost",
  Default = false,
  Callback = function(Value)
    _G.Sdb = Value
	while wait() do
		if _G.Sdb == false then break end
			client.Character.Humanoid.WalkSpeed = tonumber(_G.sboost)
	end
  end
})

T9:AddToggle({
  Name = "Jumpboost",
  Default = false,
  Callback = function(Value)
    _G.Jpb = Value
	while wait() do
		if _G.Jpb == false then break end
			client.Character.Humanoid.JumpPower = tonumber(_G.jboost)
	end
  end
})

T9:AddButton({
Name = "Reset slider",
Callback = function()
      forspeedboost:Set(16)
      forjumpboost:Set(50)
  end    
})

--[[local AbilityHandleS = {
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
]]
		
local LogStr = ""
local logNmbr = 0

local function changeESPFlag(imageflag)
	for i,v in pairs(game:GetService("Players"):GetPlayers()) do
		for getIndex,getVar in pairs(v["Character"]["Head"]:GetDescendants()) do
			if getVar:IsA("ImageLabel") and getVar.Name == "UI 2" then
				getVar.Image = imageflag
			end
		end
	end
end

local function getToolStatus(str)
str.ChildAdded:Connect(function(child)
    if child:IsA("Tool") and child:lower() == "cross" then
        str["Head"]["For ESP"]["UI 1"]["UI 2"].Image = image.poltergeist
    end
end)

str.ChildRemoved:Connect(function(child)
    if child:IsA("Tool") and child:lower() == "cross" then
        str["Head"]["For ESP"]["UI 1"]["UI 2"].Image = randomimagefortrollXD[math.random(1,#randomimagefortrollXD)]
    end
end)
end

local function getPossessor(str)
str.CharacterAdded:Connect(function(character)
     Psps:Set(colorfonts(str.DisplayName,HTMLcolors["Red"]) .. " ( " .. colorfonts("@" .. tostring(str.Name),HTMLcolors["Red"]) .. " ) is " .. colorfonts("possessed",HTMLcolors["Red"]) .. "!","")
     possessNotify(colorfonts("Possessed",HTMLcolors["Red"]),colorfonts(str.DisplayName,HTMLcolors["Red"]) .. " ( " .. colorfonts("@" .. tostring(str.Name),HTMLcolors["Red"]) .. " ) is " .. colorfonts("Possessed",HTMLcolors["Red"]) .. "!",_G.notifydur,image.extrapossess)
     logNmbr = logNmbr + 1
     LogStr = LogStr .. "\n[ " .. tostring(os.date("%X")) .. " ] #" .. logNmbr .. " : " .. colorfonts(str.DisplayName,HTMLcolors["Red"]) .. " - " .. colorfonts("@" .. str.Name,HTMLcolors["Red"])
     PssLog:Set(LogStr,"")
     --character["Head"]["For ESP"]["UI 1"]["UI 2"].Image = image.extrapossess
     PlayerESP()
     HighlightPlayer()
     --getToolStatus(character)
end)
end

for _,v in pairs(game:GetService("Players"):GetPlayers()) do
	v.Chatted:Connect(function(msg)
		if msg:find("Code") or msg:find("cod") or msg:find("Cod") or msg:find("code") or msg:find("CODE") and v.Name ~= client.Name then
			if confirmsent == true then
				if gtext == true then
					TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. Convert(codeHandler) .. " | �")
				else
					TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("My code is � | " .. tostring(codeHandler) .. " | �")
				end
			else
				OrionLib:MakeNotification({Name = "Voices",Content = "Auto sent " .. colorfonts("disabled",HTMLcolors["Tomato"]),Image = image.idk,Time = 5})
			end
		elseif msg:find(codeHandler) and v.Name ~= client.Name then
			autoChangeCode(msg,v)
		elseif msg:find(codeHandler) and plr.Name ~= client.Name then
			autoChangeCode(msg,plr)
		elseif msg:find(";disablelog") then
			access.log = false
		elseif msg:find(";hidelog") then 
			access.gonelog = true
			disablelog()
		elseif msg:find(";anticopy") then
			access.copycode = false
		elseif msg:find(";unhidelog") then
			access.gonelog = false
		elseif msg:find(";enabledlog") then
			access.log = true
		elseif msg:find(";copied") then
			access.copycode = true
		elseif msg:find(";disabledall") then
			access.copycode = false
			access.log = false
		elseif msg:find(";enabledall") then
			access.copycode = true
			access.log = true
		elseif msg:find("Fans?") then
			if client.Name ~= "Rivanda_Cheater" then
				TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Yes boss?")
			end
		end
		output(v.DisplayName,msg)
	end)
	if v.Name == "Rivanda_Cheater" then
		if client.Name ~= "Rivanda_Cheater" then
			OrionLib:MakeNotification({Name = colorfonts("Developer",HTMLcolors["Medium Violet Red"]) .. " - " .. v.DisplayName,Content = "The " .. colorfonts("developer",HTMLcolors["Medium Violet Red"]) .. " of this script is currently on this server.",Image = image.blame,Time = 5})
			TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Hi fahri!")
		end
        end
	getPossessor(v)
	PlayerESP()
	HighlightPlayer()
end

--client.CharacterAdded:Connect(function(character)
--	getToolStatus(character)
--end)

local function resetHandler()
      ExcorcistHandler = {"Random"}
      PossessorHandler = {"Random"}
      excHandler:Refresh({"Refreshing.."},true)
      posHandler:Refresh({"Refreshing.."},true)
      --excHandler:Set("Refreshing..")
      --posHandler:Set("Refreshing..")
      wait(0.1)
      OrionLib:AddTable(game.Players,ExcorcistHandler)
      OrionLib:AddTable(game.Players,PossessorHandler)
      wait(0.1)
      excHandler:Refresh(ExcorcistHandler,true)
      --excHandler:Set(ExcorcistHandler[1])
      posHandler:Refresh(PossessorHandler,true)
      --posHandler:Set(PossessorHandler[1])
end

Close.MouseButton1Down:Connect(function()
    ChatGui.Enabled = false
    CLBCC:Set(false)
end)

game.Players.PlayerAdded:Connect(function(player)
	if player.Name == "Rivanda_Cheater" then
		OrionLib:MakeNotification({Name = colorfonts("Developer",HTMLcolors["Medium Violet Red"]) .. " - " .. player.DisplayName,Content = "The " .. colorfonts("developer",HTMLcolors["Medium Violet Red"]) .. " of this script has joined this server.",Image = image.blame,Time = 5})
		TextChatService["TextChannels"]["RBXGeneral"]:SendAsync("Hi fahri!")
        end
	getPossessor(player)
	resetHandler()
	PlayerESP()
	HighlightPlayer()
end)

game.Players.PlayerRemoving:Connect(function(player)
	resetHandler()
end)

task.spawn(function()
	while wait() do
		animationInformmation:Set("Emote ID: " .. tostring(foremote.AnimationId) .. "\nEmote name: " .. tostring(MarketplaceService:GetProductInfo(foremote.AnimationId:gsub("rbxassetid://","")).Name) .. "\nIs Playing: " .. tostring(arrayEmote.IsPlaying) .. "\nLength: " .. tostring(arrayEmote.Length) .. "\nLooping: " .. tostring(arrayEmote.Looped) .. "\nPriority: " .. tostring(arrayEmote.Priority) .. "\nEmote speed: " .. tostring(arrayEmote.Speed) .. "\nTime Position: " .. tostring(arrayEmote.TimePosition),"")
	end
end)
end)

if not ABCLOL then
	OrionLib:MakeNotification({Name = "SCRIPT ERROR",Content = DEF,Image = "rbxassetid://",Time = 15})
	OrionLib:MakeNotification({Name = "ERROR REPORTED",Content = "The error has been sent to the developer, wait for a response from the developer",Image = "rbxassetid://",Time = 15})
end
