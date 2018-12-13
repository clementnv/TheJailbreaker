/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6B281B17
/// @DnDArgument : "code" "if (state == "attack") {$(13_10)	state = "idle";	$(13_10)} else if(state == "touch") {$(13_10)	state = "idle";$(13_10)} else if (state == "dead") {$(13_10)	sprite_index = s_Policier_Dead;$(13_10)	image_index = 3;$(13_10)	instance_create_layer(x, y, "UI", o_Mattraque);$(13_10)	//instance_destroy();$(13_10)}$(13_10)"
if (state == "attack") {
	state = "idle";	
} else if(state == "touch") {
	state = "idle";
} else if (state == "dead") {
	sprite_index = s_Policier_Dead;
	image_index = 3;
	instance_create_layer(x, y, "UI", o_Mattraque);
	//instance_destroy();
}