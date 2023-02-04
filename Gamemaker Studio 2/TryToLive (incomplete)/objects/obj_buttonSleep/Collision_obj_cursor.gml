mouseClick = mouse_check_button_pressed(mb_left)

if mouseClick {
	if global.sleep <= 100 {
		sprite_index = spr_eatPressed;
		alarm[0] = 4
		global.sleep = global.sleep + 0.2;
	}
	else{
		
	}
}