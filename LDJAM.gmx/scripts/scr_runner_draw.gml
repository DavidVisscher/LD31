if(dead)
{
	deadness -= 4;
	if(deadness <= 0)
	{
		instance_destroy();
	}
}
else
{
	deadness = 255;
}

if(movedir == "left")
{
	draw_sprite_ext(spr_runner_mirror,image_index,x,y,1,1,0,make_color_rgb(deadness,deadness,deadness),deadness);
}
else
{
	draw_sprite_ext(spr_runner,image_index,x,y,1,1,0,make_color_rgb(deadness,deadness,deadness),deadness);
}
