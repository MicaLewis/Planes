list = argument0
dmg = argument1

for(i = 0; i < ds_list_size(list); i ++){
    inst = ds_list_find_value(list, i)
    inst.hlth = max(inst.hlth - dmg, 0)
}
