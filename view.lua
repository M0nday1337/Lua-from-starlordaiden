local visuals_menu = gui.Reference("VISUALS", "OTHER", "Effects")
local visuals_custom_viewmodel_editor = gui.Checkbox( visuals_menu, "lua_custom_viewmodel_editor", "Custom Viewmodel Editor", 0 );
local xO = client.GetConVar("viewmodel_offset_x");  
local yO = client.GetConVar("viewmodel_offset_y");  
local zO = client.GetConVar("viewmodel_offset_z"); 
local fO = client.GetConVar("viewmodel_fov");   
local xS = gui.Slider(visuals_menu, "lua_x", "X", xO, -20, 20);   
local yS = gui.Slider(visuals_menu, "lua_y", "Y", yO, -100, 100);   
local zS = gui.Slider(visuals_menu, "lua_z", "Z", zO, -20, 20);   
local vfov = gui.Slider(visuals_menu, "vfov", "Viewmodel FOV", fO, 0, 120); 
local function Visuals_Viewmodel() 

   if visuals_custom_viewmodel_editor:GetValue() then  
client.SetConVar("viewmodel_offset_x", xS:GetValue(), true); 
client.SetConVar("viewmodel_offset_y", yS:GetValue(), true); 
client.SetConVar("viewmodel_offset_z", zS:GetValue(), true); 
client.SetConVar("viewmodel_fov", vfov:GetValue(), true); 
   end
   end
local function Visuals_Disable_Post_Processing()
       if visuals_disable_post_processing:GetValue() then  
           client.SetConVar( "mat_postprocess_enable", 0, true );
   else
       client.SetConVar( "mat_postprocess_enable", 1, true );
       end
   end

callbacks.Register("Draw", "Custom Viewmodel Editor", Visuals_Viewmodel)