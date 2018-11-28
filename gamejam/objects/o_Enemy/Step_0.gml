/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18A5787E
/// @DnDArgument : "code" "switch(last_direction)$(13_10){$(13_10)case 0:$(13_10)	if (!place_meeting(x-walkspd, y, o_Wall)) {$(13_10)		x -= walkspd$(13_10)		if (couldown) {$(13_10)			alarm[0] = alarm_speed;$(13_10)			couldown = false;$(13_10)		}$(13_10)	}$(13_10)	show_debug_message("0, x-");$(13_10)	break;$(13_10)case 1:$(13_10)	if (!place_meeting(x+walkspd, y, o_Wall)) {$(13_10)		x += walkspd$(13_10)		if (couldown) {$(13_10)			alarm[0] = alarm_speed;$(13_10)			couldown = false;$(13_10)		}$(13_10)	}$(13_10)	show_debug_message("1, x+");$(13_10)	break;$(13_10)case 2:$(13_10)	if (!place_meeting(x, y-walkspd, o_Wall)) {$(13_10)		y -= walkspd$(13_10)		if (couldown) {$(13_10)			alarm[0] = alarm_speed;$(13_10)			couldown = false;$(13_10)		}$(13_10)	}$(13_10)	show_debug_message("2, y-");$(13_10)	break;$(13_10)case 3:$(13_10)	if (!place_meeting(x, y+walkspd, o_Wall)) {$(13_10)		y += walkspd$(13_10)		if (couldown) {$(13_10)			alarm[0] = alarm_speed;$(13_10)			couldown = false;$(13_10)		}$(13_10)	}$(13_10)	show_debug_message("3, y+");$(13_10)	break;$(13_10)default: $(13_10)	x=x;$(13_10)}"
switch(last_direction)
{
case 0:
	if (!place_meeting(x-walkspd, y, o_Wall)) {
		x -= walkspd
		if (couldown) {
			alarm[0] = alarm_speed;
			couldown = false;
		}
	}
	show_debug_message("0, x-");
	break;
case 1:
	if (!place_meeting(x+walkspd, y, o_Wall)) {
		x += walkspd
		if (couldown) {
			alarm[0] = alarm_speed;
			couldown = false;
		}
	}
	show_debug_message("1, x+");
	break;
case 2:
	if (!place_meeting(x, y-walkspd, o_Wall)) {
		y -= walkspd
		if (couldown) {
			alarm[0] = alarm_speed;
			couldown = false;
		}
	}
	show_debug_message("2, y-");
	break;
case 3:
	if (!place_meeting(x, y+walkspd, o_Wall)) {
		y += walkspd
		if (couldown) {
			alarm[0] = alarm_speed;
			couldown = false;
		}
	}
	show_debug_message("3, y+");
	break;
default: 
	x=x;
}