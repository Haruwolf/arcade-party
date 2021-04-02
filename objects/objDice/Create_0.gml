depth = -1;
numberChoice = 1;

//Estados do dado para que executado no momento certo
enum diceStates
{
	NODICE,
	ROLLING,
	ROLLED,
	DESTROY
}

//Caso ele tenha sido criado, ele irá começar a rolar
if (instance_exists(objDice)) diceStates = diceStates.ROLLING;
