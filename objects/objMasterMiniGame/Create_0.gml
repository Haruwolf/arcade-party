/// @description Insert description here
// You can write your code in this editor

addCharacter(0, objPosPlayer1.x, objPosPlayer1.y);
addCharacter(1, objPosPlayer2.x, objPosPlayer2.y);

platformList = ds_list_create();

ds_list_add(platformList, objPlatformA);
ds_list_add(platformList, objPlatformB);