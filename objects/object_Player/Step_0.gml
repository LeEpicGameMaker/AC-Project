
//
// IMPORTANT -> NEGATIVE IS UP, NOT DOWN
//

var direction_facing = keyboard_check(ord("D")) - keyboard_check(ord("A"))

if place_meeting(x, y + 2, object_Ground) // If standing on ground
{
	is_standing = true
	is_rocket_jumping = false
	move_y = 0
	
	if keyboard_check_pressed(ord("W")) // If jumping
	{
		move_y = -jump_speed
	}
}

else 
{
	is_standing = false
	if move_y < global.TerminalVelocity // If not falling fast enough
	{
		move_y += global.Gravity
	}
}


if (keyboard_check(ord("D")) or keyboard_check(ord("A")))
{
	velocity = move_speed
	
	//if not (velocity = move_speed)
		//velocity -= 0.1 * sign(move_x)
}
else if (not is_rocket_jumping)
{
	velocity = 0 // Slow the player down
}

move_x = velocity * direction_facing



if move_y < 0 and place_meeting(x, y - 2, object_Ground) // If hitting head on something
{
	move_y = 0
}


if velocity > 0 // If moving left or right
{
	image_xscale = sign(move_x);
}

move_and_collide(move_x, move_y, object_Ground, 8, 0, 0, move_speed, -1);


// Animate player
if not is_standing // If player is in the air
{
	sprite_index = sprite_Player_Fall
}
else if velocity > 0 // If walking
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