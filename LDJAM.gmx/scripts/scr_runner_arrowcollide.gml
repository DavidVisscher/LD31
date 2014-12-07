if(other.stuck == false)
{
    if(!dead)
    {
        audio_play_sound(snd_explosion_kill,10,false);
        global.gamescore += 60;
        other.hspeed = other.hspeed * 0.5;
    }
    dead = true;
    speed = 0;
}
