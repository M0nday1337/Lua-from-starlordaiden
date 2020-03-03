print ("Loaded Rainbow Helper by starlordaiden!")
RAINBOW_SPEED = 1;
-- <1 = faster, >1 = slower
--SLIDER NEED 
local RAINBOW_REF = gui.Reference("Visuals", "Other")
local RAINBOW_GROUPBOX = gui.Groupbox(RAINBOW_REF, "Rainbow Helper", 15, 395, 297)
-- RAINBOW_GROUPBOX:SetDescription("If you want make faster or slower, change Rainbow_Speed.")
--Friendly
local RAINBOWFR_GROUPBOX = gui.Groupbox(RAINBOW_GROUPBOX, "Rainbow Friendly Chams", 0, 0, 250)
local RAINBOWFR_OCC_CHECKBOX = gui.Checkbox(RAINBOWFR_GROUPBOX,"RainbowFrOcCh", "Friendly Occluded", false);
local RAINBOWFR_VIS_CHECKBOX = gui.Checkbox(RAINBOWFR_GROUPBOX,"RainbowFrVisCh", "Friendly Visible", false);
local RAINBOWFR_OV_CHECKBOX = gui.Checkbox(RAINBOWFR_GROUPBOX,"RainbowFrOvCh", "Friendly Overlay", false);
--Enemy
local RAINBOWEN_GROUPBOX = gui.Groupbox(RAINBOW_GROUPBOX, "Rainbow Enemy Chams", 0, 172, 250)
local RAINBOWEN_OCC_CHECKBOX = gui.Checkbox(RAINBOWEN_GROUPBOX,"RainbowEnOvCh", "Enemy Occluded", false);
local RAINBOWEN_VIS_CHECKBOX = gui.Checkbox(RAINBOWEN_GROUPBOX,"RainbowEnOvCh", "Enemy Visible", false);
local RAINBOWEN_OV_CHECKBOX = gui.Checkbox(RAINBOWEN_GROUPBOX,"RainbowEnOvCh", "Enemy Overlay", false);
--Local
local RAINBOWLO_GROUPBOX = gui.Groupbox(RAINBOW_GROUPBOX, "Rainbow Local Chams", 0, 345, 250)
local RAINBOWLO_OCC_CHECKBOX = gui.Checkbox(RAINBOWLO_GROUPBOX,"RainbowLoOvCh", "Local Occluded", false);
local RAINBOWLO_VIS_CHECKBOX = gui.Checkbox(RAINBOWLO_GROUPBOX,"RainbowLoOvCh", "Local Visible", false);
local RAINBOWLO_OV_CHECKBOX = gui.Checkbox(RAINBOWLO_GROUPBOX,"RainbowLoOvCh", "Local Overlay", false);
--Ghost
local RAINBOWGH_GROUPBOX = gui.Groupbox(RAINBOW_GROUPBOX, "Rainbow Ghost Chams", 0, 518, 250)
local RAINBOWGH_OCC_CHECKBOX = gui.Checkbox(RAINBOWGH_GROUPBOX,"RainbowGhOvCh", "Ghost Occluded", false);
local RAINBOWGH_VIS_CHECKBOX = gui.Checkbox(RAINBOWGH_GROUPBOX,"RainbowGhOvCh", "Ghost Visible", false);
local RAINBOWGH_OV_CHECKBOX = gui.Checkbox(RAINBOWGH_GROUPBOX,"RainbowGhOvCh", "Ghost Overlay", false);
--Backtrack
local RAINBOWBA_GROUPBOX = gui.Groupbox(RAINBOW_GROUPBOX, "Rainbow Backtrack Chams", 0, 690, 250)
local RAINBOWBA_OCC_CHECKBOX = gui.Checkbox(RAINBOWBA_GROUPBOX,"RainbowBaOvCh", "Backtrack Occluded", false);
local RAINBOWBA_VIS_CHECKBOX = gui.Checkbox(RAINBOWBA_GROUPBOX,"RainbowBaOvCh", "Backtrack Visible", false);
local RAINBOWBA_OV_CHECKBOX = gui.Checkbox(RAINBOWBA_GROUPBOX,"RainbowBaOvCh", "Backtrack Overlay", false);
--Weapon
local RAINBOWWE_GROUPBOX = gui.Groupbox(RAINBOW_GROUPBOX, "Rainbow Weapon Chams", 0, 862, 250)
local RAINBOWWE_OCC_CHECKBOX = gui.Checkbox(RAINBOWWE_GROUPBOX,"RainbowWeOvCh", "Weapon Occluded", false);
local RAINBOWWE_VIS_CHECKBOX = gui.Checkbox(RAINBOWWE_GROUPBOX,"RainbowWeOvCh", "Weapon Visible", false);
local RAINBOWWE_OV_CHECKBOX = gui.Checkbox(RAINBOWWE_GROUPBOX,"RainbowWeOvCh", "Weapon Overlay", false);
--Walls Color
local RAINBOWWA_GROUPBOX = gui.Groupbox(RAINBOW_GROUPBOX, "Rainbow Materials", 0, 1035, 250)
local RAINBOWWA_CL_CHECKBOX = gui.Checkbox(RAINBOWWA_GROUPBOX,"RainbowWa", "Walls", false);
local RAINBOWWA_STPROP_CHECKBOX = gui.Checkbox(RAINBOWWA_GROUPBOX,"RainbowStPr", "Static Props", false);
--Box
local RAINBOWFRBO_GROUPBOX = gui.Groupbox(RAINBOW_GROUPBOX, "Rainbow Box", 0, 1175, 250)
local RAINBOWFRBO_CHECKBOX = gui.Checkbox(RAINBOWFRBO_GROUPBOX,"RainbowFrBo", "Friendly", false);
local RAINBOWENBO_CHECKBOX = gui.Checkbox(RAINBOWFRBO_GROUPBOX,"RainbowEnBo", "Enemy", false);
local RAINBOWWEBO_CHECKBOX = gui.Checkbox(RAINBOWFRBO_GROUPBOX,"RainbowWeBo", "Weapon", false);
--Crosshair
local RAINBOWCR_GROUPBOX = gui.Groupbox(RAINBOW_GROUPBOX, "Rainbow Extra", 0, 1350, 250)
local RAINBOWCR_CHECKBOX = gui.Checkbox(RAINBOWCR_GROUPBOX,"RainbowCr", "Crosshair", false);
function rainbowesp()
    RED = math.sin((globals.RealTime() / RAINBOW_SPEED) * 4) * 127 + 128;
    GREEN = math.sin((globals.RealTime() / RAINBOW_SPEED) * 4 + 2) * 127 + 128;
    BLUE = math.sin((globals.RealTime() / RAINBOW_SPEED) * 4 + 4) * 127 + 128;
    --Friendly
    if RAINBOWFR_OCC_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.friendly.occluded.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWFR_VIS_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.friendly.visible.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWFR_OV_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.friendly.overlay.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    --Enemy
    if RAINBOWEN_OCC_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.enemy.occluded.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWEN_VIS_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.enemy.visible.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWEN_OV_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.enemy.overlay.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    --Local
    if RAINBOWLO_OCC_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.local.occluded.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWLO_VIS_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.local.visible.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWLO_OV_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.local.overlay.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    --Ghost
    if RAINBOWGH_OCC_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.ghost.occluded.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWBA_VIS_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.ghost.visible.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWGH_OV_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.ghost.overlay.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    --Backtrack
    if RAINBOWBA_OCC_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.backtrack.occluded.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWBA_VIS_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.backtrack.visible.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWBA_OV_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.backtrack.overlay.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    --Weapon
    if RAINBOWWE_OCC_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.weapon.occluded.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWWE_VIS_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.weapon.visible.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWWE_OV_CHECKBOX:GetValue() then
    gui.SetValue( "esp.chams.weapon.overlay.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    --Materials
    if RAINBOWWA_CL_CHECKBOX:GetValue() then
    gui.SetValue( "esp.world.materials.walls.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWWA_STPROP_CHECKBOX:GetValue() then
    gui.SetValue( "esp.world.materials.staticprops.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    --Box
    if RAINBOWFRBO_CHECKBOX:GetValue() then
    gui.SetValue( "esp.overlay.friendly.box.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWENBO_CHECKBOX:GetValue() then
    gui.SetValue( "esp.overlay.enemy.box.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    if RAINBOWWEBO_CHECKBOX:GetValue() then
    gui.SetValue( "esp.overlay.weapon.box.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    --Extra
    if RAINBOWCR_CHECKBOX:GetValue() then
    gui.SetValue( "esp.other.crosshair.clr", math.floor(RED), math.floor(GREEN), math.floor(BLUE), 255)
    end
    --Theme
    --Will Be Added Soon
end

callbacks.Register( "Draw", "rainbowesp", rainbowesp);
