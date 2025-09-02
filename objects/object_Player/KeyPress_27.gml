if global.IsGamePaused = true
{
	time_source_resume(time_source_game)
	room.PlayMain()
}
else
{
	time_source_pause(time_source_game)
	room.PlayPause()
}
	
global.IsGamePaused = not global.IsGamePaused