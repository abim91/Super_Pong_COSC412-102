// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//just to help debugging
function printJson(){
if (file_exists("gameinfo.json")) {
	    var _file = file_text_open_read("gameinfo.json");
	    var _json_string = "";
    
	    // Read the entire JSON file content
	    while (!file_text_eof(_file)) {
	        _json_string += file_text_read_string(_file);
	        file_text_readln(_file); // Move to the next line
	    }
    
	    file_text_close(_file);
		show_debug_message("JSON Content: " + _json_string);
	}
}