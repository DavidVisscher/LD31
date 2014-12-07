/*
direction = point_direction(x,y,obj_player.x,obj_player.y);
speed = 2
if(!place_free(x,y+16) and place_free(x+5,y) and place_free(x-5,y))
{
    diff_l = abs(180 - point_direction(x,y,obj_player.x,obj_player.y));   
    diff_r = abs(0 - point_direction(x,y,obj_player.x,obj_player.y));
    if(diff_l > diff_r)
    {
        direction = 0;
    }
    else
    {
        direction = 180;
    }
}
*/

if(updatepath_ticker > 60)
{
    path_end();
    mp_grid_path(global.map,path,x,y,obj_player.x,obj_player.y,1);
    path_start(path,3,0,false);
    updatepath_ticker = 0;
}
updatepath_ticker += 1;