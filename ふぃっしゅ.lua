local Fluent = loadstring(game:HttpGet("https://pastebin.com/raw/Ccr6spAW"))()
local SaveManager = loadstring(game:HttpGet("https://pastebin.com/raw/DEgJ153E"))()
local InterfaceManager = loadstring(game:HttpGet("https://pastebin.com/raw/2mBaP8gj"))()

local Window = Fluent:CreateWindow({
	Title = "マクシミリアン様専用",
	SubTitle = "",
	TabWidth = 160,
	Size = UDim2.fromOffset(480, 380),
	Acrylic = false, 
	Theme = "Light",
	MinimizeKey = Enum.KeyCode.LeftControl
})

do 
	Config = {

	}
	_G.Config = Config
	AllFuncs = {}
	Threads = getgenv().Threads
	Players = game.Players
	LocalPlayer = game.Players.LocalPlayer
	Client = game.Players.LocalPlayer


	-- \\ Module GetService // --

	ReplicatedStorage = game:GetService('ReplicatedStorage')
	RunService = game:GetService("RunService")
	VirtualInputManager = game:GetService('VirtualInputManager')
	CollectionService = game:GetService("CollectionService")
	CoreGui = game:GetService("CoreGui")
	HttpService = game:GetService("HttpService")
	TeleportService = game:GetService("TeleportService")
	VirtualUser = game:GetService("VirtualUser")
	VirtualInputManager = game:GetService("VirtualInputManager")
	UserInputService = game:GetService("UserInputService")


	-- \\ Normal Module // --
	
	PlayerGui = LocalPlayer.PlayerGui
	Backpack = LocalPlayer.Backpack
	request = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request

	Char = Client.Character
	Character = Client.Character
	if not Threads then getgenv().Threads = {} end

	repeat 
		LocalPlayer = Players.LocalPlayer
		wait()
	until LocalPlayer
end

function Notify(Des, Time, title)
    Fluent:Notify({
        Title= title or "スクリプト通知",
        Content = Des,
        Duration = Time or 3
    })
end


_G['スクリプト設定'] = {
    isWindows = UserInputService:GetPlatform() == Enum.Platform.Windows,
    TypeOs = (table.find({Enum.Platform.Windows}, game:GetService('UserInputService'):GetPlatform()) ~= nil and 'Pc') or 'Mb',
    SizeUi = (not isWindows and UDim2.fromOffset(600,300)) or UDim2.fromOffset(560,600),
    AutoSize = true,
    TweenUiSize = true,
    SpeedTweenUi = 0.25,
    StyleTweenUi = Enum.EasingStyle.Quad,
    Mutiply = 1.80,
    SizeX = 550,
    SafePercent = 20,

    AnimationUiToggle = true,
}

_G['スクリプト設定'].SizeUi = (not _G['スクリプト設定'].isWindows and UDim2.fromOffset(600,300)) or UDim2.fromOffset(560,600)
if not _G['スクリプト設定'].isWindows then
    if game.CoreGui:FindFirstChild('UIBUTTON') then
        game.CoreGui:FindFirstChild('UIBUTTON'):Destroy()
    end


	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	local UIBUTTON = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local ImageButton = Instance.new("ImageButton")
	local UICorner = Instance.new("UICorner")
	local UICorner_2 = Instance.new("UICorner")

	UIBUTTON.Name = "UIBUTTON"
	UIBUTTON.Parent = game.CoreGui
	UIBUTTON.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = UIBUTTON
	Frame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Transparency = 1
	Frame.Position = UDim2.new(0.157012194, 0, 0.164366379, 0)
	Frame.Size = UDim2.new(0, 115, 0, 49)

ImageButton.Parent = Frame
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Active = true
ImageButton.Draggable = true
ImageButton.Position = UDim2.new(0.218742043, 0, -0.155235752, 0)
ImageButton.Size = UDim2.new(0, 64, 0, 64)

-- Set initial image to "open"
ImageButton.Image = "rbxassetid://136634905225382" -- Open image asset ID
local isOpen = true -- Variable to track the state

