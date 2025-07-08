randomow = round(random_range(1,10))
if global.lock == 0
{
	global.key_left = keyboard_check(vk_left)
	global.key_right = keyboard_check(vk_right)
	global.key_up = keyboard_check(vk_up)
	global.key_down = keyboard_check(vk_down)
	global.key_jump = keyboard_check_pressed(ord("X"))
	global.key_fast = keyboard_check(ord("Z"))
	if vsp < 16 vsp += grv
	if place_meeting(x,y,oPain) or keyboard_check_pressed(ord("R"))
	{
		global.lock = 1
		deathcooldown = 1
		if randomow = 1 audio_play_sound(ow1,1,false)
		else if randomow = 2 audio_play_sound(ow2,1,false)
		else if randomow = 3 audio_play_sound(ow3,1,false)
		else if randomow = 4 audio_play_sound(ow4,1,false)
		else if randomow = 5 audio_play_sound(ow5,1,false)
		else if randomow = 6 audio_play_sound(ow6,1,false)
		else if randomow = 7 audio_play_sound(ow7,1,false)
		else if randomow = 8 audio_play_sound(ow8,1,false)
		else if randomow = 9 audio_play_sound(ow9,1,false)
		else if randomow = 10 audio_play_sound(ow10,1,false)
	}
	if place_meeting(x,y,oCheckpoint)
	{
		checkpointx = x
		checkpointy = y
	}
	if place_meeting(x,y,SpringPad0)
	{
		audio_play_sound(SonicCD_Jump,10,false);
		if abs(realhsp) > 3 vsp = spring_power*((abs(realhsp)-3)/10+1) else vsp = spring_power
		jumps = 0
	}
	if global.key_right
	{
		if global.key_fast and global.key_right - global.key_left != 0 and hsp >= 3
		{
			if hsp < 6 hsp += 0.05 else if hsp > 6 hsp -= 0.05
		}
		else if global.key_right - global.key_left != 0
		{
			if hsp > 3 hsp -= 0.5 else if hsp < 3 hsp += 0.5
		}
	}
	else if global.key_left
	{
		if global.key_fast and global.key_right - global.key_left != 0 and hsp <= -3
		{
			if hsp > -6 hsp -= 0.05 else if hsp < -6 hsp += 0.05
		}
		else if global.key_right - global.key_left != 0
		{
			if hsp < -3 hsp += 0.5 else if hsp > -3 hsp -= 0.5
		}
	}
	else
	{
		if hsp > 0 hsp -= 1 else if hsp < 0 hsp += 1
	}

	if abs(hsp) < 1 realhsp = 0 else realhsp = hsp

	if place_meeting(x,y+vsp,oWall)
	{
		while !place_meeting(x,y+sign(vsp),oWall)
		{
			y += sign(vsp)
		}
		vsp = 0
		jumps = 1
		wajumdir = 0
	}

	if !place_meeting(x,y+vsp,oWall) and vsp > -1
	{
		x += realhsp
		while !place_meeting(x,y+1,oWall)
		{
			y += 1
			slopecheck2 += 1
		}
		x -= realhsp
		if abs(slopecheck2/realhsp) > 2
		{
			y -= slopecheck2
		}
		slopecheck2 = 0
	}

	if place_meeting(x+realhsp,y,oWall) and realhsp != 0 and (!place_meeting(x,y+vsp,oWall) or vsp == 0)
	{
		x += realhsp
		while place_meeting(x,y-1,oWall)
		{
			y -= 1
			slopecheck += 1
		}
		x -= realhsp
		if abs(slopecheck/realhsp) > 2
		{
			y += slopecheck
			while !place_meeting(x+sign(realhsp),y,oWall)
			{
				x += sign(realhsp)
			}
			realhsp = 0
			hsp = 0
		}
		slopecheck = 0
	}

	if place_meeting(x,y+1,oWall) and global.key_jump and !place_meeting(x,y-7,oWall)
	{
		if abs(realhsp) > 3 vsp = -7*((abs(realhsp)-3)/10+1) else vsp = -7
		jumps = 1
	}
	else if jumps == 1 and global.key_jump and vsp > -3 and place_meeting(x,y+4,oWall) and !place_meeting(x,y-7,oWall)
	{
		if abs(realhsp) > 3 vsp = -7*((abs(realhsp)-3)/10+1) else vsp = -7
		jumps = 0
	}
	else if place_meeting(x+image_xscale,y,oWall) and !place_meeting(x,y+1,oWall) and !place_meeting(x,y-7,oWall) and global.key_jump and wajumdir != image_xscale
	{
		wajumdir = image_xscale
		vsp = -8
		hsp = -4*image_xscale
		realhsp = -4*image_xscale
	}

	if place_meeting(x,y-4,oWall) and !place_meeting (x,y+2,oWall)
	{
		while place_meeting(x,y,oWall) y += 1
	}
	
	x += realhsp;
	y += vsp;
	//grafiks

	if realhsp != 0 image_xscale = sign(realhsp)
	if place_meeting(x,y+1,oWall)
	{
		if realhsp == 0
		{
			sprite_index = sIdle
			image_speed = 1
		}
		else
		{
			image_speed = abs(realhsp) / 3
			sprite_index = sWalk
		}
	}
	else
	{
		sprite_index = sJump_Normal
	}

	// camora

	cx = oTeal.x-(camera_get_view_width(view_camera[0])/2)
	cy = oTeal.y-((camera_get_view_height(view_camera[0])/2)+64)
	cx = clamp(cx, 0, max_view_x)
	cy = clamp(cy, 0, max_view_y)
	camera_set_view_pos(view_camera[0],cx,cy)
}
else if deathcooldown == 1 and !(audio_is_playing(ow1) or audio_is_playing(ow2) or audio_is_playing(ow3) or audio_is_playing(ow4) or audio_is_playing(ow5) or audio_is_playing(ow6) or audio_is_playing(ow7) or audio_is_playing(ow8) or audio_is_playing(ow9) or audio_is_playing(ow10))
{
	x = checkpointx
	y = checkpointy
	hsp = 0
	vsp = 0
	deathcooldown = 0
	global.lock = 0
}
else if deathcooldown == 1
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
	}
	x += hsp;
	if (place_meeting(x,y+1,oWall)) {
		vsp *= -0.7;
		y += vsp;
	}
	if (!place_meeting(x,y+1,oWall))
	{
		vsp += grv;
		y += vsp;
	}
	sprite_index = sDie
	image_speed = (1+abs(vsp/8))
	if hsp != 0 image_speed *= sign(hsp)
}