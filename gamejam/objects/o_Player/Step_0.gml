/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 53CF21FC
/// @DnDArgument : "code" "//gamepad_imput_right = gamepad_axis_value(0, gp_axislh)$(13_10)//press_right = keyboard_check(vk_right) or gamepad_button_value(0, gp_padr) or gamepad_axis_value(0, gp_axislh);$(13_10)//press_left = keyboard_check(vk_left) or gamepad_button_value(0, gp_padl);$(13_10)//press_up = keyboard_check(vk_up) or gamepad_button_value(0, gp_padu);$(13_10)//press_down = keyboard_check(vk_down) or gamepad_button_value(0, gp_padd);$(13_10)press_attack = keyboard_check_pressed(vk_space) or gamepad_button_value(0, gp_face1);$(13_10)if(keyboard_check(vk_right) or gamepad_button_value(0, gp_padr) or (gamepad_axis_value(0, gp_axislh))) {$(13_10)	press_right = true;$(13_10)} else {$(13_10)	press_right = false;$(13_10)}$(13_10)if(keyboard_check(vk_left) or gamepad_button_value(0, gp_padl) or (gamepad_axis_value(0, gp_axislh) < -0.1)) {$(13_10)	press_left = true;$(13_10)} else {$(13_10)	press_left = false;$(13_10)}$(13_10)if(keyboard_check(vk_up) or gamepad_button_value(0, gp_padu) or (gamepad_axis_value(0, gp_axislv) < -0.1)) {$(13_10)	press_up = true;$(13_10)} else {$(13_10)	press_up = false;$(13_10)}$(13_10)if (keyboard_check(vk_down) or gamepad_button_value(0, gp_padd) or (gamepad_axis_value(0, gp_axislv))) {$(13_10)	press_down = true;$(13_10)} else {$(13_10)	press_down = false;$(13_10)}$(13_10)$(13_10)// DEBUG$(13_10)if keyboard_check(ord("O")) { $(13_10)	game_restart();$(13_10)}$(13_10)if (state != "dead") {$(13_10)	if (press_right) {$(13_10)		image_angle = -90;$(13_10)		if (place_meeting(x+walkspd, y, o_Key)) {$(13_10)			key = true;$(13_10)			instance_destroy(o_Key);$(13_10)		} else if (place_meeting(x+walkspd, y, o_Gun)) {$(13_10)			gun = true;$(13_10)			instance_destroy(o_Gun);$(13_10)		} else if (place_meeting(x+walkspd, y, o_Out) && key) {$(13_10)			show_debug_message("You WIN !");$(13_10)			room_goto(room1)$(13_10)			x += walkspd;$(13_10)			state = "walk";$(13_10)		} else if (place_meeting(x+walkspd, y, o_Out) && !key) {$(13_10)			show_debug_message("You nedd the key !");$(13_10)		} else if (!place_meeting(x+walkspd*3, y, o_Wall) && !place_meeting(x+walkspd*3, y, o_Bed) && !place_meeting(x+walkspd*3, y, o_Desk) && !place_meeting(x+walkspd*3, y, o_Table)) {$(13_10)			x += walkspd;$(13_10)			state = "walk";$(13_10)		}$(13_10)	} $(13_10)$(13_10)	if (press_left) {$(13_10)		image_angle = 90;$(13_10)		if (place_meeting(x-walkspd, y, o_Key)) {$(13_10)			key = true;$(13_10)			instance_destroy(o_Key);$(13_10)		} else if (place_meeting(x-walkspd, y, o_Gun)) {$(13_10)			gun = true;$(13_10)			instance_destroy(o_Gun);$(13_10)		} else if (place_meeting(x-walkspd, y, o_Out) && key) {$(13_10)			show_debug_message("You WIN !");$(13_10)			x -= walkspd;$(13_10)			state = "walk";$(13_10)		} else if (place_meeting(x-walkspd, y, o_Out) && !key) {$(13_10)			show_debug_message("You nedd the key !");$(13_10)		} else if (!place_meeting(x-walkspd*3, y, o_Wall) && !place_meeting(x-walkspd*3, y, o_Bed) && !place_meeting(x-walkspd*3, y, o_Desk) && !place_meeting(x-walkspd*3, y, o_Table)) {$(13_10)			x -= walkspd;$(13_10)			state = "walk";$(13_10)		}$(13_10)	}$(13_10)$(13_10)	if (press_up) {$(13_10)		image_angle = 0;$(13_10)		if (place_meeting(x, y-walkspd, o_Key)) {$(13_10)			key = true;$(13_10)			instance_destroy(o_Key);$(13_10)		} else if (place_meeting(x, y-walkspd, o_Gun)) {$(13_10)			gun = true;$(13_10)			instance_destroy(o_Gun);$(13_10)		} else if (place_meeting(x, y-walkspd, o_Out) && key) {$(13_10)			show_debug_message("You WIN !");$(13_10)			y -= walkspd;$(13_10)			state = "walk";$(13_10)		} else if (place_meeting(x, y-walkspd, o_Out) && !key) {$(13_10)			show_debug_message("You nedd the key !");$(13_10)		} else if (!place_meeting(x, y-walkspd*3, o_Wall) && !place_meeting(x, y-walkspd*3, o_Bed) && !place_meeting(x, y-walkspd*3, o_Desk) && !place_meeting(x, y-walkspd*3, o_Table)) {$(13_10)			y -= walkspd;$(13_10)			state = "walk";$(13_10)		} $(13_10)	}$(13_10)$(13_10)	if (press_down) {$(13_10)		image_angle = 180;$(13_10)		if (place_meeting(x, y+walkspd, o_Key)) {$(13_10)			key = true;$(13_10)			instance_destroy(o_Key);$(13_10)		} else if (place_meeting(x, y+walkspd, o_Gun)) {$(13_10)			gun = true;$(13_10)			instance_destroy(o_Gun);$(13_10)		} else if (place_meeting(x, y+walkspd, o_Out) && key) {$(13_10)			show_debug_message("You WIN !");$(13_10)			y += walkspd;$(13_10)			state = "walk";$(13_10)		} else if (place_meeting(x, y+walkspd, o_Out) && !key) {$(13_10)			show_debug_message("You nedd the key !");$(13_10)		} else if (!place_meeting(x, y+walkspd*4, o_Wall) && !place_meeting(x, y+walkspd*4, o_Bed) && !place_meeting(x, y+walkspd*4, o_Desk) && !place_meeting(x, y+walkspd*4, o_Table)) {$(13_10)			y += walkspd;$(13_10)			state = "walk";$(13_10)		} $(13_10)	}$(13_10)	 if (press_down && press_right) {$(13_10)		 image_angle = 225;$(13_10)	 } else if (press_down && press_left) {$(13_10)		 image_angle = 135;$(13_10)	 } else if (press_up && press_right) {$(13_10)		 image_angle = -45;$(13_10)	 } else if (press_up && press_left) {$(13_10)		 image_angle = 45;$(13_10)	 }$(13_10)$(13_10)	if (!press_down && !press_up && !press_left && !press_right && state != "attack") {$(13_10)		state = "idle";$(13_10)		//image_angle = point_direction(x, y, mouse_x, mouse_y);$(13_10)	}$(13_10)$(13_10)	if (!couldown) {$(13_10)		//alarm[0] = 10;$(13_10)	}	$(13_10)$(13_10)	if (press_attack) {$(13_10)		//couldown = false;$(13_10)		if (gun && !couldown) {$(13_10)			instance_create_layer(x, y, "Instances", o_Bullet_Player);$(13_10)		}$(13_10)		if (!couldown) {$(13_10)			state = "attack";$(13_10)			couldown = true;$(13_10)			alarm[0] = 10;$(13_10)		}$(13_10)	}$(13_10)	if (place_meeting(x, y, o_Health_Bonus) && hp != 3) {$(13_10)		hp += 1;$(13_10)		instance_destroy(o_Health_Bonus);$(13_10)	}$(13_10)	if (place_meeting(x, y, o_Water)) {$(13_10)		walkspd = 2;$(13_10)	} else {$(13_10)		walkspd = 7;$(13_10)	}$(13_10)	if (place_meeting(x, y, o_Bullet_Enemy)) {$(13_10)		hp -= 1;$(13_10)	}$(13_10)}"
//gamepad_imput_right = gamepad_axis_value(0, gp_axislh)
//press_right = keyboard_check(vk_right) or gamepad_button_value(0, gp_padr) or gamepad_axis_value(0, gp_axislh);
//press_left = keyboard_check(vk_left) or gamepad_button_value(0, gp_padl);
//press_up = keyboard_check(vk_up) or gamepad_button_value(0, gp_padu);
//press_down = keyboard_check(vk_down) or gamepad_button_value(0, gp_padd);
press_attack = keyboard_check_pressed(vk_space) or gamepad_button_value(0, gp_face1);
if(keyboard_check(vk_right) or gamepad_button_value(0, gp_padr) or (gamepad_axis_value(0, gp_axislh))) {
	press_right = true;
} else {
	press_right = false;
}
if(keyboard_check(vk_left) or gamepad_button_value(0, gp_padl) or (gamepad_axis_value(0, gp_axislh) < -0.1)) {
	press_left = true;
} else {
	press_left = false;
}
if(keyboard_check(vk_up) or gamepad_button_value(0, gp_padu) or (gamepad_axis_value(0, gp_axislv) < -0.1)) {
	press_up = true;
} else {
	press_up = false;
}
if (keyboard_check(vk_down) or gamepad_button_value(0, gp_padd) or (gamepad_axis_value(0, gp_axislv))) {
	press_down = true;
} else {
	press_down = false;
}

