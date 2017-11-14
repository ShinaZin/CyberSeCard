///show_message_floating(x, y, text, show_time, fade_time, color, [scale] )
var _x = argument[0];
var _y = argument[1];
var _ob= instance_create(_x,_y,objTextDrawer);
_ob.text = argument[2];
_ob.show_time = argument[3];
_ob.fade_time = argument[4];
_ob.color = argument[5];
_ob.alarm[0]= _ob.show_time

if (argument_count == 7)
  _ob.scale = argument[6]
else _ob.scale = 1;
