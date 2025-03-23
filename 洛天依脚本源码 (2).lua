game:GetService("StarterGui"):SetCore("SendNotification",{
    Title = "Sn",
    Text = "Permission = true",
    Icon = "rbxassetid://17240832325",
    Duration = 60,
    Callback = bindable,
    Button1 = "invalid",
    Button2 = "Effective opening"
})

local OrionLib = loadstring(game:HttpGet("https://pastebin.com/raw/VeaMSRZK"))()
local LBLG = Instance.new("ScreenGui", getParent)
local LBL = Instance.new("TextLabel", getParent)
local player = game.Players.LocalPlayer

LBLG.Name = "LBLG"
LBLG.Parent = game.CoreGui
LBLG.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
LBLG.Enabled = true
LBL.Name = "LBL"
LBL.Parent = LBLG
LBL.BackgroundColor3 = Color3.new(1, 1, 1)
LBL.BackgroundTransparency = 1
LBL.BorderColor3 = Color3.new(0, 0, 0)
LBL.Position = UDim2.new(0.75,0,0.010,0)
LBL.Size = UDim2.new(0, 133, 0, 30)
LBL.Font = Enum.Font.GothamSemibold
LBL.Text = "标志"
LBL.TextColor3 = Color3.new(155, 155, 155)
LBL.TextScaled = true
LBL.TextSize = 14
LBL.TextWrapped = true
LBL.Visible = true

local FpsLabel = LBL
local Heartbeat = game:GetService("RunService").Heartbeat
local LastIteration, Start
local FrameUpdateTable = { }

local function HeartbeatUpdate()
	LastIteration = tick()
	for Index = #FrameUpdateTable, 1, -1 do
		FrameUpdateTable[Index + 1] = (FrameUpdateTable[Index] >= LastIteration - 1) and FrameUpdateTable[Index] or nil
	end
	FrameUpdateTable[1] = LastIteration
	local CurrentFPS = (tick() - Start >= 1 and #FrameUpdateTable) or (#FrameUpdateTable / (tick() - Start))
	CurrentFPS = CurrentFPS - CurrentFPS % 1
	FpsLabel.Text = ("北京时间:"..os.date("%H").."时"..os.date("%M").."分"..os.date("%S"))
end

OrionLib:MakeNotification({
                    Name = "正在开启反挂机请稍等...",
                    Content = "Akf 开启中...",
                    Time = 2
                })     
print("你好FLUXUS")
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		   wait(1)
		   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)      

OrionLib:MakeNotification({
                    Name = "开启成功",
                    Content = "AKF",
                    Time = 1
                })
    wait(1)
Start = tick()
Heartbeat:Connect(HeartbeatUpdate)
local Window = OrionLib:MakeWindow({Name = "洛天依脚本", HidePremium = false, SaveConfig =true,IntroText="洛天依脚本", ConfigFolder = "洛天依脚本"})
local Tab = Window:MakeTab({
	Name = "脚本简介",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddParagraph("云端更新")
Tab:AddParagraph("免费缝合脚本")
Tab:AddParagraph("提示","呵呵，2改垃圾神金脚本源码感觉他的比我的好因为我的用不了") 
Tab:AddParagraph("你的注入器:"..identifyexecutor())
Tab:AddParagraph("作者","洛天依")
Tab:AddParagraph("制作日期:","2025.3.23")
Tab:AddParagraph("您当前服务器的ID"," "..game.GameId.."")
local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddSlider({

	Name = "速度",

	Min = 16,

	Max = 200,

	Default = 16,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value

	end    

})
Tab:AddSlider({

	Name = "跳跃高度",

	Min = 50,

	Max = 200,

	Default = 50,

	Color = Color3.fromRGB(255,255,255),

	Increment = 1,

	ValueName = "数值",

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value

	end    

})   
Tab:AddTextbox({

	Name = "移动速度设置",

	Default = "",

	TextDisappear = true,

	Callback = function(Value)

		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置速度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |速度",
                    Content = "成功",
                    Time = 3
                })
	end
})	
Tab:AddTextbox({
	Name = "重力设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Workspace.Gravity = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置重力:  "..game.Workspace.Gravity.."   |重力",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddTextbox({
	Name = "跳跃高度设置",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
		
		OrionLib:MakeNotification({
                    Name = "成功设置跳跃高度:  "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed.."   |高度",
                    Content = "成功",
                    Time = 3
                })
	end
})
Tab:AddButton({
    Name="反踢出",
    Callback=function()
    loadstring(game:HttpGet('https://github.com/XiaoyeQWQ/Anti-Kick/raw/refs/heads/main/Main-Kick-function-Source.lua', true))()
    end
})
Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then

		    game.Lighting.Ambient = Color3.new(1, 1, 1)

		else

		    game.Lighting.Ambient = Color3.new(0, 0, 0)		    		    

		end

	end	
})
Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
		if Value then
		    Noclip = true
		    Stepped = game.RunService.Stepped:Connect(function()
			    if Noclip == true then
				    for a, b in pairs(game.Workspace:GetChildren()) do
                        if b.Name == game.Players.LocalPlayer.Name then
                            for i, v in pairs(game.Workspace[game.Players.LocalPlayer.Name]:GetChildren()) do
                                if v:IsA("BasePart") then
                                    v.CanCollide = false
                                end
                            end
                        end
                    end
			    else
				    Stepped:Disconnect()
			    end
		    end)
	    else
		    Noclip = false
	    end
	end
})

