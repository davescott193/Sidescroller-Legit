function scr_savegame()
{
	if (file_exists("Save.sav"))
	{
		file_delete("Save.sav");
	}
	
	ini_open("Save.sav");
	ini_write_real("Autosave", "room", global.checkpoint_room);
	ini_write_real("Autosave", "x", global.checkpoint_x);
	ini_write_real("Autosave", "y", global.checkpoint_y);
	ini_close();
}