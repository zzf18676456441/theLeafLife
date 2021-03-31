/// @description Insert description here
// You can write your code in this editor
if(y > 0 and dir < 0){
	dir = 1;
}


if (timer > 0) {timer--;}

if (timer <= 0 and hDir > 0)
{	
	temp = random_range(0,0.3);
	hspeed = temp;
	hDir = -1;
	timer = timerLoop;
}else if (timer <= 0 and hDir < 0){
	temp = random_range(0,0.3);
	hspeed = -temp;
	hDir = 1;
	timer = timerLoop;
}