Tab:AddButton({
  Name = "子弹追踪",
  Callback = function()
    local Camera = game:GetService("Workspace").CurrentCamera
local Players = game:GetService("Players")
local LocalPlayer = game:GetService("Players").LocalPlayer

local function GetClosestPlayer()
   local ClosestPlayer = nil
   local FarthestDistance = math.huge

   for i, v in pairs(Players.GetPlayers(Players)) do
       if v ~= LocalPlayer and v.Character and v.Character.FindFirstChild(v.Character, "HumanoidRootPart") then
           local DistanceFromPlayer = (LocalPlayer.Character.HumanoidRootPart.Position - v.Character.HumanoidRootPart.Position).Magnitude

           if DistanceFromPlayer < FarthestDistance then
               FarthestDistance = DistanceFromPlayer
               ClosestPlayer = v
           end
       end
   end

   if ClosestPlayer then
       return ClosestPlayer
   end
end

local GameMetaTable = getrawmetatable(game)
local OldGameMetaTableNamecall = GameMetaTable.__namecall
setreadonly(GameMetaTable, false)

GameMetaTable.__namecall = newcclosure(function(object, ...)
   local NamecallMethod = getnamecallmethod()
   local Arguments = {...}

   if tostring(NamecallMethod) == "FindPartOnRayWithIgnoreList" then
       local ClosestPlayer = GetClosestPlayer()

       if ClosestPlayer and ClosestPlayer.Character then
           Arguments[1] = Ray.new(Camera.CFrame.Position, (ClosestPlayer.Character.Head.Position - Camera.CFrame.Position).Unit * (Camera.CFrame.Position - ClosestPlayer.Character.Head.Position).Magnitude)
       end
   end

   return OldGameMetaTableNamecall(object, unpack(Arguments))
end)
  end
})
Tab:AddButton({
	Name = "无敌人物",
	Callback = function()
local lp = game:GetService "Players".LocalPlayer
if lp.Character:FindFirstChild "Head" then
    local char = lp.Character
    char.Archivable = true
    local new = char:Clone()
    new.Parent = workspace
    lp.Character = new
    wait(2)
    local oldhum = char:FindFirstChildWhichIsA "Humanoid"
    local newhum = oldhum:Clone()
    newhum.Parent = char
    newhum.RequiresNeck = false
    oldhum.Parent = nil
    wait(2)
    lp.Character = char
    new:Destroy()
    wait(1)
    newhum:GetPropertyChangedSignal("Health"):Connect(
        function()
            if newhum.Health <= 0 then
                oldhum.Parent = lp.Character
                wait(1)
                oldhum:Destroy()
            end
        end)
    workspace.CurrentCamera.CameraSubject = char
    if char:FindFirstChild "Animate" then
        char.Animate.Disabled = true
        wait(.1)
        char.Animate.Disabled = false
    end
    lp.Character:FindFirstChild "Head":Destroy()
end
end
})
Tab:AddButton({
  Name = "无限跳",
  Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/V5PQy3y0", true))()
  end
})
Tab:AddButton({
  Name = "控制脚本",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/sdhdbxub/sdhdbxub/main/YNKUM.lua"))()
  end
})
Tab:AddButton({
  Name = "回满血部分服务器不可用",
  Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/cbhlyy/lyycbh/main/nengliangtiao"))()
  end
})
Tab:AddButton({
    Name="自杀",
    Callback=function()
        game.Players.LocalPlayer.Character.Humanoid.Health=0
HumanDied = true
    end
})
Tab:AddButton({
	Name = "爬墙",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/zXk4Rq2r"))()
    end
})
Tab:AddButton ({
	Name = "高画质",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()
	end
})
Tab:AddButton({
  Name = "死亡笔记",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/dingding123hhh/tt/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0%20(1).txt"))()
  end
})
Tab:AddButton({
    Name = "偷别人物品栏",
    Callback = function()
          --Copy And Paste:
    for i,v in pairs (game.Players:GetChildren()) do
    wait()
    for i,b in pairs (v.Backpack:GetChildren()) do
    b.Parent = game.Players.LocalPlayer.       Backpack
    end
    end
      end
})
Tab:AddButton({
	Name = "伪名说话",
	Callback = function()
loadstring(game:HttpGet(('https://pastefy.ga/zCFEwaYq/raw'),true))()
	end 
})
local Section = Tab:AddSection({
	Name = "飞行"
})
Tab:AddButton ({
	Name = "飞行v3(修复",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/UVAj0uWu"))()
	end
})
Tab:AddButton ({
	Name = "阿尔宙斯飞行",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/5zJu3hfN"))()
	end
})
local Section = Tab:AddSection({
	Name = ""
})
Tab:AddButton ({
	Name = "锁头",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/6RQGbFqD"))()
	end
})
Tab:AddButton ({
	Name = "牛逼一点的锁头整合",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/BINjiaobzx6/BINjiao/main/obf_W9sUzSqwIqu68V8vk5DofNGe8jyjCuSVvo0X4IBRXZRQYMAp2W2md5Suhz6Jyq4E.lua"))()
	end
})
Tab:AddButton ({
	Name = "锁头(队伍检测)",
	Callback = function ()
	_G.AimbotEnabled = Value

		local Camera = workspace.CurrentCamera
		local Players = game:GetService("Players")
		local RunService = game:GetService("RunService")
		local UserInputService = game:GetService("UserInputService")
		local TweenService = game:GetService("TweenService")
		local LocalPlayer = Players.LocalPlayer
		local Holding = false

		_G.TeamCheck = true
		_G.AimPart = "Head"
		_G.Sensitivity = 0

		_G.CircleSides = 64
		_G.CircleColor = Color3.fromRGB(255, 255, 255)
		_G.CircleTransparency = 0.7
		_G.CircleRadius = 80
		_G.CircleFilled = false
		_G.CircleVisible = false
		_G.CircleThickness = 0

		local FOVCircle = Drawing.new("Circle")
		FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
		FOVCircle.Radius = _G.CircleRadius
		FOVCircle.Filled = _G.CircleFilled
		FOVCircle.Color = _G.CircleColor
		FOVCircle.Visible = _G.CircleVisible
		FOVCircle.Radius = _G.CircleRadius
		FOVCircle.Transparency = _G.CircleTransparency
		FOVCircle.NumSides = _G.CircleSides
		FOVCircle.Thickness = _G.CircleThickness

		local function GetClosestPlayer()
			local MaximumDistance = _G.CircleRadius
			local Target = nil

			for _, v in next, Players:GetPlayers() do
				if v.Name ~= LocalPlayer.Name then
					if _G.TeamCheck == true then
						if v.Team ~= LocalPlayer.Team then
							if v.Character ~= nil then
								if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
									if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
										local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
										local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

										if VectorDistance < MaximumDistance then
											Target = v
										end
									end
								end
							end
						end
					else
						if v.Character ~= nil then
							if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
								if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
									local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
									local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude

									if VectorDistance < MaximumDistance then
										Target = v
									end
								end
							end
						end
					end
				end
			end

			return Target
		end

		UserInputService.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = true
			end
		end)

		UserInputService.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton2 then
				Holding = false
			end
		end)

		RunService.RenderStepped:Connect(function()
			FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Filled = _G.CircleFilled
			FOVCircle.Color = _G.CircleColor
			FOVCircle.Visible = _G.CircleVisible
			FOVCircle.Radius = _G.CircleRadius
			FOVCircle.Transparency = _G.CircleTransparency
			FOVCircle.NumSides = _G.CircleSides
			FOVCircle.Thickness = _G.CircleThickness

			if Holding == true and _G.AimbotEnabled == true then
				TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()
			end
		end)
	end    
})
Tab:AddButton({
	Name = "普通范围",
    Default = false,
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/jiNwDbCN"))()
	end
})
Tab:AddButton({
	Name = "中等范围",
    Default = false,
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/x13bwrFb"))()
	end
})
Tab:AddButton ({
	Name = "超大范围",
	Callback = function ()
	 loadstring(game:HttpGet("https://pastebin.com/raw/KKY9EpZU"))()
	end
})
Tab:AddButton({
	Name = "透视",
	Callback = function()
      	local FillColor = Color3.fromRGB(175,25,255)
local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineColor = Color3.fromRGB(255,255,255)
local OutlineTransparency = 0

local CoreGui = game:FindService("CoreGui")
local Players = game:FindService("Players")
local lp = Players.LocalPlayer
local connections = {}

local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

local function Highlight(plr)
    local Highlight = Instance.new("Highlight")
    Highlight.Name = plr.Name
    Highlight.FillColor = FillColor
    Highlight.DepthMode = DepthMode
    Highlight.FillTransparency = FillTransparency
    Highlight.OutlineColor = OutlineColor
    Highlight.OutlineTransparency = 0
    Highlight.Parent = Storage
    
    local plrchar = plr.Character
    if plrchar then
        Highlight.Adornee = plrchar
    end

    connections[plr] = plr.CharacterAdded:Connect(function(char)
        Highlight.Adornee = char
    end)
end

Players.PlayerAdded:Connect(Highlight)
for i,v in next, Players:GetPlayers() do
    Highlight(v)
end

Players.PlayerRemoving:Connect(function(plr)
    local plrname = plr.Name
    if Storage[plrname] then
        Storage[plrname]:Destroy()
    end
    if connections[plr] then
        connections[plr]:Disconnect()
    end
end)
  	end
})
Tab:AddButton({
	Name = "飞车",
	Callback = function()
loadstring(game:HttpGet("https://pastebin.com/raw/MHE1cbWF"))()
	end
})
Tab:AddButton({
	Name = "电脑键盘",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
  	end    
})
Tab:AddButton({
	Name = "踏空行走",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()
	end
})
Tab:AddButton({
	Name = "infiniteyield",
	Callback = function()
loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'),true))()
  	end
})
Tab:AddButton({
	Name = "点击传送工具",
	Callback = function()
mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "工具 点击传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack
	end
})
Tab:AddButton({
    Name = "动作",
    Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Zj4NnKs6"))()
    end
})
Tab:AddButton ({
	Name = "玩家进入提示",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()
	end
})
Tab:AddButton({
  Name = "旋转",
  Callback = function()
    loadstring(game:HttpGet('https://pastebin.com/raw/r97d7dS0', true))()
  end
})
Tab:AddButton({
	Name = "FPS加强",
	Callback = function()
     loadstring(game:HttpGet("https://raw.githubusercontent.com/gclich/FPS-X-GUI/main/FPS_X.lua"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "动作中心",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton({
    Name="撸管(r6)",
    Callback=function()
    loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
    end
})
Tab:AddButton({
    Name="撸管(r15)",
    Callback=function()
     loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
    end
})
Tab:AddButton({
    Name="黄色动作",
    Callback=function()
    loadstring(game:HttpGet(('https://pastebin.com/raw/ZfaM6tNg'),true))()
    end
})
Tab:AddButton({
    Name="kj动画",
    Callback=function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tariviste/Scripts/eaf7c8bdc00fcd01c656d9b4c103b6e4a260e374/The%20Strongest%20Battlegrounds"))()
    end
})
local Tab = Window:MakeTab({
	Name = "免费r币",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "80r币",
	Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
	end
})
Tab:AddButton ({
	Name = "160r币",
	Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
	end
})
Tab:AddButton ({
	Name = "400r币",
	Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
	end
})
Tab:AddButton ({
	Name = "80r币",
	Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
	end
})
Tab:AddButton ({
	Name = "800r币",
	Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
	end
})
Tab:AddButton ({
	Name = "1200r币",
	Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
	end
})
Tab:AddButton ({
	Name = "10000r币",
	Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
	end
})
Tab:AddButton ({
	Name = "450r币和会员",
	Callback = function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/CloudX-ScriptsWane/White-ash-script/main/Free%20Robux.LUA'))()
	end
})
local Tab = Window:MakeTab({
	Name = "doors",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "绕过防作弊",
	Callback = function ()
game:GetService("ReplicatedStorage").ItemShop.Lighter:SetAttribute('Price',5) 
	end
})
Tab:AddButton({
  Name = "无限重生",
  Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Vynixius/main/Doors/Script.lua"))()
  end
})
Tab:AddButton ({
	Name = "脚本汉化",
	Callback = function ()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()
	end
})
Tab:AddButton ({
	Name = "主动生成Rush.txt",
	Callback = function ()
loadstring(game:HttpGet("https://rawscripts.net/raw/DOORS-Custom-Entity-S*er-V2-21705"))()	 
	end
})
Tab:AddButton ({
	Name = "最强汉化",
	Callback = function ()
loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()	 
	end
})
Tab:AddButton ({
	Name = "生日模式",
	Callback = function ()
	 loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/BirthdayModeDOORS/main/BirthdayModeScript'))()
	end
})
Tab:AddButton ({
	Name = "硬核模式v6",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.Motherfucker.com/Idiot114514/false/main/Bad-Hardcore_Mode.lua"))()
	end
})
Tab:AddButton ({
	Name = "极端模式",
	Callback = function ()
	 loadstring(game:HttpGet('https://github.com/HollowedOutMods/MayhemMode/blob/main/loader.lua?raw=true'))()
	end
})
local Section = Tab:AddSection({
	Name = "道具"
})
Tab:AddButton({
	Name = "圣光手雷",
	Callback = function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()
  	end
})
  Tab:AddButton({
	Name = "十字架",
	Callback = function()
	loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()
  	end
})
Tab:AddButton ({
	Name = "臭猫",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell Plushie"))()
	end
})
Tab:AddButton({
	Name = "seek枪",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/seekgun.lua"))()
  	end    
})

Tab:AddButton({
	Name = "魔法书",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book"))()
  	end    
})

Tab:AddButton({
	Name = "无线电量的手电筒",
	Callback = function()
        loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()
  	end    
})

Tab:AddButton({
	Name = "香蕉枪",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()
  	end    
})

Tab:AddButton({
	Name = "糖果",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/persopoiu/scripts/main/candyscript/candy.lua"))()
  	end    
})

Tab:AddButton({
	Name = "幸运方块",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Lucky%20Block"))()
  	end    
})

Tab:AddButton({
	Name = "磁铁",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()
  	end    
})
Tab:AddButton({
	Name = "变身",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Morphing/MorphScript.lua"))();
  	end    
})
Tab:AddButton({
	Name = "蜡烛",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ChronoAccelerator/Public-Scripts/main/Items/Candle.lua"))()
  	end    
})
Tab:AddButton({
	Name = "吸尘器",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/EverythingGunByNeRD.lua"))()
  	end    
})
Tab:AddButton({
	Name = "火箭筒",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/sharksharksharkshark/musical-pancake/main/huo.txt"))()
  	end    
})

Tab:AddButton({
	Name = "臭猫",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
  	end    
})

Tab:AddButton({
	Name = "巧克力",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()
  	end    
})

Tab:AddButton({
	Name = "炸弹",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/IcegunByNerd.lua"))()
  	end    
})

Tab:AddButton({
	Name = "木棍刚开门使用",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Debug%20Stick"))()
  	end    
})
local Tab = Window:MakeTab({
	Name = "忍者传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "1",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/zerpqe/script/main/NinjaLegends.lua"))()
	end
})
Tab:AddButton ({
	Name = "2",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/5repo/main/script4.lua"))()
	end
})

local Section = Tab:AddSection({
	Name = "传送岛屿"
})

Tab:AddButton({
	Name = "传送到出生岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(25.665502548217773, 3.4228405952453613, 29.919952392578125)
	end
})
Tab:AddButton({
	Name = "传送到魔法",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(51.17238235473633, 766.1807861328125, -138.44842529296875)
	end
})
Tab:AddButton({
	Name = "传送到星岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(207.2932891845703, 2013.88037109375, 237.36672973632812)
	end
})
Tab:AddButton({
	Name = "传送到密岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(171.97178649902344, 4047.380859375, 42.0699577331543)
	end
})
Tab:AddButton({
	Name = "传送到天空岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.83824157714844, 5657.18505859375, 73.5014877319336)
	end
})
Tab:AddButton({
	Name = "传送到冷岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(139.28330993652344, 9285.18359375, 77.36406707763672)
	end
})
Tab:AddButton({
	Name = "传送到无限岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(149.34817504882812, 13680.037109375, 73.3861312866211)
	end
})
Tab:AddButton({
	Name = "传送到沙岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(133.37144470214844, 17686.328125, 72.00334167480469)
	end
})
Tab:AddButton({
	Name = "传送到雷岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(143.19349670410156, 24070.021484375, 78.05432891845703)
	end
})
Tab:AddButton({
	Name = "传送到远古炼狱岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.27163696289062, 28256.294921875, 69.3790283203125)
	end
})
Tab:AddButton({
	Name = "传送到暗影岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.74267578125, 33206.98046875, 57.495574951171875)
	end
})
Tab:AddButton({
	Name = "传送到灵魂岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.76148986816406, 39317.5703125, 61.06639862060547)
	end
})
Tab:AddButton({
	Name = "传送到奇迹岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.2720184326172, 46010.5546875, 55.941951751708984)
	end
})
Tab:AddButton({
	Name = "传送到黄金岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(128.32339477539062, 52607.765625, 56.69411849975586)
	end
})
Tab:AddButton({
	Name = "传送到传奇岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(146.35226440429688, 59594.6796875, 77.53300476074219)
	end
})
Tab:AddButton({
	Name = "传送到科技传奇岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(137.3321075439453, 66669.1640625, 72.21722412109375)
	end
})
Tab:AddButton({
	Name = "传送到超能岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.48077392578125, 70271.15625, 57.02311325073242)
	end
})
Tab:AddButton({
	Name = "传送到混沌传奇岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(148.58590698242188, 74442.8515625, 69.3177719116211)
	end
})
Tab:AddButton({
	Name = "传送到黑暗岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(136.9700927734375, 79746.984375, 58.54051971435547)
	end
})
Tab:AddButton({
	Name = "传送到黑暗元素岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(141.697265625, 83198.984375, 72.73107147216797)
	end
})
Tab:AddButton({
	Name = "传送到和平岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.3157501220703, 87051.0625, 66.78429412841797)
	end
})
Tab:AddButton({
	Name = "传送到漩涡岛",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(135.08216857910156, 91246.0703125, 69.56692504882812)
	end
})
Tab:AddButton({
	Name = "传送到35倍金币区域",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(86.2938232421875, 91245.765625, 120.54232788085938)
	end
})
autoswing = false
function swinging()
    spawn(
        function()
            while autoswing == true do
                task.wait()
                game:GetService("Players").LocalPlayer.ninjaEvent:FireServer("swingKatana")
                if not autoswing then
                    break
                end
            end
        end
    )
end
autosell = false
function selling()
    spawn(
        function()
            while autosell == true do
                task.wait(.01)
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                    wait(.1)
                    game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                        game.Workspace.Part.CFrame
                    if not autosell then
                        break
                    end
                end
            end
        end
    )
end
autosellmax = false
function maxsell()
    spawn(
        function()
            while autosellmax == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    if game.Players.LocalPlayer.PlayerGui.gameGui.maxNinjitsuMenu.Visible == true then
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        task.wait()
                        game.workspace.sellAreaCircles["sellAreaCircle7"].circleInner.CFrame =
                            game.Workspace.Part.CFrame
                    end
                end
                if not autosellmax then
                    break
                end
            end
        end
    )
end
autobuyswords = false
function buyswords()
    spawn(
        function()
            while autobuyswords == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSwords"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyswords then
                    break
                end
            end
        end
    )
end
autobuybelts = false
function buybelts()
    spawn(
        function()
            while autobuybelts == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllBelts"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuybelts then
                    break
                end
            end
        end
    )
end
autobuyranks = false
function buyranks()
    spawn(
        function()
            while autobuyranks == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyRank"
                    local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
                    end
                end
                if not autobuyranks then
                    break
                end
            end
        end
    )
end
autobuyskill = false
function buyskill()
    spawn(
        function()
            while autobuyskill == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllSkills"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyskill then
                    break
                end
            end
        end
    )
end
autobuyshurikens = false
function buyshurikens()
    spawn(
        function()
            while autobuyshurikens == true do
                task.wait()
                if game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart") then
                    local oh1 = "buyAllShurikens"
                    local oh2 = {
                        "Ground",
                        "Astral Island",
                        "Space Island",
                        "Tundra Island",
                        "Eternal Island",
                        "Sandstorm",
                        "Thunderstorm",
                        "Ancient Inferno Island",
                        "Midnight Shadow Island",
                        "Mythical Souls Island",
                        "Winter Wonder Island"
                    }
                    for i = 1, #oh2 do
                        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i])
                    end
                end
                if not autobuyshurikens then
                    break
                end
            end
        end
    )
