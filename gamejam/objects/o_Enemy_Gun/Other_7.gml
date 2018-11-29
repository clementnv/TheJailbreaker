/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6B281B17
/// @DnDArgument : "code" "if (state == "attack") {$(13_10)	state = "idle";	$(13_10)} else if(state == "touch") {$(13_10)	state = "idle";$(13_10)} else if (state == "dead") {$(13_10)	instance_destroy();$(13_10)}$(13_10)"
if (state == "attack") {
	state = "idle";	
} else if(state == "touch") {
	state = "idle";
} else if (state == "dead") {
	instance_destroy();
}