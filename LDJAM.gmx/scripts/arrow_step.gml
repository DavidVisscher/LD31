if(!stuck)
{
	if(place_free(x,y+1))
	{
		gravity= 0.1;
		gravity_direction = 270;
	}
	else
	{
		gravity=0;
		gravity_direction = 270;
	}

	image_angle = direction;
}
else
{
	speed = 0;
	gravity = 0;
	stuck = true;
}
/*
emitter1 = part_emitter_create(global.particle1);
part_emitter_region(global.particle1,emitter1,x,x,y,y,0,0);
part_emitter_stream(global.particle1,emitter1,global.particle1,10);
*/
