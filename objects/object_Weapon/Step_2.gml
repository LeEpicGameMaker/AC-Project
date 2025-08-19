x = object_Player.x;
y = object_Player.y - 42;

image_angle = point_direction(x, y, mouse_x, mouse_y);

sprite_index = weapon_list[current_weapon]

if(image_angle > 90 and image_angle < 270) // If pointing to the left
{
	image_yscale = -1;
}

else
{
	image_yscale = 1;
}