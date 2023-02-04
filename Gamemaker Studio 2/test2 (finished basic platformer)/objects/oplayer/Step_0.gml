//Get Player Input

//key_up = keyboard_check_pressed(ord("W"));
key_right = keyboard_check(ord("D")) and place_free(x + collisionBoundary, y);
key_left = keyboard_check(ord("A")) and place_free(x - collisionBoundary, y);
if (key_right or key_left = 1) {
	moveState = playerState.MOVE
}

if moveState == playerState.IDLE
{
	#region Idle
	show_debug_message("IDLE");
	if hsp < 0{
		moveState = playerState.MOVE;
		}
	#endregion
}

if moveState == playerState.MOVE
{
	#region Move
	show_debug_message("MOVE");
	hsp = (key_right - key_left) * spd;
	if key_left or key_right = 0{
		moveState = playerState.IDLE
		}
	#endregion
}

if physState == playerState.GROUNDED
{
	#region Grounded
	show_debug_message("GROUNDED");
	if keyboard_check(ord("W")) or keyboard_check(ord(vk_space)){
		physState = playerState.JUMP;
	}
	if place_free(x, y + collisionBoundary){
		physState = playerState.FALL;
	}
	#endregion
}

if physState == playerState.JUMP
{
	#region Jump
	show_debug_message("JUMP");
	jump = clamp(jump,0,jumpCap);
	vsp = jump
	if vsp = jumpCap{
		physState = playerState.FALL;
		}
	#endregion
}

if physState == playerState.FALL
{
	#region Fall
	show_debug_message("FALL");
	grv = clamp(grv,grvCap,0);
	vsp = vsp - grv;
	if place_meeting(x, y+vsp, oBrick){
		vsp = 0
		physState = playerState.GROUNDED;
	//i think this means that if we're touching the brick + the current vsp value 
	}
	#endregion
}



y += vsp;
x += hsp;


//Calculate Movement

//hsp = (key_right - key_left) * spd;


//y += vsp;