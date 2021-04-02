// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function endTurn()
{


	turnStates = turnStates.WAITTURN;
	objMaster.currentTT = objMaster.currentTT < TOTALMEMBERS ? objMaster.currentTT + 1 : 1;
	objMaster.charactersPlayed += 1;
	onGoingTurn = false;
		
}