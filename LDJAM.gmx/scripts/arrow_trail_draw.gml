if(lifetime <= 0)
{
	instance_destroy();
}
draw_sprite_ext(spr_arrow_whiteout,0,x,y,1,1,direction,make_color_rgb(50+(10*lifetime),50+(10*lifetime),50+(10*lifetime)),255);
lifetime -= 1;