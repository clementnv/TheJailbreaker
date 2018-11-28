/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4A1C339F
/// @DnDArgument : "code" "if (hp <= 0) { state = "dead"; }$(13_10)$(13_10)if state == "dead" {$(13_10)	instance_destroy();$(13_10)}"
if (hp <= 0) { state = "dead"; }

if state == "dead" {
	instance_destroy();
}