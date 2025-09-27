#region Password
	if (keyboard_check_pressed(ord("E"))){
			if (distance_to_object(obj_players) <= 10){
				layer_view = !layer_view;
				layer_set_visible(ui_layer_id, layer_view);
			}
			
	}
	
	else if (distance_to_object(obj_players) > 10){
				layer_view = false;
				layer_set_visible(ui_layer_id, layer_view);
	}
#endregion