#region Melee
if (keyboard_check_pressed(vk_space) && objWeaponBase.state != weaponState.RELOADING) {
	var playerCenterX = x;
	var playerCenterY = y;
	
	var dir = point_direction(playerCenterX, playerCenterY, mouse_x, mouse_y);
	var len = 76;

	var hitboxX = lengthdir_x(len, dir) + playerCenterX;
	var hitboxY = lengthdir_y(len, dir) + playerCenterY;
	
	var hitbox = instance_create_layer(hitboxX, hitboxY, "Hitboxes", objHitbox);
	hitbox.creator = id
	
	state = playerState.IDLE;
	}
#endregion

#region Collisions
	if(tile_meeting (x + hsp, y, "Collisions")){
		while(!tile_meeting(x+sign(hsp),y,"Collisions")){
		x = x + sign(hsp)
		}
		hsp = 0
	};
	x += hsp
	if(tile_meeting (x, y+vsp, "Collisions")){
		while(!tile_meeting(x,y+sign(vsp),"Collisions")){
		y = y + sign(vsp)
		}
		vsp = 0
	};
	y += vsp
#endregion