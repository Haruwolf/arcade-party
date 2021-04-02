characterOnScreen = ds_list_size(global.characterList);
enterCharacter = keyboard_check(vk_enter);

//Caso ainda não tenha personagens suficientes, irá pedir para entrar com o personagem
if(characterOnScreen < TOTALMEMBERS && enterCharacter && addCooldown == 0)
{
	addCharacter(characterOnScreen,characterPosX + (characterOnScreen * spaceBetween), characterPosY);
	addCooldown = 30;	
}

if (addCooldown > 0) addCooldown--;

//Caso já tenha, o jogo irá começar dando um pontapé em quem tiver a orderTurn 1
if (characterOnScreen == TOTALMEMBERS && startGame == false)
{
	startGame = true;
	with (objSpace) ds_list_add(other.spaceList, id);
	ds_list_sort(spaceList, true);
	currentTT = 1;
}

if (charactersPlayed == 2) stateChangeMiniGame();


