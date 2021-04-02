// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function rollNumber()
{
	
	
	with (objDice)
		{
			if(diceStates == diceStates.ROLLED)
			{
				var numberRoll;
				numberRoll = objDice.numberChoice;
				other.turnStates = turnStates.WALKBOARD;
				return numberRoll;
			}
		}
		
		
}