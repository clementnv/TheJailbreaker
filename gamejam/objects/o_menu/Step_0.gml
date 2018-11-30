/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2DEFF7BE
/// @DnDArgument : "code" "if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(0, gp_padd) or (gamepad_axis_value(0, gp_axislv))) {$(13_10)	audio_play_sound(menu_sound, 1, false)$(13_10)	nb_menu += 1;$(13_10)} else if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0, gp_padu) or (gamepad_axis_value(0, gp_axislv) < -0.1)) {$(13_10)	audio_play_sound(menu_sound, 1, false)$(13_10)	nb_menu -= 1;$(13_10)}$(13_10)if (nb_menu > 2) {$(13_10)	nb_menu = 0;$(13_10)} else if (nb_menu < 0) {$(13_10)	nb_menu = 2;$(13_10)}$(13_10)image_index = nb_menu;$(13_10)$(13_10)if ((keyboard_check_pressed(vk_return) or gamepad_button_value(0, gp_face1)) && image_index == 0)  {$(13_10)	audio_stop_all();$(13_10)	room_goto(room_level_1);$(13_10)} else if ((keyboard_check_pressed(vk_return) or gamepad_button_value(0, gp_face1)) && image_index == 1) {$(13_10)	room_goto(menu_control);$(13_10)} else if ((keyboard_check_pressed(vk_return) or gamepad_button_value(0, gp_face1)) && image_index == 2) {$(13_10)	game_end();$(13_10)}"
if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S")) or gamepad_button_check_pressed(0, gp_padd) or (gamepad_axis_value(0, gp_axislv))) {
	audio_play_sound(menu_sound, 1, false)
	nb_menu += 1;
} else if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("Z")) or gamepad_button_check_pressed(0, gp_padu) or (gamepad_axis_value(0, gp_axislv) < -0.1)) {
	audio_play_sound(menu_sound, 1, false)
	nb_menu -= 1;
}
if (nb_menu > 2) {
	nb_menu = 0;
} else if (nb_menu < 0) {
	nb_menu = 2;
}
image_index = nb_menu;

if ((keyboard_check_pressed(vk_return) or gamepad_button_value(0, gp_face1)) && image_index == 0)  {
	audio_stop_all();
	room_goto(room_level_1);
} else if ((keyboard_check_pressed(vk_return) or gamepad_button_value(0, gp_face1)) && image_index == 1) {
	room_goto(menu_control);
} else if ((keyboard_check_pressed(vk_return) or gamepad_button_value(0, gp_face1)) && image_index == 2) {
	game_end();
}