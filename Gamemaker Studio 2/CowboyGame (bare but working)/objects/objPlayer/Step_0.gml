
#region Movement
	key_up = keyboard_check(ord("W"));
	key_right = keyboard_check(ord("D"));
	key_left = keyboard_check(ord("A"));
	key_down = keyboard_check(ord("S"));
	
	hsp = (key_right - key_left) * spd;
	vsp = (key_down - key_up) * spd;
	

	
#endregion

#region Leg Direction (BROKEN)
/*
image_angle = (key_right - key_up) * 90
image_angle = (key_down - key_left) * 90
*/
#endregion