end

local Section = Tab:AddSection({
	Name = "自动功能"
})
Tab:AddToggle(
    {
        Name = "自动挥舞",
        Default = false,
        Callback = function(x)
            autoswing = x
            if autoswing then
                swinging()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动售卖",
        Default = false,
        Callback = function(x)
            autosell = x
            if autosell then
                selling()
            end
        end
    }
)
    
Tab:AddToggle(
    {
        Name = "存满忍术自动售卖",
        Default = false,
        Callback = function(x)
            autosellmax = x
            if autosellmax then
                maxsell()
            end
        end
    }
)

local Section = Tab:AddSection({
	Name = "自动购买功能"
})

Tab:AddToggle(
    {
        Name = "自动购买剑",
        Default = false,
        Callback = function(x)
            autobuyswords = x
            if autobuyswords then
                buyswords()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买腰带",
        Default = false,
        Callback = function(x)
            autobuybelts = x
            if autobuybelts then
                buybelts()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买称号（等级）",
        Default = false,
        Callback = function(x)
            autobuyranks = x
            if autobuyranks then
                buyranks()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买忍术",
        Default = false,
        Callback = function(x)
            autobuyskill = x
            if autobuyskill then
                buyskill()
            end
        end
    }
)

Tab:AddToggle(
    {
        Name = "自动购买（全部打开）",
        Default = false,
        Callback = function(x)
            autobuyshurikens = x
            if autobuyshurikens then
                buyshurikens()
            end
        end
    }
)

