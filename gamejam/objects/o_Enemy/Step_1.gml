/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A1C339F
/// @DnDArgument : "code" "if (hp <= 0 && !sound) {$(13_10)	state = "dead";$(13_10)	audio_play_sound(mort_bruitage, 1, false);$(13_10)	sound = true;$(13_10)}$(13_10)$(13_10)if state == "dead" && sprite_index = s_Policier_Dead {$(13_10)	sprite_index = s_Policier_Dead;$(13_10)}"
if (hp <= 0 && !sound) {
	state = "dead";
	audio_play_sound(mort_bruitage, 1, false);
	sound = true;
}

if state == "dead" && sprite_index = s_Policier_Dead {
	sprite_index = s_Policier_Dead;
}