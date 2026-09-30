local a, b, c, d, e, f = loadstring(game:HttpGetAsync'https://raw.githubusercontent.com/Be1for/UI/refs/heads/main/candy_cc.luau')(), game:GetService'Players', game:GetService'UserInputService', game:GetService'RunService', game:GetService'Workspace', game:GetService'Lighting'
local g, h, i, j = b.LocalPlayer, 16, 50, 196.2
local k, l, m, n, o, p, q = {
    WalkSpeedEnabled = false,
    WalkSpeed = h,
    JumpEnabled = false,
    JumpPower = i,
    InfiniteJump = false,
    Fly = false,
    FlySpeed = 50,
    Float = false,
    GravityEnabled = false,
    Gravity = 50,
    Noclip = false,
    KillESP = false,
    Fullbright = false,
    ShiftLock = false,
}, nil, nil, nil, nil, nil, nil

local function getCharacter()
    return g.Character
end
local function getHumanoid()
    local r = getCharacter()

    if not r then
        return nil
    end

    return r:FindFirstChildOfClass'Humanoid'
end
local function getRoot()
    local r = getCharacter()

    if not r then
        return nil
    end

    return r:FindFirstChild'HumanoidRootPart' or r:FindFirstChild'Torso'
end
local function applyWalkSpeed()
    local r = getHumanoid()

    if not r then
        return
    end
    if k.WalkSpeedEnabled then
        r.WalkSpeed = k.WalkSpeed
    else
        r.WalkSpeed = h
    end
end
local function applyJump()
    local r = getHumanoid()

    if not r then
        return
    end

    pcall(function()
        r.UseJumpPower = true

        if k.JumpEnabled then
            r.JumpPower = k.JumpPower
        else
            r.JumpPower = i
        end
    end)
end
local function stopFly()
    if p then
        p:Disconnect()

        p = nil
    end
    if l then
        pcall(function()
            l:Destroy()
        end)

        l = nil
    end
    if m then
        pcall(function()
            m:Destroy()
        end)

        m = nil
    end

    local r = getHumanoid()

    if r then
        r.PlatformStand = false
    end
end
local function startFly()
    stopFly()

    local r, s = getRoot(), getHumanoid()

    if not r or not s then
        return
    end

    s.PlatformStand = true
    l = Instance.new'BodyVelocity'
    l.Name = 'CandyFlyBV'
    l.MaxForce = Vector3.new(1e5, 1e5, 1e5)
    l.Velocity = Vector3.zero
    l.Parent = r
    m = Instance.new'BodyGyro'
    m.Name = 'CandyFlyBG'
    m.MaxTorque = Vector3.new(1e5, 1e5, 1e5)
    m.P = 1e4
    m.CFrame = r.CFrame
    m.Parent = r
    p = d.RenderStepped:Connect(function()
        if not k.Fly then
            stopFly()

            return
        end

        r = getRoot()
        s = getHumanoid()

        if not r or not s or not l or not m then
            stopFly()

            return
        end

        local t, u = e.CurrentCamera, Vector3.zero

        if c:IsKeyDown(Enum.KeyCode.W) then
            u = u + t.CFrame.LookVector
        end
        if c:IsKeyDown(Enum.KeyCode.S) then
            u = u - t.CFrame.LookVector
        end
        if c:IsKeyDown(Enum.KeyCode.A) then
            u = u - t.CFrame.RightVector
        end
        if c:IsKeyDown(Enum.KeyCode.D) then
            u = u + t.CFrame.RightVector
        end
        if c:IsKeyDown(Enum.KeyCode.Space) then
            u = u + Vector3.new(0, 1, 0)
        end
        if c:IsKeyDown(Enum.KeyCode.LeftControl) or c:IsKeyDown(Enum.KeyCode.LeftShift) then
            u = u - Vector3.new(0, 1, 0)
        end
        if u.Magnitude > 0 then
            u = u.Unit * k.FlySpeed
        end

        l.Velocity = u
        m.CFrame = CFrame.new(r.Position, r.Position + t.CFrame.LookVector)
        s.PlatformStand = true
    end)
end
local function stopFloat()
    if q then
        q:Disconnect()

        q = nil
    end
    if n then
        pcall(function()
            n:Destroy()
        end)

        n = nil
    end
