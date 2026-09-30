local a, b, c, d, e, f = loadstring(game:HttpGetAsync'https://raw.githubusercontent.com/Be1for/UI/refs/heads/main/U.luau')(), game:GetService'Players', game:GetService'UserInputService', game:GetService'RunService', game:GetService'Workspace', game:GetService'Lighting'
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
    SpawnCFrame = nil,
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

local r

local function stopSpawnForce()
    if r then
        r:Disconnect()

        r = nil
    end
end
local function applySpawnTo(s)
    if not k.SpawnCFrame or not s then
        return
    end

    local t = s:FindFirstChild'HumanoidRootPart' or s:FindFirstChild'Torso'

    if not t then
        return
    end

    t.CFrame = k.SpawnCFrame
    t.AssemblyLinearVelocity = Vector3.zero
    t.AssemblyAngularVelocity = Vector3.zero
end
local function startSpawnForce(s)
    stopSpawnForce()

    if not k.SpawnCFrame or not s then
        return
    end

    local t, u = tick() + 4, 0

    r = d.Heartbeat:Connect(function()
        if not k.SpawnCFrame then
            stopSpawnForce()

            return
        end
        if not s or not s.Parent then
            stopSpawnForce()

            return
        end

        local v = s:FindFirstChild'HumanoidRootPart' or s:FindFirstChild'Torso'

        if not v then
            return
        end

        local w, x = tick(), (v.Position - k.SpawnCFrame.Position).Magnitude

        if w <= t or x > 12 then
            if w - u >= 0.05 then
                u = w
                v.CFrame = k.SpawnCFrame
                v.AssemblyLinearVelocity = Vector3.zero
                v.AssemblyAngularVelocity = Vector3.zero
            end
        else
            stopSpawnForce()
        end
    end)

    task.spawn(function()
        for v, w in ipairs{
            0.1,
            0.25,
            0.5,
            1,
            1.5,
            2,
            3,
        }do
            task.wait(w)

            if s.Parent and k.SpawnCFrame then
                applySpawnTo(s)
            end
        end
    end)
end
local function onCharacter(s)
    task.wait(0.1)
    applyWalkSpeed()
    applyJump()
    applyGravity()

    if k.SpawnCFrame then
        startSpawnForce(s)
    end
    if k.Fly then
        startFly()
    end
    if k.Float then
        startFloat()
    end
    if k.Noclip then
        startNoclip()
    end

    local t = s:FindFirstChildOfClass'Humanoid' or s:WaitForChild('Humanoid', 5)

    if t then
        t:GetPropertyChangedSignal'WalkSpeed':Connect(function()
            if k.Fly then
                return
            end
            if not k.WalkSpeedEnabled then
                return
            end
            if math.abs(t.WalkSpeed - k.WalkSpeed) > 0.05 then
                t.WalkSpeed = k.WalkSpeed
            end
        end)
        t.Died:Connect(function()
            stopSpawnForce()
        end)
    end
end

if g.Character then
    task.spawn(onCharacter, g.Character)
end

g.CharacterAdded:Connect(onCharacter)

local s = a.new{
    Title = 'candy.cc',
    Description = 'Player utilities',
    Keybind = Enum.KeyCode.LeftControl,
}

task.defer(function()
    if s.Watermark and s.Watermark.Container then
        local t = s.Watermark.Container

        t.AnchorPoint = Vector2.new(1, 0)

        if s.Watermark.SetPosition then
            s.Watermark.SetPosition(UDim2.new(1, -20, 0, 20))
        else
            t.Position = UDim2.new(1, -20, 0, 20)
        end
    end
end)

local t = s:NewTab{
    Title = 'Player',
    Description = 'Movement',
    Icon = 'rbxassetid://7733960981',
}
local u = t:NewSection{
    Position = 'Left',
    Title = 'Movement',
    Icon = 'rbxassetid://7733960981',
}

