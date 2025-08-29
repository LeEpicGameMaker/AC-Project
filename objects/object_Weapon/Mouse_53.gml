// Determine Correct Fireable

var projectile = 0

if current_weapon = 1 // Gun
{
	projectile = object_RegBullet
}
else if current_weapon = 2 // Rocket Launcher
{
	projectile = object_Rocket
}

instance_create_layer(x,y, "Bullets", projectile)