ImageButton.MouseButton1Click:Connect(function()
    -- Animate the button size
    ImageButton:TweenSize(UDim2.new(0, 60, 0, 60), Enum.EasingDirection.In, Enum.EasingStyle.Elastic, 0.1)
    delay(0.1, function()
        ImageButton:TweenSize(UDim2.new(0, 64, 0, 64), Enum.EasingDirection.Out, Enum.EasingStyle.Elastic, 0.1)
    end)

    -- Toggle the image based on the state
    if isOpen then
        ImageButton.Image = "rbxassetid://134717468347051" -- Replace with close image asset ID
    else
        ImageButton.Image = "rbxassetid://136634905225382" -- Open image asset ID
    end
    isOpen = not isOpen -- Toggle the state

    -- Simulate key presses
    local VirtualInputManager = game:GetService("VirtualInputManager")
    VirtualInputManager:SendKeyEvent(true,"RightControl",false,game)
    VirtualInputManager:SendKeyEvent(false,"RightControl",false,game)
    VirtualInputManager:SendKeyEvent(true,"LeftControl",false,game)
    VirtualInputManager:SendKeyEvent(false,"LeftControl",false,game)
end)

UICorner.CornerRadius = UDim.new(0, 100)
UICorner.Parent = ImageButton

	UICorner_2.CornerRadius = UDim.new(0, 10)
	UICorner_2.Parent = Frame


	local UIS = game:GetService('UserInputService')
	local frame = Frame
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil

	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end

	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)

	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				Frame.Transparency = 1
				updateInput(input)
			else
				Frame.Transparency = 1
			end
		end
	end)
end

do -- Settings Initializer
	local path = "Fisch Script/fisch"
	if not isfolder(path) then makefolder(path) end
	DefaultConfigName = path.."/OriConfibg.json"
	ConfigName = path.."/"..Client.UserId.."Config.json"
	Config = isfile(ConfigName) and readfile(ConfigName)
	DefaultConfig = isfile(DefaultConfigName) and readfile(DefaultConfigName)
	if DefaultConfig then
		if type(DefaultConfig) == "string" and DefaultConfig:find"{" then
			local Success,Result
			Success,Result = pcall(function()
				return game:GetService("HttpService"):JSONDecode(DefaultConfig)
			end)
			wait(0.1)
			if Success then
				DefaultConfig = Result
			else
				DefaultConfig = nil
			end
		end
	end
	if isfile(tostring(Client.UserId).."ALC.txt") then
		if readfile(tostring(Client.UserId).."ALC.txt") == "true"  then
			if Config then
				if type(Config) == "string" and Config:find"{" then
					local Success,Result
					Success,Result = pcall(function()
						return game:GetService("HttpService"):JSONDecode(Config)
					end)
					wait(0.1)
					if Success then
						Config = Result
					else
						Config = {}
					end
				else
					Config = {}
				end
			else
				Config = {}
			end
		else
			Config = {}
		end
	else
		writefile(tostring(Client.UserId).."ALC.txt", "true")
		Config = {}
	end
	if getgenv().Config then
		Config = getgenv().Config
	end
end

do -- Config Function
	save = function()
		if not isfolder('Fisch Script') then
			makefolder('Fisch Script')
		end
		writefile(ConfigName,game:GetService("HttpService"):JSONEncode(Config))
	end
	setDefaultConfig = function()
		if not isfolder('Fisch Script') then
			makefolder('Fisch Script')
		end
		writefile(DefaultConfigName,game:GetService("HttpService"):JSONEncode(Config))
	end
end


local Tap = {
	Trade = Window:AddTab({Title = "トレード"}),
	Player = Window:AddTab({Title = "プレイヤー"}),
	Fisch = Window:AddTab({Title = "釣り"}),
}

Toggle = function(Section, NameIndex, Description, ConfigName, Function, ...)
	local Misc = {...}
	ConfigName = ConfigName or NameIndex
	local defaultState = Config[ConfigName] or false

	local CreateToggle = Section:AddToggle((NameIndex or NameIndex.."-toggle"), {
		Title = NameIndex or "null",
		Default = defaultState,
		Description = Description or "",
	})

	CreateToggle:OnChanged(function(v)
		Config[ConfigName] = v
		save()
		if Function then
			Function(v)
		else
			if AllFuncs[ConfigName] then
				local threadRunning = task.spawn(AllFuncs[ConfigName])

				if not v and threadRunning then
					task.cancel(threadRunning)
				end
			end
		end
	end)

	return CreateToggle
