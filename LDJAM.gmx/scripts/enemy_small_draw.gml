
image_angle = direction;
if(dead == false)
{
	alpha = 255;
}
else
{
	alpha = alpha -6;
	if(alpha <= 0)
	{
		instance_destroy();
	}
}

if(dead == false)
{
	draw_sprite_ext(spr_eyeball,0,x,y,1,1,image_angle,make_color_rgb(alpha,alpha,alpha),alpha);	
}
else
{
	draw_sprite_ext(spr_eyeball,0,x,y,1,1,0,make_color_rgb(alpha,alpha,alpha),alpha);	
}