local AzurebluePublish = Instance.new("ScreenGui")
local PearlnightblueIdentity = Instance.new("TextLabel")
local z=""for n=1,math.random(10,20)do z=z..string.char(math.random(48,122))end
local zz=""for nn=1,math.random(10,20)do zz=zz..string.char(math.random(48,122))end -- lol what is the point of htis
local role = '?' 
-- thx gui to lua
AzurebluePublish.Parent = game:GetService'CoreGui'
AzurebluePublish.Name = z
AzurebluePublish.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
AzurebluePublish.DisplayOrder = 2147483647
PearlnightblueIdentity.Parent = AzurebluePublish
PearlnightblueIdentity.Name = zz
PearlnightblueIdentity.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PearlnightblueIdentity.BackgroundTransparency = 1.000
PearlnightblueIdentity.BorderColor3 = Color3.fromRGB(0, 0, 0)
PearlnightblueIdentity.BorderSizePixel = 0
PearlnightblueIdentity.LayoutOrder = 2147483647
PearlnightblueIdentity.Position = UDim2.new(0.47380811, 0, 0, -55)
PearlnightblueIdentity.Size = UDim2.new(0, 89, 0, 24)
PearlnightblueIdentity.ZIndex = 2147483647
PearlnightblueIdentity.Font = Enum.Font.Arcade
PearlnightblueIdentity.Text = "ROLE: " .. role
PearlnightblueIdentity.TextColor3 = Color3.fromRGB(255, 255, 255)
PearlnightblueIdentity.TextSize = 27.000


local ReplicatedStorage = game:GetService("ReplicatedStorage")
local recv_role = ReplicatedStorage.Network.match.recv_role
recv_role.OnClientEvent:Connect(function(newRole)
    role = newRole
    PearlnightblueIdentity.Text = "ROLE: " .. role 
    if role == "Seeker" then
    print'seeker'

    elseif role == "Hider" then
    print'hider'
    end
end)
