/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FAA22EC
/// @DnDArgument : "code" "if (o_Player.hp <= 0) {$(13_10)	image_index = 0;$(13_10)}$(13_10)image_index = o_Player.hp;$(13_10)x = o_Player.x $(13_10)y = o_Player.y - 40$(13_10)/*x = camera_get_view_x(view_camera[0]) + (view_wview /2)$(13_10)y = camera_get_view_y(view_camera[0]) + 50$(13_10)$(13_10)x = view_xview + 50;$(13_10)y = view_yview + 50;$(13_10)$(13_10)x = camera_get_proj_mat(view_camera[0]).x + 50;$(13_10)y = camera_get_proj_mat(view_camera[0]).y + 50;$(13_10)$(13_10)x = camera_get_view_x(view_camera[0]) + 50;$(13_10)y = camera_get_view_y(view_camera[0]) + 50;$(13_10)$(13_10)global.xplace = camera_get_view_x(view_camera[0]) + (view_wview /2);$(13_10)global.yplace = camera_get_view_y(view_camera[0]) + 50;$(13_10)$(13_10)x = global.xplace;$(13_10)y = global.yplace;$(13_10)$(13_10)show_debug_message(camera_get_view_x(view_camera[0]) + (view_wview /2));$(13_10)show_debug_message(camera_get_view_y(view_camera[0]) + 50);*/"
if (o_Player.hp <= 0) {
	image_index = 0;
}
image_index = o_Player.hp;
x = o_Player.x 
y = o_Player.y - 40
/*x = camera_get_view_x(view_camera[0]) + (view_wview /2)
y = camera_get_view_y(view_camera[0]) + 50

x = view_xview + 50;
y = view_yview + 50;

x = camera_get_proj_mat(view_camera[0]).x + 50;
y = camera_get_proj_mat(view_camera[0]).y + 50;

x = camera_get_view_x(view_camera[0]) + 50;
y = camera_get_view_y(view_camera[0]) + 50;

global.xplace = camera_get_view_x(view_camera[0]) + (view_wview /2);
global.yplace = camera_get_view_y(view_camera[0]) + 50;

x = global.xplace;
y = global.yplace;

show_debug_message(camera_get_view_x(view_camera[0]) + (view_wview /2));
show_debug_message(camera_get_view_y(view_camera[0]) + 50);*//**/