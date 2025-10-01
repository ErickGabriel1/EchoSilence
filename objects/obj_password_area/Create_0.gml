ui_layer_id = layer_get_id("password_gui");
global.layer_view = false;
global.menu_desativado = false;
layer_set_visible(ui_layer_id, global.layer_view);

if (ui_layer_id != -1) {

	layer_depth(ui_layer_id, -100000);

}