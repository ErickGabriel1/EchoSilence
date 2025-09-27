// Configura o desenho do texto
draw_set_font(fnt_dialogue); // Sua fonte
draw_set_color(c_white);

// Desenha o texto na posição X/Y do objeto, que é a posição dele no Flex Panel
draw_text(x+350, y+125, global.current_input);