end

Slider = function(section,Name,min,max,Rounding,...)
	local SettingName,func = ...
	if not func and type(SettingName) == "function" then func = SettingName end
	if not SettingName then SettingName = Name end
	local default = Config[SettingName]
	local CreateSlider = section:AddSlider((Name or Name.."-slider"), {
		Title =Name or "null",
		Min = min or 0,
		Max = max or 1,
		Default = (Config[SettingName] or default) or min,
		Rounding = (Rounding == true and 1) or 0,
	})

	CreateSlider:OnChanged(function(v)
		save()
		Config[SettingName] = v
	end)
	task.wait()
	return CreateSlider
end

TextBox = function(section,Name,tooltip,PlaceHolder,Numberic,...)
	local SettingName,func = ...
	if not func and type(SettingName) == "function" then func = SettingName end
	if not SettingName then SettingName = Name end
	local CreateInput =section:AddInput((Name or Name.."-input"), {
		Title =Name or "Null",
		Placeholder = PlaceHolder or "Put text here!",
		Numeric = Numberic or false,
		Finished = true,
		Description = tooltip or "",
		Default = Config[SettingName],
	})

	CreateInput:OnChanged(function(value)
		Config[SettingName] = value
		save()
	end)
	task.wait()
	return CreateInput
end

Dropdown = function(section, Name, default, list, multi, ...)
	local SettingName, func = ...
	if not func and type(SettingName) == "function" then func = SettingName end
	SettingName = SettingName or Name

	if multi then
		default = (default or Config[SettingName]) or {}
		if type(Config[SettingName]) == "string" then
			Config[SettingName] = {Config[SettingName]}
		end
	else
		default = (default or Config[SettingName]) or ""
	end

	local CreateDropdown = section:AddDropdown((Name or Name.."-dropdown"), {
		Title = Name or "Null",
		Values = list or {"None"},
		Multi = multi or false,
		Default = default
	})

	CreateDropdown:OnChanged(function(v)
		if multi and type(v) == 'table' then
			Config[SettingName] = {}
			for _, selectedValue in pairs(v) do
				table.insert(Config[SettingName], selectedValue)
			end
		else
			Config[SettingName] = v
		end
		save()
		if func then
			func(v)
		end
	end)

	return CreateDropdown
end

local world_upvr = game:GetService("ReplicatedStorage"):WaitForChild("world")
local Parent_upvr = script.Parent

local PlayerList = {}

-- プレイヤーリストを更新する関数
local function refreshPlayerList()
    PlayerList = {}
    for _, player in ipairs(game.Players:GetPlayers()) do
        table.insert(PlayerList, player.Name)
    end
    print("プレイヤーリストが更新されました")
end

-- 初期プレイヤーリストの取得
refreshPlayerList()

Trade = Tap.Trade:AddSection('')

-- プレイヤーリストのデバッグ表示
for i, playerName in ipairs(PlayerList) do
    print("Player " .. i .. ": " .. playerName)
end

-- ドロップダウンメニューの設定
local SelectedPlayer = nil -- 選択したプレイヤー名を格納する変数
local IngredientDropdown = Dropdown(Trade, "プレイヤーを選択", "", PlayerList, false, "プレイヤーを選択", function(selected)
    SelectedPlayer = selected
end)

-- リフレッシュボタンの追加
Trade:AddButton({
    Title = "プレイヤーリストを更新",
    Callback = function()
        refreshPlayerList()
        -- 古いドロップダウンを削除し、新しいドロップダウンを作成して更新
        IngredientDropdown:Destroy() -- 古いドロップダウンを削除
        IngredientDropdown = Dropdown(Trade, "プレイヤーを選択", "", PlayerList, false, "プレイヤーを選択", function(selected)
            SelectedPlayer = selected
        end)
    end
})

Toggle(Trade, "手に持ってるアイテムを渡す", "", "Auto Press Nearest ProximityPrompt")

