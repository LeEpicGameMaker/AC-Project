angle = point_direction(x, y, global.PlayerX, global.PlayerY)
strength = 32 - point_distance(x, y, global.PlayerX, global.PlayerY) / 4
	
object_Player.is_rocket_jumping = true
object_Player.velocity += strength * sin(angle)
object_Player.move_y -= strength * cos(angle)