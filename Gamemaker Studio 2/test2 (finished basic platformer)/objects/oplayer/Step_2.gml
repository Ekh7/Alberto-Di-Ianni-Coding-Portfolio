#region MOVE THE VIEW

halfViewWidth = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) / 2 + 80;

camera_set_view_pos(view_camera[0], x - halfViewWidth, y- halfViewHeight);

#endregion


#region DEATH STATE
if place_meeting(x, y, oDeath){
	room_restart();
}
#endregion

#region WIN STATE
if place_meeting(x,y, oGoal){
	room_restart();
}
#endregion