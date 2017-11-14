///ds_list_mul_elems(id: list)
var ident = argument0;
  
var res = 1;
for (var i=0; i<ds_list_size(ident);i++){
  res *= ds_list_find_value(ident,i);
}
if res == 1 || ds_list_size(ident)==1
  return 0;
return res;