u:NewTitle'WalkSpeed'
u:NewToggle{
    Title = 'WalkSpeed Enabled',
    Default = false,
    Callback = function(v)
        k.WalkSpeedEnabled = v

        applyWalkSpeed()
    end,
}
u:NewSlider{
    Title = 'WalkSpeed',
    Min = 1,
    Max = 200,
    Default = h,
    Callback = function(v)
        k.WalkSpeed = v

        if k.WalkSpeedEnabled then
            applyWalkSpeed()
        end
    end,
}

local v = t:NewSection{
    Position = 'Right',
    Title = 'Jump',
    Icon = 'rbxassetid://7733911828',
}

v:NewTitle'JumpPower'
v:NewToggle{
    Title = 'JumpPower Enabled',
    Default = false,
    Callback = function(w)
        k.JumpEnabled = w

        applyJump()
    end,
}
v:NewSlider{
    Title = 'JumpPower',
    Min = 0,
    Max = 200,
    Default = i,
    Callback = function(w)
        k.JumpPower = w

        if k.JumpEnabled then
            applyJump()
        end
    end,
}
v:NewToggle{
    Title = 'Infinite Jump',
    Default = false,
    Callback = function(w)
        k.InfiniteJump = w
    end,
}

local w = t:NewSection{
    Position = 'Left',
    Title = 'Fly / Float',
    Icon = 'rbxassetid://7733920644',
}

