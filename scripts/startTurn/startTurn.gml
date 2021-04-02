// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function startTurn(_x, _y)
{
	
	instance_create_layer(_x, _y - 100, "instances", objDice);
	turnStates = turnStates.ROLLINGDICE;

}