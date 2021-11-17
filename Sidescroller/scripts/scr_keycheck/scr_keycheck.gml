/// @function scr_keycheck(key);
/// @param {keycode} key the key who's keycode will convert to a string
function scr_keycheck(key)
{
//Checks the given key and returns it as a string. Also detects vk_constants.
// vk_constants
//Left
if key = (vk_left)
{
    return "Left arrow";
}

//Mouse button right
if key = (mb_right)
{
    return "Right mouse";
}

//Mouse button left
if key = (mb_left)
{
    return "Left mouse";
}

//Right
if key = (vk_right)
{
    return "Right arrow";
}

//Up
if key = (vk_up)
{
    return "Up arrow";
}

//Down
if key = (vk_down)
{
    return "Down arrow";
}

//Enter
if key = (vk_enter)
{
    return "Enter";
}

//Escape
if key = (vk_escape)
{
    return "Escape";
}

//Space
if key = (vk_space)
{
    return "Space bar";
}

//Shift
if key = (vk_shift)
{
    return "Shift";
}

//Control
if key = (vk_control)
{
    return "Control";
}

//Alt
if key = (vk_alt)
{
    return "Alt";
}

//Backspace
if key = (vk_backspace)
{
    return "Backspace";
}

//Tab
if key = (vk_tab)
{
    return "Tab";
}

//Home
if key = (vk_home)
{
    return "Home";
}

//End
if key = (vk_end)
{
    return "End";
}

//Delete
if key = (vk_delete)
{
    return "Delete";
}

//Insert
if key = (vk_insert)
{
    return "Insert";
}

//Page Up
if key = (vk_pageup)
{
    return "Page Up";
}

//Page Down
if key = (vk_pagedown)
{
    return "Page Down";
}

//Pause
if key = (vk_pause)
{
    return "Pause";
}

//Printscreen
if key = (vk_printscreen)
{
    return "Printscreen";
}

//F1
if key = (vk_f1)
{
    return "F1";
}

//F2
if key = (vk_f2)
{
    return "F2";
}

//F3
if key = (vk_f3)
{
    return "F3";
}

//F4
if key = (vk_f4)
{
    return "F4";
}

//F5
if key = (vk_f5)
{
    return "F5";
}

//F6
if key = (vk_f6)
{
    return "F6";
}

//F7
if key = (vk_f7)
{
    return "F7";
}

//F8
if key = (vk_f8)
{
    return "F8";
}

//F9
if key = (vk_f9)
{
    return "F9";
}

//F10
if key = (vk_f10)
{
    return "F10";
}

//F11
if key = (vk_f11)
{
    return "F11";
}

//F12
if key = (vk_f12)
{
    return "F12";
}

//Numpad 0
if key = (vk_numpad0)
{
    return "Numpad 0";
}

//Numpad 1
if key = (vk_numpad1)
{
    return "Numpad 1";
}

//Numpad 2
if key = (vk_numpad2)
{
    return "Numpad 2";
}

//Numpad 3
if key = (vk_numpad3)
{
    return "Numpad 3";
}

//Numpad 4
if key = (vk_numpad4)
{
    return "Numpad 4";
}

//Numpad 5
if key = (vk_numpad5)
{
    return "Numpad 5";
}

//Numpad 6
if key = (vk_numpad6)
{
    return "Numpad 6";
}

//Numpad 7
if key = (vk_numpad7)
{
    return "Numpad 7";
}

//Numpad 8
if key = (vk_numpad8)
{
    return "Numpad 8";
}

//Numpad 9
if key = (vk_numpad9)
{
    return "Numpad 9";
}

//Multiply
if key = (vk_multiply)
{
    return "Multiply";
}

//Divide
if key = (vk_divide)
{
    return "Divide";
}

//Add
if key = (vk_add)
{
    return "Add";
}

//Subtract
if key = (vk_subtract)
{
    return "Subtract";
}

//Decimal
if key = (vk_decimal)
{
    return "Decimal";
}

// Printable characters.
return chr(key);
}