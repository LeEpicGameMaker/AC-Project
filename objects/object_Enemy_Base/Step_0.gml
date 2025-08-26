// IMPORTANT -> NEGATIVE IS UP, NOT DOWN

move_x = Enemy.MoveSpeed * MovementModifier;

if place_meeting(x, y + 2, object_Ground) // If standing on ground
{
	standing = true
	move_y = 0;
}
else 
	standing = false
	if move_y < global.TerminalVelocity // If not falling fast enough
		move_y += 1;



if not place_free(x + (16 * MovementModifier), y - 2) // If walking into something
	MovementModifier *= -1


if (move_x != 0) // If moving left or right
	image_xscale = sign(move_x);



move_and_collide(move_x, move_y, object_Ground, 8, 0, 0, Enemy.MoveSpeed, -1);