end
local function startFloat()
    stopFloat()

    local r = getRoot()

    if not r then
        return
    end

    n = Instance.new'Part'
    n.Name = 'CandyAirWalk'
    n.Size = Vector3.new(4, 0.2, 4)
    n.Anchored = true
    n.CanCollide = true
    n.Transparency = 1
    n.CastShadow = false
    n.CanQuery = false
    n.CanTouch = false
    n.Material = Enum.Material.SmoothPlastic
    n.Parent = e
    q = d.Heartbeat:Connect(function()
        if not k.Float then
            stopFloat()

            return
        end

        r = getRoot()

        local s = getHumanoid()

        if not r or not n then
            stopFloat()

            return
        end

        local t = 3

        if s then
            t = math.clamp(s.HipHeight + (r.Size.Y * 0.5) + 0.15, 2, 5)
        end

        local u = r.Position.Y - t

        n.Size = Vector3.new(4, 0.2, 4)
        n.CFrame = CFrame.new(r.Position.X, u, r.Position.Z)

        local v = r.AssemblyLinearVelocity

        if v.Y > 2 then
            r.AssemblyLinearVelocity = Vector3.new(v.X, math.min(v.Y, 2), v.Z)
        end
    end)
end
local function stopNoclip()
    if o then
        o:Disconnect()

        o = nil
    end

    local r = getCharacter()

    if r then
        for s, t in ipairs(r:GetDescendants())do
            if t:IsA'BasePart' then
                t.CanCollide = true
            end
        end
    end
end
local function startNoclip()
    stopNoclip()

    o = d.Stepped:Connect(function()
        if not k.Noclip then
            stopNoclip()

            return
        end

        local r = getCharacter()

        if not r then
            return
        end

        for s, t in ipairs(r:GetDescendants())do
            if t:IsA'BasePart' then
                t.CanCollide = false
            end
        end
    end)
end
local function applyGravity()
    if k.GravityEnabled then
        e.Gravity = k.Gravity
    else
        e.Gravity = j
    end
end

c.JumpRequest:Connect(function()
    if not k.InfiniteJump then
        return
    end

    local r, s = getHumanoid(), getRoot()

    if not r or not s then
        return
    end
    if r:GetState() == Enum.HumanoidStateType.Seated then
        return
    end

    r:ChangeState(Enum.HumanoidStateType.Jumping)

    local t = k.JumpEnabled and k.JumpPower or i

    s.AssemblyLinearVelocity = Vector3.new(s.AssemblyLinearVelocity.X, math.max(t, 50), s.AssemblyLinearVelocity.Z)
end)

local function onCharacter(r)
    task.wait(0.1)
    applyWalkSpeed()
    applyJump()
    applyGravity()

    if k.Fly then
        startFly()
    end
    if k.Float then
        startFloat()
    end
    if k.Noclip then
        startNoclip()
    end

    local s = r:FindFirstChildOfClass'Humanoid' or r:WaitForChild('Humanoid', 5)

    if s then
        s:GetPropertyChangedSignal'WalkSpeed':Connect(function()
            if k.Fly then
                return
            end
            if not k.WalkSpeedEnabled then
                return
            end
            if math.abs(s.WalkSpeed - k.WalkSpeed) > 0.05 then
                s.WalkSpeed = k.WalkSpeed
            end
        end)
    end
end

if g.Character then
    task.spawn(onCharacter, g.Character)
end

g.CharacterAdded:Connect(onCharacter)

local r = a.new{
    Title = 'candy.cc',
    Description = 'Player utilities',
    Keybind = Enum.KeyCode.LeftControl,
}

task.defer(function()
    if r.Watermark and r.Watermark.Container then
        local s = r.Watermark.Container

        s.AnchorPoint = Vector2.new(1, 0)

        if r.Watermark.SetPosition then
            r.Watermark.SetPosition(UDim2.new(1, -20, 0, 20))
        else
            s.Position = UDim2.new(1, -20, 0, 20)
        end
    end
end)

local s = r:NewTab{
    Title = 'Player',
    Description = 'Movement',
    Icon = 'rbxassetid://7733960981',
}
local t = s:NewSection{
    Position = 'Left',
    Title = 'Movement',
    Icon = 'rbxassetid://7733960981',
}

