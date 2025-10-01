// Inicia a sequência quando o player interage e não está tocando
if (!tocando_ativo && (place_meeting(x, y, obj_player1) || place_meeting(x, y, obj_player2)) && keyboard_check_pressed(ord("E"))) {
    tocando_ativo = true;
    tocou = 0; // zera contador
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
