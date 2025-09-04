// Resize Viewport

var ViewMod = 1.2
var curViewPort = room_get_viewport(room, view_current)

room_set_viewport(room, view_current, true, curViewPort[1],  curViewPort[2],  window_get_width() * ViewMod, window_get_height() * ViewMod)

camera_set_view_size(camera_get_active(), window_get_width() * ViewMod, window_get_height() * ViewMod)

// Setup Music
global.CurrentMusic = sound_Music_Main;


// Play Music
global.PlayMain()