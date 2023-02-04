hovered = place_meeting(x, y, obj_cursor)
mouseClick = mouse_check_button_pressed(mb_left)
if hovered {
	sprite_index = spr_playHover;
	if mouseClick {
		room_goto(roomPlay)
	}
}
else{
	sprite_index = spr_play;
}