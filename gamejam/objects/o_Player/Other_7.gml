/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 316EA22D
/// @DnDArgument : "code" "if (state == "attack") {$(13_10)	state = "idle";	$(13_10)} else if (state == "dead") {$(13_10)	audio_stop_all();$(13_10)	room_goto(room_level_1);$(13_10)}"
if (state == "attack") {
	state = "idle";	
} else if (state == "dead") {
	audio_stop_all();
	room_goto(room_level_1);
}