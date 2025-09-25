if (keyboard_check_pressed(ord("Q")))
{
    global.current_player = !global.current_player;
}

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

