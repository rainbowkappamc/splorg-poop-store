
if file_exists("other/Save.sav"){
    ini_open("other/Save.sav")
    startRoom = ini_read_real("Save1","room", Intro);
    startx = ini_read_real("Save1","x",0);
    starty = ini_read_real("Save1","y",0);
	global.collectibles = ini_read_real("Save1","collectible_total", 0);
    ini_close();
} 

if	!file_exists("other/Save.sav"){
    startRoom = Intro;
	global.collectibles = 0;
} 

if file_exists("other/cutscenedata.ini"){
	ini_open("other/cutscenedata.ini");
	global.cutscenedata = ini_read_real("Values", "CutsceneData", 0);
	global.chapterdata = ini_read_real("Values", "ChapterData", 0);
}

global.build = "PC";