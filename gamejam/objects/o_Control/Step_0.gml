/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 58E596D9
/// @DnDArgument : "code" "if (keyboard_check_pressed(vk_tab)) {$(13_10)	fullscreen = !fullscreen;$(13_10)}$(13_10)$(13_10)if (fullscreen) {$(13_10)	window_set_fullscreen(true);$(13_10)} else {$(13_10)	window_set_fullscreen(false);$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_escape)) {$(13_10)	room_goto(menu);$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("Q")) or gamepad_button_check_pressed(0, gp_padl) or (gamepad_axis_value(0, gp_axislh) < -0.1)) {$(13_10)	audio_play_sound(menu_sound, 1, false)$(13_10)	nb_menu += 1;$(13_10)} else if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0, gp_padr) or (gamepad_axis_value(0, gp_axislh))) {$(13_10)	audio_play_sound(menu_sound, 1, false)$(13_10)	nb_menu -= 1;$(13_10)}$(13_10)$(13_10)if (nb_menu > 1) {$(13_10)	nb_menu = 0;$(13_10)} else if (nb_menu < 0) {$(13_10)	nb_menu = 1;$(13_10)}$(13_10)$(13_10)image_index = nb_menu;$(13_10)$(13_10)if (keyboard_check_pressed(vk_backspace) or gamepad_button_check_pressed(0, gp_face2)) {$(13_10)	audio_stop_all();$(13_10)	room_goto(menu);$(13_10)}"
if (keyboard_check_pressed(vk_tab)) {
	fullscreen = !fullscreen;
}

if (fullscreen) {
	window_set_fullscreen(true);
} else {
	window_set_fullscreen(false);
}

if (keyboard_check_pressed(vk_escape)) {
	room_goto(menu);
}

if (keyboard_check_pressed(vk_left) or keyboard_check_pressed(ord("Q")) or gamepad_button_check_pressed(0, gp_padl) or (gamepad_axis_value(0, gp_axislh) < -0.1)) {
	audio_play_sound(menu_sound, 1, false)
	nb_menu += 1;
} else if (keyboard_check_pressed(vk_right) or keyboard_check_pressed(ord("D")) or gamepad_button_check_pressed(0, gp_padr) or (gamepad_axis_value(0, gp_axislh))) {
	audio_play_sound(menu_sound, 1, false)
	nb_menu -= 1;
}

if (nb_menu > 1) {
	nb_menu = 0;
} else if (nb_menu < 0) {
	nb_menu = 1;
}

image_index = nb_menu;

if (keyboard_check_pressed(vk_backspace) or gamepad_button_check_pressed(0, gp_face2)) {
	audio_stop_all();
	room_goto(menu);
}