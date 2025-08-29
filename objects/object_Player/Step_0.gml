
// IMPORTANT -> NEGATIVE IS UP, NOT DOWN

facing = keyboard_check(ord("D")) - keyboard_check(ord("A"))

// 1 = right, -1 = left, 0 = stationary

if facing = 0 and move_x // If not pressing left or right
{
	move_x -= 0.1
}
else 
{
	move_x = move_speed
}
current_speed = move_x * facing


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


if (facing != 0) // If moving left or right
{
	image_xscale = facing;
}

move_and_collide(current_speed, move_y, object_Ground, 8, 0, 0, move_speed, -1);


// Animate player
if not standing // If player is in the air
{
	sprite_index = sprite_Player_Fall
}
else if facing != 0 // If walking
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