AllFuncs['Auto Press Nearest ProximityPrompt'] = function()
    local function getSelectedPlayer()
        local targetPlayer = nil
        for _, player in ipairs(game.Players:GetPlayers()) do
            if player.Name == SelectedPlayer then
                targetPlayer = player
                break
            end
        end
        return targetPlayer
    end

    local function pressProximityPrompt()
        local targetPlayer = getSelectedPlayer()
        if targetPlayer and targetPlayer.Character then
            local prompt = targetPlayer.Character:FindFirstChildWhichIsA("ProximityPrompt", true)
            if prompt then
                fireproximityprompt(prompt)
            end
        end
    end

    while Config['Auto Press Nearest ProximityPrompt'] and task.wait(1) do
        pcall(function()
            pressProximityPrompt()
        end)
    end
end

AllFuncs['Toggle ESP'] = function()
    local LocalPlayer = game.Players.LocalPlayer

    while Config['Toggle ESP'] and task.wait() do
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                local highlight = player.Character:FindFirstChildOfClass("Highlight")
                if not highlight then
                    highlight = Instance.new("Highlight")
                    highlight.Adornee = player.Character
                    highlight.Parent = player.Character
                    highlight.FillColor = Color3.fromRGB(255, 0, 0)
                    highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
                    highlight.FillTransparency = 0.5
                    highlight.OutlineTransparency = 0
                end

                local billboard = player.Character:FindFirstChildOfClass("BillboardGui")
                if not billboard then
                    billboard = Instance.new("BillboardGui")
                    billboard.Adornee = player.Character:FindFirstChild("HumanoidRootPart")
                    billboard.Size = UDim2.new(0, 100, 0, 50)
                    billboard.StudsOffset = Vector3.new(0, 3, 0) -- 名前をもう少し上に移動
                    billboard.Parent = player.Character

                    local nameLabel = Instance.new("TextLabel")
                    nameLabel.Size = UDim2.new(1, 0, 1, 0)
                    nameLabel.BackgroundTransparency = 1
                    nameLabel.Text = player.Name
                    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    nameLabel.TextStrokeTransparency = 0
                    nameLabel.Parent = billboard
                end
            end
        end
    end

    if not Config['Toggle ESP'] then
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                local highlight = player.Character:FindFirstChildOfClass("Highlight")
                if highlight then
                    highlight:Destroy()
                end
                local billboard = player.Character:FindFirstChildOfClass("BillboardGui")
                if billboard then
                    billboard:Destroy()
                end
            end
        end
    end
end

AllFuncs['Black Screen'] = function()
    local screenGui = Instance.new("ScreenGui")
    local frame = Instance.new("Frame")
    
    screenGui.Name = "BlackScreen"
    screenGui.ResetOnSpawn = false  -- リスポーンしても黒い画面が持続するようにする
    screenGui.IgnoreGuiInset = true  -- 上部のGUI要素をカバーする
    screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

    frame.Name = "BlackFrame"
    frame.BackgroundColor3 = Color3.new(0, 0, 0)
    frame.BorderSizePixel = 0
    frame.Size = UDim2.new(1, 0, 1, 0)  -- 画面全体をカバーするサイズに設定
    frame.Parent = screenGui

    while Config['Black Screen'] and task.wait() do
        -- 継続的に何もしないループ
    end
    
    if not Config['Black Screen'] then
        screenGui:Destroy()  -- 画面全体の黒いGUIを削除する
    end
end