t:NewTitle'WalkSpeed'
t:NewToggle{
    Title = 'WalkSpeed Enabled',
    Default = false,
    Callback = function(u)
        k.WalkSpeedEnabled = u

        applyWalkSpeed()
    end,
}
t:NewSlider{
    Title = 'WalkSpeed',
    Min = 1,
    Max = 200,
    Default = h,
    Callback = function(u)
        k.WalkSpeed = u

        if k.WalkSpeedEnabled then
            applyWalkSpeed()
        end
    end,
}

local u = s:NewSection{
    Position = 'Right',
    Title = 'Jump',
    Icon = 'rbxassetid://7733911828',
}

u:NewTitle'JumpPower'
u:NewToggle{
    Title = 'JumpPower Enabled',
    Default = false,
    Callback = function(v)
        k.JumpEnabled = v

        applyJump()
    end,
}
u:NewSlider{
    Title = 'JumpPower',
    Min = 0,
    Max = 200,
    Default = i,
    Callback = function(v)
        k.JumpPower = v

        if k.JumpEnabled then
            applyJump()
        end
    end,
}
u:NewToggle{
    Title = 'Infinite Jump',
    Default = false,
    Callback = function(v)
        k.InfiniteJump = v
    end,
}

local v = s:NewSection{
    Position = 'Left',
    Title = 'Fly / Float',
    Icon = 'rbxassetid://7733920644',
}

v:NewTitle'Flight and air walk'
v:NewToggle{
    Title = 'Fly',
    Default = false,
    Callback = function(w)
        k.Fly = w

        if w then
            if k.Float then
                k.Float = false

                stopFloat()
            end

            startFly()
        else
            stopFly()
            applyWalkSpeed()
        end
    end,
}
v:NewSlider{
    Title = 'Fly Speed',
    Min = 10,
    Max = 200,
    Default = 50,
    Callback = function(w)
        k.FlySpeed = w
    end,
}
v:NewToggle{
    Title = 'Float / Air Walk',
    Default = false,
    Callback = function(w)
        k.Float = w

        if w then
            if k.Fly then
                k.Fly = false

                stopFly()
            end

            startFloat()
        else
            stopFloat()
        end
    end,
}

local w = s:NewSection{
    Position = 'Right',
    Title = 'World / Noclip',
    Icon = 'rbxassetid://7734053495',
}

w:NewTitle'Gravity and collisions'
w:NewToggle{
    Title = 'Gravity Enabled',
    Default = false,
    Callback = function(x)
        k.GravityEnabled = x

        applyGravity()
    end,
}
w:NewSlider{
    Title = 'Gravity',
    Min = 0,
    Max = 300,
    Default = 50,
    Callback = function(x)
        k.Gravity = x

        if k.GravityEnabled then
            applyGravity()
        end
    end,
}
w:NewToggle{
    Title = 'Noclip',
    Default = false,
    Callback = function(x)
        k.Noclip = x

        if x then
            startNoclip()
        else
            stopNoclip()
        end
    end,
}

local x, y = {
    killHighlights = {},
    checkpointBillboards = {},
    safeHighlights = {},
    scanConn = nil,
    fullbrightBackup = nil,
}, {
    'kill',
    'lava',
    'damage',
    'hurt',
    'death',
    'die',
    'acid',
    'fire',
    'spike',
    'hazard',
    'danger',
    'toxic',
    'void',
}

local function nameMatches(z, A)
    local B = string.lower(tostring(z or ''))

    for C, D in ipairs(A)do
        if string.find(B, D, 1, true) then
            return true
        end
    end

    return false
end
local function clearHighlights(z)
    for A, B in pairs(z)do
        pcall(function()
            if B and B.Destroy then
                B:Destroy()
            end
        end)

        z[A] = nil
    end
end
local function addKillHighlight(z)
    if x.killHighlights[z] then
        return
    end
    if not z:IsA'BasePart' then
        return
    end

    local A = Instance.new'Highlight'

    A.Name = 'CandyKillESP'
    A.Adornee = z
    A.FillColor = Color3.fromRGB(255, 40, 40)
    A.OutlineColor = Color3.fromRGB(255, 120, 120)
    A.FillTransparency = 0.45
    A.OutlineTransparency = 0
    A.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    A.Parent = z
    x.killHighlights[z] = A
