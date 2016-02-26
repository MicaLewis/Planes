///Mouse Clicks

if( mouse_check_button_pressed(mb_left)){
    if(!keyboard_check(vk_shift)){
        ds_list_clear(selected);
    }
    for(i = 0; i < ds_list_size(planes); i++){
        inst = ds_list_find_value(planes, i)
        if(inst.dead){
            ds_list_delete(planes, i)
        } else if( point_distance(inst.x, inst.y, mouse_x, mouse_y) < 5 ){
            ds_list_add(selected, inst);
        }
    }
}

if(mouse_check_button_pressed(mb_right)){
    for(i = 0; i < ds_list_size(selected); i++){
        inst = ds_list_find_value(selected, i)
        
        if(inst.trgt == noone){
            inst.trgt = instance_create(mouse_x, mouse_y, Target)
        } else if(!keyboard_check(vk_shift)) {
            clear_targets(inst.trgt)
            inst.trgt = noone
            inst.trgt = instance_create(mouse_x, mouse_y, Target)
        } else {
            var t = inst.trgt
            while(t.next != noone){
                t = t.next
            }
            t.next = instance_create(mouse_x, mouse_y, Target)
        }
    }
}

if(keyboard_check_pressed(vk_space)){
    global.pause = !global.pause;
}
