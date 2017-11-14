///show_message_box(text:str, sprite:img, color)
//
// Copyright Simon Donkers 27-1-2005
// www.simondonkers.com - gmmentor@simondonkers.com
//
// argument0 is the text to draw
// argument1 is the sprite of the speaker
// argument2 is the color of the text
//
/////////////////////////////////////////////////////
str:= argument0;
brush_color:= c_gray; //background color of the menu box
font_color:= argument2; //text color
font_size:= 18; //text size

if sprite_get_height(argument1)<string_height_ext(argument0, -1, view_wview[0]-sprite_get_width(argument1)-50) and string_height_ext(argument0,-1, view_wview[0]-sprite_get_width(argument1)-50) < view_hview[0]-40 then
{
        height:= string_height_ext(argument0,-1, view_wview[0]-sprite_get_width(argument1)-50);
}
if sprite_get_height(argument1) >string_height_ext(argument0, -1,view_wview[0] - sprite_get_width(argument1) - 50) then
{
        height:= sprite_get_height(argument1);
}
if string_height_ext(argument0,-1, view_wview[0] - sprite_get_width(argument1) - 50) >view_hview[0] -40 then
{
        height:= view_hview[0]-40;
}
while argument0!= ''
{
        str:= argument0;
        //if message is smaller then the screen
        if string_height_ext(argument0, -1, view_wview[0] - sprite_get_width(argument1) - 50) < view_hview[0]-40 then
        {
                str:= argument0;
                argument0:= '';
        }
        else
        {
                i:= string_length(argument0);
                while string_height_ext(str, -1, view_wview[0] - sprite_get_width(argument1) - 50) > view_hview[0]-40
                {
                        str:= string_copy(str,0,i-1);
                        i-= 1;
                }
                while string_char_at(str,string_length(str))!= ' '
                {
                        str:= string_copy(str, 0, string_length(str) - 1);
                }
                argument0:= string_copy(argument0, string_length(str) + 1, string_length(argument0) - string_length(str));
        }
        draw_rectangle(10, view_hview[0] -30 -height, view_wview[0]-10, view_hview[0]- 10,true);//false?
        draw_sprite(argument1,-1, 20,view_hview[0] -20-height);
        font_align:= fa_left;
        draw_text_ext(sprite_get_width(argument1) + 30,view_hview[0]- 20-height,str, -1,view_wview[0]-sprite_get_width(argument1)-50);
        //screen_refresh();
        io_clear();
        //keyboard_wait();
}