Tab:AddButton(
    {
        Name = "解锁所有岛",
        Callback = function()
            for _, v in next, game.workspace.islandUnlockParts:GetChildren() do
                if v then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.islandSignPart.CFrame
                    wait(.5)
                end
            end
        end
    }
)

Tab:AddButton({
	Name = "死亡宠物",
	Callback = function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(4593.21337890625, 130.87181091308594, 1430.2239990234375)
	end
})
local Tab = Window:MakeTab({
	Name = "力量传奇",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "击飞",
	Callback = function ()
loadstring(game:GetObjects("rbxassetid://10123407012")[1].Source)()	 
	end
})
Tab:AddButton({
    Name = "自动强壮",
    Callback = function()
        local platform = Instance.new("Part")
        platform.Size = Vector3.new(500, 20, 530.1)
        platform.Position = Vector3.new(0, 1000, 133.15)
        platform.CanCollide = true
        platform.Anchored = true
        platform.Parent = workspace
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            char.HumanoidRootPart.CFrame = platform.CFrame + Vector3.new(0, 15, 0)
        end
        local isActive = true
        local rs = game:GetService("RunService").RenderStepped
        local connection = nil
        local function autoExercise()
            local backpack = game.Players.LocalPlayer.Backpack
            for _, tool in ipairs(backpack:GetChildren()) do
                if tool:IsA("Tool") and tool.Name == "Weight" then
                    tool.Parent = game.Players.LocalPlayer.Character
                end
            end
            game:GetService("Players").LocalPlayer.muscleEvent:FireServer("rep")
        end
        connection = rs:Connect(function(deltaTime)
            if isActive then
                autoExercise()
            end
        end)
        local clickCount = 0
        local function toggleExercise()
            clickCount = clickCount + 1
            if clickCount % 2 == 0 then
                isActive = true
                print("off")
            else
                isActive = false
                connection:Disconnect()
                print("open")
            end
        end
        return toggleExercise
    end
})
local Tab = Window:MakeTab({
	Name = "极速传奇",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "无限经验",
	Callback = function ()
	 loadstring(game:HttpGet("https://raw.githubusercontent.com/harisiskandar178/5repo/main/script4.lua"))()
	end
})
Tab:AddButton({
	Name = "自动",
	Callback = function()
	loadstring(game:HttpGet("https://pastebin.com/raw/T9wTL150"))()        
  	end    
})
local Section = Tab:AddSection({
	Name = "传送岛屿"
})

