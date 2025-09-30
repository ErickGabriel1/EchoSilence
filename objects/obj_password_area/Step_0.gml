#region Password
	if (keyboard_check_pressed(ord("E"))){
			if (distance_to_object(obj_players) <= 10){
				global.layer_view = !global.layer_view;
				layer_set_visible(ui_layer_id, global.layer_view);
			}
			
	}
	
	else if (distance_to_object(obj_players) > 10){
				global.layer_view = false;
				layer_set_visible(ui_layer_id, global.layer_view);
	}
#endregion