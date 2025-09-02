/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 486D2BF6
/// @DnDArgument : "font" "font_Arial"
/// @DnDSaveInfo : "font" "font_Arial"
draw_set_font(font_Arial);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 605697D1
/// @DnDArgument : "x" "1500"
/// @DnDArgument : "y" "300"
/// @DnDArgument : "caption" ""Score: ""
/// @DnDArgument : "var" "score"
draw_text(1500, 300, string("Score: ") + string(score));