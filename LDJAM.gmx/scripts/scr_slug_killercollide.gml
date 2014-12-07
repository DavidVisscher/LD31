if(!dead)
{
    global.levellives -= 1;
    audio_play_sound(snd_alarm,10,false);
    instance_destroy();
}
