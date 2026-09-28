local a = 'https://raw.githubusercontent.com/Be1for/UI/refs/heads/main/'
local b, c, d = loadstring(game:HttpGet(a .. 'UI.luau'))(), loadstring(game:HttpGet(a .. 'addons/ThemeManager.lua'))(), loadstring(game:HttpGet(a .. 'addons/SaveManager.lua'))()
local e, f = b.Options, b.Toggles

b.ShowToggleFrameInKeybinds = true

local g = b.Unload

if g then
    b.Unload = nil
end

local h = game:HttpGet'https://raw.githubusercontent.com/Be1for/UI/refs/heads/main/esp.luau'

h = h:gsub('getgenv%(%).Library = %{', 'local Library = {')
h = h:gsub('if getgenv%(%).Library and getgenv%(%).Library.Unload then%s*pcall%(getgenv%(%).Library.Unload, getgenv%(%).Library%)%s*end', '')
h = h:gsub('return Library', 'getgenv().ESPLib = Library\nreturn Library')

local i = loadstring(h)()
local j, k = i.Table, i.Unload

j.Enabled = false
getgenv().Library = b

if g then
    b.Unload = g
end

local l = b:CreateWindow{
    Title = 'candy.cc',
    Footer = 't.me/candyware',
    Icon = 'crown',
    NotifySide = 'Right',
    ShowCustomCursor = true,
    Center = true,
    AutoShow = true,
    Resizable = true,
    TabPadding = 10,
    CornerRadius = 10,
    Animations = {
        ToggleWindow = true,
        TabSwitch = true,
        Groupbox = true,
        Dropdown = true,
        KeyPicker = true,
    },
    TabTransitionTime = 0.22,
    TabSwipeOffset = 26,
    TabSwipeFrom = 'bottom',
    EnableSidebarResize = true,
    MinSidebarWidth = 200,
    SidebarCompactWidth = 56,
    ToggleKeybind = Enum.KeyCode.LeftControl,
}

j.Enabled = false
j.Distance = 1000
j.Boxes.Enabled = true
j.Boxes.Gradients.Top = Color3.fromRGB(0, 255, 255)
j.Boxes.Gradients.Bot = Color3.fromRGB(0, 255, 255)
j.Boxes['Bounding Box'].Enabled = true
j.Boxes['Bounding Box'].BoxY = 6
j.Boxes['Bounding Box'].BoxX = 2
j.Boxes['Bounding Box'].IncludeAcsessories = false
j.Boxes['Box Glow'].Enabled = true
j.Boxes['Box Glow'].Top = Color3.fromRGB(0, 255, 255)
j.Boxes['Box Glow'].Bot = Color3.fromRGB(0, 255, 255)
j.Boxes['Box Glow'].Transparency = {0.9, 0.9}
j.Boxes.Filled.Enabled = true
j.Boxes.Filled.Top = Color3.fromRGB(0, 255, 255)
j.Boxes.Filled.Bot = Color3.fromRGB(0, 255, 255)
j.Boxes.Filled.Transparency = {1, 0.75}
j.Bars['Health Bar'].Enabled = true
j.Bars['Health Bar'].Top = Color3.fromRGB(0, 255, 0)
j.Bars['Health Bar'].Mid = Color3.fromRGB(255, 255, 0)
j.Bars['Health Bar'].Bot = Color3.fromRGB(255, 0, 0)
j.Bars['Armor Bar'].Enabled = false
j.Texts.Name.Enabled = true
j.Texts.Name.Color = Color3.fromRGB(0, 255, 255)
j.Texts.Distance.Enabled = true
j.Texts.Distance.Color = Color3.fromRGB(0, 255, 255)
j.Texts.Weapon.Enabled = true
j.Texts.Weapon.Color = Color3.fromRGB(0, 255, 255)

local m, n = game:GetService'Players', game:GetService'RunService'

game:GetService'UserInputService'

local o, p, q = game:GetService'ReplicatedStorage', m.LocalPlayer, workspace.CurrentCamera

getgenv().SilentAim = false
getgenv().SilentAimTarget = 'Head'
getgenv().SilentAimFOVEnabled = false
getgenv().SilentAimFOV = 50
getgenv().SilentAimFOVColor = Color3.fromRGB(255, 255, 255)
getgenv().SilentAimFOVThickness = 1.5
getgenv().SilentAimFOVTransparency = 0
getgenv().SilentAimFOVFilled = false
getgenv().SilentAimFOVFillTransparency = 0.85
getgenv().RageBotEnabled = false
getgenv().RageBotHitbox = 'Head'
getgenv().RageBotAutoFire = false
getgenv().KillSoundEnabled = false
getgenv().KillSoundPreset = 'Bell'
getgenv().KillSoundVolume = 2
getgenv().ShootSoundEnabled = false
getgenv().ShootSoundPreset = 'Pop'
getgenv().ShootSoundVolume = 1

local r, s = {
    Bameware = 'rbxassetid://3124331820',
    Bell = 'rbxassetid://6534947240',
    Bubble = 'rbxassetid://6534947588',
    Pick = 'rbxassetid://1347140027',
    Pop = 'rbxassetid://198598793',
    Rust = 'rbxassetid://1255040462',
    Sans = 'rbxassetid://3188795283',
    Fart = 'rbxassetid://130833677',
    Big = 'rbxassetid://5332005053',
    Vine = 'rbxassetid://5332680810',
    Bruh = 'rbxassetid://4578740568',
    Skeet = 'rbxassetid://5633695679',
    Neverlose = 'rbxassetid://6534948092',
    Fatality = 'rbxassetid://6534947869',
    Bonk = 'rbxassetid://5766898159',
    Minecraft = 'rbxassetid://4018616850',
    ['Call of Duty'] = 'rbxassetid://5952120301',
    Bat = 'rbxassetid://3333907347',
    Saber = 'rbxassetid://8415678813',
    Notif = 'rbxassetid://6696469190',
    Shutter = 'rbxassetid://10066921516',
    RIFK7 = 'rbxassetid://9102080552',
    LazerBeam = 'rbxassetid://130791043',
    WindowsXPError = 'rbxassetid://160715357',
    BowHit = 'rbxassetid://1053296915',
    Bow = 'rbxassetid://3442683707',
    OSU = 'rbxassetid://7147454322',
    ['Old Fatality'] = 'rbxassetid://6607142036',
    TF2 = 'rbxassetid://2868331684',
    BulletDeflect = 'rbxassetid://1657157666',
    UwU = 'rbxassetid://8679659744',
    Cod = 'rbxassetid://160432334',
    Primordial = 'rbxassetid://137457016729576',
}, {}

for t in pairs(r)do
    table.insert(s, t)
end

table.sort(s)

local function PlayKillSound()
    if not getgenv().KillSoundEnabled then
        return
    end

    local t = r[getgenv().KillSoundPreset]

    if not t then
        return
    end

    local u = Instance.new'Sound'

    u.SoundId = t
    u.Volume = getgenv().KillSoundVolume or 2
    u.PlayOnRemove = true
    u.Parent = workspace

    u:Destroy()
end
local function HookPlayerKill(t)
    if t == p then
        return
    end

    local function onChar(u)
        local v = u:WaitForChild('Humanoid', 10)

        if not v then
            return
        end

        v.Died:Connect(function()
            PlayKillSound()
        end)
    end

    if t.Character then
        task.spawn(onChar, t.Character)
    end

    t.CharacterAdded:Connect(onChar)
end

for t, u in ipairs(m:GetPlayers())do
    HookPlayerKill(u)
end

m.PlayerAdded:Connect(HookPlayerKill)

local t, u = {}, nil

local function ApplyShootSound(v)
    if not v:IsA'Sound' then
        return
    end

    local w = v.Name:lower()

    if w ~= 'gunshot' and w ~= 'shoot' and w ~= 'fire' and not w:find'shot' then
        return
    end
    if not t[v] then
        t[v] = v.SoundId
    end
    if getgenv().ShootSoundEnabled then
        local x = r[getgenv().ShootSoundPreset]

        if x then
            v.SoundId = x
            v.Volume = getgenv().ShootSoundVolume or 1
        end
    else
        if t[v] then
            v.SoundId = t[v]
        end
    end
end

u = game.DescendantAdded:Connect(function(v)
    task.defer(ApplyShootSound, v)
end)

local v, w = require(o.ModuleScripts.GunModules:WaitForChild'BulletHandler'), require(o:WaitForChild'SignalManager')
local x = v.Fire

local function isInFOV(y)
    if not getgenv().SilentAimFOVEnabled then
        return true
    end

    local z = workspace.CurrentCamera
    local A, B = z:WorldToViewportPoint(y.Position)

    if not B or A.Z <= 0 then
        return false
    end

    local C, D = Vector2.new(z.ViewportSize.X / 2, z.ViewportSize.Y / 2), Vector2.new(A.X, A.Y)
    local E, F = (D - C).Magnitude, getgenv().SilentAimFOV or 50

    return E <= F
