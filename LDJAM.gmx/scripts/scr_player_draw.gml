
//direction & env checking
if(keyboard_check(vk_left) and !place_free(x,y+1))
{
	draw_sprite_ext(spr_player,image_index,x,y,1,1,0,c_white,255);
	lastdir = 0;
}
else if(keyboard_check(vk_right) and !place_free(x,y+1))
{
	draw_sprite_ext(spr_player_mirror,image_index,x,y,1,1,0,c_white,255);
	lastdir = 1;
}
else if(keyboard_check(vk_left) and place_free(x,y+1))
{
	draw_sprite_ext(spr_player,2,x,y,1,1,0,c_white,255);
	lastdir = 0;
}
else if(keyboard_check(vk_right) and place_free(x,y+1))
{
	draw_sprite_ext(spr_player_mirror,2,x,y,1,1,0,c_white,255);
	lastdir = 1;
}
else if(lastdir == 0 and place_free(x,y+1))
{
	draw_sprite_ext(spr_player,2,x,y,1,1,0,c_white,255);
	lastdir = 0;
}
else if(place_free(x,y+1))
{
	draw_sprite_ext(spr_player_mirror,2,x,y,1,1,0,c_white,255);
	lastdir = 1;
}
else if(lastdir == 0)
{
	draw_sprite_ext(spr_player,0,x,y,1,1,0,c_white,255);
	lastdir = 0;
}
else
{
	draw_sprite_ext(spr_player_mirror,0,x,y,1,1,0,c_white,255);	
	lastdir = 1;
}


//draw arrow
if(lastdir = 1 and shoot_cooldown <= 0 and arrow_total > 0)
{
	draw_sprite_ext(spr_arrow,0,x+8,y+3,1,1,0,c_white,255);
}
else if(lastdir = 0 and shoot_cooldown <= 0 and arrow_total > 0)
{
	draw_sprite_ext(spr_arrow,0,x-8,y+3,1,1,180,c_white,255);
}