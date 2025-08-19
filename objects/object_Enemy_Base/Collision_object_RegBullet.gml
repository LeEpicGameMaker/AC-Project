instance_destroy(other)

enemy_health -= other.damage

if enemy_health >= 0
{

	instance_destroy(self)
}