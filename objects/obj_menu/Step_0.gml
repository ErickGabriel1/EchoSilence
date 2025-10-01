if (keyboard_check_pressed(vk_enter)){
	switch (index){
		case 0:
			room_goto_next();
			break;
		case 2:
			game_end()
			break;
	}
}

if (keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))){
	index++;
	if(index >= op_max){
		index = 0;	
	}
}

if (keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))){
	index--;
	if(index < 0){
		index = op_max-1;	
	}
}