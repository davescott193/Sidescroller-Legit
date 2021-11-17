function scr_loadgame()
{
	if(file_exists("Save.sav"))
	{
		ini_open("Save.sav");
		global.checkpoint_room = ini_read_real("Autosave", "room", Prolouge);
		global.checkpoint_x = ini_read_real("Autosave", "x", 0);
		global.checkpoint_y = ini_read_real("Autosave", "y", 0);
		
		ini_close();
		
		scr_fade_out(global.checkpoint_room, global.checkpoint_x, global.checkpoint_y);
	}
}