AllFuncs['Farm Fish'] = function()
	local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value
	while Config['Farm Fish'] and task.wait() do
		if Backpack:FindFirstChild(RodName) then
			LocalPlayer.Character.Humanoid:EquipTool(Backpack:FindFirstChild(RodName))
		end
		if LocalPlayer.Character:FindFirstChild(RodName) and LocalPlayer.Character:FindFirstChild(RodName):FindFirstChild("bobber") then
			local XyzClone = game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
			XyzClone.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")
			XyzClone.Name = "釣りなう"
			XyzClone.Text = "<font color='#ff4949'>釣りなう </font>: 0%"
			repeat
				pcall(function()
					PlayerGui:FindFirstChild("shakeui").safezone:FindFirstChild("button").Size = UDim2.new(1001, 0, 1001, 0)
					game:GetService("VirtualUser"):Button1Down(Vector2.new(1, 1))
					game:GetService("VirtualUser"):Button1Up(Vector2.new(1, 1))
				end)
				XyzClone.Text = "<font color='#ff4949'>釣りなう </font>: "..tostring(ExportValue(tostring(LocalPlayer.Character:FindFirstChild(RodName).values.lure.Value), 2)).."%"
				RunService.Heartbeat:Wait()
			until not LocalPlayer.Character:FindFirstChild(RodName) or LocalPlayer.Character:FindFirstChild(RodName).values.bite.Value or not Config['Farm Fish']
			XyzClone.Text = "<font color='#ff4949'>釣りなう</font>"
			delay(1.5, function()
				XyzClone:Destroy()
			end)
			repeat
				ReplicatedStorage.events.reelfinished:FireServer(1000000000000000000000000, true)
				task.wait(.5)
			until not LocalPlayer.Character:FindFirstChild(RodName) or not LocalPlayer.Character:FindFirstChild(RodName).values.bite.Value or not Config['Farm Fish']
		else
			LocalPlayer.Character:FindFirstChild(RodName).events.cast:FireServer(1000000000000000000000000)
			task.wait(2)
		end
	end
end

AllFuncs['Sell Fish'] = function()
	while Config['Sell Fish'] and task.wait(3) do
		game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("selleverything"):InvokeServer()
	end
end

AllFuncs['To Pos Stand'] = function()
	while Config['To Pos Stand'] and task.wait() do
		if not Config['SelectPositionStand'] then
			Notify("座標を選択してください")
			Config['To Pos Stand'] = false
			return
		end
		pcall(function()
			LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = Config['SelectPositionStand']
		end)
	end
end

Player = Tap.Player:AddSection('')
Toggle(Player, "ESP", "", "Toggle ESP")

Fisch = Tap.Fisch:AddSection('')
Toggle(Fisch, "画面全体を黒くする", "", "Black Screen")
SelectPosition = Fisch:AddParagraph({        
    Title = "座標が設定されていません"
})
Toggle(Fisch, "自動釣り","", "Farm Fish")
Toggle(Fisch, "設定した座標に固定","", "To Pos Stand")
Fisch:AddButton({
    Title = "座標を設定する",
    Callback = function()
        Config['SelectPositionStand'] = LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame
        SelectPosition:SetTitle("設定された座標 : X " ..
            tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X)) .. 
            " Y " .. tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y)) .. 
            " Z " .. tostring(math.floor(LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z)))
    end
})

Sell = Tap.Fisch:AddSection('どこでも売るゲームパス所有者のみ')
	Toggle(Sell, "自動で魚を売る","", "Sell Fish")

	Sell:AddButton({
		Title = "すべての魚を売る",
		Callback = function()
			ReplicatedStorage:WaitForChild("events"):WaitForChild("selleverything"):InvokeServer()
		end
	})
	Sell:AddButton({
		Title = "手に持ってる魚を売る",
		Callback = function()
			workspace.world.npcs:FindFirstChild("Marc Merchant").merchant.sell:InvokeServer()
		end
	})

GetPlayerProfile = function()
	local Respone = game:HttpGet("https://thumbnails.roblox.com/v1/users/avatar-bust?userIds="..LocalPlayer.UserId.."&size=420x420&format=Png&isCircular=false")
	return HttpService:JSONDecode(Respone)['data'][1]['imageUrl']
end

comma_value = function(Value)
	local Calculated = Value
	while true do
		local Text, Amount = string.gsub(Calculated, "^(-?%d+)(%d%d%d)", "%1,%2")
		Calculated = Text
		if Amount == 0 then break end
	end
	return Calculated
end

function GetPosition()
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		return {
			Vector3.new(0,0,0),
			Vector3.new(0,0,0),
			Vector3.new(0,0,0)
		}
	end
	return {
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z
	}
end

function ExportValue(arg1, arg2)
	return tonumber(string.format("%."..(arg2 or 1)..'f', arg1))
