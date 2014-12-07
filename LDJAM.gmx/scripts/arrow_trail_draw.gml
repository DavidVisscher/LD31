if(lifetime <= 0)
{
	instance_destroy();
}
if(type = "triple")
{
	draw_sprite_ext(spr_arrow_whiteout,0,x,y,1,1,direction,make_color_rgb(5+(10*lifetime),5+(10*lifetime),50+(15*lifetime)),255);
}
else
{
	draw_sprite_ext(spr_arrow_whiteout,0,x,y,1,1,direction,make_color_rgb(50+(10*lifetime),50+(10*lifetime),50+(10*lifetime)),255);
}
draw_set_color(make_color_rgb(50+(10*lifetime),50+(10*lifetime),50+(10*lifetime)));

lifetime -= 1;
