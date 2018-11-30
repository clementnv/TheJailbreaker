/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 646FAFF1
/// @DnDArgument : "code" "if (o_Player.image_angle == 0) {$(13_10)	move_towards_point(o_Player.x, o_Player.y-10, 20);$(13_10)	image_angle = 90;$(13_10)} else if (o_Player.image_angle == 180) {$(13_10)	move_towards_point(o_Player.x, o_Player.y+10, 20);$(13_10)	image_angle = -90;$(13_10)} else if (o_Player.image_angle == 90) {$(13_10)	move_towards_point(o_Player.x-10, o_Player.y, 20);$(13_10)	image_angle = 180;$(13_10)} else if (o_Player.image_angle == -90) {$(13_10)	move_towards_point(o_Player.x+10, o_Player.y, 20);$(13_10)	image_angle = 0;$(13_10)} else if (o_Player.image_angle == 45) {$(13_10)	move_towards_point(o_Player.x-10, o_Player.y-10, 20);$(13_10)	image_angle = 135;$(13_10)} else if (o_Player.image_angle == 135) {$(13_10)	move_towards_point(o_Player.x-10, o_Player.y+10, 20);$(13_10)	image_angle = 225;$(13_10)} else if (o_Player.image_angle == 225) {$(13_10)	move_towards_point(o_Player.x+10, o_Player.y+10, 20);$(13_10)	image_angle = -45;$(13_10)} else if (o_Player.image_angle == -45) {$(13_10)	move_towards_point(o_Player.x+10, o_Player.y-10, 20);$(13_10)	image_angle = 45;$(13_10)}$(13_10)$(13_10)audio_play_sound(tir_bruitage, 1, false);$(13_10)$(13_10)"
if (o_Player.image_angle == 0) {
	move_towards_point(o_Player.x, o_Player.y-10, 20);
	image_angle = 90;
} else if (o_Player.image_angle == 180) {
	move_towards_point(o_Player.x, o_Player.y+10, 20);
	image_angle = -90;
} else if (o_Player.image_angle == 90) {
	move_towards_point(o_Player.x-10, o_Player.y, 20);
	image_angle = 180;
} else if (o_Player.image_angle == -90) {
	move_towards_point(o_Player.x+10, o_Player.y, 20);
	image_angle = 0;
} else if (o_Player.image_angle == 45) {
	move_towards_point(o_Player.x-10, o_Player.y-10, 20);
	image_angle = 135;
} else if (o_Player.image_angle == 135) {
	move_towards_point(o_Player.x-10, o_Player.y+10, 20);
	image_angle = 225;
} else if (o_Player.image_angle == 225) {
	move_towards_point(o_Player.x+10, o_Player.y+10, 20);
	image_angle = -45;
} else if (o_Player.image_angle == -45) {
	move_towards_point(o_Player.x+10, o_Player.y-10, 20);
	image_angle = 45;
}

audio_play_sound(tir_bruitage, 1, false);