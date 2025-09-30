if (!global.senha_foi_correta) {
    image_speed = 0;      // para animação
    image_index = 0;      // frame inicial
}
else {
    // Deixa a animação rodando
    image_speed = 1;

    // Se chegou no último frame da sprite, para a animação
    if (image_index >= sprite_get_number(sprite_index) - 1) {
        image_speed = 0;
        image_index = sprite_get_number(sprite_index) - 1; // último frame
    }
}

if (place_meeting(x, y, obj_players)) {
    if (keyboard_check_pressed(ord("E"))){
		room_goto_next();
	}
}