end
local function getSilentAimTarget()
    if not getgenv().SilentAim then
        return nil
    end

    local y, z, A, B, C = nil, math.huge, workspace.CurrentCamera, getgenv().SilentAimTarget or 'Head', RaycastParams.new()

    C.FilterType = Enum.RaycastFilterType.Exclude

    if p.Character then
        C.FilterDescendantsInstances = {
            p.Character,
        }
    end

    for D, E in ipairs(m:GetPlayers())do
        local F = false

        repeat
            if E ~= p and E.Character and E.Character:FindFirstChild'Humanoid' and E.Character.Humanoid.Health > 0 then
                local G = E.Character:FindFirstChild(B)

                if G then
                    if not isInFOV(G) then
                        F = true

                        break
                    end

                    local H = (G.Position - A.CFrame.Position).Magnitude

                    if H < z then
                        local I = (G.Position - A.CFrame.Position).Unit * H
                        local J = workspace:Raycast(A.CFrame.Position, I, C)

                        if not J or J.Instance:IsDescendantOf(E.Character) then
                            z = H
                            y = G
                        end
                    end
                end
            end

            F = true
        until true

        if not F then
            break
        end
    end

    return y
end
local function getRageBotTarget()
    local y, z, A = nil, math.huge, workspace.CurrentCamera

    for B, C in ipairs(m:GetPlayers())do
        if C ~= p and C.Character and C.Character:FindFirstChild'Humanoid' and C.Character.Humanoid.Health > 0 then
            local D, E, F = C.Character, nil, getgenv().RageBotHitbox

            if F == 'All' then
                for G, H in ipairs{
                    'Head',
                    'UpperTorso',
                    'Torso',
                    'HumanoidRootPart',
                }do
                    local I = D:FindFirstChild(H)

                    if I then
                        E = I

                        break
                    end
                end
            else
                E = D:FindFirstChild(F) or D:FindFirstChild'Head'
            end
            if E then
                local G = A.CFrame.Position
                local H, I = E.Position - G, RaycastParams.new()

                I.FilterType = Enum.RaycastFilterType.Exclude
                I.FilterDescendantsInstances = {
                    p.Character,
                }

                local J = workspace:Raycast(G, H, I)
                local K = not J or J.Instance:IsDescendantOf(D)

                if K then
                    local L = (E.Position - A.CFrame.Position).Magnitude

                    if L < z then
                        z = L
                        y = E
                    end
                end
            end
        end
    end

    return y
end

v.Fire = function(y)
    local z, A = false, nil

    if getgenv().SilentAim then
        A = getSilentAimTarget()

        if A then
            z = true
        end
    end
    if not z and getgenv().RageBotEnabled then
        A = getRageBotTarget()

        if A then
            z = true
        end
    end
    if z and A and y and y.Origin and y.Misc then
        y.Direction = (A.Position - y.Origin).Unit
        y.Misc.CamCFrame = CFrame.new(y.Misc.CamCFrame.Position, A.Position)
    end

    return x(y)
end

task.spawn(function()
    while task.wait(0.05) do
        if getgenv().RageBotEnabled and getgenv().RageBotAutoFire then
            local y = getRageBotTarget()

            if y then
                w.Fire('FireWeapon', Enum.UserInputState.Begin)
                task.wait(0.05)
                w.Fire('FireWeapon', Enum.UserInputState.End)
            end
        end
    end
end)

local y, z = p:WaitForChild'PlayerGui', Instance.new'ScreenGui'

z.Name = 'SmoothFOVCircle'
z.IgnoreGuiInset = true
z.ResetOnSpawn = false
z.Parent = y

local A = Instance.new'Frame'

A.Name = 'Circle'

local B = getgenv().SilentAimFOV or 50

A.Size = UDim2.new(0, B * 2, 0, B * 2)
A.AnchorPoint = Vector2.new(0.5, 0.5)
A.Position = UDim2.new(0.5, 0, 0.5, 0)
A.BackgroundTransparency = 1
A.Parent = z
A.Visible = false

local C = Instance.new'UICorner'

C.CornerRadius = UDim.new(1, 0)
C.Parent = A

local D = Instance.new'UIStroke'

D.Parent = A
D.Thickness = getgenv().SilentAimFOVThickness or 1.5
D.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
D.Color = getgenv().SilentAimFOVColor or Color3.new(1, 1, 1)
D.Transparency = getgenv().SilentAimFOVTransparency or 0

local E = Instance.new'Frame'

E.Name = 'Fill'
E.BackgroundColor3 = getgenv().SilentAimFOVColor or Color3.new(1, 1, 1)
E.BackgroundTransparency = getgenv().SilentAimFOVFillTransparency or 0.85
E.Size = UDim2.fromScale(1, 1)
E.BorderSizePixel = 0
E.Visible = getgenv().SilentAimFOVFilled or false
E.Parent = A

local F = Instance.new'UICorner'

F.CornerRadius = UDim.new(1, 0)
F.Parent = E

local G = Instance.new'UIGradient'

G.Parent = D
G.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.new(0, 0, 0)),
    ColorSequenceKeypoint.new(0.5, Color3.new(1, 1, 1)),
    ColorSequenceKeypoint.new(1, Color3.new(0, 0, 0)),
}

local H = 0.3

local function updateFOVCircle()
    local I = getgenv().SilentAimFOV or 50

    A.Size = UDim2.new(0, I * 2, 0, I * 2)
    A.Visible = getgenv().SilentAimFOVEnabled and getgenv().SilentAim
    D.Color = getgenv().SilentAimFOVColor or Color3.new(1, 1, 1)
    D.Thickness = getgenv().SilentAimFOVThickness or 1.5
    D.Transparency = getgenv().SilentAimFOVTransparency or 0
    E.BackgroundColor3 = getgenv().SilentAimFOVColor or Color3.new(1, 1, 1)
    E.BackgroundTransparency = getgenv().SilentAimFOVFillTransparency or 0.85
    E.Visible = getgenv().SilentAimFOVFilled or false
end

n.RenderStepped:Connect(function()
    G.Rotation = G.Rotation + H

    updateFOVCircle()
end)

local I, J = {
    Bameware = 'rbxassetid://3124331820',
    Bell = 'rbxassetid://6534947240',
    Bubble = 'rbxassetid://6534947588',
    Pick = 'rbxassetid://1347140027',
    Pop = 'rbxassetid://198598793',
    Rust = 'rbxassetid://1255040462',
    Sans = 'rbxassetid://3188795283',
    Fart = 'rbxassetid://130833677',
    Big = 'rbxassetid://5332005053',
    Vine = 'rbxassetid://5332680810',
    Bruh = 'rbxassetid://4578740568',
    Skeet = 'rbxassetid://5633695679',
    Neverlose = 'rbxassetid://6534948092',
    Fatality = 'rbxassetid://6534947869',
    Bonk = 'rbxassetid://5766898159',
    Minecraft = 'rbxassetid://4018616850',
    ['Call of Duty'] = 'rbxassetid://5952120301',
    Bat = 'rbxassetid://3333907347',
    Saber = 'rbxassetid://8415678813',
    Notif = 'rbxassetid://6696469190',
    Shutter = 'rbxassetid://10066921516',
    RIFK7 = 'rbxassetid://9102080552',
    LazerBeam = 'rbxassetid://130791043',
    WindowsXPError = 'rbxassetid://160715357',
    BowHit = 'rbxassetid://1053296915',
    Bow = 'rbxassetid://3442683707',
    OSU = 'rbxassetid://7147454322',
    ['Old Fatality'] = 'rbxassetid://6607142036',
    TF2 = 'rbxassetid://2868331684',
    BulletDeflect = 'rbxassetid://1657157666',
    UwU = 'rbxassetid://8679659744',
    Cod = 'rbxassetid://160432334',
    Primordial = 'rbxassetid://137457016729576',
}, {}

for K in pairs(I)do
    table.insert(J, K)
end

table.sort(J)

getgenv().KillSoundEnabled = false
getgenv().KillSoundPreset = 'Fatality'
getgenv().KillSoundVolume = 1
getgenv().ShootSoundEnabled = false
getgenv().ShootSoundPreset = 'Skeet'
getgenv().ShootSoundVolume = 1

local K, L = {}, Instance.new'Sound'

L.Name = 'CandyKillSound'
L.Volume = 1
L.Parent = workspace

local function getKillSoundId()
    return I[getgenv().KillSoundPreset]
end
local function applyHitSounds()
    local M = p:FindFirstChild'PlayerGui'

    if not M then
        return
    end

    local N = M:FindFirstChild'Effect'

    if not N then
        return
    end

    for O, P in ipairs{
        'Crit',
        'Bang',
        'Hit',
        'Kill',
        'Headshot',
    }do
        local Q = N:FindFirstChild(P)

        if Q and Q:IsA'Sound' then
            if not K[Q] then
                K[Q] = Q.SoundId
            end
            if getgenv().KillSoundEnabled then
                local R = getKillSoundId()

                if R then
                    Q.SoundId = R
                    Q.Volume = getgenv().KillSoundVolume or 1
                end
            else
                if K[Q] then
                    Q.SoundId = K[Q]
                end
            end
        end
    end
