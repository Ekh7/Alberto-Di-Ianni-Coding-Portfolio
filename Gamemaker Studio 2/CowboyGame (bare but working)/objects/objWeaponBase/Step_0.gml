


#region AIMING and BULLETS
	playerAngle = point_direction(x,y,mouse_x,mouse_y);
	//image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	if mouse_check_button_pressed(mb_left) && cocked = true && loadedAmmo > 0{
		while projectiles != projectileCount {
			with (instance_create_layer(x,y, "Bullets", objBulletBase)){
				direction = objWeaponBase.playerAngle + irandom_range(objWeaponBase.spreadLower, objWeaponBase.spread);
				//Obj_Bullet.image_angle = Obj_PlayerTop.image_angle;
				speed = objWeaponBase.projectileSpeed;
			}
			projectiles++;
		}
		projectiles = 0
		cocked = false;
		loadedAmmo--;
		audio_play_sound(soundGunshot, 10, false)
	}
#endregion

#region COCKING and FIRING
	else if mouse_check_button_pressed(mb_left) && cocked = false or mouse_check_button_pressed(mb_left) && cocked = false && loadedAmmo = 0{
		cocked = true;
		audio_play_sound(soundCocking, 10, false)
		state = weaponState.RELOAD_IDLE;
	
	}
	else if mouse_check_button_pressed(mb_left) && cocked = true && loadedAmmo = 0{
		audio_play_sound(soundDryfire, 11, false)
		cocked = false;
		if state = weaponState.RELOADING{
			cocked = false
		}
	}

#endregion
	
#region RELOADING
	if key_r && loadedAmmo < maxAmmo{
		state = weaponState.RELOADING;
	}
	else if loadedAmmo < 0 or totalAmmo <= 0 or loadedAmmo = maxAmmo{
		state = weaponState.RELOAD_IDLE;
	}

	if state = weaponState.RELOADING{
		if reloadTimer > 0 {
			reloadTimer--;
		}
		if reloadTimer = 0 && totalAmmo > 0{
			cocked = false;
			loadedAmmo++;
			totalAmmo--;
			audio_play_sound(soundloading, 10, false)
			reloadTimer = reloadSpeed


		}
	if state = weaponState.RELOAD_IDLE{
		}
	}		
#endregion



#region Hitscan (UNFINISHED)
/*
var _list = ds_list_create();
var _num = collision_line_list(x+4, y+4, mouse_x, mouse_y, Obj_Enemy, true, true, _list, false);
if _num > 0
{
	instance_destroy(Obj_Enemy)
}
*/
#endregion

