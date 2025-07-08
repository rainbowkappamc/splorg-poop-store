if place_meeting(x,y,oTeal) and global.lock == 0
{
	audio_pause_sound(mu_poop)
	global.lock = 1
	start = 1
}
if oTeal.x - x != 0 image_xscale = -1*sign(oTeal.x - x)