end
local function playKillSound()
    if not getgenv().KillSoundEnabled then
        return
    end

    local M = getKillSoundId()

    if not M then
        return
    end

    L.SoundId = M
    L.Volume = getgenv().KillSoundVolume or 1

    L:Play()
end

task.spawn(function()
    while true do
        task.wait(1)

        if getgenv().KillSoundEnabled then
            applyHitSounds()
        end
    end
end)
p.CharacterAdded:Connect(function()
    task.wait(1)
    applyHitSounds()
end)

local M = p:WaitForChild'PlayerGui'

M.DescendantAdded:Connect(function(N)
    if not getgenv().KillSoundEnabled then
        return
    end
    if N:IsA'Sound' then
        local O = N.Parent

        if O and O.Name == 'Effect' then
            if not K[N] then
                K[N] = N.SoundId
            end

            local P = getKillSoundId()

            if P then
                N.SoundId = P
                N.Volume = getgenv().KillSoundVolume or 1
            end
        end
    end
end)
task.defer(applyHitSounds)

local N, O = {}, nil

local function applyShootSound(P)
    if not P:IsA'Sound' then
        return
    end
    if P.Name ~= 'GunShot' and P.Name ~= 'Shoot' and P.Name ~= 'Fire' and P.Name ~= 'GunFire' then
        return
    end
    if not N[P] then
        N[P] = P.SoundId
    end
    if getgenv().ShootSoundEnabled then
        local Q = I[getgenv().ShootSoundPreset]

        if Q then
            P.SoundId = Q
            P.Volume = getgenv().ShootSoundVolume or 1
        end
    else
        if N[P] then
            P.SoundId = N[P]
        end
    end
end
local function refreshAllShootSounds()
    for P, Q in ipairs(game:GetDescendants())do
        applyShootSound(Q)
    end
end

O = game.DescendantAdded:Connect(function(P)
    if getgenv().ShootSoundEnabled then
        applyShootSound(P)
    end
end)

local P, Q, R, S, T = l:AddTab('Combat', 'crosshair'), l:AddTab('Visual', 'eye'), l:AddTab('ESP', 'scan'), l:AddTab('Settings', 'settings'), game:GetService'Lighting'

game:GetService'Debris'

local U = Instance.new'BloomEffect'

U.Name = 'CandyBloom'
U.Enabled = false
U.Intensity = 0.6
U.Size = 24
U.Threshold = 0.9
U.Parent = T

local V = Instance.new'SunRaysEffect'

V.Name = 'CandyRays'
V.Enabled = false
V.Intensity = 0.15
V.Parent = T

local W = Instance.new'BlurEffect'

W.Name = 'CandyBlur'
W.Enabled = false
W.Size = 8
W.Parent = T

local X = Instance.new'ColorCorrectionEffect'

X.Name = 'CandyGrade'
X.Enabled = false
X.TintColor = Color3.fromRGB(255, 255, 255)
X.Saturation = 0.2
X.Contrast = 0.1
X.Brightness = 0
X.Parent = T

local Y = T:FindFirstChildOfClass'Atmosphere'

if not Y then
    Y = Instance.new'Atmosphere'
    Y.Parent = T
end

local Z, _, aa, ab, ac = {}, {}, nil, {
    FogOn = false,
    FogColor = Color3.fromRGB(192, 192, 192),
    FogDensity = 0.35,
    FogOffset = 0,
    AirOn = false,
    AirColor = Color3.fromRGB(199, 199, 199),
    AirDensity = 0.3,
    AirHaze = 0,
    FB = false,
    TimeOn = false,
    TimeValue = 12,
    AmbientOn = false,
    AmbientColor = Color3.fromRGB(128, 128, 128),
    ExposureOn = false,
    ExposureValue = 0,
    Sky = 'Off',
    Celestial = 'None',
    SkySize = 0,
    SkyStars = 3000,
}, {
    Jungle = {
        SkyboxBk = 'rbxassetid://214399891',
        SkyboxDn = 'rbxassetid://214399887',
        SkyboxFt = 'rbxassetid://214399894',
        SkyboxLf = 'rbxassetid://214405668',
        SkyboxRt = 'rbxassetid://214399899',
        SkyboxUp = 'rbxassetid://214399889',
    },
    Blossom = {
        SkyboxBk = 'rbxassetid://271042516',
        SkyboxDn = 'rbxassetid://271077243',
        SkyboxFt = 'rbxassetid://271042556',
        SkyboxLf = 'rbxassetid://271042310',
        SkyboxRt = 'rbxassetid://271042467',
        SkyboxUp = 'rbxassetid://271077958',
    },
    ['Red Night'] = {
        SkyboxBk = 'rbxassetid://401664839',
        SkyboxDn = 'rbxassetid://401664862',
        SkyboxFt = 'rbxassetid://401664960',
        SkyboxLf = 'rbxassetid://401664881',
        SkyboxRt = 'rbxassetid://401664901',
        SkyboxUp = 'rbxassetid://401664936',
    },
    Purple = {
        SkyboxBk = 'rbxassetid://13694952867',
        SkyboxDn = 'rbxassetid://13694968325',
        SkyboxFt = 'rbxassetid://13694980654',
        SkyboxLf = 'rbxassetid://13694998113',
        SkyboxRt = 'rbxassetid://13695002700',
        SkyboxUp = 'rbxassetid://13695007103',
    },
    Galaxy = {
        SkyboxBk = 'rbxassetid://15983996673',
        SkyboxDn = 'rbxassetid://15983996673',
        SkyboxFt = 'rbxassetid://15983996673',
        SkyboxLf = 'rbxassetid://15983996673',
        SkyboxRt = 'rbxassetid://15983996673',
        SkyboxUp = 'rbxassetid://15983996673',
    },
}

local function applyAir()
    if not Y then
        return
    end
    if ab.FogOn then
        Y.Color = ab.FogColor
        Y.Decay = ab.FogColor
        Y.Density = math.clamp(ab.FogDensity, 0, 1)
        Y.Offset = ab.FogOffset
    elseif ab.AirOn then
        Y.Color = ab.AirColor
        Y.Density = ab.AirDensity
        Y.Haze = ab.AirHaze
    end
end
local function applyLighting()
    local ad = {}

    if ab.FB then
        ad.Brightness = 2
        ad.GlobalShadows = false
        ad.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
        ad.ClockTime = 14
    end
    if ab.AmbientOn then
        ad.Ambient = ab.AmbientColor
        ad.OutdoorAmbient = ab.AmbientColor
    end
    if ab.TimeOn then
        ad.ClockTime = ab.TimeValue
    end
    if ab.ExposureOn then
        ad.ExposureCompensation = ab.ExposureValue
    end

    for ae, af in pairs(_)do
        if ad[ae] == nil then
            if T[ae] == af and Z[ae] ~= nil then
                T[ae] = Z[ae]
            end

            Z[ae] = nil
            _[ae] = nil
        end
    end
    for ae, af in pairs(ad)do
        if _[ae] == nil then
            Z[ae] = T[ae]
        elseif T[ae] ~= _[ae] then
            Z[ae] = T[ae]
        end
        if T[ae] ~= af then
            T[ae] = af
        end

        _[ae] = T[ae]
    end
end
local function applySky(ad)
    ab.Sky = ad

    if aa then
        pcall(function()
            aa:Destroy()
        end)

        aa = nil
    end
    if ad == 'Off' or not ac[ad] then
        return
    end

    local ae, af = ac[ad], Instance.new'Sky'

    af.Name = 'CandySky'

    for ag, ah in pairs(ae)do
        pcall(function()
            af[ag] = ah
        end)
    end

    af.StarCount = ab.SkyStars or 3000

    if ab.Celestial == 'Moon' then
        af.MoonAngularSize = 11
        af.SunAngularSize = 0
    elseif ab.Celestial == 'Sun' then
        af.SunAngularSize = 21
        af.MoonAngularSize = 0
    end

    af.Parent = T
    aa = af
end

local ad, ae, af = {
    On = false,
    Kind = 'Rain',
    Rate = 40,
    Speed = 40,
    Size = 0.2,
    Fade = 0.3,
    Distance = 60,
    Height = 40,
    CustomColor = false,
    Color = Color3.fromRGB(180, 200, 255),
}, nil, nil

local function stopWeather()
    if af then
        pcall(function()
            af:Destroy()
        end)

        af = nil
    end
    if ae then
        pcall(function()
            ae:Destroy()
        end)

        ae = nil
    end
