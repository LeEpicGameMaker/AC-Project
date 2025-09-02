var angle = point_direction(x, y, global.PlayerX, global.PlayerY)
var strength = 32// - point_distance(x, y, global.PlayerX, global.PlayerY)
	
object_Player.is_rocket_jumping = true
object_Player.current_speed += strength// * sin(angle)
object_Player.move_y += strength// * cos(angle)

