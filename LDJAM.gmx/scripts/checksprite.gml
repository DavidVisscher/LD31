var top,bottom,left,right;

if(place_free(x-sprite_width,y))
{
left = false;
}
else
{
left = true;
}

if(place_free(x+sprite_width,y))
{
right = false;
}
else
{
right = true;
}

if(place_free(x,y-sprite_width))
{
top = false;
}
else
{
top = true;
}

if(place_free(x,y+sprite_width))
{
bottom = false;
}
else
{
bottom = true;
}

if((!top) and (!bottom) and (!left) and (!right))
{
tile_number = 0;
}
if((top) and (!bottom) and (!left) and (!right))
{
tile_number = 1;
}
if((!top) and (!bottom) and (!left) and (right))
{
tile_number = 2;
}
if((top) and (!bottom) and (!left) and (right))
{
tile_number = 3;
}
if((!top) and (bottom) and (!left) and (!right))
{
tile_number = 4;
}
if((top) and (bottom) and (!left) and (!right))
{
tile_number = 5;
}
if((!top) and (bottom) and (!left) and (right))
{
tile_number = 6;
}
if((top) and (bottom) and (!left) and (right))
{
tile_number = 7;
}
if((!top) and (!bottom) and (left) and (!right))
{
tile_number = 8;
}
if((top) and (!bottom) and (left) and (!right))
{
tile_number = 9;
}
if((!top) and (!bottom) and (left) and (right))
{
tile_number = 10;
}
if((top) and (!bottom) and (left) and (right))
{
tile_number = 11;
}
if((!top) and (bottom) and (left) and (!right))
{
tile_number = 12;
}
if((top) and (bottom) and (left) and (!right))
{
tile_number = 13;
}
if((!top) and (bottom) and (left) and (right))
{
tile_number = 14;
}
if((top) and (bottom) and (left) and (right))
{
tile_number = 15;
}


