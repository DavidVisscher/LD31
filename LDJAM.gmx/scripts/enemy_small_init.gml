dead = false;
depth = -1000

global.map = mp_grid_create(0,0,room_width/48,room_height/48,48,48);
path = path_add();

mp_grid_add_instances(global.map,obj_ground,1);
mp_grid_path(global.map,path,x,y,obj_player.x,obj_player.y,1);

path_start(path,3,0,false);

updatepath_ticker = 0;