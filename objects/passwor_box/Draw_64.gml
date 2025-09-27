// Configura o desenho do texto
draw_set_font(fnt_password); // Sua fonte
draw_set_color(c_white);


var string_para_desenhar = "";
var array_alvo = global.current_input; // Usando seu array global como exemplo
var tamanho = array_length(array_alvo);

// 2. Percorra cada item do array com um loop
for (var i = 0; i < tamanho; i++) {
    
    // 3. Adicione o item atual à string final
    // A função string() garante que o item seja texto, caso seja um número
    string_para_desenhar += string(array_alvo[i]);
    
    // 4. Adicione um separador (espaço), mas APENAS se não for o último item
    if (i < tamanho - 1) {
        string_para_desenhar += " "; // <--- Este é o seu separador!
    }
}

// 5. Agora, desenhe a string limpa que você construiu!
draw_text(x + 350, y + 105, string_para_desenhar);