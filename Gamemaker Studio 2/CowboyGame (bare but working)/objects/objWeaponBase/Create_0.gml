#region Shooting
cocked = false;
projectiles = 0;
projectileCount = 1;
projectileSpeed = 30;
spread = 0.3;
spreadLower =  spread - (spread+spread);
#endregion

#region Ammo
totalAmmo = 12;
maxAmmo = 6;
loadedAmmo = maxAmmo;
#endregion

#region Reloading
room_speed = 60;
reloadSpeed = 20;
reloadTimer = reloadSpeed;
#endregion

#region Sounds

soundGunshot = snd_gunshot;
soundloading = snd_load;
soundCocking = snd_cock;
soundDryfire = snd_click;

#endregion
enum weaponState {
	RELOADING,
	RELOAD_IDLE,
}

state = weaponState.RELOAD_IDLE