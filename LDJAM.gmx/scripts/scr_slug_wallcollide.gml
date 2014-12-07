vspeed = 0;
move_contact_solid(direction,12);
if(movedir == "left")
{
    movedir = "right";
    x = x+5;
}
else
{
    movedir = "left";
    x = x-5;
}
