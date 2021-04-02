
function addCharacter(playerIndex, xPos, yPos){
	
		//Show_debug_message(actualSpriteObject[1]);
		//Cria uma lista temporária para armazenar os dados dos players
		var spriteObjectList = ds_list_create();
		
		//Adiciona na lista o dado do player que entrou
		ds_list_add(spriteObjectList,global.characterObject[playerIndex]);
		
		//Armazena em uma variável o valor do index 0 da lista.
		var actualSpriteObject = spriteObjectList[|0];

		//Cria um novo jogador usando o segundo valor da variável que foi armazenada.
		var insertPlayer = instance_create_layer(xPos, yPos, "instances", actualSpriteObject[1]);
		
		//Muda o index do sprite que foi criado para o primeiro valor da lista. (Ver ds_list_add em caso de duvida)
		insertPlayer.sprite_index = actualSpriteObject[0];
		
		//Adiciona o Player1 ou Player2 na lista de jogadores.
		if (room == rmBoard) ds_list_add(global.characterList,insertPlayer);
		if (room == rmMinigame) ds_list_add(global.characterMiniGameList,insertPlayer);
		
		return;
	
		

}