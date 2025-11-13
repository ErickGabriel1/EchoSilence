 if initializer == false{ 
	scr_texts();
	initializer =  true; 
 }
 
 if keyboard_check_pressed(vk_anykey) && !keyboard_check_pressed(ord("E")){
	if page<array_length(text)- 1{
	
		page++;
	
	}
	else{
	
	global.dialogue = false;
	instance_destroy();
	
	}
 }