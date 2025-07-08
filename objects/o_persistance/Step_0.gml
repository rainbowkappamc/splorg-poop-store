f11_key = keyboard_check_pressed(vk_f11);
escape_key = vk_escape;

if (f11_key && global.build == "PC")
{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
        window_set_fullscreen(true);
    }
}

if keyboard_check_pressed(escape_key)
{
	room_goto(MainMenu);
}

{
    if window_get_fullscreen()
    {
        window_set_fullscreen(false);
    }
    else
    {
        window_set_fullscreen(true);
    }
}