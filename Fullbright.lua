print("Loaded Aimware FullBright Lua by starlordaiden")
local client_SetConVar = client.SetConVar
local ref = gui.Reference("Visuals", "World", "Extra");
local fullbright = gui.Checkbox(ref, "fulbright", "Full Bright", false)
function full_bright()
     if fullbright:GetValue() then client_SetConVar("mat_fullbright", 1, true);
        else 
     client_SetConVar("mat_fullbright", 0, true);
     end 
    end
callbacks.Register('Draw', "FullBright" ,full_bright);
