controller = argument0
value = argument1

ds_list_delete(controller.selected, ds_list_find_index(controller.selected, value))
ds_list_delete(controller.planes, ds_list_find_index(controller.planes, value))
