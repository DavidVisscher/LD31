global.levellives -= 1;
global.gamescore -= 250;
if(global.gamescore < 0)
{
global.gamescore = 0;
}
audio_play_sound(snd_alarm,10,false);
instance_destroy();
