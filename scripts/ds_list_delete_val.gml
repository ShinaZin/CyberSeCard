///ds_list_delete_val(id: list, value)
var ident = argument0;
var value = argument1;

var pos = ds_list_find_index(ident, value);
ds_list_delete(ident, pos);