w:NewTitle'Flight and air walk'
w:NewToggle{
    Title = 'Fly',
    Default = false,
    Callback = function(x)
        k.Fly = x

        if x then
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
w:NewSlider{
    Title = 'Fly Speed',
    Min = 10,
    Max = 200,
    Default = 50,
    Callback = function(x)
        k.FlySpeed = x
    end,
}
w:NewToggle{
    Title = 'Float / Air Walk',
    Default = false,
    Callback = function(x)
        k.Float = x

        if x then
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

local x = t:NewSection{
    Position = 'Right',
    Title = 'World / Noclip',
    Icon = 'rbxassetid://7734053495',
}

x:NewTitle'Gravity and collisions'
x:NewToggle{
    Title = 'Gravity Enabled',
    Default = false,
    Callback = function(y)
        k.GravityEnabled = y

        applyGravity()
    end,
}
x:NewSlider{
    Title = 'Gravity',
    Min = 0,
    Max = 300,
    Default = 50,
    Callback = function(y)
        k.Gravity = y

        if k.GravityEnabled then
            applyGravity()
        end
    end,
}
x:NewToggle{
    Title = 'Noclip',
    Default = false,
    Callback = function(y)
        k.Noclip = y

        if y then
            startNoclip()
        else
            stopNoclip()
        end
    end,
}
x:NewButton{
    Title = 'Set Spawnpoint',
    Callback = function()
        local y = getRoot()

        if y then
            k.SpawnCFrame = y.CFrame
        end
    end,
}
x:NewButton{
    Title = 'Reset Spawnpoint',
    Callback = function()
        k.SpawnCFrame = nil

        stopSpawnForce()
    end,
}

local y, z = {
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

local function nameMatches(A, B)
    local C = string.lower(tostring(A or ''))

    for D, E in ipairs(B)do
        if string.find(C, E, 1, true) then
            return true
        end
    end

    return false
end
local function clearHighlights(A)
    for B, C in pairs(A)do
        pcall(function()
            if C and C.Destroy then
                C:Destroy()
            end
        end)

        A[B] = nil
    end
end
local function addKillHighlight(A)
    if y.killHighlights[A] then
        return
    end
    if not A:IsA'BasePart' then
        return
    end

    local B = Instance.new'Highlight'

    B.Name = 'CandyKillESP'
    B.Adornee = A
    B.FillColor = Color3.fromRGB(255, 40, 40)
    B.OutlineColor = Color3.fromRGB(255, 120, 120)
    B.FillTransparency = 0.45
    B.OutlineTransparency = 0
    B.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    B.Parent = A
    y.killHighlights[A] = B
end
local function isKillPart(A)
    if not A:IsA'BasePart' then
        return false
    end
    if nameMatches(A.Name, z) then
        return true
    end
    if A.Parent and nameMatches(A.Parent.Name, z) then
        return true
    end

    local B = A:FindFirstChildOfClass'TouchTransmitter'

    if B and nameMatches(A.Name, z) then
        return true
    end
    if A:GetAttribute'Damage' or A:GetAttribute'Kill' or A:GetAttribute'InstantKill' then
        return true
    end

    local C = A.Material

    if C == Enum.Material.Neon or C == Enum.Material.ForceField then
        local D = A.Color

        if D.R > 0.7 and D.G < 0.35 and D.B < 0.35 then
            if nameMatches(A.Name, z) or nameMatches(A.Parent and A.Parent.Name or '', z) then
                return true
            end
        end
    end

    return false
end
local function scanWorld()
    if k.KillESP then
        for A, B in ipairs(e:GetDescendants())do
            if B:IsA'BasePart' and isKillPart(B) then
                addKillHighlight(B)
            end
        end
    end
end
local function stopVisualScan()
    if y.scanConn then
        y.scanConn:Disconnect()

        y.scanConn = nil
    end
end
local function ensureVisualScan()
    if y.scanConn then
        return
    end

    local A = 0

    y.scanConn = d.Heartbeat:Connect(function(B)
        if not (k.KillESP) then
            stopVisualScan()

            return
        end

        A = A + B

        if A >= 1.25 then
            A = 0

            pcall(scanWorld)
        end
    end)
end
local function setKillESP(A)
    k.KillESP = A

    if not A then
        clearHighlights(y.killHighlights)
    else
        scanWorld()
        ensureVisualScan()
    end
end
local function setFullbright(A)
    k.Fullbright = A

    if A then
        if not y.fullbrightBackup then
            y.fullbrightBackup = {
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
        local B = y.fullbrightBackup

        if B then
            f.Brightness = B.Brightness
            f.ClockTime = B.ClockTime
            f.FogEnd = B.FogEnd
            f.FogStart = B.FogStart
            f.GlobalShadows = B.GlobalShadows
            f.Ambient = B.Ambient
            f.OutdoorAmbient = B.OutdoorAmbient
        end
    end
end
local function setShiftLock(A)
    k.ShiftLock = A

    pcall(function()
        g.DevEnableMouseLock = A
    end)
    pcall(function()
        c.MouseBehavior = A and Enum.MouseBehavior.Default or c.MouseBehavior
    end)

    if A then
        pcall(function()
            g.CameraMode = Enum.CameraMode.Classic
        end)
    end
end

local A = s:NewTab{
    Title = 'Visuals',
    Description = 'ESP & Utility',
    Icon = 'rbxassetid://7733993369',
}
local B = A:NewSection{
    Position = 'Left',
    Title = 'ESP',
    Icon = 'rbxassetid://7733993369',
}

B:NewTitle'World highlights'
B:NewToggle{
    Title = 'Killblock / Lava ESP',
    Default = false,
    Callback = function(C)
        setKillESP(C)
    end,
}
B:NewButton{
    Title = 'Rescan Map',
    Callback = function()
        pcall(scanWorld)
    end,
}

local C = A:NewSection{
    Position = 'Right',
    Title = 'Utility',
    Icon = 'rbxassetid://7734053495',
}

C:NewTitle'Lighting and camera'
C:NewToggle{
    Title = 'Fullbright / No Fog',
    Default = false,
    Callback = function(D)
        setFullbright(D)
    end,
}
C:NewToggle{
    Title = 'Shift Lock Switch',
    Default = false,
    Callback = function(D)
        setShiftLock(D)
    end,
}
C:NewButton{
    Title = 'Clear All ESP',
    Callback = function()
        setKillESP(false)
    end,
}
task.defer(function()
    if not s.Tabs then
        return
    end

    local D = 2

    if #s.Tabs < 2 then
        D = 1
    end

    for E, F in ipairs(s.Tabs)do
        if F.onFunction then
            F.onFunction(E == D)
        end
    end
end)
