// Determine Correct Fireable

var projectile = noone

if sprite_index = sprite_Gun // Gun
{
	projectile = object_RegBullet
}
else if sprite_index = sprite_Rocketlauncher // Rocket Launcher
{
	projectile = object_Rocket
}

instance_create_layer(x, y, "Bullets", projectile)