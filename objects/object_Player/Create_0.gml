move_speed = 4;
jump_speed = 16;
move_x = 0;
move_y = 0;
terminal_velocity = 24;
standing = true;

global.IsGamePaused = false;

instance_create_layer(x + 0, y + 0, "GUI", object_Weapon);

health = 100