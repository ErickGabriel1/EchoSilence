 
if (global.current_player == false) && (global.dialogue == false){
	var  tecla_cima = keyboard_check(ord("W"));
	var  tecla_baixo = keyboard_check(ord("S"));
	var  tecla_esquerda = keyboard_check(ord("A"));
	var  tecla_direita = keyboard_check(ord("D"));

	var tecla = tecla_direita - tecla_esquerda != 0 || tecla_baixo - tecla_cima != 0;

	dir = point_direction(0,0,tecla_direita - tecla_esquerda,tecla_baixo - tecla_cima);

	velh = lengthdir_x(velc * tecla,dir);
	velv = lengthdir_y(velc * tecla,dir);
	
	if place_meeting(x + velh, y, obj_wall) || place_meeting(x+velh, y, obj_player2){
		while !place_meeting(x+sign(velh), y, obj_wall) && !place_meeting(x+sign(velh), y, obj_player2) {
			x+=  sign(velh);
		}
		velh = 0;
	}
	
	x+=velh;
	
	if place_meeting(x, y + velv, obj_wall) || place_meeting(x, y + velv, obj_player2){
		while !place_meeting(x, y+sign(velv), obj_wall) & !place_meeting(x, y+sign(velv), obj_player2){
			y+=  sign(velv);
		}
		velv = 0;
	}
 
	
	y+=velv; 
	
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

