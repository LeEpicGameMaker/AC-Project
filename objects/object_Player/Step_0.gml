
// IMPORTANT -> NEGATIVE IS UP, NOT DOWN

move_x = keyboard_check(ord("D")) - keyboard_check(ord("A"))
if abs(move_x) != 0
	move_x -= 0.05
else
	move_x *= move_speed

if place_meeting(x, y + 2, object_Ground) // If standing on ground
{
	standing = true
	move_y = 0
	
	if keyboard_check(ord("W")) // If jumping
	{
		move_y = -jump_speed
	}
}

else 
{
	standing = false
	if move_y < global.TerminalVelocity // If not falling fast enough
	{
		move_y += global.Gravity
	}
}


if move_y < 0 and place_meeting(x, y - 2, object_Ground) // If hitting head on something
{
	move_y = 0
}


if (move_x != 0) // If moving left or right
{
	image_xscale = sign(move_x);
}

move_and_collide(move_x, move_y, object_Ground, 8, 0, 0, move_speed, -1);


// Animate player
if not standing // If player is in the air
{
	sprite_index = sprite_Player_Fall
}
else if move_x != 0 // If walking
{
	sprite_index = sprite_Player_Walk
}
else // Idle
{
	sprite_index = sprite_Player_Idle
}

if health <= 0
{
	instance_destroy(self)
}


if instance_exists(object_Player)
{
	global.PlayerX = object_Player.x
	global.PlayerY = object_Player.y
}