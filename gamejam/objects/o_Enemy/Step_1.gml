/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A1C339F
/// @DnDArgument : "code" "if (hp <= 0) { state = "dead"; }$(13_10)$(13_10)if state == "dead" && sprite_index = s_Policier_Dead {$(13_10)	sprite_index = s_Policier_Dead;$(13_10)}"
if (hp <= 0) { state = "dead"; }

if state == "dead" && sprite_index = s_Policier_Dead {
	sprite_index = s_Policier_Dead;
}