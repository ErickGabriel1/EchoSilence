switch (global.pressioned)
{
	case 0:
		obj_button_0.image_index = 1;
		break;
	case 1:
		obj_button_1.image_index = 1;
		break;
	case 2:
		obj_button_2.image_index = 1;
		break;
	case 3:
		obj_button_3.image_index = 1;
		break;
	case 4:
		obj_button_4.image_index = 1;
		break;
	case 5:
		obj_button_5.image_index = 1;
		break;
	case 6:
		obj_button_6.image_index = 1;
		break;
	case 7:
		obj_button_7.image_index = 1;
		break;
	case 8:
		obj_button_8.image_index = 1;
		break;
	case 9:
		obj_button_9.image_index = 1;
		break;

	case undefined:
		image_index = 0;
		break;
}

for (var i = 0; i < 10; i++)
{
	// ord("0") + i vai checar "0", depois "1", "2", etc.
	if (keyboard_check(ord("0") + i))
	{
		global.pressioned = i; // Define a variável global com o número pressionado
		break; // Encontrou uma tecla, pode parar o loop
	}
	else{
		global.pressioned = undefined;	
	}
}