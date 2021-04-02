/// @description Board Controls

var currentTurn = objMaster.currentTT;

if(currentTurn == orderTurn && !instance_exists(objDice) && onGoingTurn == false) 
{
	onGoingTurn = true;
	turnStates = turnStates.STARTTURN;
}


switch (turnStates)
{
	case turnStates.STARTTURN: startTurn(x,y) break;
	case turnStates.ROLLINGDICE: numberRolled = rollNumber() break;
	case turnStates.WALKBOARD: walkBoard() break;
	case turnStates.ENDTURN: endTurn() break;
		
}




