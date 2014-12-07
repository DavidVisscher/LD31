
if(type = "triple")
{
draw_sprite_ext(spr_blue_arrow,0,x,y,1,1,image_angle,c_white,255);
}
else
{
draw_sprite_ext(spr_arrow,0,x,y,1,1,image_angle,c_white,255);
}

if(!stuck)
{
t = instance_create(x,y,obj_arrowtrail); 
t.type = type;
t.direction = image_angle
}
