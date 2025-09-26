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

if (keyboard_check(ord("0"))){
	global.pressioned = 0;
}

else if (keyboard_check(ord("1"))){
	global.pressioned = 1;
}

else if (keyboard_check(ord("2"))){
	global.pressioned = 2;
}

else if (keyboard_check(ord("3"))){
	global.pressioned = 3;
}

else if (keyboard_check(ord("4"))){
	global.pressioned = 4;
}

else if (keyboard_check(ord("5"))){
	global.pressioned = 5;
}

else if (keyboard_check(ord("6"))){
	global.pressioned = 6;
}

else if (keyboard_check(ord("7"))){
	global.pressioned = 7;
}

else if (keyboard_check(ord("8"))){
	global.pressioned = 8;
}

else if (keyboard_check(ord("9"))){
	global.pressioned = 9;
}

else{
	global.pressioned = undefined;	
}