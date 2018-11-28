/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18A5787E
/// @DnDArgument : "code" "switch(last_direction)$(13_10){$(13_10)case 0:$(13_10)	if (!place_meeting(x-walkspd-60, y, o_Wall)) {$(13_10)		x -= walkspd;$(13_10)		image_angle = 90;$(13_10)		state = "walk";$(13_10)	} else {$(13_10)		last_direction = irandom(3);$(13_10)	}$(13_10)	break;$(13_10)case 1:$(13_10)	if (!place_meeting(x+walkspd+60, y, o_Wall)) {$(13_10)		x += walkspd;$(13_10)		image_angle = -90;$(13_10)		state = "walk";$(13_10)	} else {$(13_10)		last_direction = irandom(3);$(13_10)	}$(13_10)	break;$(13_10)case 2:$(13_10)	if (!place_meeting(x, y-walkspd-60, o_Wall)) {$(13_10)		y -= walkspd;$(13_10)		image_angle = 0;$(13_10)		state = "walk";$(13_10)	} else {$(13_10)		last_direction = irandom(3);$(13_10)	} $(13_10)	break;$(13_10)case 3:$(13_10)	if (!place_meeting(x, y+walkspd+60, o_Wall)) {$(13_10)		y += walkspd;$(13_10)		image_angle = 180;$(13_10)		state = "walk";$(13_10)	} else {$(13_10)		last_direction = irandom(3);$(13_10)	}$(13_10)	break;$(13_10)default: $(13_10)	x=x;$(13_10)}$(13_10)$(13_10)if (o_Player.state == "attack") {$(13_10)	if (image_angle == -90) {$(13_10)		if(place_meeting(x-walkspd, y, o_Player)) {$(13_10)			hp -= 5;$(13_10)		}$(13_10)	} else if(image_angle == 90) {$(13_10)		if(place_meeting(x+walkspd, y, o_Player)) {$(13_10)			hp -= 5;$(13_10)		}$(13_10)	} else if(image_angle == 0) {$(13_10)		if (place_meeting(x, y+walkspd, o_Player)) {$(13_10)			hp -= 5;$(13_10)		}$(13_10)	} else if(image_angle == 180) {$(13_10)		if (place_meeting(x, y-walkspd, o_Player)) {$(13_10)			hp -= 5;$(13_10)		}$(13_10)	}$(13_10)}"
switch(last_direction)
{
case 0:
	if (!place_meeting(x-walkspd-60, y, o_Wall)) {
		x -= walkspd;
		image_angle = 90;
		state = "walk";
	} else {
		last_direction = irandom(3);
	}
	break;
case 1:
	if (!place_meeting(x+walkspd+60, y, o_Wall)) {
		x += walkspd;
		image_angle = -90;
		state = "walk";
	} else {
		last_direction = irandom(3);
	}
	break;
case 2:
	if (!place_meeting(x, y-walkspd-60, o_Wall)) {
		y -= walkspd;
		image_angle = 0;
		state = "walk";
	} else {
		last_direction = irandom(3);
	} 
	break;
case 3:
	if (!place_meeting(x, y+walkspd+60, o_Wall)) {
		y += walkspd;
		image_angle = 180;
		state = "walk";
	} else {
		last_direction = irandom(3);
	}
	break;
default: 
	x=x;
}

if (o_Player.state == "attack") {
	if (image_angle == -90) {
		if(place_meeting(x-walkspd, y, o_Player)) {
			hp -= 5;
		}
	} else if(image_angle == 90) {
		if(place_meeting(x+walkspd, y, o_Player)) {
			hp -= 5;
		}
	} else if(image_angle == 0) {
		if (place_meeting(x, y+walkspd, o_Player)) {
			hp -= 5;
		}
	} else if(image_angle == 180) {
		if (place_meeting(x, y-walkspd, o_Player)) {
			hp -= 5;
		}
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C221C78
/// @DnDArgument : "code" "if (state = "walk") {$(13_10)	sprite_index = s_Policier_Walk;$(13_10)} else if(state = "idle") {$(13_10)	sprite_index = s_Policier_Idle;$(13_10)}$(13_10)$(13_10)show_debug_message(distance_to_object(o_Player))"
if (state = "walk") {
	sprite_index = s_Policier_Walk;
} else if(state = "idle") {
	sprite_index = s_Policier_Idle;
}

show_debug_message(distance_to_object(o_Player))