Tab:AddButton({
	Name = "返回出生岛",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9682.98828125, 58.87917709350586, 3099.033935546875)      
  	end    
})
Tab:AddButton({
	Name = "传送到白雪城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-9676.138671875, 58.87917709350586, 3782.69384765625)   
  	end    
})
Tab:AddButton({
	Name = "传送到熔岩城",
	Callback = function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-11054.96875, 216.83917236328125, 4898.62841796875)       
  	end    
})
Tab:AddButton({
	Name = "传送到传奇公路",
	Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-13098.87109375, 216.83917236328125, 5907.6279296875)    
  	end    
})
local Tab = Window:MakeTab({
	Name = "格蕾丝",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "Grace破解所有成就",
	Callback = function ()
loadstring(game:HttpGet("https://rawscripts.net/raw/Grace-get-all-badges-v2-25315"))()	 
	end
})
Tab:AddButton ({
	Name = "1",
	Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoXuAnZang/XKscript/refs/heads/main/GraceXJ.lua"))()	 
	end
})
local Tab = Window:MakeTab({
	Name = "自然灾害",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton({
    Name = "整人指令",
    Callback = function()
        local Version = "0.4.6"
        local Github = "https://github.com/bloxain/Roblox/raw/main/Games/"
        local file = ""
        function Run()
            loadstring(readfile("Bloxhub#7364/Modules/GameFinder.Lua"))()
        end
        if isfolder then
            if isfolder("Bloxhub#7364") and isfolder("Bloxhub#7364/Modules") then
                if readfile("Bloxhub#7364/Modules/Version.lua") == Version then
                    Run()
                else
                    writefile("Bloxhub#7364/Modules/Version.lua", Version)
                    loadstring(game:HttpGet("https://github.com/bloxain/Roblox/raw/main/modules/Updater.Lua"))()
                    Run()
                end
            else
                makefolder("Bloxhub#7364")
                makefolder("Bloxhub#7364/Modules")
                writefile("Bloxhub#7364/Modules/Version.lua", Version)
                loadstring(game:HttpGet("https://github.com/bloxain/Roblox/raw/main/modules/Updater.Lua"))()
                Run()
            end
        end
    end
})

Tab:AddButton ({
	Name = "通用",
	Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/2dgeneralspam1/scripts-and-stuff/master/scripts/LoadstringUjHI6RQpz2o8", true))()	 
	end
})
Tab:AddButton ({
	Name = "汉化",
	Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/xiao122231/xiao122231/main/%E8%87%AA%E7%84%B6%E7%81%BE%E5%AE%B3"))()	 
	end
})
local Tab = Window:MakeTab({
	Name = "俄亥俄州",
	Icon = "rbxassetid://7733779610",
	PremiumOnly = false
})
Tab:AddButton ({
	Name = "脚本",
	Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/jiankeQWQ/jiankeV3/main/ehaiezhou"))()	 
	end
})
Tab:AddButton ({
	Name = "自动捡验钞机",
	Callback = function ()
loadstring(game:HttpGet("https://pastebin.com/raw/3VpWVZtC"))() 
	end
})
Tab:AddButton ({
	Name = "自动工作＋传送工作地点",
	Callback = function ()
loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()	 
	end
})
Tab:AddButton ({
	Name = "自动印钞机＋换服",
	Callback = function ()
loadstring(game:HttpGet("https://github.com/root-jiege/-/raw/refs/heads/main/Auto-MoneyPrint-with-Server-Hop-Free-NotMoney.lua"))()
	end
})