if(true)
{
    if(random_range((global.gamescore/20),1000) > 990)
    {
        if(global.gamescore < 500)
        {
            e = instance_create(random_range(x-50,x+50),y,choose(obj_enemy_runner,obj_enemy_slug));
        }
        else
        {
            e = instance_create(random_range(x-50,x+50),y,choose(obj_enemy_small,obj_enemy_runner,obj_enemy_slug));
        }
    }
    
    if(random_range((global.gamescore/20),1000) > 998)
    {
        rand_x = random_range(x,room_width);
        rand_y = random_range(y,room_height);
        
        if(place_free(rand_x,rand_y))
        {
            g = instance_create(rand_x,rand_y,obj_gem)
        }
    }
}

