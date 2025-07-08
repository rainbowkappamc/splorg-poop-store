if cutscenes_wowwies = 1
	{
	video_close()
	room_goto(Outro)
	var _videoData = video_close()
	}
	if cutscenes_wowwies = 2
	{
	var _videoData = video_close()
	video_close()
	room_goto(Outro)
	}
	if cutscenes_wowwies = 0
	{
	var _videoData = video_close()
	video_close()
	room_goto(Outro)
	}
	else
	{
	 // nothing should happen if there's no value internally.	
	}