/// @description Mini-Game Controls
// You can write your code in this editor

//Não usar o objCharacter já posicionado

if (room == rmMinigame) {

		//Só pode ser ativado quando a pessoa pressiona ou o botão esquerdo ou o direito
		//Mas tá funcionando.
		if (isPlayer) {
			
			var inputFlag = mouse_check_button_pressed(mb_left) || mouse_check_button_pressed(mb_right);
			var flagLift = objFlagCharacter.flagLifted;
			
			var lift = flagLift && inputFlag && !activeFlag;
			var down = !flagLift && activeFlag;
			
			
			
			if (lift) {
				//Colocar isso aqui numa função
				//Checa se a bandeira está ativa, qual foi o botão que a pessoa clicou, cria a bandeira, e coloca na direção certa.
				activeFlag = true;
				playerFlag = mouse_button;
				createFlag = playerFlag == 1 ? objFlagLeft : objFlagRight;
				directionFlag = createFlag == objFlagLeft ? -1 : 1;
				flagScreen = instance_create_layer(x + 50 * directionFlag, y, "instances", createFlag);
				
				var index = ds_list_find_index(global.characterMiniGameList, id);
				instance_destroy(objMasterMiniGame.platformList[|index]);
				
				
			}
			
			if (down) {
				activeFlag = false;
				instance_destroy(flagScreen);
				
			}
			
		
		}
	
		if (!isPlayer) {
			var liftCpu = objFlagCharacter.flagLifted && !activeCpuFlag;
			var downCpu = !objFlagCharacter.flagLifted && activeCpuFlag;
			
			if (liftCpu) {
				
				activeCpuFlag = true;
				var cpuFlag = choose(-1,1);
				var createCpuFlag = cpuFlag == -1 ? objFlagLeft : objFlagRight;
				cpuFlagScreen = instance_create_layer(x + 50 * cpuFlag, y,"instances", createCpuFlag);
		
			}
			
			if (downCpu) {
				activeCpuFlag = false;
				instance_destroy(cpuFlagScreen);
			}
		}
}