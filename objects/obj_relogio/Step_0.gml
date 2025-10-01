// Inicia a sequência quando o player interage e não está tocando
if (!tocando_ativo && distance_to_object(obj_player1) <= 10 ){
if (keyboard_check_pressed(ord("E"))) {
    tocando_ativo = true;
	tocou = 0; // zera contador
}
}

// Executa os toques sequenciais automaticamente
if (tocando_ativo) {
    // só toca o próximo quando o anterior terminar
    if (!audio_is_playing(som_obj)) {
        audio_play_sound(som_obj, 1, false);
        tocou += 1;
        
        // Se já tocou todas as vezes
        if (tocou >= toques_restantes) {
            tocando_ativo = false; // sequência terminou
        }
    }
}
