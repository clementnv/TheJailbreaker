/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2BFB3F63
/// @DnDArgument : "code" "if (place_meeting(x, y, o_Wall)) {$(13_10)	instance_destroy();$(13_10)}"
if (place_meeting(x, y, o_Wall)) {
	instance_destroy();
}