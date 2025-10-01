//Variavel para definir qual o player atual
//False: player1
//True: player2
global.current_player = false;
 
//Variável para definir se o diálogo está ativo
global.dialogue = false;

ui_layer_player1 = layer_get_id("profile1_ui");
ui_layer_player2 = layer_get_id("profile2_ui");


layer_set_visible(ui_layer_player1, true);
layer_set_visible(ui_layer_player2, false);

