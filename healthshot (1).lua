local ref = gui.Reference( "VISUALS", "WORLD", "Extra" );
local lua_slider = gui.Slider( ref, "lua_healthshot_slider", "Healthshot on Kill", 1, 1, 10 );
function HealthshotEffect( Event, Entity )
if ( Event:GetName() == 'player_death' ) then
    local ME = client.GetLocalPlayerIndex();
    local INT_UID = Event:GetInt( 'userid' );
    local INT_ATTACKER = Event:GetInt( 'attacker' );
    local NAME_Victim = client.GetPlayerNameByUserID( INT_UID );
    local INDEX_Victim = client.GetPlayerIndexByUserID( INT_UID );
    local NAME_Attacker = client.GetPlayerNameByUserID( INT_ATTACKER );
    local INDEX_Attacker = client.GetPlayerIndexByUserID( INT_ATTACKER );
    if ( INDEX_Attacker == ME and INDEX_Victim ~= ME ) then
    entities.GetLocalPlayer( ):SetProp( "m_flHealthShotBoostExpirationTime", globals.CurTime() + lua_slider:GetValue())
    end
end
end

client.AllowListener( 'player_death' );
callbacks.Register( 'FireGameEvent', 'HealthshotEffect', HealthshotEffect )