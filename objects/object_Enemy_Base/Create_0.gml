MovementModifier = 1
move_x = 0
move_y = 0


standing = false

// get enemy info through splitting the sprite name
Name = (sprite_get_name(sprite_index))
Name = string_split(Name, "_")
Name = Name[2]
Enemy = global.EnemyInfo[$ Name]

enemy_health = Enemy.Health
