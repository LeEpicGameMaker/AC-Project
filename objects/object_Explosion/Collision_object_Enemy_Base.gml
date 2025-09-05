var strength = 32 - point_distance(x, y, other.x, other.y) / 8

other.enemy_health -= strength

if other.enemy_health <= 0 
{
	instance_destroy(other)
}