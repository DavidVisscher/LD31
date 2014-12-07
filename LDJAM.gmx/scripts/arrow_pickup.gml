if(stuck)
{
	with(other)
	{
		arrow_total = arrow_total + 1;
	}
	audio_play_sound(snd_pickup_arrow,10,false);
	instance_destroy();
}
