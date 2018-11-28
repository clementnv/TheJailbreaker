/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53CF21FC
/// @DnDArgument : "code" "press_right = keyboard_check(vk_right);$(13_10)press_left = keyboard_check(vk_left);$(13_10)press_up = keyboard_check(vk_up);$(13_10)press_down = keyboard_check(vk_down);$(13_10)press_attack = keyboard_check_pressed(vk_space);$(13_10)$(13_10)if (press_right) {$(13_10)	image_angle = -90;$(13_10)	if (place_meeting(x+walkspd, y, o_Key)) {$(13_10)		key = true;$(13_10)		instance_destroy(o_Key);$(13_10)	} else if (place_meeting(x+walkspd, y, o_Out) && key) {$(13_10)		show_debug_message("You WIN !");$(13_10)		x += walkspd;$(13_10)		state = "walk";$(13_10)	} else if (place_meeting(x+walkspd, y, o_Out) && !key) {$(13_10)		show_debug_message("You nedd the key !");$(13_10)	} else if (!place_meeting(x+walkspd, y, o_Wall)) {$(13_10)		x += walkspd;$(13_10)		state = "walk";$(13_10)	}$(13_10)} $(13_10)$(13_10)if (press_left) {$(13_10)	image_angle = 90;$(13_10)	if (place_meeting(x-walkspd, y, o_Key)) {$(13_10)		key = true;$(13_10)		instance_destroy(o_Key);$(13_10)	} else if (place_meeting(x-walkspd, y, o_Out) && key) {$(13_10)		show_debug_message("You WIN !");$(13_10)		x -= walkspd;$(13_10)		state = "walk";$(13_10)	} else if (place_meeting(x-walkspd, y, o_Out) && !key) {$(13_10)		show_debug_message("You nedd the key !");$(13_10)	} else if (!place_meeting(x-walkspd, y, o_Wall)) {$(13_10)		x -= walkspd;$(13_10)		state = "walk";$(13_10)	}$(13_10)}$(13_10)$(13_10)if (press_up) {$(13_10)	image_angle = 0;$(13_10)	if (place_meeting(x, y-walkspd, o_Key)) {$(13_10)		key = true;$(13_10)		instance_destroy(o_Key);$(13_10)	} else if (place_meeting(x, y-walkspd, o_Out) && key) {$(13_10)		show_debug_message("You WIN !");$(13_10)		y -= walkspd;$(13_10)		state = "walk";$(13_10)	} else if (place_meeting(x, y-walkspd, o_Out) && !key) {$(13_10)		show_debug_message("You nedd the key !");$(13_10)	} else if (!place_meeting(x, y-walkspd, o_Wall)) {$(13_10)		y -= walkspd;$(13_10)		state = "walk";$(13_10)	} $(13_10)}$(13_10)$(13_10)if (press_down) {$(13_10)	image_angle = 180;$(13_10)	if (place_meeting(x, y+walkspd, o_Key)) {$(13_10)		key = true;$(13_10)		instance_destroy(o_Key);$(13_10)	} else if (place_meeting(x, y+walkspd, o_Out) && key) {$(13_10)		show_debug_message("You WIN !");$(13_10)		y += walkspd;$(13_10)		state = "walk";$(13_10)	} else if (place_meeting(x, y+walkspd, o_Out) && !key) {$(13_10)		show_debug_message("You nedd the key !");$(13_10)	} else if (!place_meeting(x, y+walkspd, o_Wall)) {$(13_10)		y += walkspd;$(13_10)		state = "walk";$(13_10)	} $(13_10)}$(13_10)$(13_10)if (!press_down && !press_up && !press_left && !press_right && state != "attack") {$(13_10)	state = "idle";$(13_10)	//image_angle = point_direction(x, y, mouse_x, mouse_y);$(13_10)}$(13_10)$(13_10)if (!couldown) {$(13_10)	//alarm[0] = 10;$(13_10)}	$(13_10)$(13_10)if (press_attack) {$(13_10)	state = "attack";$(13_10)	couldown = false;$(13_10)}"
press_right = keyboard_check(vk_right);
press_left = keyboard_check(vk_left);
press_up = keyboard_check(vk_up);
press_down = keyboard_check(vk_down);
press_attack = keyboard_check_pressed(vk_space);

if (press_right) {
	image_angle = -90;
	if (place_meeting(x+walkspd, y, o_Key)) {
		key = true;
		instance_destroy(o_Key);
	} else if (place_meeting(x+walkspd, y, o_Out) && key) {
		show_debug_message("You WIN !");
		x += walkspd;
		state = "walk";
	} else if (place_meeting(x+walkspd, y, o_Out) && !key) {
		show_debug_message("You nedd the key !");
	} else if (!place_meeting(x+walkspd, y, o_Wall)) {
		x += walkspd;
		state = "walk";
	}
} 

if (press_left) {
	image_angle = 90;
	if (place_meeting(x-walkspd, y, o_Key)) {
		key = true;
		instance_destroy(o_Key);
	} else if (place_meeting(x-walkspd, y, o_Out) && key) {
		show_debug_message("You WIN !");
		x -= walkspd;
		state = "walk";
	} else if (place_meeting(x-walkspd, y, o_Out) && !key) {
		show_debug_message("You nedd the key !");
	} else if (!place_meeting(x-walkspd, y, o_Wall)) {
		x -= walkspd;
		state = "walk";
	}
}

if (press_up) {
	image_angle = 0;
	if (place_meeting(x, y-walkspd, o_Key)) {
		key = true;
		instance_destroy(o_Key);
	} else if (place_meeting(x, y-walkspd, o_Out) && key) {
		show_debug_message("You WIN !");
		y -= walkspd;
		state = "walk";
	} else if (place_meeting(x, y-walkspd, o_Out) && !key) {
		show_debug_message("You nedd the key !");
	} else if (!place_meeting(x, y-walkspd, o_Wall)) {
		y -= walkspd;
		state = "walk";
	} 
}

if (press_down) {
	image_angle = 180;
	if (place_meeting(x, y+walkspd, o_Key)) {
		key = true;
		instance_destroy(o_Key);
	} else if (place_meeting(x, y+walkspd, o_Out) && key) {
		show_debug_message("You WIN !");
		y += walkspd;
		state = "walk";
	} else if (place_meeting(x, y+walkspd, o_Out) && !key) {
		show_debug_message("You nedd the key !");
	} else if (!place_meeting(x, y+walkspd, o_Wall)) {
		y += walkspd;
		state = "walk";
	} 
}

if (!press_down && !press_up && !press_left && !press_right && state != "attack") {
	state = "idle";
	//image_angle = point_direction(x, y, mouse_x, mouse_y);
}

if (!couldown) {
	//alarm[0] = 10;
}	

if (press_attack) {
	state = "attack";
	couldown = false;
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B91F3EB
/// @DnDArgument : "code" "if (state == "idle") {$(13_10)	sprite_index = s_Prisonnier_Idle;$(13_10)} else if (state == "walk") {$(13_10)	sprite_index = s_Prisonnier_Walk;$(13_10)} else if (state == "attack") {$(13_10)	sprite_index = s_Prisonnier_Mattraque_Attack;$(13_10)}"
if (state == "idle") {
	sprite_index = s_Prisonnier_Idle;
} else if (state == "walk") {
	sprite_index = s_Prisonnier_Walk;
} else if (state == "attack") {
	sprite_index = s_Prisonnier_Mattraque_Attack;
}