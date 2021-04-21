/// @description Insert description here
// You can write your code in this editor
var _width = 300;
var _height = 100;

create_buttons(550, 150, _width, _height, "Restart", on_click_restart); // <- Do not include ()

create_buttons(550, 150 + _height + 40, _width, _height, "Main Menu", on_click_backMain);

create_buttons(550, 150 + (_height + 40) * 2, _width, _height, "Options", on_click_options);

create_buttons(550, 150 + (_height + 40) * 3, _width, _height, "Quit", on_click_quit);