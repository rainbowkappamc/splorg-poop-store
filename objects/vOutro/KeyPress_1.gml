if cutscenes_wowwies = 1
{
video_close()
room_goto(MainMenu);
}
if cutscenes_wowwies = 2
{
video_close()
game_end()
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