end

AllFuncs.HopServer = function(FullServer) -- Hop Server (Low)
	local FullServer = FullServer or false

	local Http = game:GetService("HttpService")
	local Api = "https://games.roblox.com/v1/games/"

	local _place = game.PlaceId
	local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100"
	local ListServers = function (cursor)
		local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))
		return Http:JSONDecode(Raw)
	end

	local Server, Next; repeat
		local Servers = ListServers(Next)
		Server = Servers.data[1]
		Next = Servers.nextPageCursor
	until Server
	repeat
		if not FullServer then
			game:GetService("TeleportService"):TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)
		else
			if request then
				local servers = {}
				local req = request(
					{
						Url = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true", game.PlaceId)
					}
				).Body;
				local body = game:GetService("HttpService"):JSONDecode(req)
				if body and body.data then
					for i, v in next, body.data do
						if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
							table.insert(servers, 1, v.id)
						end
					end
				end
				if #servers > 0 then
					game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
				else
					return "Couldn't find a server."
				end
			end
		end
		wait()
	until game.PlaceId ~= game.PlaceId
end

IngredientList = {}
for i, v in pairs(workspace.active:GetDescendants()) do
    if v.ClassName == "TextLabel" and v.Text == "Ingredient" then
        local Path = nil
        local function GetRealPart(V)
            if V.ClassName == "Model" then
                Path = V
            else
                GetRealPart(V.Parent)
            end
        end
        GetRealPart(v)
        local OldName = Path.Name
        if Path:FindFirstChildOfClass("MeshPart") and Path:FindFirstChildOfClass("MeshPart").Position.X > 500 then
            -- continueの代わりに条件分岐でスキップ
        else
            if Path:FindFirstChild("PickupPrompt") then
                Path:FindFirstChild("PickupPrompt").HoldDuration = 0
            end
            table.insert(IngredientList, OldName)
        end
    end
end

local RunService = game:GetService("RunService")
local PlayerList = {}
local IngredientList = {}
local Old = os.time()
local Timeing = {} -- Initialize Timeing object

Threads[#Threads+1] = task.spawn(function()
    while wait(0.75) do
        table.clear(PlayerList)
        for _, player in pairs(game:GetService("Players"):GetPlayers()) do
            table.insert(PlayerList, player.Name)
        end
        table.clear(IngredientList)
        for _, v in pairs(workspace.active:GetDescendants()) do
            if v.ClassName == "TextLabel" and v.Text == "Ingredient" then
                local Path = nil
                local function GetRealPart(V)
                    if V.ClassName == "Model" then
                        Path = V
                    else
                        GetRealPart(V.Parent)
                    end
                end
                GetRealPart(v)
                if Path then
                    local OldName = Path.Name
                    if not (Path:FindFirstChildOfClass("MeshPart") and Path:FindFirstChildOfClass("MeshPart").Position.X > 500) then
                        if Path:FindFirstChild("PickupPrompt") then
                            Path:FindFirstChild("PickupPrompt").HoldDuration = 0
                        end
                        table.insert(IngredientList, OldName)
                    end
                end
            end
        end
    end
end)

RunService.Heartbeat:Connect(function()
    local TimeSinceLastPlay = os.time() - Old
    local hours = tostring(math.floor(TimeSinceLastPlay / 3600))
    local minutes = tostring(math.floor((TimeSinceLastPlay % 3600) / 60))
    local seconds = tostring(TimeSinceLastPlay % 60)
    Timeing:SetTitle("Server Joined " .. hours .. " H " .. minutes .. " M " .. seconds .. " S ")
end)

InterfaceManager:SetLibrary(Fluent)
InterfaceManager:SetFolder("NSaveManager")
InterfaceManager:BuildInterfaceSection(Tap.Settings)
Window:SelectTab(1)
SaveManager:LoadAutoloadConfig()
Fluent:SetTheme("Light")
setfflag("TaskSchedulerTargetFps", "1000")
setfpscap(120)
while true do
    if (game:GetService("Workspace").DistributedGameTime % 1 * 60) > 30 then
        setfpscap(120)
    end
    wait(0)
end
