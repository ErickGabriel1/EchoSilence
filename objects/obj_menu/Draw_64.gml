draw_set_font(fnt_menu);
draw_set_color(c_white);

var guil = display_get_gui_width();
var guia = display_get_gui_height();

var x1 = guil / 2;
var y2 = guia / 2;

for (var i = 0; i < op_max; i++) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_center);

    if (index == i) {
        draw_set_color(c_lime);
    } else {
        draw_set_color(c_white);
    }

    draw_text(x1, y2 + (100 * i), options[i]);
}

// Restaurar alinhamento padrão para não afetar outros objetos
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);
