function scr_texts(){
	switch item_name{
		case "item1":
			text[0] = "Do menor ao maior, o caminho se revela. Pressione 'Q' para trocar de jogador";
			break;
			
		case "item2":
			if (global.current_player == false){
				text[0] = "Não consigo entender esses símbolos...";
			}
			else{
				text[0] = "7";
			}
			break;
		case "item3":
			if (global.current_player == false){
				text[0] = "Não consigo entender esses símbolos...";
			}
			else{
				text[0] = "1";
			}
			break;
		case "item4":
			if (global.current_player == false){
				text[0] = "Não consigo entender esses símbolos...";
			}
			else{
				text[0] = "3";
			}
			break;
		case "item5":
			text[0] = "O ritmo guia os passos para frente.";
			break;
	}
}