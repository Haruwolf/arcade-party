
var diceColor;

switch(diceStates)
{
	case diceStates.ROLLING:
	{
		//Dado irá ficar rolando com vários numeros aparecendo.
		diceColor = blackColor;
		numberChoice = irandom_range(1,10);
		draw_self();
		drawDice(diceColor);
		break;
	}
	
	case diceStates.ROLLED:
	{
		//Ao clicar no dado, ele já irá para o próximo estado e pegará o numero escolhido
		diceStates = diceStates.DESTROY;
		numberChoice = choose(1,2,3,4,5,6,7,8,9,10);
		//show_debug_message(numberChoice);
		diceColor = whiteColor;
		drawDice(diceColor);
		break;
	}
	
	case diceStates.DESTROY:
	{
		//Passa o dado para o próximo turno e destrói esse que foi feito.
		diceStates = diceStates.NODICE;
		draw_text_color(x,y,numberChoice,whiteColor,whiteColor,whiteColor,whiteColor,1);
		instance_destroy(objDice);
		break;
		
	}
	
	default:
		break;
}
