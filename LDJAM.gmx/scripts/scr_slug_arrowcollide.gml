if(other.stuck == false)
{
    if(!dead)
    {
        audio_play_sound(snd_explosion_kill,10,false);
        global.gamescore += 35;
        other.hspeed = other.hspeed * 0.1;
    }
    hspeed = 0;
    dead = true;
    speed = 0;
}
