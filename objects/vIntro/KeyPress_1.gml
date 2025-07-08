if cutscenes_wowwies = 1
	{
	video_close()
	room_goto(Poop1)
	}
	if cutscenes_wowwies = 2
	{
	video_close()
	room_goto(Poop1)
	}
	if cutscenes_wowwies = 0
	{
	video_close()
	room_goto(Room1)
	}
	else
	{
	 // nothing should happen if there's no value internally.	
	}