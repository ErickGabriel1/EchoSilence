if (keyboard_check_pressed(vk_enter)){
	switch (index){
		case 0:
			room_goto_next();
			break;
		case 1:
			room_goto(Room3);
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

ui_layer_player1 = layer_get_id("profile1_ui");
ui_layer_player2 = layer_get_id("profile2_ui");


layer_set_visible(ui_layer_player1, false);
layer_set_visible(ui_layer_player2, false);