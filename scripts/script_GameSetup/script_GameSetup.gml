health = 10
score = 0

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


draw_healthbar(10, 10, 160, 40, 10, #333333, c_green, c_maroon, 0, true, true)
=======
global.PlayerHasWeapons = false
global.Gravity = 0.98	//0.98 units/frame
global.TerminalVelocity = 24
global.IsGamePaused = false

global.AquiredWeapons = []
global.WeaponList = [sprite_Gun, sprite_Rocketlauncher]


