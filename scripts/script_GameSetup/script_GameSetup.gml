health = 10

global.EnemyInfo = 
{
	"Swarm" : {
		"Damage" : 10,
		"MoveSpeed" : 1,
		"UseGun" : false,
		"Health" : 2
	}
}

global.MoveSpeed = 5
global.PlayerHasWeapons = false
global.Gravity = 0.98	//0.98 units/frame
global.TerminalVelocity = 24

global.AquiredWeapons = []
global.WeaponList = [sprite_Gun, sprite_Rocketlauncher]

// Setup Music
global.CurrentMusic = sound_Music_Main;

global.PlayMain = function()
{
	/// @desc	Plays main in-game music
	audio_stop_sound(global.CurrentMusic);
	audio_play_sound(sound_Music_Main, 1, true);
	
	global.CurrentMusic = sound_Music_Main;
}

global.PlayPause = function()
{
	/// @desc 	Plays pause menu music
	audio_stop_sound(global.CurrentMusic);
	audio_play_sound(sound_Music_Pause, 1, true);
	
	global.CurrentMusic = sound_Music_Pause;
}

global.EndingFlorish = function()
{
	/// @desc 	Plays end of level music
	audio_pause_sound(global.CurrentMusic);
	audio_play_sound(sound_Music_EndingFlorish, 1, false);
	
	global.CurrentMusic = sound_Music_EndingFlorish;
}
