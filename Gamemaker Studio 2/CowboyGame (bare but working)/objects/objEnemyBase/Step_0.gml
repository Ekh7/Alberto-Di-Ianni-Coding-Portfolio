if dead = false{
	sprite_index = Spr_Enemy;
	direction = point_direction(x,y,objPlayer.x,objPlayer.y)
	speed = random_range(0.5,1.5);
}
if dead = true{
	speed = 0
	sprite_index = Spr_DeadEnemy;
}