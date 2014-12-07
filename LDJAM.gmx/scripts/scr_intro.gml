if(fader == 1)
{
audio_play_sound(snd_radar,10,false);
}

if(fader>=119)
{
waiter +=1;
}
if(fader == 239 or keyboard_check(vk_anykey))
{
room_goto(room0);
}

draw_sprite(spr_intro,floor(fader/4),x,y);

if(waiter >= 60 or fader<119)
{
fader += 1;
}
