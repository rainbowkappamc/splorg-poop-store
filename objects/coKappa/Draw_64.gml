if start == 1 
{
	if state = colstat.START
	{
		state = colstat.SOUNDPLAYING
		talkalter = 0
		rotate = 0
		draw_sprite(sColBack,1,0,0)
		draw_sprite(sColShine,1,683,384)
		draw_sprite(sKappaBig,1,0,0)
		if !audio_is_playing(mmu_collect)
		{
			audio_play_sound(mmu_collect,100,false)
		}
		timetilltalk = 300
	}
	else if state = colstat.SOUNDPLAYING
	{
		timetilltalk -= 1
		draw_sprite(sColBack,1,0,0)
		draw_sprite_ext(sColShine,1,683,384,1,1,rotate,c_white,1)
		draw_sprite(sKappaBig,1,0,0)
		rotate += 1
		if timetilltalk <= 0
		{
			state = colstat.TALKING
			timetilltalk = 300
			audio_play_sound(tKappa,100,false)
		}
	}
	else if state = colstat.TALKING
	{
		timetilltalk -= 1
		draw_sprite(sColBack,1,0,0)
		draw_sprite_ext(sColShine,1,683,384,1,1,rotate,c_white,1)
		draw_sprite(sKappaBig,talkalter,0,0)
		draw_sprite(sColText,3,0,0)
		talkalter += 1
		rotate += 1
		if timetilltalk <= 0
		{
			state = colstat.END
		}
	}
	else if state = colstat.END
	{
		audio_play_sound(mu_poop,10,true,0.5)
		global.lock = 0
		global.collectibles++
		instance_destroy()
	}
}