end
local function startWeather()
    stopWeather()

    if not ad.On then
        return
    end

    ae = Instance.new'Part'
    ae.Name = 'CandyWeather'
    ae.Anchored = true
    ae.CanCollide = false
    ae.Transparency = 1
    ae.Size = Vector3.new(1, 1, 1)
    ae.Parent = workspace
    af = Instance.new'ParticleEmitter'
    af.Texture = ad.Kind == 'Snow' and 'rbxassetid://607596189' or 'rbxassetid://242778565'
    af.Rate = ad.Rate
    af.Speed = NumberRange.new(ad.Speed * 0.7, ad.Speed)
    af.Lifetime = NumberRange.new(1, 2)
    af.Size = NumberSequence.new(ad.Size)
    af.Transparency = NumberSequence.new{
        NumberSequenceKeypoint.new(0, ad.Fade),
        NumberSequenceKeypoint.new(1, 1),
    }
    af.EmissionDirection = Enum.NormalId.Bottom
    af.SpreadAngle = Vector2.new(15, 15)

    if ad.CustomColor then
        af.Color = ColorSequence.new(ad.Color)
    end

    af.Parent = ae
end
local function updateWeatherPos()
    if not ae or not ad.On then
        return
    end

    local ag = workspace.CurrentCamera

    if not ag then
        return
    end

    local ah = ag.CFrame.Position + Vector3.new(0, ad.Height, 0)

    ae.Size = Vector3.new(ad.Distance, 1, ad.Distance)
    ae.CFrame = CFrame.new(ah)

    if af then
        af.Rate = ad.Rate
        af.Speed = NumberRange.new(ad.Speed * 0.7, ad.Speed)
        af.Size = NumberSequence.new(ad.Size)
    end
end

local ag, ah = {
    On = false,
    Count = 20,
    Rate = 4,
    Tail = Color3.fromRGB(255, 220, 150),
    Fireballs = true,
    Stars = true,
    HeadSize = 1,
    Acc = 0,
}, Instance.new'Folder'

ah.Name = 'CandyStarfall'
ah.Parent = workspace

local function spawnMeteor()
    if not ag.On then
        return
    end

    local ai = workspace.CurrentCamera

    if not ai then
        return
    end

    local aj, ak, al = ai.CFrame.Position + Vector3.new(math.random(-80, 80), math.random(40, 90), math.random(-80, 80)), Vector3.new(math.random(
-20, 20), -60, math.random(-20, 20)), Instance.new'Part'

    al.Anchored = true
    al.CanCollide = false
    al.Material = Enum.Material.Neon
    al.Color = ag.Tail
    al.Size = Vector3.new(0.15, 0.15, ag.HeadSize * 4)
    al.CFrame = CFrame.new(aj, aj + ak)
    al.Parent = ah

    local am, an = 0, nil

    an = n.Heartbeat:Connect(function(ao)
        am = am + ao

        if am > 1.4 or not ag.On then
            an:Disconnect()
            al:Destroy()

            return
        end

        al.CFrame = al.CFrame + ak.Unit * (80 * ao)
        al.Transparency = am / 1.4
    end)
end

local ai, aj = {
    On = false,
    Color = Color3.fromRGB(120, 200, 255),
    Mode = 'Orbit',
    Count = 8,
    Speed = 2,
    Length = 2,
    Life = 1,
    Width = 0.12,
    Glow = 1,
    Parts = {},
}, Instance.new'Folder'

aj.Name = 'CandyGlyphs'
aj.Parent = workspace

local function clearGlyphs()
    for ak, al in ipairs(ai.Parts)do
        pcall(function()
            al:Destroy()
        end)
    end

    table.clear(ai.Parts)
end
local function ensureGlyphs()
    clearGlyphs()

    if not ai.On then
        return
    end

    for ak = 1, ai.Count do
        local al = Instance.new'Part'

        al.Anchored = true
        al.CanCollide = false
        al.Material = Enum.Material.Neon
        al.Color = ai.Color
        al.Size = Vector3.new(ai.Width, ai.Width, ai.Length)
        al.Parent = aj

        table.insert(ai.Parts, al)
    end
end

local ak, al = {
    On = false,
    StarColor = Color3.fromRGB(255, 255, 255),
    Lines = true,
    LineColor = Color3.fromRGB(180, 200, 255),
    Scale = 100,
    Glow = 100,
    Spin = 12,
    Twinkle = 60,
    RealColors = true,
    Dots = {},
    Beams = {},
}, Instance.new'Folder'

al.Name = 'CandyConstellations'
al.Parent = workspace

local function clearConstel()
    restoreWeaponMaterials()

    for am, an in ipairs(ak.Dots)do
        pcall(function()
            an:Destroy()
        end)
    end
    for am, an in ipairs(ak.Beams)do
        pcall(function()
            an:Destroy()
        end)
    end

    table.clear(ak.Dots)
    table.clear(ak.Beams)
