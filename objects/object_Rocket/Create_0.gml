/// @description Correctly offset and fire rocket

speed = 20

weapon_angle = point_direction(x, y, mouse_x, mouse_y)
opposite_angle = 90 


image_angle = weapon_angle
direction = weapon_angle

audio_play_sound(sound_RocketFire, 1, false)