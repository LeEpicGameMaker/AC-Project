move_speed = global.MoveSpeed;
jump_speed = 16;
facing = 0;
move_y = 0;
move_x = 0;
current_speed = 0;
standing = true;
is_rocket_jumping = false;
can_move = true;

if global.PlayerHasWeapons
{
	instance_create_layer(x + 0, y + 0, "Objects", object_Weapon);
}	

instance_create_layer(x, y, "Midground", object_Midground);

health = 100