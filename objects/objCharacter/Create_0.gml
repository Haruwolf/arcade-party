//Variável para armazenar qual vai ser a ordem que o personagem vai jogar.
orderTurn = -1;
numberRolled = 0;
onGoingTurn = false;
blockHeight = -20;
characterSpace = 0;
walkSpeed = 30;
isPlayer = false;


depth = -1;

enum turnStates {
	
	WAITTURN,
	STARTTURN,
	ROLLINGDICE,
	CHOOSEDNUMBER,
	WALKBOARD,
	ENDTURN,
	
	
}

turnStates = turnStates.WAITTURN;


if (room == rmMinigame)
{
	playerFlag = -1;
	createFlag = -1;
	activeFlag = false;
	directionFlag = 0;
	flagScreen = -1;
	
	activeCpuFlag = false;
	cpuFlagScreen = -1;
}

