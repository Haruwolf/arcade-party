/// @description Insert description here
// You can write your code in this editor

var pos = 50;
cooldown--
	
	if (cooldown == 0 && !flagLifted)
	{
		
		flagLifted = true;
		flagDirection = choose(1, -1);
		var flagObj = flagDirection == 1 ? objFlagRight : objFlagLeft;
		choosedFlag = instance_create_layer(x + pos *flagDirection, y, "instances", flagObj);
		flagTime = irandom_range(activeTimeMin,activeTimeMax);
		
		
	}
	
	if (flagLifted)
	{
		
		flagTime--;
		if (flagTime == 0)
		{
			
			instance_destroy(choosedFlag);
			cooldown = restTime;
			flagLifted = false;
		}
		
	}