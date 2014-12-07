draw_sprite_ext(spr_arrow,0,x,y,1,1,image_angle,c_olive,255);

if(!stuck)
{
	t = instance_create(x,y,obj_arrowtrail); 
	t.direction = image_angle
}
