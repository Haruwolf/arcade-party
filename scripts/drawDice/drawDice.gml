// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drawDice(numberColor){
	
	//Alinhar ao centro e escolher a fonte.
	draw_set_valign(fa_middle);
	draw_set_halign(fa_middle);
	draw_text_color(x,y,numberChoice,numberColor,numberColor,numberColor,numberColor,1);
	draw_set_font(ftDice);
	return;

}