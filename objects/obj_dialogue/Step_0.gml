 if initializer == false{ 
	scr_texts();
	initializer =  true; 
 }
 
 if mouse_check_button_pressed(mb_left){
	if page<array_length(text)- 1{
	
		page++;
	
	}
	else{
	
	global.dialogue = false;
	instance_destroy();
	
	}
 }