mouseClick = mouse_check_button_pressed(mb_left)

if mouseClick {
	sprite_index = spr_menuPressed;
	room_restart();
}