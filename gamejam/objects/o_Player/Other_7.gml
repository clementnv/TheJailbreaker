/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 316EA22D
/// @DnDArgument : "code" "if (state == "attack") {$(13_10)	state = "idle";	$(13_10)} else if (state == "dead") {$(13_10)	game_restart();$(13_10)}"
if (state == "attack") {
	state = "idle";	
} else if (state == "dead") {
	game_restart();
}