
#region PasswordButtonChecker
	// Verifica qual botão foi pressionado
	switch (global.pressioned) {
	    case 0: obj_button_0.image_index = 1; break;
	    case 1: obj_button_1.image_index = 1; break;
	    case 2: obj_button_2.image_index = 1; break;
	    case 3: obj_button_3.image_index = 1; break;
	    case 4: obj_button_4.image_index = 1; break;
	    case 5: obj_button_5.image_index = 1; break;
	    case 6: obj_button_6.image_index = 1; break;
	    case 7: obj_button_7.image_index = 1; break;
	    case 8: obj_button_8.image_index = 1; break;
	    case 9: obj_button_9.image_index = 1; break;
    
	    //LÓGICA DO BOTÃO 10 (APAGAR)
	    case 10:
	        obj_button_10.image_index = 1;
	        if (array_length(global.current_input) > 0) {
	            array_pop(global.current_input); // Remove o último item
	        }
	        break;

	    //LÓGICA DO BOTÃO 11 (ENTER)
	    case 11:
	        obj_button_11.image_index = 1;
           
	        // 2. Compare o array da senha digitada com o array da senha correta
	        var resultado = array_equals(global.current_input, global.senha_correta);

	        // 3. Armazene o resultado em uma variável global
	        global.senha_foi_correta = resultado;

	        // Opcional: Mostra uma mensagem no console para você saber o resultado
	        if (global.senha_foi_correta) {
	            show_debug_message("SENHA CORRETA! Acesso permitido.");
	        } else {
	            show_debug_message("SENHA INCORRETA! Acesso negado.");
	        }
	        break;
        
	    case undefined: image_index = 0; break;
	}

	if (global.pressioned != undefined) {

	    // Só adiciona ao array se for um número entre 0 e 9
	    if (global.pressioned >= 0 && global.pressioned <= 9) {

	        var already_in_list = false;

	        for (var j = 0; j < array_length(global.current_input); j++) {
	            if (global.current_input[j] == global.pressioned) {
	                already_in_list = true;
	                break;
	            }
	        }

	        if (array_length(global.current_input) < 6 && !already_in_list) {
	            array_push(global.current_input, global.pressioned);
	        }
	    }
	}


	global.pressioned = undefined;
	var cursor_over = false;

	// Verifica teclado e mouse
if (keyboard_check(vk_backspace)) {
    global.pressioned = 10; // Botão de apagar
} else if (keyboard_check(vk_enter)) {
    global.pressioned = 11; // Botão de confirmar
} else {
    // Verifica teclas de 0 a 9 e clique nos botões
    for (var i = 0; i < 12; i++) {
        if (keyboard_check(ord("0") + i)) {
            global.pressioned = i;
            break;
        }

        var inst = instance_find(asset_get_index("obj_button_" + string(i)), 0);
        if (instance_exists(inst)) {
            if (point_in_rectangle(mouse_x, mouse_y, inst.bbox_left, inst.bbox_top, inst.bbox_right, inst.bbox_bottom)) {
                cursor_over = true;
                if (mouse_check_button(mb_left)) {
                    global.pressioned = i;
                    break;
                }
            }
        }
    }
}

	// Atualiza cursor
	if (cursor_over) {
	    window_set_cursor(cr_handpoint);
	} else {
	    window_set_cursor(cr_arrow);
	}

#endregion



if (global.senha_foi_correta) {
    layer_destroy("password_gui");
	with (obj_password_area) {
    instance_destroy();
	}
}