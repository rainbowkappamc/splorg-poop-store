cutscenedata = global.cutscenedata
chapterdata	= global.chapterdata

if cutscenedata = 0 
{
	//debug
	//cutscenedata = 0 //force the value for testing
	show_debug_message(cutscenedata)
	show_message(cutscenedata); //show message to show that value has been read
}
else
{
   //load normally
}

if global.collectibles >= 3
{
	video = video_open("wowwies/test.mp4")
	cutscenes_wowwies = 100;
}
else if global.collectibles__global < 3
{
	global.cutscenes_wowwies = cutscenedata
	cutscenes_wowwies = global.cutscenes_wowwies

	//cutscenes
	if cutscenes_wowwies = 1
	{
		video = video_open("wowwies/cutscene_splorgspoop.mp4")
		video_enable_loop(false)
	}
	if cutscenes_wowwies = 2
	{
		video = video_open("original/cutscene.mp4")
		video_enable_loop(false)
	}
	if cutscenes_wowwies = 3
	{
		video = video_open("wowwies/test.mp4")
		video_enable_loop(false)
	}
	
	else
{

}

}