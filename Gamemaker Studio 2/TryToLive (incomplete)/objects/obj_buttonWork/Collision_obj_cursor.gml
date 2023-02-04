mouseClick = mouse_check_button_pressed(mb_left)

if mouseClick {
	sprite_index = spr_workPressed;
	alarm[0] = 4
	global.money = global.money + irandom_range(1,10);
	global.sleep = global.sleep - 0.1;
	global.eat = global.eat- 0.3;
	}