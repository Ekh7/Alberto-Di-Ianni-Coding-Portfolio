mouseClick = mouse_check_button_pressed(mb_left)

if mouseClick {
	if global.eat <= 100 && global.money > 0 {
		sprite_index = spr_eatPressed;
		alarm[0] = 4
		global.eat = global.eat + 0.2;
		global.money = global.money - 2;
	}
	else{
		
	}
}