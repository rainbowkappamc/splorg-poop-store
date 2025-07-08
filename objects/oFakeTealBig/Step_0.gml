if global.lock == 0
{
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
		y += vsp;
		audio_play_sound(sfx_boing,10,false,40/distance_to_object(oTeal),0,0.5)
	}
	if (!place_meeting(x,y+1,oWall))
	{
		vsp += grv;
		y += vsp;
	}

	if hsp != 0 image_xscale = sign(hsp)
}