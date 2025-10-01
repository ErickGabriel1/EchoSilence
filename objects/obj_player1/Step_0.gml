

if (global.current_player == false) && (global.dialogue == false){
    // 1. Declara e zera as velocidades no início
    var velh = 0;
    var velv = 0;
    // As variáveis tecla_cima, tecla_baixo, etc. estão OK
	var tecla_cima = keyboard_check(ord("W"));
    var tecla_baixo = keyboard_check(ord("S"));
    var tecla_esquerda = keyboard_check(ord("A"));
    var tecla_direita = keyboard_check(ord("D"));
    
    // 2. Lógica de Priorização (Mover apenas em 4 direções)
    // velc deve ser a velocidade base (ex: 4)

    // Prioriza o movimento horizontal
    if (tecla_direita) {
        velh = velc; // Assumindo que velc está em uma variável global ou local
		direct = "direita"
    } else if (tecla_esquerda) {
        velh = -velc;
		direct = "esquerda"
    }

    // Só permite movimento vertical se NÃO houver movimento horizontal
    if (velh == 0) {
        if (tecla_baixo) {
            velv = velc;
			direct = "baixo"
        } else if (tecla_cima) {
            velv = -velc;
			direct = "cima"
        }
    } 
    
    // 3. Verifica Colisão Horizontal e move
    if place_meeting(x + velh, y, obj_wall) || place_meeting(x + velh, y, obj_player2) {
        while !place_meeting(x + sign(velh), y, obj_wall) && !place_meeting(x + sign(velh), y, obj_player2) {
            x += sign(velh);
        }
        velh = 0;
    }
    
    x += velh; // Move horizontalmente
    
    // 4. Verifica Colisão Vertical e move
    if place_meeting(x, y + velv, obj_wall) || place_meeting(x, y + velv, obj_player2) {
        while !place_meeting(x, y + sign(velv), obj_wall) & !place_meeting(x, y + sign(velv), obj_player2) {
            y += sign(velv);
        }
        velv = 0;
    }
    
    y += velv; // Move verticalmente
	
#region Direction

    // 1. Define o estado de Animação (Walk vs. Idle)
    // O estado é definido se QUALQUER tecla de movimento está pressionada.
    if (tecla_direita || tecla_esquerda || tecla_cima || tecla_baixo) {
        state = "walk"; 
    } else {
        state = "idle";
    }

    // 2. Lógica de virar o sprite (image_xscale)
    // Isso deve ser feito com o input, pois não é afetado pela colisão.
    if (tecla_direita) { 
        image_xscale = -3;
    } else if (tecla_esquerda) {
        image_xscale = 3;
    }

    // 3. Troca o Sprite (Usa a lógica de PRIORIZAÇÃO do movimento para definir a animação)
    if (state == "walk") {
        // Prioridade Horizontal
        if (tecla_direita || tecla_esquerda) { 
            sprite_index = player1_walk_vertical;
        } 
        // Prioridade Vertical (só é checada se NENHUMA tecla horizontal está pressionada)
        else if (tecla_baixo) { 
            sprite_index = player1_walk_down;
        } else if (tecla_cima) { 
            sprite_index = player1_walk_top;
        }
    } else { // state == "idle"
        // Lógica IDLE (Mantém a direção do sprite anterior)
        if (sprite_index == player1_walk_vertical) {
            sprite_index = player1_idle_vertical;
        } else if (sprite_index == player1_walk_top) {
            sprite_index = player1_idle_top;
        } else if (sprite_index == player1_walk_down) {
            sprite_index = player1_idle_down;
        }
    }


#endregion
	
#region Dialogue
	if distance_to_object(obj_itens) <= 10 {

		if keyboard_check_pressed(ord("E")){
			var _item = instance_nearest(x, y, obj_itens)
			var _dialogue = instance_create_layer(x, y, "Dialogue", obj_dialogue)
			_dialogue.item_name = _item.name;
		}
		
	}
#endregion
	
}
else{
	state = "idle";
}


depth = -y