end
local function ensureConstel()
    clearConstel()

    if not ak.On then
        return
    end

    local am = workspace.CurrentCamera

    if not am then
        return
    end

    local an, ao, ap = am.CFrame.Position + am.CFrame.LookVector * 120, ak.Scale / 100 * 40, {}

    for aq = 1, 12 do
        local ar = (aq / 12) * math.pi * 2
        local as, at = an + Vector3.new(math.cos(ar) * ao, math.sin(ar * 1.3) * ao * 0.4, math.sin(ar) * ao), Instance.new'Part'

        at.Name = 'Star'
        at.Anchored = true
        at.CanCollide = false
        at.Material = Enum.Material.Neon
        at.Color = ak.StarColor
        at.Size = Vector3.new(0.6, 0.6, 0.6) * (ak.Glow / 100)
        at.Shape = Enum.PartType.Ball
        at.CFrame = CFrame.new(as)
        at.Parent = al

        table.insert(ak.Dots, at)
        table.insert(ap, at)
    end

    if ak.Lines then
        for aq = 1, #ap do
            local ar, as = ap[aq], ap[aq % #ap + 1]
            local at, au, av = Instance.new('Attachment', ar), Instance.new('Attachment', as), Instance.new'Beam'

            av.Attachment0 = at
            av.Attachment1 = au
            av.Color = ColorSequence.new(ak.LineColor)
            av.Width0 = 0.08
            av.Width1 = 0.08
            av.FaceCamera = true
            av.Parent = ar

            table.insert(ak.Beams, av)
        end
    end
end

n.Heartbeat:Connect(function(am)
    if ab.FogOn or ab.AirOn then
        applyAir()
    end
    if ab.FB or ab.TimeOn or ab.AmbientOn or ab.ExposureOn then
        applyLighting()
    end

    updateWeatherPos()

    if ag.On then
        ag.Acc = ag.Acc + am * ag.Rate

        while ag.Acc >= 1 do
            ag.Acc = ag.Acc - 1

            spawnMeteor()
        end
    end
    if ai.On and p.Character then
        local an = p.Character:FindFirstChild'HumanoidRootPart'

        if an then
            local ao = os.clock() * ai.Speed

            for ap, aq in ipairs(ai.Parts)do
                local ar = ao + (ap / math.max(#ai.Parts, 1)) * math.pi * 2
                local as = Vector3.new(math.cos(ar) * 4, 1 + math.sin(ar * 2) * 0.5, math.sin(ar) * 4)

                aq.Color = ai.Color
                aq.Size = Vector3.new(ai.Width, ai.Width, ai.Length)
                aq.CFrame = CFrame.new(an.Position + as)
            end
        end
    end
    if ak.On and ak.Spin > 0 then
        local an = math.rad(ak.Spin) * am

        for ao, ap in ipairs(ak.Dots)do
            if ap and ap.Parent then
                local aq = workspace.CurrentCamera

                if aq then
                    local ar = aq.CFrame.Position + aq.CFrame.LookVector * 120
                    local as = ap.Position - ar
                    local at = CFrame.Angles(0, an, 0):VectorToWorldSpace(as)

                    ap.CFrame = CFrame.new(ar + at)

                    if ak.Twinkle > 0 then
                        local au = 0.5 + 0.5 * math.sin(os.clock() * 5 + ap.Position.X)

                        ap.Transparency = 1 - (ak.Twinkle / 100) * au
                    end
                end
            end
        end
    end
end)

local am = Q:AddLeftGroupbox'Shaders'

am:AddToggle('ShaderBloom', {
    Text = 'Bloom',
    Default = false,
    Callback = function(an)
        U.Enabled = an
    end,
})
am:AddSlider('ShaderBloomIntensity', {
    Text = 'Bloom Intensity',
    Default = 0.6,
    Min = 0,
    Max = 2,
    Rounding = 2,
    Callback = function(an)
        U.Intensity = an
    end,
})
am:AddSlider('ShaderBloomSize', {
    Text = 'Bloom Size',
    Default = 24,
    Min = 1,
    Max = 56,
    Rounding = 0,
    Callback = function(an)
        U.Size = an
    end,
})
am:AddSlider('ShaderBloomThreshold', {
    Text = 'Bloom Threshold',
    Default = 0.9,
    Min = 0,
    Max = 2,
    Rounding = 2,
    Callback = function(an)
        U.Threshold = an
    end,
})
am:AddToggle('ShaderRays', {
    Text = 'Sun Rays',
    Default = false,
    Callback = function(an)
        V.Enabled = an
    end,
})
am:AddSlider('ShaderRaysIntensity', {
    Text = 'Rays Intensity',
    Default = 0.15,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(an)
        V.Intensity = an
    end,
})
am:AddToggle('ShaderBlur', {
    Text = 'Blur',
    Default = false,
    Callback = function(an)
        W.Enabled = an
    end,
})
am:AddSlider('ShaderBlurSize', {
    Text = 'Blur Size',
    Default = 8,
    Min = 1,
    Max = 40,
    Rounding = 0,
    Callback = function(an)
        W.Size = an
    end,
})
am:AddToggle('ShaderGrade', {
    Text = 'Color Grade',
    Default = false,
    Callback = function(an)
        X.Enabled = an
    end,
}):AddColorPicker('ShaderGradeTint', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Tint',
    Callback = function(an)
        X.TintColor = an
    end,
})
am:AddSlider('ShaderGradeSat', {
    Text = 'Saturation',
    Default = 0.2,
    Min = -1,
    Max = 2,
    Rounding = 2,
    Callback = function(an)
        X.Saturation = an
    end,
})
am:AddSlider('ShaderGradeContrast', {
    Text = 'Contrast',
    Default = 0.1,
    Min = -1,
    Max = 1,
    Rounding = 2,
    Callback = function(an)
        X.Contrast = an
    end,
})
am:AddSlider('ShaderGradeBright', {
    Text = 'Brightness',
    Default = 0,
    Min = -1,
    Max = 1,
    Rounding = 2,
    Callback = function(an)
        X.Brightness = an
    end,
})

local an = Q:AddRightGroupbox'Lighting'

an:AddToggle('WorldFullbright', {
    Text = 'Fullbright',
    Default = false,
    Callback = function(ao)
        ab.FB = ao

        applyLighting()
    end,
})
an:AddToggle('WorldTimeChange', {
    Text = 'Time Change',
    Default = false,
    Callback = function(ao)
        ab.TimeOn = ao

        applyLighting()
    end,
})
an:AddSlider('WorldTimeValue', {
    Text = 'Time',
    Default = 12,
    Min = 0,
    Max = 24,
    Rounding = 1,
    Callback = function(ao)
        ab.TimeValue = ao

        applyLighting()
    end,
})
an:AddToggle('WorldAmbient', {
    Text = 'Ambient',
    Default = false,
    Callback = function(ao)
        ab.AmbientOn = ao

        applyLighting()
    end,
}):AddColorPicker('WorldAmbientColor', {
    Default = Color3.fromRGB(128, 128, 128),
    Title = 'Ambient Color',
    Callback = function(ao)
        ab.AmbientColor = ao

        applyLighting()
    end,
})
an:AddToggle('WorldExposure', {
    Text = 'Exposure',
    Default = false,
    Callback = function(ao)
        ab.ExposureOn = ao

        applyLighting()
    end,
})
an:AddSlider('WorldExposureValue', {
    Text = 'Exposure Value',
    Default = 0,
    Min = -3,
    Max = 3,
    Rounding = 2,
    Callback = function(ao)
        ab.ExposureValue = ao

        applyLighting()
    end,
})

local ao = Q:AddLeftGroupbox'Fog / Atmosphere'

ao:AddToggle('WorldFog', {
    Text = 'Fog',
    Default = false,
    Callback = function(ap)
        ab.FogOn = ap

        applyAir()
    end,
}):AddColorPicker('WorldFogColor', {
    Default = Color3.fromRGB(192, 192, 192),
    Title = 'Fog Color',
    Callback = function(ap)
        ab.FogColor = ap

        applyAir()
    end,
})
ao:AddSlider('WorldFogDensity', {
    Text = 'Fog Density',
    Default = 0.35,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(ap)
        ab.FogDensity = ap

        applyAir()
    end,
})
ao:AddSlider('WorldFogOffset', {
    Text = 'Fog Height',
    Default = 0,
    Min = -1,
    Max = 1,
    Rounding = 2,
    Callback = function(ap)
        ab.FogOffset = ap

        applyAir()
    end,
})
ao:AddToggle('WorldAtmosphere', {
    Text = 'Atmosphere',
    Default = false,
    Callback = function(ap)
        ab.AirOn = ap

        applyAir()
    end,
}):AddColorPicker('WorldAirColor', {
    Default = Color3.fromRGB(199, 199, 199),
    Title = 'Atmosphere Color',
    Callback = function(ap)
        ab.AirColor = ap

        applyAir()
    end,
})
ao:AddSlider('WorldAirDensity', {
    Text = 'Atmosphere Density',
    Default = 0.3,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(ap)
        ab.AirDensity = ap

        applyAir()
    end,
})
ao:AddSlider('WorldAirHaze', {
    Text = 'Haze',
    Default = 0,
    Min = 0,
    Max = 10,
    Rounding = 1,
    Callback = function(ap)
        ab.AirHaze = ap

        applyAir()
    end,
})

local ap = Q:AddRightGroupbox'Skybox'

ap:AddDropdown('WorldSkybox', {
    Values = {
        'Off',
        'Jungle',
        'Blossom',
        'Red Night',
        'Purple',
        'Galaxy',
    },
    Default = 'Off',
    Text = 'Skybox',
    Callback = function(aq)
        applySky(aq)
    end,
})
ap:AddDropdown('WorldCelestial', {
    Values = {
        'None',
        'Sun',
        'Moon',
    },
    Default = 'None',
    Text = 'Celestial',
    Callback = function(aq)
        ab.Celestial = aq

        if ab.Sky ~= 'Off' then
            applySky(ab.Sky)
        end
    end,
})
ap:AddSlider('WorldSkyStars', {
    Text = 'Stars',
    Default = 3000,
    Min = 0,
    Max = 5000,
    Rounding = 0,
    Callback = function(aq)
        ab.SkyStars = aq

        if aa then
            aa.StarCount = aq
        end
    end,
})

local aq = Q:AddLeftGroupbox'Weather'

aq:AddDropdown('WeatherKind', {
    Values = {
        'Off',
        'Rain',
        'Snow',
    },
    Default = 'Off',
    Text = 'Type',
    Callback = function(ar)
        ad.On = ar ~= 'Off'
        ad.Kind = ar == 'Off' and 'Rain' or ar

        if ad.On then
            startWeather()
        else
            stopWeather()
        end
    end,
})
aq:AddSlider('WeatherRate', {
    Text = 'Amount',
    Default = 40,
    Min = 1,
    Max = 200,
    Rounding = 0,
    Callback = function(ar)
        ad.Rate = ar
    end,
})
aq:AddSlider('WeatherSpeed', {
    Text = 'Fall Speed',
    Default = 40,
    Min = 5,
    Max = 120,
    Rounding = 0,
    Callback = function(ar)
        ad.Speed = ar
    end,
})
aq:AddSlider('WeatherSize', {
    Text = 'Particle Size',
    Default = 0.2,
    Min = 0.05,
    Max = 1,
    Rounding = 2,
    Callback = function(ar)
        ad.Size = ar
    end,
})
aq:AddSlider('WeatherFade', {
    Text = 'Transparency',
    Default = 0.3,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(ar)
        ad.Fade = ar
    end,
})
aq:AddSlider('WeatherDistance', {
    Text = 'Distance',
    Default = 60,
    Min = 20,
    Max = 200,
    Rounding = 0,
    Callback = function(ar)
        ad.Distance = ar
    end,
})
aq:AddSlider('WeatherHeight', {
    Text = 'Height',
    Default = 40,
    Min = 10,
    Max = 120,
    Rounding = 0,
    Callback = function(ar)
        ad.Height = ar
    end,
})
aq:AddToggle('WeatherCustomColor', {
    Text = 'Custom Color',
    Default = false,
    Callback = function(ar)
        ad.CustomColor = ar

        if ad.On then
            startWeather()
        end
    end,
}):AddColorPicker('WeatherColor', {
    Default = Color3.fromRGB(180, 200, 255),
    Title = 'Weather Color',
    Callback = function(ar)
        ad.Color = ar

        if ad.On then
            startWeather()
        end
    end,
})

local ar = Q:AddRightGroupbox'Starfall'

ar:AddToggle('StarfallEnabled', {
    Text = 'Starfall',
    Default = false,
    Callback = function(as)
        ag.On = as
    end,
}):AddColorPicker('StarfallTail', {
    Default = Color3.fromRGB(255, 220, 150),
    Title = 'Tail Color',
    Callback = function(as)
        ag.Tail = as
    end,
})
ar:AddSlider('StarfallCount', {
    Text = 'Max Stars',
    Default = 20,
    Min = 1,
    Max = 80,
    Rounding = 0,
    Callback = function(as)
        ag.Count = as
    end,
})
ar:AddSlider('StarfallRate', {
    Text = 'Spawn Rate',
    Default = 4,
    Min = 1,
    Max = 20,
    Rounding = 0,
    Callback = function(as)
        ag.Rate = as
    end,
})
ar:AddToggle('StarfallFireballs', {
    Text = 'Bright Meteors',
    Default = true,
    Callback = function(as)
        ag.Fireballs = as
    end,
})
ar:AddToggle('StarfallStars', {
    Text = 'Star Heads',
    Default = true,
    Callback = function(as)
        ag.Stars = as
    end,
})
ar:AddSlider('StarfallHeadSize', {
    Text = 'Head Size',
    Default = 1,
    Min = 0.3,
    Max = 3,
    Rounding = 1,
    Callback = function(as)
        ag.HeadSize = as
    end,
})

local as = Q:AddLeftGroupbox'Line Glyphs'

as:AddToggle('GlyphsEnabled', {
    Text = 'Enabled',
    Default = false,
    Callback = function(at)
        ai.On = at

        if at then
            ensureGlyphs()
        else
            clearGlyphs()
        end
    end,
}):AddColorPicker('GlyphsColor', {
    Default = Color3.fromRGB(120, 200, 255),
    Title = 'Color',
    Callback = function(at)
        ai.Color = at
    end,
})
as:AddDropdown('GlyphsMode', {
    Values = {
        'Orbit',
        'Trail',
    },
    Default = 'Orbit',
    Text = 'Mode',
    Callback = function(at)
        ai.Mode = at
    end,
})
as:AddSlider('GlyphsCount', {
    Text = 'Count',
    Default = 8,
    Min = 1,
    Max = 24,
    Rounding = 0,
    Callback = function(at)
        ai.Count = at

        if ai.On then
            ensureGlyphs()
        end
    end,
})
as:AddSlider('GlyphsSpeed', {
    Text = 'Speed',
    Default = 2,
    Min = 0.2,
    Max = 10,
    Rounding = 1,
    Callback = function(at)
        ai.Speed = at
    end,
})
as:AddSlider('GlyphsLength', {
    Text = 'Trail',
    Default = 2,
    Min = 0.5,
    Max = 8,
    Rounding = 1,
    Callback = function(at)
        ai.Length = at
    end,
})
as:AddSlider('GlyphsWidth', {
    Text = 'Width',
    Default = 0.12,
    Min = 0.05,
    Max = 0.5,
    Rounding = 2,
    Callback = function(at)
        ai.Width = at
    end,
})
as:AddSlider('GlyphsGlow', {
    Text = 'Glow',
    Default = 1,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(at)
        ai.Glow = at
    end,
})

local at = Q:AddRightGroupbox'Constellations'

at:AddToggle('ConstelEnabled', {
    Text = 'Constellations',
    Default = false,
    Callback = function(au)
        ak.On = au

        if au then
            ensureConstel()
        else
            clearConstel()
        end
    end,
}):AddColorPicker('ConstelStarColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'Star Color',
    Callback = function(au)
        ak.StarColor = au
    end,
})
at:AddToggle('ConstelLines', {
    Text = 'Lines',
    Default = true,
    Callback = function(au)
        ak.Lines = au

        if ak.On then
            ensureConstel()
        end
    end,
}):AddColorPicker('ConstelLineColor', {
    Default = Color3.fromRGB(180, 200, 255),
    Title = 'Line Color',
    Callback = function(au)
        ak.LineColor = au
    end,
})
at:AddSlider('ConstelScale', {
    Text = 'Size',
    Default = 100,
    Min = 20,
    Max = 260,
    Rounding = 0,
    Callback = function(au)
        ak.Scale = au

        if ak.On then
            ensureConstel()
        end
    end,
})
at:AddSlider('ConstelGlow', {
    Text = 'Glow',
    Default = 100,
    Min = 10,
    Max = 100,
    Rounding = 0,
    Callback = function(au)
        ak.Glow = au
    end,
})
at:AddSlider('ConstelSpin', {
    Text = 'Drift',
    Default = 12,
    Min = 0,
    Max = 60,
    Rounding = 0,
    Callback = function(au)
        ak.Spin = au
    end,
})
at:AddSlider('ConstelTwinkle', {
    Text = 'Twinkle',
    Default = 60,
    Min = 0,
    Max = 100,
    Rounding = 0,
    Callback = function(au)
        ak.Twinkle = au
    end,
})
at:AddToggle('ConstelRealColors', {
    Text = 'Real Star Colors',
    Default = true,
    Callback = function(au)
        ak.RealColors = au
    end,
})

local au, av = {
    On = false,
    Material = Enum.Material.ForceField,
    Originals = {},
}, {
    'ForceField',
    'Neon',
    'Plastic',
    'SmoothPlastic',
    'Glass',
    'Metal',
    'DiamondPlate',
    'Foil',
    'Ice',
    'Marble',
    'Granite',
    'Concrete',
    'Wood',
    'WoodPlanks',
    'Fabric',
    'Sand',
    'Grass',
    'Brick',
    'Cobblestone',
    'CrackedLava',
    'Basalt',
    'Glow',
}

local function materialFromName(aw)
    local ax, ay = pcall(function()
        return Enum.Material[aw]
    end)

    if ax and ay then
        return ay
    end

    return Enum.Material.ForceField
end
local function restoreWeaponMaterials()
    for aw, ax in pairs(au.Originals)do
        if aw and aw.Parent then
            pcall(function()
                aw.Material = ax.Material
                aw.MaterialVariant = ax.MaterialVariant or ''
            end)
        end
    end

    table.clear(au.Originals)
end
local function applyWeaponMaterial(aw)
    if not aw or not aw:IsA'Tool' then
        return
    end

    for ax, ay in ipairs(aw:GetDescendants())do
        if ay:IsA'BasePart' then
            if not au.Originals[ay] then
                au.Originals[ay] = {
                    Material = ay.Material,
                    MaterialVariant = ay.MaterialVariant,
                }
            end
            if au.On then
                pcall(function()
                    ay.Material = au.Material
                end)
            end
        end
    end

    if aw:IsA'Tool' then
        for ax, ay in ipairs(aw:GetChildren())do
            if ay:IsA'BasePart' then
                if not au.Originals[ay] then
                    au.Originals[ay] = {
                        Material = ay.Material,
                        MaterialVariant = ay.MaterialVariant,
                    }
                end
                if au.On then
                    pcall(function()
                        ay.Material = au.Material
                    end)
                end
            end
        end
    end
end
local function scanCharacterWeapons()
    local aw = p.Character

    if not aw then
        return
    end

    for ax, ay in ipairs(aw:GetChildren())do
        if ay:IsA'Tool' then
            applyWeaponMaterial(ay)
        end
    end
end
local function onCharacter(aw)
    aw.ChildAdded:Connect(function(ax)
        if ax:IsA'Tool' then
            task.defer(function()
                applyWeaponMaterial(ax)
            end)
            ax.DescendantAdded:Connect(function(ay)
                if not au.On then
                    return
                end
                if ay:IsA'BasePart' then
                    if not au.Originals[ay] then
                        au.Originals[ay] = {
                            Material = ay.Material,
                            MaterialVariant = ay.MaterialVariant,
                        }
                    end

                    pcall(function()
                        ay.Material = au.Material
                    end)
                end
            end)
        end
    end)
    aw.ChildRemoved:Connect(function(ax)
        if ax:IsA'Tool' then
            for ay, az in ipairs(ax:GetDescendants())do
                if au.Originals[az] then
                    local aA = au.Originals[az]

                    pcall(function()
                        az.Material = aA.Material
                    end)

                    au.Originals[az] = nil
                end
            end
        end
    end)
    task.defer(scanCharacterWeapons)
end

if p.Character then
    onCharacter(p.Character)
end

p.CharacterAdded:Connect(onCharacter)
n.Heartbeat:Connect(function()
    if not au.On then
        return
    end

    local aw = p.Character

    if not aw then
        return
    end

    local ax = aw:FindFirstChildOfClass'Tool'

    if ax then
        applyWeaponMaterial(ax)
    end
end)

local aw = Q:AddLeftGroupbox'Weapon Material'

aw:AddToggle('WeaponMatEnabled', {
    Text = 'Enable',
    Default = false,
    Callback = function(ax)
        au.On = ax

        if ax then
            scanCharacterWeapons()
        else
            restoreWeaponMaterials()
        end
    end,
})
aw:AddDropdown('WeaponMatType', {
    Values = av,
    Default = 'ForceField',
    Text = 'Material',
    Callback = function(ax)
        au.Material = materialFromName(ax)

        if au.On then
            scanCharacterWeapons()
        end
    end,
})

local ax = {
    WeaponOn = false,
    CharmOn = false,
    WeaponStyle = 'Latex',
    CharmStyle = 'Latex',
    WeaponColor = Color3.fromRGB(140, 140, 245),
    CharmColor = Color3.fromRGB(140, 140, 245),
}

local function applyChamsPart(ay, az)
    local aA, aB, aC = az and ax.CharmOn or ax.WeaponOn, az and ax.CharmStyle or ax.WeaponStyle, az and ax.CharmColor or ax.WeaponColor

    if not aA then
        return
    end
    if not ay:IsA'BasePart' and not ay:IsA'MeshPart' and not ay:IsA'UnionOperation' then
        return
    end
    if ay.Transparency >= 1 then
        return
    end
    if ay.Name == 'LeftArm' or ay.Name == 'RightArm' then
        return
    end
    if not az then
        local aD = p.Character and p.Character:FindFirstChildOfClass'Tool'

        if aD then
            local aE = aD:FindFirstChild('Charm', true)

            if aE and (ay == aE or aE:IsAncestorOf(ay)) then
                return
            end
        end
    else
        local aD = ay.Parent

        if ay.Name ~= 'Charm' and not (aD and (aD.Name == 'Charm' or aD:FindFirstChild'Charm' == ay)) then
            local aE = ay:FindFirstAncestorOfClass'Tool'

            if aE then
                local aF = aE:FindFirstChild('Charm', true)

                if not aF or not (ay == aF or aF:IsAncestorOf(ay)) then
                    return
                end
            else
                return
            end
        end
    end
    if aB == 'Latex' then
        ay.Transparency = 0.55
        ay.Color = aC
        ay.Material = Enum.Material.Neon
        ay.Reflectance = 0
    elseif aB == 'Metal' then
        ay.Transparency = 0
        ay.Color = aC
        ay.Material = Enum.Material.Glass
        ay.Reflectance = 1
    elseif aB == 'Lava' then
        ay.Transparency = 0
        ay.Color = aC
        ay.Material = Enum.Material.CrackedLava
        ay.Reflectance = 0
    elseif aB == 'Glow' then
        ay.Transparency = 0
        ay.Color = aC
        ay.Material = Enum.Material.Neon
        ay.Reflectance = 0
    elseif aB == 'None' then
        ay.Material = Enum.Material.Plastic
        ay.Reflectance = 0
    end
    if ay:IsA'UnionOperation' then
        ay.UsePartColor = true
    end
end
local function applyChamsToTool(ay)
    if not ay or not ay:IsA'Tool' then
        return
    end

    for az, aA in ipairs(ay:GetDescendants())do
        applyChamsPart(aA, false)
        applyChamsPart(aA, true)
    end

    ay.DescendantAdded:Connect(function(az)
        task.wait(0.05)
        applyChamsPart(az, false)
        applyChamsPart(az, true)
    end)
end
local function applyChamsToCharacter(ay)
    if not ay then
        return
    end

    for az, aA in ipairs(ay:GetChildren())do
        if aA:IsA'Tool' then
            applyChamsToTool(aA)
        end
    end

    ay.ChildAdded:Connect(function(az)
        if az:IsA'Tool' then
            applyChamsToTool(az)
        end
    end)
end

if p.Character then
    applyChamsToCharacter(p.Character)
end

p.CharacterAdded:Connect(applyChamsToCharacter)
n.Heartbeat:Connect(function()
    if not (ax.WeaponOn or ax.CharmOn) then
        return
    end

    local ay = p.Character

    if not ay then
        return
    end

    local az = ay:FindFirstChildOfClass'Tool'

    if az then
        for aA, aB in ipairs(az:GetDescendants())do
            applyChamsPart(aB, false)
            applyChamsPart(aB, true)
        end
    end
end)

local ay = Q:AddLeftGroupbox'Weapon Chams'

ay:AddToggle('WeaponChamsEnabled', {
    Text = 'Weapon',
    Default = false,
    Callback = function(az)
        ax.WeaponOn = az

        if p.Character then
            applyChamsToCharacter(p.Character)
        end
    end,
}):AddColorPicker('WeaponChamsColor', {
    Default = Color3.fromRGB(140, 140, 245),
    Title = 'Weapon Color',
    Callback = function(az)
        ax.WeaponColor = az

        if ax.WeaponOn and p.Character then
            applyChamsToCharacter(p.Character)
        end
    end,
})
ay:AddDropdown('WeaponChamsStyle', {
    Values = {
        'None',
        'Latex',
        'Lava',
        'Metal',
        'Glow',
    },
    Default = 'Latex',
    Text = 'Style',
    Callback = function(az)
        ax.WeaponStyle = az

        if ax.WeaponOn and p.Character then
            applyChamsToCharacter(p.Character)
        end
    end,
})
ay:AddToggle('CharmChamsEnabled', {
    Text = 'Charm',
    Default = false,
    Callback = function(az)
        ax.CharmOn = az

        if p.Character then
            applyChamsToCharacter(p.Character)
        end
    end,
}):AddColorPicker('CharmChamsColor', {
    Default = Color3.fromRGB(140, 140, 245),
    Title = 'Charm Color',
    Callback = function(az)
        ax.CharmColor = az

        if ax.CharmOn and p.Character then
            applyChamsToCharacter(p.Character)
        end
    end,
})
ay:AddDropdown('CharmChamsStyle', {
    Values = {
        'None',
        'Latex',
        'Metal',
        'Lava',
        'Glow',
    },
    Default = 'Latex',
    Text = 'Charm Style',
    Callback = function(az)
        ax.CharmStyle = az

        if ax.CharmOn and p.Character then
            applyChamsToCharacter(p.Character)
        end
    end,
})

local az = P:AddLeftGroupbox'Silent Aim'

az:AddToggle('SilentAimEnable', {
    Text = 'Enable',
    Default = false,
    Callback = function(aA)
        getgenv().SilentAim = aA
    end,
})
az:AddDropdown('SilentAimTarget', {
    Values = {
        'Head',
        'UpperTorso',
        'Torso',
        'HumanoidRootPart',
    },
    Default = 'Head',
    Text = 'Target',
    Callback = function(aA)
        getgenv().SilentAimTarget = aA
    end,
})
az:AddToggle('SilentAimFOV', {
    Text = 'FOV',
    Default = false,
    Callback = function(aA)
        getgenv().SilentAimFOVEnabled = aA
    end,
})
az:AddSlider('SilentAimFOVRadius', {
    Text = 'FOV Radius',
    Default = 50,
    Min = 1,
    Max = 200,
    Rounding = 0,
    Callback = function(aA)
        getgenv().SilentAimFOV = aA
    end,
})
az:AddLabel'FOV Color':AddColorPicker('SilentAimFOVColor', {
    Default = Color3.fromRGB(255, 255, 255),
    Title = 'FOV Color',
    Callback = function(aA)
        getgenv().SilentAimFOVColor = aA
    end,
})
az:AddSlider('SilentAimFOVThickness', {
    Text = 'FOV Thickness',
    Default = 1.5,
    Min = 0.5,
    Max = 5,
    Rounding = 1,
    Callback = function(aA)
        getgenv().SilentAimFOVThickness = aA
    end,
})
az:AddSlider('SilentAimFOVTransparency', {
    Text = 'FOV Transparency',
    Default = 0,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(aA)
        getgenv().SilentAimFOVTransparency = aA
    end,
})
az:AddToggle('SilentAimFOVFilled', {
    Text = 'FOV Filled',
    Default = false,
    Callback = function(aA)
        getgenv().SilentAimFOVFilled = aA
    end,
})
az:AddSlider('SilentAimFOVFillTrans', {
    Text = 'Fill Transparency',
    Default = 0.85,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(aA)
        getgenv().SilentAimFOVFillTransparency = aA
    end,
})

local aA = P:AddRightGroupbox'Rage Bot'

aA:AddToggle('RageBotEnable', {
    Text = 'Enable',
    Default = false,
    Callback = function(aB)
        getgenv().RageBotEnabled = aB
    end,
})
aA:AddToggle('RageBotAutoShoot', {
    Text = 'Auto Shoot',
    Default = false,
    Callback = function(aB)
        getgenv().RageBotAutoFire = aB
    end,
})
aA:AddDropdown('RageBotTarget', {
    Values = {
        'Head',
        'UpperTorso',
        'Torso',
        'HumanoidRootPart',
        'All',
    },
    Default = 'Head',
    Text = 'Target',
    Callback = function(aB)
        getgenv().RageBotHitbox = aB
    end,
})

local aB = P:AddLeftGroupbox'Kill Sound'

aB:AddToggle('KillSoundEnabled', {
    Text = 'Enable',
    Default = false,
    Callback = function(aC)
        getgenv().KillSoundEnabled = aC

        applyHitSounds()
    end,
})
aB:AddDropdown('KillSoundPreset', {
    Values = J,
    Default = 'Fatality',
    Text = 'Preset',
    Callback = function(aC)
        getgenv().KillSoundPreset = aC

        applyHitSounds()
    end,
})
aB:AddSlider('KillSoundVolume', {
    Text = 'Volume',
    Default = 1,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(aC)
        getgenv().KillSoundVolume = aC
        L.Volume = aC

        applyHitSounds()
    end,
})
aB:AddButton('Preview Kill Sound', function()
    playKillSound()
end)

local aC = P:AddRightGroupbox'Shoot Sound'

aC:AddToggle('ShootSoundEnabled', {
    Text = 'Enable',
    Default = false,
    Callback = function(aD)
        getgenv().ShootSoundEnabled = aD

        refreshAllShootSounds()
    end,
})
aC:AddDropdown('ShootSoundPreset', {
    Values = J,
    Default = 'Skeet',
    Text = 'Preset',
    Callback = function(aD)
        getgenv().ShootSoundPreset = aD

        if getgenv().ShootSoundEnabled then
            refreshAllShootSounds()
        end
    end,
})
aC:AddSlider('ShootSoundVolume', {
    Text = 'Volume',
    Default = 1,
    Min = 0,
    Max = 5,
    Rounding = 1,
    Callback = function(aD)
        getgenv().ShootSoundVolume = aD

        if getgenv().ShootSoundEnabled then
            refreshAllShootSounds()
        end
    end,
})
aC:AddButton('Preview Shoot Sound', function()
    local aD = I[getgenv().ShootSoundPreset]

    if not aD then
        return
    end

    local aE = Instance.new'Sound'

    aE.SoundId = aD
    aE.Volume = getgenv().ShootSoundVolume or 1
    aE.Parent = workspace

    aE:Play()
    aE.Ended:Once(function()
        aE:Destroy()
    end)
end)

local aD = R:AddLeftGroupbox'ESP'

aD:AddToggle('ESPEnabled', {
    Text = 'Enable ESP',
    Default = false,
    Callback = function(aE)
        j.Enabled = aE
    end,
}):AddKeyPicker('ESPKeybind', {
    Default = 'None',
    Mode = 'Toggle',
    Text = 'ESP',
    SyncToggleState = true,
})
aD:AddSlider('ESPDistance', {
    Text = 'Max Distance',
    Default = 1000,
    Min = 100,
    Max = 3000,
    Rounding = 0,
    Suffix = 'm',
    Callback = function(aE)
        j.Distance = aE
    end,
})

local aE = R:AddLeftGroupbox'Boxes'

aE:AddToggle('ESPBoxesEnabled', {
    Text = 'Enable Boxes',
    Default = true,
    Callback = function(aF)
        j.Boxes.Enabled = aF
    end,
}):AddColorPicker('ESPBoxGradTop', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Box Gradient Top',
    Callback = function(aF)
        j.Boxes.Gradients.Top = aF
    end,
}):AddColorPicker('ESPBoxGradBot', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Box Gradient Bottom',
    Callback = function(aF)
        j.Boxes.Gradients.Bot = aF
    end,
})
aE:AddToggle('ESPBoundingBox', {
    Text = 'Bounding Box',
    Default = true,
    Callback = function(aF)
        j.Boxes['Bounding Box'].Enabled = aF
    end,
})
aE:AddSlider('ESPBoxY', {
    Text = 'Box Y',
    Default = 6,
    Min = 1,
    Max = 20,
    Rounding = 0,
    Callback = function(aF)
        j.Boxes['Bounding Box'].BoxY = aF
    end,
})
aE:AddSlider('ESPBoxX', {
    Text = 'Box X',
    Default = 2,
    Min = 1,
    Max = 20,
    Rounding = 0,
    Callback = function(aF)
        j.Boxes['Bounding Box'].BoxX = aF
    end,
})
aE:AddToggle('ESPBoxGlow', {
    Text = 'Box Glow',
    Default = true,
    Callback = function(aF)
        j.Boxes['Box Glow'].Enabled = aF
    end,
}):AddColorPicker('ESPBoxGlowTop', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Glow Top',
    Callback = function(aF)
        j.Boxes['Box Glow'].Top = aF
    end,
}):AddColorPicker('ESPBoxGlowBot', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Glow Bottom',
    Callback = function(aF)
        j.Boxes['Box Glow'].Bot = aF
    end,
})
aE:AddSlider('ESPBoxGlowTrans', {
    Text = 'Glow Transparency',
    Default = 0.9,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(aF)
        j.Boxes['Box Glow'].Transparency = {aF, aF}
    end,
})
aE:AddToggle('ESPBoxFilled', {
    Text = 'Filled Box',
    Default = true,
    Callback = function(aF)
        j.Boxes.Filled.Enabled = aF
    end,
}):AddColorPicker('ESPBoxFilledTop', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Fill Top',
    Callback = function(aF)
        j.Boxes.Filled.Top = aF
    end,
}):AddColorPicker('ESPBoxFilledBot', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Fill Bottom',
    Callback = function(aF)
        j.Boxes.Filled.Bot = aF
    end,
})
aE:AddSlider('ESPBoxFilledTransTop', {
    Text = 'Fill Trans Top',
    Default = 1,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(aF)
        local aG = j.Boxes.Filled.Transparency

        j.Boxes.Filled.Transparency = {
            aF,
            aG[2] or 0.75,
        }
    end,
})
aE:AddSlider('ESPBoxFilledTransBot', {
    Text = 'Fill Trans Bottom',
    Default = 0.75,
    Min = 0,
    Max = 1,
    Rounding = 2,
    Callback = function(aF)
        local aG = j.Boxes.Filled.Transparency

        j.Boxes.Filled.Transparency = {
            aG[1] or 1,
            aF,
        }
    end,
})

