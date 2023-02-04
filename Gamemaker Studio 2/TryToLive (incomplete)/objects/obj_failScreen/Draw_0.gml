if global.timer = 0 {
	sprite_index = spr_winScreen;
}

else if global.sleep = 0 {
	sprite_index = spr_sleepFail;
}
else if global.eat = 0 {
	sprite_index = spr_eatFail;
}
draw_self();