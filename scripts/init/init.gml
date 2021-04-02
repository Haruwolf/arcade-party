
function init(){
	
	gml_pragma("global", "init()");
	
	enum GAMESTATES{
		
		BOARD,
		MINIGAME
	}
	
	if (room == 0) 
	{
	global.stateGame = gameStates(GAMESTATES.BOARD);
	show_debug_message(global.stateGame);
	}
	
	
	//Personagens
	enum CHARACTERS{
		
		PLAYER1,
		PLAYER2
	}
	
	
	//Variavel do tipo array que armazena dois valores, pelo padrão do enum Player 1 vai ser 0, Player 2 1 e etc.
	global.characterObject[CHARACTERS.PLAYER1] = [sprCharacter1, objPlayer1];
	global.characterObject[CHARACTERS.PLAYER2] = [sprCharacter2, objPlayer2];
	
	if (room == 0) global.characterList = ds_list_create();
	if (room == rmMinigame) global.characterMiniGameList = ds_list_create();
	
	//Macro para facilitar a escrita.
	#macro TOTALMEMBERS 2

}