// DEBUG
if keyboard_check(ord("O")) { 
	game_restart();
}
if (state != "dead") {
	if (press_right) {
		image_angle = -90;
		if (place_meeting(x+walkspd, y, o_Key)) {
			key = true;
			instance_destroy(o_Key);
		} else if (place_meeting(x+walkspd, y, o_Gun)) {
			gun = true;
			instance_destroy(o_Gun);
		} else if (place_meeting(x+walkspd, y, o_Out) && key) {
			show_debug_message("You WIN !");
			room_goto(room1)
			x += walkspd;
			state = "walk";
		} else if (place_meeting(x+walkspd, y, o_Out) && !key) {
			show_debug_message("You nedd the key !");
		} else if (!place_meeting(x+walkspd*3, y, o_Wall) && !place_meeting(x+walkspd*3, y, o_Bed) && !place_meeting(x+walkspd*3, y, o_Desk) && !place_meeting(x+walkspd*3, y, o_Table)) {
			x += walkspd;
			state = "walk";
		}
	} 

	if (press_left) {
		image_angle = 90;
		if (place_meeting(x-walkspd, y, o_Key)) {
			key = true;
			instance_destroy(o_Key);
		} else if (place_meeting(x-walkspd, y, o_Gun)) {
			gun = true;
			instance_destroy(o_Gun);
		} else if (place_meeting(x-walkspd, y, o_Out) && key) {
			show_debug_message("You WIN !");
			x -= walkspd;
			state = "walk";
		} else if (place_meeting(x-walkspd, y, o_Out) && !key) {
			show_debug_message("You nedd the key !");
		} else if (!place_meeting(x-walkspd*3, y, o_Wall) && !place_meeting(x-walkspd*3, y, o_Bed) && !place_meeting(x-walkspd*3, y, o_Desk) && !place_meeting(x-walkspd*3, y, o_Table)) {
			x -= walkspd;
			state = "walk";
		}
	}

	if (press_up) {
		image_angle = 0;
		if (place_meeting(x, y-walkspd, o_Key)) {
			key = true;
			instance_destroy(o_Key);
		} else if (place_meeting(x, y-walkspd, o_Gun)) {
			gun = true;
			instance_destroy(o_Gun);
		} else if (place_meeting(x, y-walkspd, o_Out) && key) {
			show_debug_message("You WIN !");
			y -= walkspd;
			state = "walk";
		} else if (place_meeting(x, y-walkspd, o_Out) && !key) {
			show_debug_message("You nedd the key !");
		} else if (!place_meeting(x, y-walkspd*3, o_Wall) && !place_meeting(x, y-walkspd*3, o_Bed) && !place_meeting(x, y-walkspd*3, o_Desk) && !place_meeting(x, y-walkspd*3, o_Table)) {
			y -= walkspd;
			state = "walk";
		} 
	}

	if (press_down) {
		image_angle = 180;
		if (place_meeting(x, y+walkspd, o_Key)) {
			key = true;
			instance_destroy(o_Key);
		} else if (place_meeting(x, y+walkspd, o_Gun)) {
			gun = true;
			instance_destroy(o_Gun);
		} else if (place_meeting(x, y+walkspd, o_Out) && key) {
			show_debug_message("You WIN !");
			y += walkspd;
			state = "walk";
		} else if (place_meeting(x, y+walkspd, o_Out) && !key) {
			show_debug_message("You nedd the key !");
		} else if (!place_meeting(x, y+walkspd*4, o_Wall) && !place_meeting(x, y+walkspd*4, o_Bed) && !place_meeting(x, y+walkspd*4, o_Desk) && !place_meeting(x, y+walkspd*4, o_Table)) {
			y += walkspd;
			state = "walk";
		} 
	}
	 if (press_down && press_right) {
		 image_angle = 225;
	 } else if (press_down && press_left) {
		 image_angle = 135;
	 } else if (press_up && press_right) {
		 image_angle = -45;
	 } else if (press_up && press_left) {
		 image_angle = 45;
	 }

	if (!press_down && !press_up && !press_left && !press_right && state != "attack") {
		state = "idle";
		//image_angle = point_direction(x, y, mouse_x, mouse_y);
	}

	if (!couldown) {
		//alarm[0] = 10;
	}	

	if (press_attack) {
		//couldown = false;
		if (gun && !couldown) {
			instance_create_layer(x, y, "Instances", o_Bullet_Player);
		}
		if (!couldown) {
			state = "attack";
			couldown = true;
			alarm[0] = 10;
		}
	}
	if (place_meeting(x, y, o_Health_Bonus) && hp != 3) {
		hp += 1;
		instance_destroy(o_Health_Bonus);
	}
	if (place_meeting(x, y, o_Water)) {
		walkspd = 2;
	} else {
		walkspd = 7;
	}
	if (place_meeting(x, y, o_Bullet_Enemy)) {
		hp -= 1;
	}
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4B91F3EB
/// @DnDArgument : "code" "if (state == "idle") {$(13_10)	sprite_index = s_Prisonnier_Idle;$(13_10)} else if (state == "walk") {$(13_10)	if(gun) {$(13_10)		sprite_index = s_Prisonnier_Walk_Gun;$(13_10)	} else {$(13_10)		sprite_index = s_Prisonnier_Walk_Cut;$(13_10)	}$(13_10)} else if (state == "attack") {$(13_10)	if(gun) {$(13_10)		sprite_index = s_Prisonnier_Gun_Attack;$(13_10)	} else {$(13_10)		sprite_index = s_Prisonnier_Cut_Attack;$(13_10)	}$(13_10)	$(13_10)} else if (state == "dead") {$(13_10)	sprite_index = s_Prisonnier_Dead;$(13_10)}"
if (state == "idle") {
	sprite_index = s_Prisonnier_Idle;
} else if (state == "walk") {
	if(gun) {
		sprite_index = s_Prisonnier_Walk_Gun;
	} else {
		sprite_index = s_Prisonnier_Walk_Cut;
	}
} else if (state == "attack") {
	if(gun) {
		sprite_index = s_Prisonnier_Gun_Attack;
	} else {
		sprite_index = s_Prisonnier_Cut_Attack;
	}
	
} else if (state == "dead") {
	sprite_index = s_Prisonnier_Dead;
}