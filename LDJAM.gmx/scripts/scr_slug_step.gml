if(!dead)
{
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
	if(place_free(x-1,y) and movedir == "left")
	{
	x = x-1;
	}
	else
	{
		movedir = "right";
	}
	if(place_free(x+1,y) and movedir == "right")
	{
	x = x+1;
	}
	else
	{
		movedir = "left";
	}
}
