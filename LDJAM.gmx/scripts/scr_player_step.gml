
//Check for ground
if place_free(x,y+1)
{
	gravity = 0.6;
	gravity_direction = 270;
	in_air = 1;
}
else
{
	gravity = 0;
	gravity_direction = 270;

	if(in_air == 1)
	{
//if just landed
audio_play_sound(snd_land,10,false);
instance_create(x,y+22,obj_landing_cloud);
}
in_air = 0;
}

//check for movement
if(place_free(x-6,y) and keyboard_check(vk_left))
{
	x = x-6;
}
if(place_free(x+6,y) and keyboard_check(vk_right))
{
	x = x+6;
}

if(!place_free(x,y+1))
{
	doublejump_used = false;
	just_jumped = 2;
}

if(!place_free(x,y+1) and keyboard_check(vk_up))
{
	vspeed = -15;
	audio_play_sound(snd_jump,10,false);
	just_jumped = 1
}

if(keyboard_check_released(vk_up) and just_jumped == 1)
{
	just_jumped = 2;
}

if(keyboard_check(vk_up) and just_jumped == 2 and doublejump_used == false)
{
	vspeed = -15;
	audio_play_sound(snd_jump,10,false);
	instance_create(x,y+22,obj_landing_cloud);
	doublejump_used = true;
}


//shooting

//normal arrow
if(keyboard_check(ord("X")) and shoot_cooldown <= 0 and arrow_total > 0)
{
	var arrow = instance_create(x,y,obj_arrow);
	if(lastdir == 0)
	{
		arrow.direction = 180;
	}
	else
	{
		arrow.direction = 0;
	}
	arrow.speed = 15;
	shoot_cooldown = 20;
	arrow_total = arrow_total - 1;
	audio_play_sound(snd_arrow,10,false);
}

//triple shot
if(keyboard_check(ord("C")) and shoot_cooldown <= 0 and arrow_total > 2 and specials >0)
{
	var arrow = instance_create(x,y,obj_arrow);
	if(lastdir == 0)
	{
		arrow.direction = 180;
	}
	else
	{
		arrow.direction = 0;
	}
	arrow.speed = 20;
	arrow.type = "triple";
	var arrow = instance_create(x,y,obj_arrow);
	if(lastdir == 0)
	{
		arrow.direction = 180-15;
	}
	else
	{
		arrow.direction = 0+15;
	}
	arrow.speed = 20;
	arrow.type = "triple";
	var arrow = instance_create(x,y,obj_arrow);
	if(lastdir == 0)
	{
		arrow.direction = 180+15;
	}
	else
	{
		arrow.direction = 0-15;
	}
	arrow.speed = 20;
	arrow.type = "triple";

	shoot_cooldown = 20;
	arrow_total = arrow_total - 3;
	specials -=1;
	audio_play_sound(snd_tripleshot,10,false);
}

shoot_cooldown = shoot_cooldown - 1;

//parallax alterations
background_x[0] = (x/96)*-1
background_x[1] = (x/48)*-1 + 100
background_x[2] = (x/24)*-1 + 190
