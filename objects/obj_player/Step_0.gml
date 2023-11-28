/// @description Insert description here
// You can write your code in this editor

delta_x = keyboard_check(vk_right) - keyboard_check(vk_left);
delta_x = delta_x * movement_speed;

if place_meeting(x,y+2,obj_bland_block)
{
	delta_y = 0;
	if keyboard_check(vk_up) delta_y = -jump_speed;
}

else if delta_y<10
{
	delta_y += 10;
}

move_and_collide(-1,-1,obj_bland_block);

if (delta_x != 0) image_xscale = sign(delta_x)*4;