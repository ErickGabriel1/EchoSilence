#region Passwords
	switch (room){
	case Room1: 
	    global.senha_correta = ["1", "3", "7"];
		break;
	case Room2:
		
		global.senha_correta = ["1", "2", "4"];
		break;
	}
	
#endregion

if (global.senha_foi_correta) {
	global.current_input = [];
}