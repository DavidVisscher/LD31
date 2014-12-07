if(other.stuck == false)
{
if(!dead)
{
audio_play_sound(snd_explosion_kill,10,false);
global.gamescore += 75;
other.speed = other.speed * 0.8;
}
path_end();
dead = true;
}
