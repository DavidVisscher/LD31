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
        do
        {
            var xx,yy;

            xx=random(room_width); //Set random x
            yy=random(room_height); //Set random y
        }
        until place_empty(xx,yy);
        g = instance_create(xx,yy,obj_gem)
    }
}