local aF = R:AddRightGroupbox'Bars'

aF:AddToggle('ESPHealthBar', {
    Text = 'Health Bar',
    Default = true,
    Callback = function(aG)
        j.Bars['Health Bar'].Enabled = aG
    end,
}):AddColorPicker('ESPHealthTop', {
    Default = Color3.fromRGB(0, 255, 0),
    Title = 'Health Top',
    Callback = function(aG)
        j.Bars['Health Bar'].Top = aG
    end,
}):AddColorPicker('ESPHealthMid', {
    Default = Color3.fromRGB(255, 255, 0),
    Title = 'Health Mid',
    Callback = function(aG)
        j.Bars['Health Bar'].Mid = aG
    end,
}):AddColorPicker('ESPHealthBot', {
    Default = Color3.fromRGB(255, 0, 0),
    Title = 'Health Bottom',
    Callback = function(aG)
        j.Bars['Health Bar'].Bot = aG
    end,
})

local aG = R:AddRightGroupbox'Texts'

aG:AddToggle('ESPName', {
    Text = 'Name',
    Default = true,
    Callback = function(aH)
        j.Texts.Name.Enabled = aH
    end,
}):AddColorPicker('ESPNameColor', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Name Color',
    Callback = function(aH)
        j.Texts.Name.Color = aH
    end,
})
aG:AddToggle('ESPDistText', {
    Text = 'Distance',
    Default = true,
    Callback = function(aH)
        j.Texts.Distance.Enabled = aH
    end,
}):AddColorPicker('ESPDistColor', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Distance Color',
    Callback = function(aH)
        j.Texts.Distance.Color = aH
    end,
})
aG:AddToggle('ESPWeapon', {
    Text = 'Weapon (Tool)',
    Default = true,
    Callback = function(aH)
        j.Texts.Weapon.Enabled = aH
    end,
}):AddColorPicker('ESPWeaponColor', {
    Default = Color3.fromRGB(0, 255, 255),
    Title = 'Weapon Color',
    Callback = function(aH)
        j.Texts.Weapon.Color = aH
    end,
})

