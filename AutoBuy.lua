local ref = gui.Reference("MISC", "Enhancement")
local Group = gui.Groupbox(ref, "Autobuy", 327, 315, 297)
local checkbox_buybot = gui.Checkbox( Group, "Checkbox", "BuyBot Active",  false)
local primary_guns = gui.Combobox( Group, "primary", "Primary", "Off", "Scar-20 | G3SG1","AK47 | M4A1", "SSG-08", "AWP", "SG553 | AUG")
local secondary_guns = gui.Combobox( Group, "Secondary", "Secondary",  "Off", "Dual Berettas", "Deagle | Revolver", "P250","TEC-9 | CZ75-Auto" )
local k_armor = gui.Checkbox( Group, "k_armor", "Buy Kevlar + Armor", false)
local armor = gui.Checkbox( Group, "armor", "Buy Armor", false)
local nades = gui.Checkbox( Group, "nades", "Buy Nades", false)
local buybot_zeus = gui.Checkbox( Group, "zeus", "Buy Zeus",  false)
local defuser = gui.Checkbox( Group, "defuser", "Buy Defuser",  false)
local weapons_ = {"pistol", "revolver", "smg", "rifle", "shotgun", "scout", "autosniper", "sniper", "lmg"}
local hitboxes_ = {"head", "neck", "chest", "stomach", "pelvis", "arms", "legs"}
local primary_w = {"buy scar20", "buy m4a1", "buy ssg08", "buy awp", "buy aug"}
local secondary_w = {"buy elite", "buy deagle", "buy p250", "buy tec9"}
local function Events( event )
    if event:GetName() == "round_start" and checkbox_buybot:GetValue() then
        local needtobuy = ""
        local primary = primary_guns:GetValue()
        local secondary = secondary_guns:GetValue()

        if k_armor:GetValue() then needtobuy = "buy vesthelm;"   
        end
        if armor:GetValue() then needtobuy = "buy vest;"   
        end
        if nades:GetValue() then needtobuy = needtobuy.."buy hegrenade;buy molotov;buy smokegrenade;buy flashbang;buy flashbang;"
        end
        if buybot_zeus:GetValue() then needtobuy = needtobuy.."buy taser;" 
        end        
        if defuser:GetValue() then needtobuy = needtobuy.."buy defuser;" 
        end
        if primary > 0 then needtobuy = needtobuy..primary_w[primary]..";"   
        end        
        if secondary > 0 then needtobuy = needtobuy..secondary_w[secondary]..";" 
        end


        client.Command(needtobuy, false)
  end
          end
callbacks.Register( "FireGameEvent", Events)