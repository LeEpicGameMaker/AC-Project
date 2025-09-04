move_speed = global.MoveSpeed;
jump_speed = 16;
facing = 0;
move_y = 0;
move_x = 0;
current_speed = 0;
standing = true;
frozen = false;

global.IsGamePaused = false;

if global.PlayerHasWeapons
{
	instance_create_layer(x + 0, y + 0, "Objects", object_Weapon);
}	

instance_create_layer(x, y, "Midground", object_Midground);

health = 100