
switch (global.pressioned) {
    case 0: obj_button_0.image_index = 1; break;
    case 1: obj_button_1.image_index = 1; break;
    case 2: obj_button_2.image_index = 1; break;
    case 3: obj_button_3.image_index = 1; break;
    case 4: obj_button_4.image_index = 1; break;
    case 5: obj_button_5.image_index = 1; break;
    case 6: obj_button_6.image_index = 1; break;
    case 7: obj_button_7.image_index = 1; break;
    case 8: obj_button_8.image_index = 1; break;
    case 9: obj_button_9.image_index = 1; break;
    case undefined: image_index = 0; break;
}

global.pressioned = undefined;
var cursor_over = false;

for (var i = 0; i < 10; i++) {
    if (keyboard_check(ord("0") + i)) {
        global.pressioned = i;
		global.current_input += string(i);
        break;
    }

    var inst = instance_find(asset_get_index("obj_button_" + string(i)), 0);
    if (instance_exists(inst)) {
        if (point_in_rectangle(mouse_x, mouse_y, inst.bbox_left, inst.bbox_top, inst.bbox_right, inst.bbox_bottom)) {
            cursor_over = true;
            if (mouse_check_button(mb_left)) {
                global.pressioned = i;
                break;
            }
        }
    }
}

if (cursor_over) {
    window_set_cursor(cr_handpoint);
} else {
    window_set_cursor(cr_arrow);
}

