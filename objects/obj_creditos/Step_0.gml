if (room == Room3){
 layer_set_visible(layer_credito, true);
}
else{
 layer_set_visible(layer_credito, false);
}

ui_layer_player1 = layer_get_id("profile1_ui");
ui_layer_player2 = layer_get_id("profile2_ui");


layer_set_visible(ui_layer_player1, false);
layer_set_visible(ui_layer_player2, false);