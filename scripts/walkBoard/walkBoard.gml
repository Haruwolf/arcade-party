// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function walkBoard(){

		if (walkSpeed == 0)
				{
				
				//show_debug_message(characterArray);
				x = objMaster.spaceList[|characterSpace].x;
				y = objMaster.spaceList[|characterSpace].y + blockHeight;
				
				
				if (numberRolled > 0)
				{
					if (characterSpace < ds_list_size(objMaster.spaceList) - 1)
					{
						characterSpace += 1
						numberRolled--;
						walkSpeed = 30;
						
					}
					
					else
					{
						walkSpeed = 30;
						characterSpace = 0;
						
					}
					
					
				}
				
				if (numberRolled == 0)
				{
				
					turnStates = turnStates.ENDTURN;
				}
				}
				
				if (walkSpeed > 0) walkSpeed--;
}