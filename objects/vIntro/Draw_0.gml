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
}