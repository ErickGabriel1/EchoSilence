#region AlternarPlayer
if (global.dialogue == false) {
    if (keyboard_check_pressed(ord("Q"))) {
        // Troca o player, mas só se a outra instância existir
        if (global.current_player == false && instance_exists(obj_player2)) {
            global.current_player = true;
        }
        else if (global.current_player == true && instance_exists(obj_player1)) {
            global.current_player = false;
        }
    }
	
}



	layer_set_visible(ui_layer_player1, false);
	layer_set_visible(ui_layer_player2, false);
	
	if (global.current_player == false){
		layer_set_visible(ui_layer_player1, true);
		layer_set_visible(ui_layer_player2, false);
	}
	else{
		layer_set_visible(ui_layer_player1, false);
		layer_set_visible(ui_layer_player2, true);
	}


#endregion

#region Camera
	switch (global.current_player) 
	{
	    // Caso o personagem ativo seja o 1
	    case false:
	        // Primeiro, verificamos se a instância do jogador 1 existe para evitar erros
	        if (instance_exists(obj_player1))
	        {
	            // Define o alvo da câmera [0] (a câmera padrão) para a instância obj_player1
	            camera_set_view_target(view_camera[0], obj_player1);
	        }
	        break; // Termina a verificação

	    // Caso o personagem ativo seja o 2
	    case true:
	        // Verificamos se a instância do jogador 2 existe
	        if (instance_exists(obj_player2))
	        {
	            // Define o alvo da câmera [0] para a instância obj_player2
	            camera_set_view_target(view_camera[0], obj_player2);
	        }
	        break; // Termina a verificação

	    // Você pode adicionar mais 'cases' para mais personagens (case 3, case 4, etc.)
	}
#endregion

#region DialogueVerify
	if instance_exists(obj_dialogue){

		global.dialogue = true;

	}
	else
	{
		global.dialogue = false;
	}
#endregion
