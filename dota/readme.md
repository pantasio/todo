//-novid -console +exec autoexec.cfg  
// Music for dota   
// https://soundcloud.com/linh-b-m/sets/stream-onl  
// https://www.youtube.com/playlist?list=PLf-wvAnDqhld6pQRYHsNl1B9S_rehC4GO
//  
// Change this for monitor   
// 1900x1080  
net_graphinsetleft "-50"  
net_graphinsetbottom "435"  


rate "80000"  
cl_updaterate "30"   
cl_cmdrate "30"  
cl_interp "0.05"  
cl_interp_ratio "2"  
cl_smooth "1"  
cl_smoothtime "0"  
mat_vsync "1"  
r_screenspace "1"  
 
con_enable "1" 
fps_max "120"  
cl_showfps "1"  
retry  
volume "0.7"  
snd_musicvolume "0" 




net_graphheight "56" // Netgraph settings, net_graph 1 enables in game with console
net_graphinsetleft "0"
net_graphinsetright "-163"

net_graphpos "1"  
net_graphproportionalfont "0"  
net_graphtext "1"  

dota_force_right_click_attack "1"  
dota_player_units_auto_attack "1"  
dota_shop_force_hotkeys "1"  

dota_player_add_summoned_to_selection "1"  
  
dota_always_show_hero_names "1"  
dota_camera_speed "3000"  
dota_camera_accelerate "50"  

dota_cheap_water "1"  
r_shadows "1"  
dota_topbar_buyback_time "25"  
hud_sticky_item_name  
dota_screen_shake "1"  
dota_player_multipler_orders "1"  
dota_unit_fly_bonus_height "150"  
dota_gamescom_althack "0"  
dota_unit_use_player_color "1"  

dota_health_hurt_threshold "99999" 
dota_health_hurt_decay_time_max "0" 
dota_health_hurt_decay_time_min "0" 
dota_health_hurt_delay "0" 
dota_pain_decay "0" 
dota_pain_factor "0" 
dota_pain_fade_rate "0"  
dota_pain_multiplier "0" 
dota_sf_game_end_delay "0"  
dota_disable_range_finder "0"  

dota_health_per_vertical_marker 250 (250 - standard value) // how much health between each vertical line in the health bars.; 
dota_health_marker_major_alpha 255 // (255 - standard value) // indicator of a thick vertical line;  
dota_health_marker_minor_alpha 128 // (128 - standard value) // indicator of a thin vertical line;  
dota_health_per_vertical_marker 9999999 // - turn off the lines.  

dota_minimap_hero_size "800" //- heroes size on the minimap.   

bind "v" "dota_camera_setpos -2273.898682 1232.745483 982.072876" // top rune.  
bind "b" "dota_camera_setpos 3035.773438 -2972.680176 966.072937" // bottom rune.  
 

dota_range_display "1200"  

dota_disable_range_finder "0" 
net_graph "1"  
cl_showfps "1"  
 
dota_minimap_always_draw_hero_icons "1"
dota_minimap_show_hero_icon "1"

// thong bao  
bind "p" "say_team miss top"  
bind "l" "say_team miss mid"  
bind "," "say_team miss bot"  