local aH = S:AddLeftGroupbox'Menu Settings'

aH:AddToggle('KeybindMenuOpen', {
    Default = b.KeybindFrame and b.KeybindFrame.Visible or false,
    Text = 'Open Keybind Menu',
    Callback = function(aI)
        if b.KeybindFrame then
            b.KeybindFrame.Visible = aI
        end
    end,
})
aH:AddToggle('ShowCustomCursor', {
    Text = 'Custom Cursor',
    Default = true,
    Callback = function(aI)
        b.ShowCustomCursor = aI
    end,
})
aH:AddDivider()
aH:AddLabel'Menu Keybind':AddKeyPicker('MenuKeybind', {
    Default = 'LeftControl',
    NoUI = true,
    Text = 'Menu Keybind',
})
aH:AddButton('Unload Script', function()
    j.Enabled = false
    getgenv().SilentAim = false
    getgenv().RageBotEnabled = false
    getgenv().RageBotAutoFire = false
    getgenv().KillSoundEnabled = false
    getgenv().ShootSoundEnabled = false
    A.Visible = false

    pcall(function()
        z:Destroy()
    end)
    pcall(function()
        L:Destroy()
    end)
    pcall(function()
        U:Destroy()
        V:Destroy()
        W:Destroy()
        X:Destroy()

        if aa then
            aa:Destroy()
        end

        stopWeather()
        clearGlyphs()
        clearConstel()
        pcall(function()
            ah:Destroy()
        end)
        pcall(function()
            aj:Destroy()
        end)
        pcall(function()
            al:Destroy()
        end)

        for aI, aJ in pairs(Z)do
            pcall(function()
                T[aI] = aJ
            end)
        end
    end)
    pcall(function()
        if O then
            O:Disconnect()
        end
    end)
    pcall(function()
        for aI, aJ in pairs(N)do
            if aI and aI.Parent then
                aI.SoundId = aJ
            end
        end
    end)
    pcall(function()
        v.Fire = x
    end)

    if type(k) == 'function' then
        pcall(k, i)
    end

    b:Unload()
end)

b.ToggleKeybind = e.MenuKeybind

c:SetLibrary(b)
d:SetLibrary(b)
d:IgnoreThemeSettings()
d:SetIgnoreIndexes{
    'MenuKeybind',
}
c:SetFolder'CandyCC'
d:SetFolder'CandyCC'
d:BuildConfigSection(S)
c:ApplyToTab(S)
d:LoadAutoloadConfig()
