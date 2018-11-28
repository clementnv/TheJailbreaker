/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53CF21FC
/// @DnDArgument : "code" "press_right = keyboard_check(vk_right);$(13_10)press_left = keyboard_check(vk_left);$(13_10)press_up = keyboard_check(vk_up);$(13_10)press_down = keyboard_check(vk_down);$(13_10)press_attack = keyboard_check(vk_space);$(13_10)$(13_10)if (press_right) {$(13_10)	if (place_meeting(x+walkspd, y, o_Key)) {$(13_10)		key = true;$(13_10)		instance_destroy(o_Key);$(13_10)	} else if (place_meeting(x+walkspd, y, o_Out) && key) {$(13_10)		show_debug_message("You WIN !");$(13_10)		x += walkspd$(13_10)	} else if (place_meeting(x+walkspd, y, o_Out) && !key) {$(13_10)		show_debug_message("You nedd the key !");$(13_10)	} else if (!place_meeting(x+walkspd, y, o_Wall)) {$(13_10)		x += walkspd$(13_10)	}  $(13_10)} $(13_10)$(13_10)if (press_left) {$(13_10)	if (place_meeting(x-walkspd, y, o_Key)) {$(13_10)		key = true;$(13_10)		instance_destroy(o_Key);$(13_10)	} else if (place_meeting(x-walkspd, y, o_Out) && key) {$(13_10)		show_debug_message("You WIN !");$(13_10)		x -= walkspd$(13_10)	} else if (place_meeting(x-walkspd, y, o_Out) && !key) {$(13_10)		show_debug_message("You nedd the key !");$(13_10)	} else if (!place_meeting(x-walkspd, y, o_Wall)) {$(13_10)		x -= walkspd$(13_10)	}  $(13_10)}$(13_10)$(13_10)if (press_up) {$(13_10)	if (place_meeting(x, y-walkspd, o_Key)) {$(13_10)		key = true;$(13_10)		instance_destroy(o_Key);$(13_10)	} else if (place_meeting(x, y-walkspd, o_Out) && key) {$(13_10)		show_debug_message("You WIN !");$(13_10)		y -= walkspd$(13_10)	} else if (place_meeting(x, y-walkspd, o_Out) && !key) {$(13_10)		show_debug_message("You nedd the key !");$(13_10)	} else if (!place_meeting(x, y-walkspd, o_Wall)) {$(13_10)		y -= walkspd$(13_10)	}  $(13_10)}$(13_10)$(13_10)if (press_down) {$(13_10)	if (place_meeting(x, y+walkspd, o_Key)) {$(13_10)		key = true;$(13_10)		instance_destroy(o_Key);$(13_10)	} else if (place_meeting(x, y+walkspd, o_Out) && key) {$(13_10)		show_debug_message("You WIN !");$(13_10)		y += walkspd$(13_10)	} else if (place_meeting(x, y+walkspd, o_Out) && !key) {$(13_10)		show_debug_message("You nedd the key !");$(13_10)	} else if (!place_meeting(x, y+walkspd, o_Wall)) {$(13_10)		y += walkspd$(13_10)	}  $(13_10)}"
press_right = keyboard_check(vk_right);
press_left = keyboard_check(vk_left);
press_up = keyboard_check(vk_up);
press_down = keyboard_check(vk_down);
press_attack = keyboard_check(vk_space);

if (press_right) {
	if (place_meeting(x+walkspd, y, o_Key)) {
		key = true;
		instance_destroy(o_Key);
	} else if (place_meeting(x+walkspd, y, o_Out) && key) {
		show_debug_message("You WIN !");
		x += walkspd
	} else if (place_meeting(x+walkspd, y, o_Out) && !key) {
		show_debug_message("You nedd the key !");
	} else if (!place_meeting(x+walkspd, y, o_Wall)) {
		x += walkspd
	}  
} 

if (press_left) {
	if (place_meeting(x-walkspd, y, o_Key)) {
		key = true;
		instance_destroy(o_Key);
	} else if (place_meeting(x-walkspd, y, o_Out) && key) {
		show_debug_message("You WIN !");
		x -= walkspd
	} else if (place_meeting(x-walkspd, y, o_Out) && !key) {
		show_debug_message("You nedd the key !");
	} else if (!place_meeting(x-walkspd, y, o_Wall)) {
		x -= walkspd
	}  
}

if (press_up) {
	if (place_meeting(x, y-walkspd, o_Key)) {
		key = true;
		instance_destroy(o_Key);
	} else if (place_meeting(x, y-walkspd, o_Out) && key) {
		show_debug_message("You WIN !");
		y -= walkspd
	} else if (place_meeting(x, y-walkspd, o_Out) && !key) {
		show_debug_message("You nedd the key !");
	} else if (!place_meeting(x, y-walkspd, o_Wall)) {
		y -= walkspd
	}  
}

if (press_down) {
	if (place_meeting(x, y+walkspd, o_Key)) {
		key = true;
		instance_destroy(o_Key);
	} else if (place_meeting(x, y+walkspd, o_Out) && key) {
		show_debug_message("You WIN !");
		y += walkspd
	} else if (place_meeting(x, y+walkspd, o_Out) && !key) {
		show_debug_message("You nedd the key !");
	} else if (!place_meeting(x, y+walkspd, o_Wall)) {
		y += walkspd
	}  
}