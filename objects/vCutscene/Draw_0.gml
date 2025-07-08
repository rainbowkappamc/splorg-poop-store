var _videoData = video_draw()
var _videoStatus = _videoData[0]
if _videoStatus == 0
{
	draw_surface(_videoData[1],0,0)
}
else
{
	if cutscenes_wowwies = 1
	{
	video_close()
	var _videoData = video_close()
	room_goto(Outro)
	}
	if cutscenes_wowwies = 2
	{
	video_close()
	var _videoData = video_close()
	room_goto(Outro)
	}
	else
	{
	
	}
}