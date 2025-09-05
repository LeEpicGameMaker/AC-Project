// Resize Viewport

var ViewMod = 1.2
var curViewPort = room_get_viewport(room, view_current)

room_set_viewport(room, view_current, true, curViewPort[1],  curViewPort[2],  window_get_width() * ViewMod, window_get_height() * ViewMod)

camera_set_view_size(camera_get_active(), window_get_width() * ViewMod, window_get_height() * ViewMod)

// Setup Music
global.CurrentMusic = sound_Music_Main;

function PlayMain(){
	/// @desc	Plays main in-game music
	audio_stop_sound(global.CurrentMusic);
	audio_play_sound(sound_Music_Main, 1, true);
	
	global.CurrentMusic = sound_Music_Main;
}

function PlayPause(){
	/// @desc 	Plays pause menu music
	audio_stop_sound(global.CurrentMusic);
	audio_play_sound(sound_Music_Pause, 1, true);
	
	global.CurrentMusic = sound_Music_Pause;
}

function PlayEndingFlorish(){
	/// @desc 	Plays end of level music
	audio_pause_sound(global.CurrentMusic);
	audio_play_sound(sound_Music_EndingFlorish, 1, true);
	
	global.CurrentMusic = sound_Music_EndingFlorish;
}

// Play Music
PlayMain()