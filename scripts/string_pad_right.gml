/// string_pad_right(s:string, char:string, total_length:int):string
var inpStr=string(argument0);
var char=string(argument1);
var length=argument2;
var res=inpStr;
while (string_length(res)<length){
      res+=char;
}
return res;

