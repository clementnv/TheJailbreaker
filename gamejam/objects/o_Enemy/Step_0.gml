/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 18A5787E
/// @DnDArgument : "code" "if (distance_to_object(o_Player) > 150 && state != "touch" && state != "dead") {$(13_10)	switch(last_direction)$(13_10)	{$(13_10)	case 0:$(13_10)		if (!place_meeting(x-walkspd-60, y, o_Wall) && !place_meeting(x-walkspd-60, y, o_Bed) && !place_meeting(x-walkspd-60, y, o_Desk) && !place_meeting(x-walkspd-60, y, o_Table)) {$(13_10)			x -= walkspd;$(13_10)			image_angle = 90;$(13_10)			state = "walk";$(13_10)		} else {$(13_10)			last_direction = irandom(3);$(13_10)		}$(13_10)		break;$(13_10)	case 1:$(13_10)		if (!place_meeting(x+walkspd+60, y, o_Wall) && !place_meeting(x+walkspd+60, y, o_Bed) && !place_meeting(x+walkspd+60, y, o_Desk) && !place_meeting(x+walkspd+60, y, o_Table)) {$(13_10)			x += walkspd;$(13_10)			image_angle = -90;$(13_10)			state = "walk";$(13_10)		} else {$(13_10)			last_direction = irandom(3);$(13_10)		}$(13_10)		break;$(13_10)	case 2:$(13_10)		if (!place_meeting(x, y-walkspd-60, o_Wall) && !place_meeting(x, y-walkspd-60, o_Bed) && !place_meeting(x, y-walkspd-60, o_Desk) && !place_meeting(x, y-walkspd-60, o_Table)) {$(13_10)			y -= walkspd;$(13_10)			image_angle = 0;$(13_10)			state = "walk";$(13_10)		} else {$(13_10)			last_direction = irandom(3);$(13_10)		} $(13_10)		break;$(13_10)	case 3:$(13_10)		if (!place_meeting(x, y+walkspd+60, o_Wall) && !place_meeting(x, y+walkspd+60, o_Bed) && !place_meeting(x, y+walkspd+60, o_Desk) && !place_meeting(x, y+walkspd+60, o_Table)) {$(13_10)			y += walkspd;$(13_10)			image_angle = 180;$(13_10)			state = "walk";$(13_10)		} else {$(13_10)			last_direction = irandom(3);$(13_10)		}$(13_10)		break;$(13_10)	default: $(13_10)		x=x;$(13_10)	}$(13_10)} else {$(13_10)	distx = o_Player.x - x;$(13_10)	disty = o_Player.y - y;$(13_10)	zone = 25;$(13_10)	luck = irandom(2);$(13_10)	if(state != "touch" && state != "dead") {$(13_10)		if (distx > zone && disty > zone && !place_meeting(x+walkspd/2, y+walkspd/2, o_Wall) && !place_meeting(x+walkspd/2, y+walkspd/2, o_Bed) && !place_meeting(x+walkspd/2, y+walkspd/2, o_Desk) && !place_meeting(x+walkspd/2, y+walkspd/2, o_Table)) {$(13_10)			image_angle = 225;$(13_10)			x+=walkspd/2;$(13_10)			y+=walkspd/2;$(13_10)			state = "walk";$(13_10)		} else if (distx > zone && disty < -zone && !place_meeting(x+walkspd/2, y-walkspd/2, o_Wall) && !place_meeting(x+walkspd/2, y-walkspd/2, o_Bed) && !place_meeting(x+walkspd/2, y-walkspd/2, o_Desk) && !place_meeting(x+walkspd/2, y-walkspd/2, o_Table)) {$(13_10)			image_angle = -45;$(13_10)			x+=walkspd/2;$(13_10)			y-=walkspd/2;$(13_10)			state = "walk";$(13_10)		} else if (distx < -zone && disty > zone && !place_meeting(x-walkspd/2, y+walkspd/2, o_Wall) && !place_meeting(x-walkspd/2, y+walkspd/2, o_Bed) && !place_meeting(x-walkspd/2, y+walkspd/2, o_Desk) && !place_meeting(x-walkspd/2, y+walkspd/2, o_Table)) {$(13_10)			image_angle = 145;$(13_10)			x-=walkspd/2;$(13_10)			y+=walkspd/2;$(13_10)			state = "walk";$(13_10)		} else if (distx < -zone && disty < -zone && !place_meeting(x-walkspd/2, y-walkspd/2, o_Wall) && !place_meeting(x-walkspd/2, y-walkspd/2, o_Bed) && !place_meeting(x-walkspd/2, y-walkspd/2, o_Desk) && !place_meeting(x-walkspd/2, y-walkspd/2, o_Table)) {$(13_10)			image_angle = 45;$(13_10)			x-=walkspd/2;$(13_10)			y-=walkspd/2;$(13_10)			state = "walk";$(13_10)		} else if (distx < -zone && !place_meeting(x-walkspd, y, o_Wall)) {$(13_10)			image_angle = 90;$(13_10)			x-=walkspd;$(13_10)			state = "walk";$(13_10)		} else if (distx > zone && !place_meeting(x+walkspd, y, o_Wall)) {$(13_10)			image_angle = -90;$(13_10)			x+=walkspd;$(13_10)			state = "walk";$(13_10)		} else if (disty < -zone && !place_meeting(x, y-walkspd, o_Wall)) {$(13_10)			image_angle = 0;$(13_10)			y-=walkspd;$(13_10)			state = "walk";$(13_10)		} else if (disty > zone && !place_meeting(x, y+walkspd, o_Wall)) {$(13_10)			image_angle = 180;$(13_10)			y+=walkspd;$(13_10)			state = "walk";$(13_10)		} else if(!couldown) {$(13_10)			state ="attack";$(13_10)			if (luck == 1) {$(13_10)				o_Player.walkspd = 2;$(13_10)				o_Player.hp -= 1;$(13_10)				o_Player.alarm[0] = 40;$(13_10)			}$(13_10)			couldown = true;$(13_10)			alarm[0] = 50;$(13_10)		}$(13_10)	} else if (state == "touch") {$(13_10)		if (!stun) {$(13_10)			stun = true;$(13_10)			alarm[0] = 50;$(13_10)		}$(13_10)	} else if (state == "dead") {$(13_10)		$(13_10)	}$(13_10)}$(13_10)$(13_10)if (o_Player.state == "attack" && state != "dead") {$(13_10)	if (o_Player.image_angle == -90) {$(13_10)		if(place_meeting(x-walkspd, y, o_Player) && !o_Player.couldown) {$(13_10)			state = "touch";$(13_10)			walkspd = 1;$(13_10)			hp -= 1;$(13_10)		}$(13_10)	} else if(o_Player.image_angle == 90) {$(13_10)		if(place_meeting(x+walkspd, y, o_Player)) {$(13_10)			state = "touch";$(13_10)			walkspd = 1;$(13_10)			hp -= 1;$(13_10)		}$(13_10)	} else if(o_Player.image_angle == 0) {$(13_10)		if (place_meeting(x, y+walkspd, o_Player)) {$(13_10)			state = "touch";$(13_10)			walkspd = 1;$(13_10)			hp -= 1;$(13_10)		}$(13_10)	} else if(o_Player.image_angle == 180) {$(13_10)		if (place_meeting(x, y-walkspd, o_Player)) {$(13_10)			state = "touch";$(13_10)			walkspd = 1;$(13_10)			hp -= 1;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if(place_meeting(x, y, o_Bullet_Player) && hp > 0) {$(13_10)	state = "touch";$(13_10)	walkspd = 1;$(13_10)	hp -= 5;$(13_10)}$(13_10)$(13_10)if (place_meeting(x, y, o_Water)) {$(13_10)	walkspd = 2;$(13_10)} else {$(13_10)	walkspd = 5;$(13_10)}$(13_10)	"
if (distance_to_object(o_Player) > 150 && state != "touch" && state != "dead") {
	switch(last_direction)
	{
	case 0:
		if (!place_meeting(x-walkspd-60, y, o_Wall) && !place_meeting(x-walkspd-60, y, o_Bed) && !place_meeting(x-walkspd-60, y, o_Desk) && !place_meeting(x-walkspd-60, y, o_Table)) {
			x -= walkspd;
			image_angle = 90;
			state = "walk";
		} else {
			last_direction = irandom(3);
		}
		break;
	case 1:
		if (!place_meeting(x+walkspd+60, y, o_Wall) && !place_meeting(x+walkspd+60, y, o_Bed) && !place_meeting(x+walkspd+60, y, o_Desk) && !place_meeting(x+walkspd+60, y, o_Table)) {
			x += walkspd;
			image_angle = -90;
			state = "walk";
		} else {
			last_direction = irandom(3);
		}
		break;
	case 2:
		if (!place_meeting(x, y-walkspd-60, o_Wall) && !place_meeting(x, y-walkspd-60, o_Bed) && !place_meeting(x, y-walkspd-60, o_Desk) && !place_meeting(x, y-walkspd-60, o_Table)) {
			y -= walkspd;
			image_angle = 0;
			state = "walk";
		} else {
			last_direction = irandom(3);
		} 
		break;
	case 3:
		if (!place_meeting(x, y+walkspd+60, o_Wall) && !place_meeting(x, y+walkspd+60, o_Bed) && !place_meeting(x, y+walkspd+60, o_Desk) && !place_meeting(x, y+walkspd+60, o_Table)) {
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
} else {
	distx = o_Player.x - x;
	disty = o_Player.y - y;
	zone = 25;
	luck = irandom(2);
	if(state != "touch" && state != "dead") {
		if (distx > zone && disty > zone && !place_meeting(x+walkspd/2, y+walkspd/2, o_Wall) && !place_meeting(x+walkspd/2, y+walkspd/2, o_Bed) && !place_meeting(x+walkspd/2, y+walkspd/2, o_Desk) && !place_meeting(x+walkspd/2, y+walkspd/2, o_Table)) {
			image_angle = 225;
			x+=walkspd/2;
			y+=walkspd/2;
			state = "walk";
		} else if (distx > zone && disty < -zone && !place_meeting(x+walkspd/2, y-walkspd/2, o_Wall) && !place_meeting(x+walkspd/2, y-walkspd/2, o_Bed) && !place_meeting(x+walkspd/2, y-walkspd/2, o_Desk) && !place_meeting(x+walkspd/2, y-walkspd/2, o_Table)) {
			image_angle = -45;
			x+=walkspd/2;
			y-=walkspd/2;
			state = "walk";
		} else if (distx < -zone && disty > zone && !place_meeting(x-walkspd/2, y+walkspd/2, o_Wall) && !place_meeting(x-walkspd/2, y+walkspd/2, o_Bed) && !place_meeting(x-walkspd/2, y+walkspd/2, o_Desk) && !place_meeting(x-walkspd/2, y+walkspd/2, o_Table)) {
			image_angle = 145;
			x-=walkspd/2;
			y+=walkspd/2;
			state = "walk";
		} else if (distx < -zone && disty < -zone && !place_meeting(x-walkspd/2, y-walkspd/2, o_Wall) && !place_meeting(x-walkspd/2, y-walkspd/2, o_Bed) && !place_meeting(x-walkspd/2, y-walkspd/2, o_Desk) && !place_meeting(x-walkspd/2, y-walkspd/2, o_Table)) {
			image_angle = 45;
			x-=walkspd/2;
			y-=walkspd/2;
			state = "walk";
		} else if (distx < -zone && !place_meeting(x-walkspd, y, o_Wall)) {
			image_angle = 90;
			x-=walkspd;
			state = "walk";
		} else if (distx > zone && !place_meeting(x+walkspd, y, o_Wall)) {
			image_angle = -90;
			x+=walkspd;
			state = "walk";
		} else if (disty < -zone && !place_meeting(x, y-walkspd, o_Wall)) {
			image_angle = 0;
			y-=walkspd;
			state = "walk";
		} else if (disty > zone && !place_meeting(x, y+walkspd, o_Wall)) {
			image_angle = 180;
			y+=walkspd;
			state = "walk";
		} else if(!couldown) {
			state ="attack";
			if (luck == 1) {
				o_Player.walkspd = 2;
				o_Player.hp -= 1;
				o_Player.alarm[0] = 40;
			}
			couldown = true;
			alarm[0] = 50;
		}
	} else if (state == "touch") {
		if (!stun) {
			stun = true;
			alarm[0] = 50;
		}
	} else if (state == "dead") {
		
	}
}

if (o_Player.state == "attack" && state != "dead") {
	if (o_Player.image_angle == -90) {
		if(place_meeting(x-walkspd, y, o_Player) && !o_Player.couldown) {
			state = "touch";
			walkspd = 1;
			hp -= 1;
		}
	} else if(o_Player.image_angle == 90) {
		if(place_meeting(x+walkspd, y, o_Player)) {
			state = "touch";
			walkspd = 1;
			hp -= 1;
		}
	} else if(o_Player.image_angle == 0) {
		if (place_meeting(x, y+walkspd, o_Player)) {
			state = "touch";
			walkspd = 1;
			hp -= 1;
		}
	} else if(o_Player.image_angle == 180) {
		if (place_meeting(x, y-walkspd, o_Player)) {
			state = "touch";
			walkspd = 1;
			hp -= 1;
		}
	}
}

if(place_meeting(x, y, o_Bullet_Player) && hp > 0) {
	state = "touch";
	walkspd = 1;
	hp -= 5;
}

if (place_meeting(x, y, o_Water)) {
	walkspd = 2;
} else {
	walkspd = 5;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3C221C78
/// @DnDArgument : "code" "if (state == "walk") {$(13_10)	sprite_index = s_Policier_Walk_Mattraque;$(13_10)} else if(state == "idle") {$(13_10)	sprite_index = s_Policier_Idle;$(13_10)} else if(state == "attack") {$(13_10)	sprite_index = s_Policier_Mattraque_Attack;$(13_10)} else if(state == "touch") {$(13_10)	sprite_index = s_Policier_Touch;$(13_10)}"
if (state == "walk") {
	sprite_index = s_Policier_Walk_Mattraque;
} else if(state == "idle") {
	sprite_index = s_Policier_Idle;
} else if(state == "attack") {
	sprite_index = s_Policier_Mattraque_Attack;
} else if(state == "touch") {
	sprite_index = s_Policier_Touch;
}