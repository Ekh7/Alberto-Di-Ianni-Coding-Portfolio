hsp = 0;
vsp = 0;
//sets the initial horizontal and verticle speed of the object to zero
//these variables are dependent on movement, and are not influenced by co ordinates
collisionBoundary = 1;


spd = 4;

jump = -1;
jumpCap = -10;

grv = -0.5;
grvCap = -3;

key_right=0
key_left=0

enum playerState {
	IDLE,
	MOVE,
	GROUNDED,
	JUMP,
	FALL
}

moveState = playerState.IDLE
physState = playerState.FALL