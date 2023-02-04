event_inherited();

	playerAngle = point_direction(x,y,mouse_x,mouse_y);
	//image_angle = point_direction(x, y, mouse_x, mouse_y);
	
	if mouse_check_button(mb_left) && loadedAmmo > 0{
		while projectiles != projectileCount {
			with (instance_create_layer(x,y, "Bullets", objBulletBase)){
				direction = objWeaponBase.playerAngle + irandom_range(objWeaponBase.spreadLower, objWeaponBase.spread);
				//Obj_Bullet.image_angle = Obj_PlayerTop.image_angle;
				speed = objWeaponBase.projectileSpeed;
			}
			projectiles++;
		}
		projectiles = 0
		cocked = true;
		loadedAmmo--;
		audio_play_sound(soundGunshot, 10, false)
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
			if loadedAmmo = maxAmmo{
				state = weaponState.RELOAD_IDLE;
			}

		}
	if state = weaponState.RELOAD_IDLE{
		}
	}