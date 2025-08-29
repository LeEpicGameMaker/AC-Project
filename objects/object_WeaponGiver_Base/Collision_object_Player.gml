if not global.PlayerHasWeapons
{
	global.PlayerHasWeapons = true
	instance_create_layer(global.PlayerX, global.PlayerY, "GUI", object_Weapon)
}

//object_Weapon.current_weapon[] = sprite_index

array_insert(global.AquiredWeapons, array_length(global.AquiredWeapons), sprite_index)

object_Weapon.sprite_index = sprite_index



instance_destroy(self)