/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2DEFF7BE
/// @DnDArgument : "code" "if keyboard_check_pressed(vk_down)$(13_10){$(13_10)	audio_play_sound(menu_sound, 1, false)$(13_10)	nb_menu += 1;$(13_10)}$(13_10)$(13_10)else if keyboard_check_pressed(vk_up)$(13_10){$(13_10)	audio_play_sound(menu_sound, 1, false)$(13_10)	nb_menu -= 1;$(13_10)}$(13_10)$(13_10)image_index = nb_menu;$(13_10)$(13_10)if (keyboard_check_pressed(vk_enter) && image_index == 0) {$(13_10)	room_goto(room_level_1);$(13_10)	audio_stop_all();$(13_10)} else if (keyboard_check_pressed(vk_enter) && image_index == 1) {$(13_10)	room_goto(menu_control);$(13_10)} else if (keyboard_check_pressed(vk_enter) && image_index == 2) {$(13_10)	game_end();$(13_10)}"
if keyboard_check_pressed(vk_down)
{
	audio_play_sound(menu_sound, 1, false)
	nb_menu += 1;
}

else if keyboard_check_pressed(vk_up)
{
	audio_play_sound(menu_sound, 1, false)
	nb_menu -= 1;
}

image_index = nb_menu;

if (keyboard_check_pressed(vk_enter) && image_index == 0) {
	room_goto(room_level_1);
	audio_stop_all();
} else if (keyboard_check_pressed(vk_enter) && image_index == 1) {
	room_goto(menu_control);
} else if (keyboard_check_pressed(vk_enter) && image_index == 2) {
	game_end();
}