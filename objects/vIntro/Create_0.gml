cutscenedata = global.cutscenedata
chapterdata	= global.chapterdata

cutscenes_wowwies = cutscenedata;


if chapterdata = -1 
{
	room_goto(MainMenu) 
}
else
{
	
}

if global.cutscenedata = 0 
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

//cutscenes
if cutscenes_wowwies = 1
{
	video = video_open("wowwies/intro_splorgspoop.mp4")
	video_enable_loop(false)
}
if cutscenes_wowwies = 2
{
	video = video_open("original/intr.mp4")
	video_enable_loop(false)
}
else
{
	video = video_open("other/IMG_2547.mp4")  //this should play the placeholder tracker video
	video_enable_loop(false)
}