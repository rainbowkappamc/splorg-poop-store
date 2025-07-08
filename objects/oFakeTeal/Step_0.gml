spring_power = -20;

if global.lock == 0
{
	if place_meeting(x,y,SpringPad0)
	{
		audio_play_sound(SonicCD_Jump,10,false,25/distance_to_object(oTeal))
		if abs(hsp) > 3 vsp = spring_power*((abs(hsp)-3)/10+1) else vsp = spring_power
		hsp = 0;
	}
	if (place_meeting(x+hsp,y,oWall))
	{
		while (!place_meeting(x+sign(hsp),y,oWall))
		{
			x = x + sign(hsp);
		}
		hsp *= -1;
	}
	if (place_meeting(x,y+vsp,oWall))
	{
		while (!place_meeting(x,y+sign(vsp),oWall))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	x += hsp;
	if (place_meeting(x,y+1,oWall)) {
		vsp = -1*jumpheight;
		hsp *= -1
		y += vsp;
		audio_play_sound(sfx_boing,10,false,40/distance_to_object(oTeal))
	}
	if (!place_meeting(x,y+1,oWall))
	{
		vsp += grv;
		y += vsp;
	}

	if hsp != 0 image_xscale = sign(hsp)
}