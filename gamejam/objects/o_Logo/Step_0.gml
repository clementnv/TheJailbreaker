/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F78D7A8
/// @DnDArgument : "code" "if (keyboard_check_pressed(vk_tab)) {$(13_10)	fullscreen = !fullscreen;$(13_10)}$(13_10)$(13_10)if (fullscreen) {$(13_10)	window_set_fullscreen(true);$(13_10)} else {$(13_10)	window_set_fullscreen(false);$(13_10)}$(13_10)$(13_10)if (keyboard_check_pressed(vk_escape)) {$(13_10)	game_end();$(13_10)}"
if (keyboard_check_pressed(vk_tab)) {
	fullscreen = !fullscreen;
}

if (fullscreen) {
	window_set_fullscreen(true);
} else {
	window_set_fullscreen(false);
}

if (keyboard_check_pressed(vk_escape)) {
	game_end();
}