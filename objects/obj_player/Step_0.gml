/// @description Insert description here
// You can write your code in this editor
//Get Player Input
var _key_left = keyboard_check(vk_left);
var _key_right = keyboard_check(vk_right);
var _key_up = keyboard_check_pressed(vk_up);

//Calculate movement
var _direction = _key_right - _key_left;
horizontal_velocity = _direction * base_velocity;

vertical_velocity += gravity_var;

if( place_meeting(x,y+1,obj_bland_block) && (_key_up) )
{
    vertical_velocity = -4.0;
}

//Horizontal Collision
if( place_meeting(x+horizontal_velocity, y, obj_bland_block) )
{
    while( !place_meeting(x+ sign(horizontal_velocity), y, obj_bland_block) )
    {
        x = x + sign(horizontal_velocity);
    }
    horizontal_velocity = 0.0;
}

//Vertical Collision

if( place_meeting(x, y+vertical_velocity, obj_bland_block) )
{
    while( !place_meeting (x, y+sign(vertical_velocity), obj_bland_block) )
    {
        y = y + sign(vertical_velocity);
    }

    vertical_velocity = 0.0;
}



//Perform horizontal movement;
x += horizontal_velocity;
y += vertical_velocity;


//ANIMATION

if (!place_meeting(x,y+1,obj_bland_block))
{
	sprite_index = sprite_placeholder_player_4;
	image_speed = 0
}
else
{
	image_speed = 2
	if(horizontal_velocity == 0)
	{
		sprite_index = sprite_placeholder_player_0
	}
	else
	{
		sprite_index = sprite_placeholder_player_1
	}
}

if(horizontal_velocity != 0) 
{
	image_xscale = sign(horizontal_velocity);
}
