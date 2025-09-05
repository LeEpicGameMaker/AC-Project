/// @description Correctly offset and fire bullet

speed = 52

weapon_angle = point_direction(x, y, mouse_x, mouse_y)
opposite_angle = 90 
damage = 2

image_angle = weapon_angle
direction = weapon_angle

audio_play_sound(sound_GunFire, 1, false)