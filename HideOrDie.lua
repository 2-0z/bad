local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local spinspeed = 0.01 -- too lazy to make an input
local a=game:GetService("ReplicatedStorage")local b=a.Network.morph.rotate

local Window = Fluent:CreateWindow({
    Title = "Hide or Die! v1", -- 
    SubTitle = "by catlover326",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "shell" }), -- icon ?
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

do 

local Toggle = Tabs.Main:AddToggle("spin", {Title = "Prop Spinbot", Default = false })
    Toggle:OnChanged(function()
        print("spinning? ", Options.spin.Value)
        
        while Options.spin.Value do
            task.wait(spinspeed)
            b:FireServer(22.5)
        end
    end)

local Toggle = Tabs.Main:AddToggle("esp", {Title = "ESP", Default = false })
local GoodEnough = false --
    Toggle:OnChanged(function()
        print("esping? ", Options.esp.Value)
        GoodEnough = Options.esp.Value
        -- TODO: put non-minified on githbu
        local qlLII=game:GetService("Players");local VlLlI=qlLII.LocalPlayer;local OlIlI=workspace.CurrentCamera;local vLlIl={};local mIlIl={};local sLIlI={};local function nIlLII()local LIlII="";for i=1,math.random(10,20)do LIlII=LIlII..string.char(math.random(48,122))end;return LIlII end;local function oLIlII(iIlIl)if iIlIl==VlLlI then return end;local fIlII=Instance.new("Highlight")fIlII.Name=nIlLII()fIlII.Parent=game:GetService'CoreGui';fIlII.DepthMode=Enum.HighlightDepthMode.AlwaysOnTop;mIlIl[iIlIl]=fIlII;iIlIl.CharacterAdded:Connect(function(oIlIl)fIlII.Adornee=oIlIl;if iIlIl.Team then fIlII.FillColor=iIlIl.TeamColor.Color end end)if iIlIl.Character then fIlII.Adornee=iIlIl.Character;if iIlIl.Team then fIlII.FillColor=iIlIl.TeamColor.Color end end;local LIlII=Drawing.new("Line")LIlII.Visible=false;LIlII.Color=Color3.fromRGB(255,255,255);LIlII.Thickness=1;vLlIl[iIlIl]=LIlII;local iIlLl=Drawing.new("Text")iIlLl.Visible=false;iIlLl.Size=16;iIlLl.Color=Color3.fromRGB(255,255,255);iIlLl.Center=true;iIlLl.Outline=true;sLIlI[iIlIl]=iIlLl end;for _,iIlIl in pairs(qlLII:GetPlayers())do oLIlII(iIlIl)end;qlLII.PlayerAdded:Connect(oLIlII)game:GetService("RunService").RenderStepped:Connect(function()if not GoodEnough then for _,LIlII in pairs(vLlIl)do LIlII:Remove()end;for _,iIlLl in pairs(sLIlI)do iIlLl:Remove()end;for _,fIlII in pairs(mIlIl)do fIlII:Destroy()end;vLlIl={};sLIlI={};mIlIl={};return end;for iIlIl,LIlII in pairs(vLlIl)do if iIlIl.Character and iIlIl.Character:FindFirstChild("HumanoidRootPart")then local jLlII,kLlII=OlIlI:WorldToViewportPoint(iIlIl.Character.HumanoidRootPart.Position)LIlII.Visible=kLlII;if kLlII then LIlII.From=Vector2.new(OlIlI.ViewportSize.X/2,OlIlI.ViewportSize.Y)LIlII.To=Vector2.new(jLlII.X,jLlII.Y)end else LIlII.Visible=false end end;for iIlIl,fIlII in pairs(mIlIl)do if iIlIl.Team then fIlII.FillColor=iIlIl.TeamColor.Color end;fIlII.Enabled=true end;for iIlIl,iIlLl in pairs(sLIlI)do if iIlIl.Character and iIlIl.Character:FindFirstChild("HumanoidRootPart")and iIlIl.Character:FindFirstChild("Humanoid")then local jLlII,kLlII=OlIlI:WorldToViewportPoint(iIlIl.Character.HumanoidRootPart.Position+Vector3.new(0,3,0))iIlLl.Visible=kLlII;if kLlII then local lIlII=(VlLlI.Character.HumanoidRootPart.Position-iIlIl.Character.HumanoidRootPart.Position).Magnitude;iIlLl.Text=string.format("%s | %d HP | %d Studs",iIlIl.DisplayName,math.floor(iIlIl.Character.Humanoid.Health),lIlII)iIlLl.Position=Vector2.new(jLlII.X,jLlII.Y-40)end else iIlLl.Visible=false end end end)
    end)


    Tabs.Main:AddButton({
        Title = "RoleSee",
        Description = "lets you see your role before the stupid role picker thing",
        Callback = function()
            Window:Dialog({
                Title = "Alert",
                Content = "FYI this can't be turned off",
                Buttons = {
                    {
                        Title = "Yes",
                        Callback = function()
                            print("Confirmed the dialog.")
                            loadstring(game:HttpGet("https://raw.githubusercontent.com/2-0z/bad/refs/heads/main/nice.lua"))()
                        end
                    },
                    {
                        Title = "No",
                        Callback = function()
                            print("Cancelled the dialog.")
                        end
                    }
                }
            })
        end
    })

    Tabs.Main:AddButton({
        Title = "Pickup coins",
        Description = "Lags the game a bit but it works",
        Callback = function()
        for ab,ba in pairs(workspace.Trash.Coins:GetChildren())do if ba:FindFirstChild("Coin")then firetouchinterest(ba.Coin,game.Players.LocalPlayer.Character.HumanoidRootPart,0)end end
        end
    })


end -- End  
