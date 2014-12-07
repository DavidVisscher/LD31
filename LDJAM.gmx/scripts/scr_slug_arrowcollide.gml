if(other.stuck == false)
{
	if(!dead)
	{
		audio_play_sound(snd_explosion_kill,10,false);
		global.gamescore += 50;
		other.hspeed = other.hspeed * 0.1;
	}
	dead = true;
}