end
local function isKillPart(z)
    if not z:IsA'BasePart' then
        return false
    end
    if nameMatches(z.Name, y) then
        return true
    end
    if z.Parent and nameMatches(z.Parent.Name, y) then
        return true
    end

    local A = z:FindFirstChildOfClass'TouchTransmitter'

    if A and nameMatches(z.Name, y) then
        return true
    end
    if z:GetAttribute'Damage' or z:GetAttribute'Kill' or z:GetAttribute'InstantKill' then
        return true
    end

    local B = z.Material

    if B == Enum.Material.Neon or B == Enum.Material.ForceField then
        local C = z.Color

        if C.R > 0.7 and C.G < 0.35 and C.B < 0.35 then
            if nameMatches(z.Name, y) or nameMatches(z.Parent and z.Parent.Name or '', y) then
                return true
            end
        end
    end

    return false
end
local function scanWorld()
    if k.KillESP then
        for z, A in ipairs(e:GetDescendants())do
            if A:IsA'BasePart' and isKillPart(A) then
                addKillHighlight(A)
            end
        end
    end
end
local function stopVisualScan()
    if x.scanConn then
        x.scanConn:Disconnect()

        x.scanConn = nil
    end
end
local function ensureVisualScan()
    if x.scanConn then
        return
    end

    local z = 0

    x.scanConn = d.Heartbeat:Connect(function(A)
        if not (k.KillESP) then
            stopVisualScan()

            return
        end

        z = z + A

        if z >= 1.25 then
            z = 0

            pcall(scanWorld)
        end
    end)
end
local function setKillESP(z)
    k.KillESP = z

    if not z then
        clearHighlights(x.killHighlights)
    else
        scanWorld()
        ensureVisualScan()
    end
end
local function setFullbright(z)
    k.Fullbright = z

    if z then
        if not x.fullbrightBackup then
            x.fullbrightBackup = {
                Brightness = f.Brightness,
                ClockTime = f.ClockTime,
                FogEnd = f.FogEnd,
                FogStart = f.FogStart,
                GlobalShadows = f.GlobalShadows,
                Ambient = f.Ambient,
                OutdoorAmbient = f.OutdoorAmbient,
            }
        end

        f.Brightness = 2
        f.ClockTime = 14
        f.FogEnd = 9e9
        f.FogStart = 0
        f.GlobalShadows = false
        f.Ambient = Color3.fromRGB(200, 200, 200)
        f.OutdoorAmbient = Color3.fromRGB(180, 180, 180)
    else
        local A = x.fullbrightBackup

        if A then
            f.Brightness = A.Brightness
            f.ClockTime = A.ClockTime
            f.FogEnd = A.FogEnd
            f.FogStart = A.FogStart
            f.GlobalShadows = A.GlobalShadows
            f.Ambient = A.Ambient
            f.OutdoorAmbient = A.OutdoorAmbient
        end
    end
end
local function setShiftLock(z)
    k.ShiftLock = z

    pcall(function()
        g.DevEnableMouseLock = z
    end)
    pcall(function()
        c.MouseBehavior = z and Enum.MouseBehavior.Default or c.MouseBehavior
    end)

    if z then
        pcall(function()
            g.CameraMode = Enum.CameraMode.Classic
        end)
    end
end

local z = r:NewTab{
    Title = 'Visuals',
    Description = 'ESP & Utility',
    Icon = 'rbxassetid://7733993369',
}
local A = z:NewSection{
    Position = 'Left',
    Title = 'ESP',
    Icon = 'rbxassetid://7733993369',
}

A:NewTitle'World highlights'
A:NewToggle{
    Title = 'Killblock / Lava ESP',
    Default = false,
    Callback = function(B)
        setKillESP(B)
    end,
}
A:NewButton{
    Title = 'Rescan Map',
    Callback = function()
        pcall(scanWorld)
    end,
}

local B = z:NewSection{
    Position = 'Right',
    Title = 'Utility',
    Icon = 'rbxassetid://7734053495',
}

B:NewTitle'Lighting and camera'
B:NewToggle{
    Title = 'Fullbright / No Fog',
    Default = false,
    Callback = function(C)
        setFullbright(C)
    end,
}
B:NewToggle{
    Title = 'Shift Lock Switch',
    Default = false,
    Callback = function(C)
        setShiftLock(C)
    end,
}
B:NewButton{
    Title = 'Clear All ESP',
    Callback = function()
        setKillESP(false)
    end,
}
task.defer(function()
    if not r.Tabs then
        return
    end

    local C = 2

    if #r.Tabs < 2 then
        C = 1
    end

    for D, E in ipairs(r.Tabs)do
        if E.onFunction then
            E.onFunction(D == C)
        end
    end
end)
