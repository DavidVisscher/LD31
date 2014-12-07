vspeed = 0;
move_contact_solid(270,12);
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
